library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity decode is port (	i_rstn				: in std_logic;												-- Asynhronous Negative Reset
						i_clk				: in std_logic;												-- Clock
						i_pc				: in std_logic_vector(c_NBITS - 1 downto 0);				-- Program Counter
						i_inst				: in std_logic_vector(c_NBITS - 1 downto 0);				-- Instruction
						i_validity			: in std_logic;												-- Validity of the instruction
						i_jump				: in std_logic;												-- Indicates a future jump
						i_branch			: in std_logic;												-- Indicates a future branch
						i_freeze			: in std_logic;												-- Freeze for Cache 'Miss'
						i_rd_alu			: in std_logic_vector(c_NBITS - 1 downto 0);				-- Data Dependency: New Value in the ALU Output
						i_rd_exec			: in std_logic_vector(c_NBITS - 1 downto 0);				-- Data Dependency: New Value in the Execute Floor Output
						i_rd_accm			: in std_logic_vector(c_NBITS - 1 downto 0);				-- Data Dependency: New Value in the Access Memory Floor Output
						i_validity_alu		: in std_logic;												-- Data Dependency: Validity of the ALU value
						i_validity_exec		: in std_logic;												-- Data Dependency: Validity of the Execute Floor value
						i_validity_accm		: in std_logic;												-- Data Dependency: Validity of the Access Memory Floor value
						o_pc				: out std_logic_vector(c_NBITS - 1 downto 0);				-- Program Counter
						o_inst				: out std_logic_vector(c_NBITS - 1 downto 0);				-- Instruction
						o_rs1				: out std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 1
						o_rs2				: out std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 2
						o_validity			: out std_logic;											-- Instruction Validity
						o_load_dependency	: out std_logic;											-- Indicates a Load Data Dependency
						o_rs1select			: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects the Source Register 1
						o_rs2select			: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects the Source Register 2
						i_rs1				: in std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 1
						i_rs2				: in std_logic_vector(c_NBITS - 1 downto 0));				-- Value of the Source Register 2
end decode;

