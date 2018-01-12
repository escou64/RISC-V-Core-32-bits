library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;
--use LIB_CORE.registerfile.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_execute is 
	generic (runner_cfg : string);
end entity tb_execute;

architecture bench_arch of tb_execute is
	component execute port (	i_rstn			: in std_logic;
								i_clk			: in std_logic;
								i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity_dcde	: in std_logic;
								i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
								--i_rs1_dependency: in std_logic_vector(2 downto 0);
								--i_rs2_dependency: in std_logic_vector(2 downto 0);
								--i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
								--i_rd_wbck		: in std_logic_vector(c_NBITS - 1 downto 0);
								--i_validity_accm	: in std_logic;
								--i_validity_wbck	: in std_logic;
								o_rd_alu		: out std_logic_vector(c_NBITS - 1 downto 0);
								o_validity_alu	: out std_logic;
								o_newpc			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_jump			: out std_logic;
								o_branch		: out std_logic;
								o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_validity			: out std_logic);
	end component;

	signal rstn					: std_logic									:= '1';
	signal clk					: std_logic									:= '1';
	signal dcde_pc				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal dcde_inst			: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal dcde_validity		: std_logic									:='1';			
	signal dcde_rs1				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal dcde_rs2				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	--signal dcde_rs1_dependency	: std_logic_vector(2 downto 0)				:= "000";
	--signal dcde_rs2_dependency	: std_logic_vector(2 downto 0)				:= "000";
	--signal accm_rd				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	--signal wbck_rd				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	--signal accm_validity		: std_logic									:= '1';
	--signal wbck_validity		: std_logic									:= '1';

	signal alu_rd				: std_logic_vector(c_NBITS - 1 downto 0);
	signal alu_validity			: std_logic;
	signal exec_pc				: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_inst			: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_rd				: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_validity		: std_logic;
	signal exec_jump			: std_logic;
	signal exec_branch			: std_logic;
	--signal exec_rd				: std_logic;
	begin
		execute1 : execute port map (		i_rstn				=> rstn,
											i_clk				=> clk,
											i_pc				=> dcde_pc,
											i_inst				=> dcde_inst,
											i_validity_dcde		=> dcde_validity,
											i_rs1				=> dcde_rs1,
											i_rs2				=> dcde_rs2,
											--i_rs1_dependency	=> dcde_rs1_dependency,
											--i_rs2_dependency	=> dcde_rs2_dependency,
											--i_rd_accm			=> accm_rd,
											--i_rd_wbck			=> wbck_rd,
											--i_validity_accm		=> accm_validity,
											--i_validity_wbck		=> wbck_validity,
											o_rd_alu			=> alu_rd,
											o_validity_alu		=> alu_validity,
											o_pc				=> exec_pc,
											o_inst				=> exec_inst,
											o_rs2				=> exec_rs2,
											o_rd				=> exec_rd,
											o_jump				=> exec_jump,
											o_branch			=> exec_branch,
											o_rd				=> exec_rd,
											o_validity			=> exec_validity);

		clk <= not (clk) after HALF_PERIOD;

		process
			begin
				test_runner_setup(runner, runner_cfg);				
				wait for QUARTER_PERIOD;
				
				-- Verifications for Reset
				rstn <= '0';
				wait for PERIOD;
				assert exec_pc = c_PC_INIT report "Problem for resetting !" severity error;
				assert exec_inst = c_REG_INIT report "Problem for resetting !" severity error;
				assert exec_rs2 = c_REG_INIT report "Problem for resetting !" severity error;
				assert exec_rd = c_REG_INIT report "Problem for resetting !" severity error;
				assert exec_validity = '0' report "Problem for resetting !" severity error;
				rstn <= '1';
				wait for PERIOD;

				dcde_validity <= '1';
				

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11011" & "10101" & c_FUNC3_SB & "11110" & c_OPCODE32_STORE;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11111" & "11111" & c_FUNC3_SH & "11111" & c_OPCODE32_STORE;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00000" & "00000" & c_FUNC3_SW & "00000" & c_OPCODE32_STORE;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "10101" & c_FUNC3_LB & "00001" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;
				
				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "01010" & "01010" & c_FUNC3_LH & "00010" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11100" & "11100" & c_FUNC3_LW & "00011" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;
				
				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11011" & "11001" & c_FUNC3_LBU & "00100" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00011" & "00001" & c_FUNC3_LHU & "00101" & c_OPCODE32_LOAD;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;


				wait for HALF_PERIOD;
				dcde_inst <= "00000000000000000000" & "00111" & c_OPCODE32_LUI;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;
				
				wait for HALF_PERIOD;
				dcde_inst <= "00000000000000000000" & "01000" & c_OPCODE32_AUIPC;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000011001" & "10101" & c_FUNC3_ADDI & "01001" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010100" & "10101" & c_FUNC3_SLTI & "01010" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010001" & "10101" & c_FUNC3_SLTIU & "01011" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000011101" & "10101" & c_FUNC3_XORI & "01100" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010111" & "10101" & c_FUNC3_ORI & "01101" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000011111" & "10101" & c_FUNC3_ANDI & "01110" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00000" & "10101" & c_FUNC3_SLLI & "01111" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00000" & "10101" & c_FUNC3_SRLI & "10000" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0100000" & "00000" & "10101" & c_FUNC3_SRAI & "10001" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_ADD & "00000" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0100000" & "10101" & "01111" & c_FUNC3_SUB & "00001" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SLL & "00010" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SLT & "00011" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SLTU & "00100" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_XOR & "00101" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SRL & "00110" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0100000" & "10101" & "01111" & c_FUNC3_SRA & "00111" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_OR & "01000" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_AND & "01001" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst dcde_inst <= "00000001010101011011" & "00001" & c_OPCODE32_JAL;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "00000001010101111011" & "00010" & c_OPCODE32_JALR;
				wait for HALF_PERIOD;
				assert exec_validity = '0' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = '0' report "Problem register output  " severity error;


				
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

