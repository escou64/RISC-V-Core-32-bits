library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity decode is port (	i_rstn			: in std_logic;
						i_clk			: in std_logic;
						i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_validity		: in std_logic;
						i_jump			: in std_logic;
						i_branch		: in std_logic;
						i_freeze		: in std_logic;
						i_rd_alu		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rd_exec		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_validity_alu	: in std_logic;
						i_validity_exec	: in std_logic;
						i_validity_accm	: in std_logic;
						o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_rs1			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity		: out std_logic; 
						o_rs1select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
						o_rs2select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
						i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0));
end decode;

architecture decode_arch of decode is

	signal s_rs1select : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_rs2select : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_rs1 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rs2 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rdselect : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_validity_inputs : std_logic;
	signal s_validity_global : std_logic;

    type dependency_regfile is array (2 downto 0) of std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_previous_rd : dependency_regfile;
	signal s_rs1_dependency : std_logic_vector(2 downto 0);
	signal s_rs2_dependency : std_logic_vector(2 downto 0);
	begin

		s_validity_inputs <= i_validity AND (NOT i_jump) AND (NOT i_branch);
		o_rs1select <= s_rs1select;
		o_rs2select <= s_rs2select;

		s_rs1 <=	i_rd_alu when (s_rs1_dependency(0) = '1') and (i_validity_alu = '1') else
					i_rd_exec when (s_rs1_dependency(1) = '1') and (i_validity_exec = '1') else
					i_rd_accm when (s_rs1_dependency(2) = '1') and (i_validity_accm = '1') else
					i_rs1;

		s_rs2 <=	i_rd_alu when (s_rs2_dependency(0) = '1') and (i_validity_alu = '1') else
					i_rd_exec when (s_rs2_dependency(1) = '1') and (i_validity_exec = '1') else
					i_rd_accm when (s_rs2_dependency(2) = '1') and (i_validity_accm = '1') else
					i_rs2;

		comb1 : process(i_clk, i_pc, i_inst, s_validity_inputs, i_rs1, i_rs2)
			begin
				if (i_inst(1 downto 0) /= "11") then
					s_rs1select <= "00000";
					s_rs2select <= "00000";
					s_rdselect <= "00000";
					s_validity_global <= '0';
				else 
					case i_inst(6 downto 0) is
						when c_OPCODE32_LUI | c_OPCODE32_AUIPC =>		-- U-type Format
							s_rs1select <= "00000";
							s_rs2select <= "00000";
							s_rdselect <= i_inst(11 downto 7);
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_OP_IMM |  c_OPCODE32_LOAD =>	-- I-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= "00000";
							s_rdselect <= i_inst(11 downto 7);
							s_validity_global <= s_validity_inputs;		
						when c_OPCODE32_OP =>							-- R-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= i_inst(24 downto 20);
							s_rdselect <= i_inst(11 downto 7);
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_STORE =>						-- S-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= i_inst(24 downto 20);
							s_rdselect <= "00000";
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_JAL =>							-- J-type Format
							s_rs1select <= "00000";
							s_rs2select <= "00000";
							s_rdselect <= i_inst(11 downto 7);
							s_validity_global <= s_validity_inputs;
						when c_OPCODE32_BRANCH =>						-- B-type Format
							s_rs1select <= i_inst(19 downto 15);
							s_rs2select <= i_inst(24 downto 20);
							s_rdselect <= "00000";
							s_validity_global <= s_validity_inputs;
						when others => 
							s_rs1select <= "00000";
							s_rs2select <= "00000";
							s_rdselect <= "00000";
							s_validity_global <= '0';
					end case;
				end if;
		end process comb1;
	
		comb2 : process(i_clk, s_previous_rd, s_rs1select, s_rs2select)
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
		end process comb2;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= c_PC_INIT;
					o_inst <= c_REG_INIT;
					o_rs1 <= c_REG_INIT;
					o_rs2 <= c_REG_INIT;
					o_validity <= '0';
					for I in 2 downto 0 loop
						s_previous_rd(I) <= (others => '0');
					end loop;
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
					o_pc <= i_pc;
					o_inst <= i_inst;
					o_rs1 <= s_rs1;
					o_rs2 <= s_rs2;
					o_validity <= s_validity_global;
					s_previous_rd(2) <= s_previous_rd(1);
					s_previous_rd(1) <= s_previous_rd(0);
					s_previous_rd(0) <= s_rdselect;
				end if;
		end process seq;
end decode_arch;
