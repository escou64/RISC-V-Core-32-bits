library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;
--use LIB_CORE.reg_integer.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_decode is 
	generic (runner_cfg : string);
end entity tb_decode;

architecture bench_arch of tb_decode is
	component reg_integer port (		i_rstn		: in std_logic;
										i_clk		: in std_logic;
										i_freeze		: in std_logic;
										i_rs1select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
										i_rs2select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
										o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);
										o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);
										i_write		: in std_logic;
										i_rdselect	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
										i_data		: in std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	component decode port (		i_rstn				: in std_logic;
								i_clk				: in std_logic;
								i_pc				: in std_logic_vector(c_NBITS - 1 downto 0);
								i_inst				: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity			: in std_logic;
								i_jump				: in std_logic;
								i_branch			: in std_logic;
								i_freeze			: in std_logic;
								i_rd_alu			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rd_exec			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rd_accm			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity_alu		: in std_logic;
								i_validity_exec		: in std_logic;
								i_validity_accm		: in std_logic;
								o_pc				: out std_logic_vector(c_NBITS - 1 downto 0);
								o_inst				: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rs1				: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rs2				: out std_logic_vector(c_NBITS - 1 downto 0);
								o_validity			: out std_logic;
								o_rs1select			: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								o_rs2select			: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								i_rs1				: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rs2				: in std_logic_vector(c_NBITS - 1 downto 0));								
	end component;


	signal rstn					: std_logic												:= '1';
	signal clk					: std_logic												:= '1';
	signal freeze				: std_logic												:= '1';
	signal regf_rs1select		: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "11111";
	signal regf_rs2select		: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "01010";
	signal regf_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal regf_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal regf_write			: std_logic												:= '0';
	signal regf_rdselect		: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal regf_data			: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');
	signal ftch_pc				: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');
	signal ftch_inst			: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');	
	signal ftch_validity		: std_logic												:= '1';		
	signal dcde_pc				: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_inst			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_validity		: std_logic;
	signal alu_validity			: std_logic												:= '1';
	signal exec_validity		: std_logic												:= '1';
	signal accm_validity		: std_logic												:= '1';
	signal alu_rd				: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');
	signal exec_rd				: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');
	signal accm_rd				: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');

	signal exec_branch			: std_logic												:= '0';
	signal exec_jump			: std_logic												:= '0';

	begin
		reg_integer1 : reg_integer port map (		i_rstn		=> rstn,
													i_clk		=> clk,	
													i_freeze	=> freeze,
													i_rs1select	=> regf_rs1select,
													i_rs2select	=> regf_rs2select,
													o_rs1		=> regf_rs1,
													o_rs2		=> regf_rs2,
													i_write		=> regf_write,
													i_rdselect	=> regf_rdselect,
													i_data		=> regf_data);

		decode1 : decode port map (		i_rstn				=> rstn,
										i_clk				=> clk,
										i_pc				=> ftch_pc,		
										i_inst				=> ftch_inst,		
										i_validity			=> ftch_validity,
										i_branch			=> exec_branch,
										i_jump				=> exec_jump,
										i_freeze			=> freeze,
										i_rd_alu			=> alu_rd,
										i_rd_exec			=> exec_rd,
										i_rd_accm			=> accm_rd,
										i_validity_alu		=> alu_validity,
										i_validity_exec		=> exec_validity,
										i_validity_accm		=> accm_validity,
										o_pc				=> dcde_pc,		
										o_inst				=> dcde_inst,		
										o_rs1				=> dcde_rs1,
										o_rs2				=> dcde_rs2,
										o_validity			=> dcde_validity,
										o_rs1select			=> regf_rs1select,
										o_rs2select			=> regf_rs2select,
										i_rs1				=> regf_rs1,
										i_rs2				=> regf_rs2);
										
		clk <= not (clk) after HALF_PERIOD;

		process
			begin
				test_runner_setup(runner, runner_cfg);				
				wait for QUARTER_PERIOD*5;
				
				-- Verifications for Reset
				rstn <= '0';
				wait for PERIOD;
				assert dcde_inst = c_REG_INIT report "Problem for resetting !" severity error;
				assert dcde_pc = c_PC_INIT report "Problem for resetting !" severity error;
				assert dcde_rs1 = c_REG_INIT report "Problem for resetting !" severity error;
				assert dcde_rs2 = c_REG_INIT report "Problem for resetting !" severity error;
				assert dcde_validity = '0' report "Problem for resetting !" severity error;
				assert regf_rs1select = "00000" report "Problem for resetting !" severity error;
				assert regf_rs2select = "00000" report "Problem for resetting !" severity error;

				wait for PERIOD*5;
				rstn <= '1';
				wait for PERIOD*5;

				--Writing differents datas in regfile
				regf_write <= '1';
				for I in 0 to c_NREGISTERS - 1 loop
					wait for PERIOD;
					regf_data <= regf_data + "00000000000000000000000000000001";
					regf_rdselect <= regf_rdselect + "00001";
				end loop;
				regf_write <= '0';

				-- Verifications for different valid instructions
				ftch_inst <= "0000000" & "00000" & "11111" & c_FUNC3_ADD & "01110" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "11111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;				
				
				ftch_inst <= "0000000" & "00000" & "01111" & c_FUNC3_BEQ & "00000" & c_OPCODE32_BRANCH;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

	--			ftch_inst <= "0000000" & "01010" & "01110" & c_FUNC3_BNE & "00001" & c_OPCODE32_BRANCH;