architecture decode_arch of decode is

	-- Signals for the basic decode
	signal s_rs1select : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_rs2select : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_rs1 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rs2 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rdselect : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_validity_inputs : std_logic;
	signal s_validity_global : std_logic;
	-- Signals for the data depency (Excepted Load Data Dependency)
    type dependency_regfile is array (2 downto 0) of std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_previous_rd : dependency_regfile;
	signal s_rs1_dependency : std_logic_vector(2 downto 0);
	signal s_rs2_dependency : std_logic_vector(2 downto 0);
	-- Signals for Load Data Dependency
	signal s_previous_load		: std_logic_vector (1 downto 0);
	signal s_load				: std_logic;
	signal s_load_dependency	: std_logic;

	begin
		-- Combinatorial Logic
		s_validity_inputs <= i_validity AND (NOT i_jump) AND (NOT i_branch);

		-- Selects the different source registers 
		o_rs1select <= s_rs1select;
		o_rs2select <= s_rs2select;
		-- Decoding of the different forms of instructions 
		comb : process(i_inst, s_validity_inputs)
			begin				
				if (i_inst(1 downto 0) /= "11") then		-- For Future 16 Bits Instruction Extension
					s_rs1select <= "00000";
					s_rs2select <= "00000";
					s_rdselect <= "00000";
					s_load <= '0';
					s_validity_global <= '0';
				else 
					case i_inst(6 downto 0) is				-- 32 bits instructions
						when c_OPCODE32_LUI | c_OPCODE32_AUIPC =>						-- U-type Format
							s_rs1select <= "00000";
							s_rs2select <= "00000";
							s_rdselect <= i_inst(11 downto 7);
							s_load <= '0';
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_OP_IMM |  c_OPCODE32_LOAD | c_OPCODE32_JALR =>	-- I-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= "00000";
							s_rdselect <= i_inst(11 downto 7);
							s_validity_global <= s_validity_inputs;	
							if i_inst(6 downto 0) = c_OPCODE32_LOAD then
								s_load <= '1';
							else								
								s_load <= '0';
							end if; 	
						when c_OPCODE32_OP =>											-- R-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= i_inst(24 downto 20);
							s_rdselect <= i_inst(11 downto 7);
							s_load <= '0';
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_STORE =>										-- S-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= i_inst(24 downto 20);
							s_rdselect <= "00000";
							s_load <= '0';
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_JAL =>											-- J-type Format
							s_rs1select <= "00000";
							s_rs2select <= "00000";
							s_rdselect <= i_inst(11 downto 7);
							s_load <= '0';
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_BRANCH =>										-- B-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= i_inst(24 downto 20);
							s_rdselect <= "00000";
							s_load <= '0';
							s_validity_global <= s_validity_inputs;
						when others => 
							s_rs1select <= "00000";
							s_rs2select <= "00000";
							s_rdselect <= "00000";
							s_load <= '0';
							s_validity_global <= '0';
					end case;
				end if;
		end process comb;

		-- Calculation of the source register values with data dependencies	(Except Load)
		s_rs1 <=	i_rd_alu when (s_rs1_dependency(0) = '1') and (i_validity_alu = '1') else
					i_rd_exec when (s_rs1_dependency(1) = '1') and (i_validity_exec = '1') else
					i_rd_accm when (s_rs1_dependency(2) = '1') and (i_validity_accm = '1') else
					i_rs1;

		s_rs2 <=	i_rd_alu when (s_rs2_dependency(0) = '1') and (i_validity_alu = '1') else
					i_rd_exec when (s_rs2_dependency(1) = '1') and (i_validity_exec = '1') else
					i_rd_accm when (s_rs2_dependency(2) = '1') and (i_validity_accm = '1') else
					i_rs2;
		-- Calculation of the different data dependencies (Except Load)
		reg_dep : process(i_clk, s_previous_rd, s_rs1select, s_rs2select)
			begin
				for I in 2 downto 0 loop
					if (s_rs1select = s_previous_rd(I)) and (s_rs1select /= "00000") then
						s_rs1_dependency(I) <= '1';
					else
						s_rs1_dependency(I) <= '0';
					end if;
					if (s_rs2select = s_previous_rd(I)) and (s_rs2select /= "00000") then
						s_rs2_dependency(I) <= '1';
					else
						s_rs2_dependency(I) <= '0';
					end if;	
				end loop;
		end process reg_dep;

		-- Calculation of the load data dependencies
		load_dep : process(s_previous_load, s_rs1select, s_rs2select, s_previous_rd)
			begin
				if (s_previous_load(0) = '1') and ((s_rs1select = s_previous_rd(0)) or (s_rs2select = s_previous_rd(0))) then
					s_load_dependency <= '1';
				elsif (s_previous_load(1) = '1') and ((s_rs1select = s_previous_rd(1)) or (s_rs2select = s_previous_rd(1))) then
					s_load_dependency <= '1';					
				else
					s_load_dependency <= '0';
				end if;
		end process load_dep;
		-- Assignment of the data dependency output
		o_load_dependency	<= s_load_dependency;

		--Sequential Logic
		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then								-- Asynchronous Reset
					o_pc <= c_PC_INIT;
					o_inst <= c_REG_INIT;
					o_rs1 <= c_REG_INIT;
					o_rs2 <= c_REG_INIT;
					o_validity <= '0';
					for I in 2 downto 0 loop
						s_previous_rd(I) <= (others => '0');
					end loop;
					s_previous_load	<= "00";
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
					if s_load_dependency = '1' then					-- Decode Blocking with Load Data Dependency
						s_previous_rd(2) <= s_previous_rd(1);
						s_previous_rd(1) <= s_previous_rd(0);
						s_previous_rd(0) <= s_rdselect;
						s_previous_load(1) <= s_previous_load(0);
						s_previous_load(0) <= s_load;
					else											-- Normal Assignment
						o_pc <= i_pc;
						o_inst <= i_inst;
						o_rs1 <= s_rs1;
						o_rs2 <= s_rs2;
						o_validity <= s_validity_global;
						s_previous_rd(2) <= s_previous_rd(1);
						s_previous_rd(1) <= s_previous_rd(0);
						s_previous_rd(0) <= s_rdselect;
						s_previous_load(1) <= s_previous_load(0);
						s_previous_load(0) <= s_load;						
					end if;					
				end if;
		end process seq;
end decode_arch;