--				wait for HALF_PERIOD;
				--assert regf_rs1select = "01110" report "Problem to generate the register number !" severity error;
	--			assert regf_rs2select = "01010" report "Problem to generate the register number !" severity error;
		--		wait for HALF_PERIOD;
			--	assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
--				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
	--			assert dcde_rs1 = "000000000000000000000000000001110" report "Problem in the register value !" severity error;
		--		assert dcde_rs2 = "000000000000000000000000000001010" report "Problem in the register value !" severity error;
			--	assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "10000" & "00001" & c_FUNC3_BLT & "00010" & c_OPCODE32_BRANCH;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00001" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "10000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000001" report "Problem in the register value !" severity error;
		--		assert dcde_rs2 = "000000000000000000000000000010000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
			
				ftch_inst <= "0000000" & "00000" & "01111" & c_FUNC3_BGE & "00100" & c_OPCODE32_BRANCH;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00000" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "01111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "0000000" & "11111" & "01010" & c_FUNC3_BLTU & "01000" & c_OPCODE32_BRANCH;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01010" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "11111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001010" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "00001" & "00010" & c_FUNC3_BGEU & "10000" & c_OPCODE32_BRANCH;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00010" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00001" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000010" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000001" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;				





				ftch_inst <= "000000000000" & "01011" & c_FUNC3_LB & "10000" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01011" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001011" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000000000" & "11111" & c_FUNC3_LH & "01000" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert regf_rs1select = "11111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000000000" & "01000" & c_FUNC3_LW & "00100" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000000000" & "00000" & c_FUNC3_LBU & "00010" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000000000" & "01011" & c_FUNC3_LHU & "00001" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01011" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001011" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				
			
		--	 SHAMT 	: valeur de décalage	
				
				ftch_inst <= "000000010101" & "01111" & c_FUNC3_ADDI & "01111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000010101" & "00001" & c_FUNC3_SLTI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00001" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000001" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "000000010101" & "01011" & c_FUNC3_SLTIU & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01011" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001011" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000010101" & "00111" & c_FUNC3_XORI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "000000010101" & "00111" & c_FUNC3_ORI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "000000010101" & "01011" & c_FUNC3_ANDI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01011" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001011" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "00000" & "11111" & c_FUNC3_SLLI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "11111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "00000" & "00001" & c_FUNC3_SRLI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00001" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000001" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0100000" & "00000" & "00000" & c_FUNC3_SRAI & "11111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				



				ftch_inst <= "0000000" & "00000" & "01111" & c_FUNC3_ADD & "11111" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "0100000" & "11111" & "01111" & c_FUNC3_SUB & "11110" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "11111" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "10101" & "11111" & c_FUNC3_SLL & "11100" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "11111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "10101" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000010101" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "0000000" & "00010" & "00001" & c_FUNC3_SLT & "10000" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00001" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00010" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000001" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000010" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
			
				ftch_inst <= "0000000" & "00100" & "00111" & c_FUNC3_SLTU & "11101" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00100" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000100" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "0000000" & "10000" & "01111" & c_FUNC3_XOR & "11001" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "10000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000010000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "11100" & "00011" & c_FUNC3_SRL & "10001" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "00011" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "11100" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000000011" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000011100" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0100000" & "00100" & "01111" & c_FUNC3_SRA & "00001" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00100" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000100" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
				ftch_inst <= "0000000" & "11000" & "01010" & c_FUNC3_OR & "11011" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01010" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "11000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001010" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000011000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "0000000" & "11001" & "10000" & c_FUNC3_AND & "10011" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "10000" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "11001" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000010000" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000011001" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;
				
		
				--Writing differents datas in regfile
				regf_write <= '1';
				regf_rdselect <= "00000";
				regf_data <= "00000000000000000000000000000010";
				regf_rdselect <="00000";
				for I in 0 to c_NREGISTERS - 1 loop
					wait for PERIOD;
					regf_data <= regf_data + "00000000000000000000000000000010";
					regf_rdselect <= regf_rdselect + "00001";


				end loop;
				regf_write <= '0';
				

				test_runner_cleanup(runner);
		end process;
end bench_arch;

