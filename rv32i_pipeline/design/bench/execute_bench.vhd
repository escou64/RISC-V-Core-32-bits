library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;
--use LIB_PIPELINE.registerfile.all;

library LIB_PIPELINE_BENCH;
use LIB_PIPELINE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_execute is 
	generic (runner_cfg : string);
end entity tb_execute;

architecture bench_arch of tb_execute is
	component execute port (	i_rstn			: in std_logic;									-- Asynhronous Negative Reset
								i_clk			: in std_logic;									-- Clock
								i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);	-- Program Counter
								i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);	-- Instruction
								i_validity		: in std_logic;									-- Validity of the instruction
								i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);	-- Value of the Source Register 1
								i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);	-- Value of the Source Register 2
								i_freeze		: in std_logic;									-- Freeze for Cache 'Miss'
								o_rd_alu		: out std_logic_vector(c_NBITS - 1 downto 0);   -- Data Dependency: ALU Output
								o_validity_alu	: out std_logic;								-- Data Dependency: ALU Output Validity
								o_newpc			: out std_logic_vector(c_NBITS - 1 downto 0);	-- New Program Counter for Branch / Jump Instructions
								o_jump			: out std_logic;								-- Indicates a future jump
								o_branch		: out std_logic;								-- Indicates a future branch
								o_inst			: out std_logic_vector(14 downto 0);			-- Instruction
								o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);	-- Value of the Source Register 2
								o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);	-- Execute Result
								o_validity		: out std_logic);								-- Validity of the instruction
	end component;

	signal rstn					: std_logic									:= '1';
	signal clk					: std_logic									:= '1';
	signal freeze				: std_logic									:= '1';
	signal dcde_pc				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal dcde_inst			: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal dcde_validity		: std_logic									:='1';			
	signal dcde_rs1				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal dcde_rs2				: std_logic_vector(c_NBITS - 1 downto 0)	:= "00000000000000000000000000000000";
	signal alu_rd				: std_logic_vector(c_NBITS - 1 downto 0);
	signal alu_validity			: std_logic;
	signal exec_pc				: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_pc_inter		: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_inst			: std_logic_vector(14 downto 0);
	signal exec_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_rd				: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_validity		: std_logic;
	signal exec_jump			: std_logic;
	signal exec_branch			: std_logic;
	begin
		execute1 : execute port map (		i_rstn				=> rstn,					-- Module execute1
											i_clk				=> clk,						--Connection signal with input/output
											i_pc				=> dcde_pc,
											i_inst				=> dcde_inst,
											i_validity			=> dcde_validity,
											i_rs1				=> dcde_rs1,
											i_rs2				=> dcde_rs2,
											i_freeze			=> freeze,
											o_rd_alu			=> alu_rd,
											o_validity_alu		=> alu_validity,
											o_newpc				=> exec_pc,
											o_inst				=> exec_inst,
											o_rs2				=> exec_rs2,
											o_rd				=> exec_rd,
											o_jump				=> exec_jump,
											o_branch			=> exec_branch,
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
				assert exec_inst <= "000000000000000" report "Problem for resetting !" severity error;
				assert exec_rs2 = c_REG_INIT report "Problem for resetting !" severity error;
				assert exec_rd = c_REG_INIT report "Problem for resetting !" severity error;
				assert exec_validity = '0' report "Problem for resetting !" severity error;
				rstn <= '1';
				wait for PERIOD;

				dcde_validity <= '1';
				
				-- Verifications for heart of the execution 

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00000" & "11111" & c_FUNC3_ADD & "01110" & c_OPCODE32_OP;					--Define instructions with have opcode = OP and Funct = ADD
				dcde_rs1 <= "00000000000000000000000000000001";
				dcde_rs2 <= "00000000000000000000000000000010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;						--Verification of good value of Validity output
				assert exec_jump = '0' report "Problem signal jump output  " severity error;								--Verification of good value of jump output
				assert exec_branch = '0' report "Problem signal branch output  " severity error;							--Verification of good value of branch output
				assert exec_rd = "00000000000000000000000000000011" report "Problem signal rd output  " severity error;		--Verification of good value of rd output

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11111" & "11111" & c_FUNC3_SH & "11110" & c_OPCODE32_STORE;
				dcde_rs1 <= "00000000000000000000000000000001";
				dcde_rs2 <= "00000000000000000000000000000110";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000011111" report "Problem signal rd output  " severity error;
				assert	exec_rs2 = "00000000000000000000000000000110"report "Problem signal rs2 output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00000" & "00000" & c_FUNC3_SW & "00001" & c_OPCODE32_STORE;
				dcde_rs1 <= "00000000000000000000000000000010";
				dcde_rs2 <= "00000000000000000000000000000010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000000011" report "Problem signal rd output  " severity error;
				assert	exec_rs2 = "00000000000000000000000000000010"report "Problem signal rs2 output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "10101" & c_FUNC3_LB & "00001" & c_OPCODE32_LOAD;
				dcde_rs1 <= "10000000000000000000000000000000";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "10000000000000000000000000010101" report "Problem signal rd output  " severity error;
				
				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "01010" & "01010" & c_FUNC3_LH & "00010" & c_OPCODE32_LOAD;
				dcde_rs1 <= "00000000000000000000000000000001";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000001011" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11100" & "11100" & c_FUNC3_LW & "00011" & c_OPCODE32_LOAD;
				dcde_rs1 <= "00000000000000000000000000000111";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000100011" report "Problem signal rd output  " severity error;
				
				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "11011" & "11001" & c_FUNC3_LBU & "00100" & c_OPCODE32_LOAD;
				dcde_rs1 <= "11100000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "11100000000000000000000000011111" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00011" & "00001" & c_FUNC3_LHU & "00101" & c_OPCODE32_LOAD;
				dcde_rs1 <= "00000000000000001100000000000000";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000001100000000000011" report "Problem signal rd output  " severity error;


				wait for HALF_PERIOD;
				dcde_inst <= "11000000000000000001" & "00111" & c_OPCODE32_LUI;
				dcde_rs1 <= "00000000000000000000000000000010";
				dcde_rs2 <= "00000000000000000000000000000010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "11000000000000000001000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "00000000000000001100" & "01000" & c_OPCODE32_AUIPC;
				dcde_pc <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000001100000000000100" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000011001" & "10101" & c_FUNC3_ADDI & "01001" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000000010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000011011" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010100" & "10101" & c_FUNC3_SLTI & "01010" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000001010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000000001" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000000010" & "10101" & c_FUNC3_SLTI & "01010" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000001010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010001" & "10101" & c_FUNC3_SLTIU & "01011" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000000000";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000000001" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000011101" & "10111" & c_FUNC3_XORI & "01100" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000010111";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000001010" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010111" & "10101" & c_FUNC3_ORI & "01101" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000010111" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000011111" & "10101" & c_FUNC3_ANDI & "01110" & c_OPCODE32_OP_IMM;
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd <= "00000000000000000000000000100000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000010101" & "10101" & c_FUNC3_ANDI & "01110" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000111110";			
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "000000000000000000000000000010100" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00100" & "10101" & c_FUNC3_SLLI & "01111" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "00000000000000000000000000111110";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000001111100000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00100" & "10101" & c_FUNC3_SRLI & "10000" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "11100000000000000000000000000000";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00001110000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0100000" & "00010" & "10101" & c_FUNC3_SRAI & "10001" & c_OPCODE32_OP_IMM;
				dcde_rs1 <= "11100000000000000000000000000000";				
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "11111000000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_ADD & "00000" & c_OPCODE32_OP;
				dcde_rs1 <= "00000000000000000000000000010010";
				dcde_rs2 <= "00000000000000000000000000011100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000101110" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0100000" & "10101" & "01111" & c_FUNC3_SUB & "00001" & c_OPCODE32_OP;
				dcde_rs1 <= "00000000000000000000000000011110";
				dcde_rs2 <= "00000000000000000000000000010000";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000001110" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SLL & "00010" & c_OPCODE32_OP;
				dcde_rs1 <= "00000000000000000000000000011110";
				dcde_rs2 <= "00000000000000000000000000000010";				
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal newpcjump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000001111000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SLT & "00011" & c_OPCODE32_OP;
				dcde_rs1 <= "00000000000000000000000000000010";
				dcde_rs2 <= "00000000000000000000000000001110";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "0000000000000000000000000000001" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SLTU & "00100" & c_OPCODE32_OP;
				dcde_rs1 <= "00000000000000000000000000011110";
				dcde_rs2 <= "00000000000000000000000000000010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd ="00000000000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_XOR & "00101" & c_OPCODE32_OP;
				dcde_rs1 <= "01100000000000000000000000000001";
				dcde_rs2 <= "00000000000000000000000000000011";				
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "01100000000000000000000000000010" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_SRL & "00110" & c_OPCODE32_OP;
				dcde_rs1 <= "01100000000000000000000000000000";
				dcde_rs2 <= "00000000000000000000000000000010";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00011000000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0100000" & "10101" & "01111" & c_FUNC3_SRA & "00111" & c_OPCODE32_OP;
				dcde_rs1 <= "11100000000000000000000000000000";
				dcde_rs2 <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "11111110000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_OR & "01000" & c_OPCODE32_OP;
				dcde_rs1 <= "11100000000000000000000000000111";
				dcde_rs2 <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "11100000000000000000000000000111" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "01111" & c_FUNC3_AND & "01001" & c_OPCODE32_OP;
				dcde_rs1 <= "11100000000000000000000000000111";
				dcde_rs2 <= "01000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "01000000000000000000000000000100" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "00000000010000000000" & "00001" & c_OPCODE32_JAL;
				dcde_pc <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '1' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000001000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "000000000011" & "00011" & "000" & "00010" & c_OPCODE32_JALR;
				dcde_pc <= "00000000000000000000000000010000";
				dcde_rs1 <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '1' report "Problem signal jump output  " severity error;
				assert exec_branch = '0' report "Problem signal branch output  " severity error;
				assert exec_rd = "00000000000000000000000000010100" report "Problem signal rd output  " severity error;
				assert exec_pc = "00000000000000000000000000000110" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "10101" & "00011" & c_FUNC3_BNE & "00110" & c_OPCODE32_BRANCH;
				dcde_rs1 <= "00000000000000000000000000000111";
				dcde_rs2 <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '1' report "Problem signal branch output  " severity error;
		--		assert exec_pc = exec_pc + "00000000000000000000000000000110" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "0000000" & "00010" & "01100" & c_FUNC3_BGE & "00110" & c_OPCODE32_BRANCH;
				dcde_rs1 <= "01100000000000000000000000000111";
				dcde_rs2 <= "00000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '1' report "Problem signal branch output  " severity error;
--				assert exec_rd = "00000000000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "1111011" & "00100" & "00111" & c_FUNC3_BLTU & "01010" & c_OPCODE32_BRANCH;
				dcde_rs1 <= "00000000000000000000000000000111";
				dcde_rs2 <= "01000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '1' report "Problem signal branch output  " severity error;
--				assert exec_rd = "00000000000000000000000000000000" report "Problem signal rd output  " severity error;

				wait for HALF_PERIOD;
				dcde_inst <= "1111011" & "00011" & "00100" & c_FUNC3_BGEU & "11010" & c_OPCODE32_BRANCH;
				dcde_rs1 <= "10000000000000000000000000000111";
				dcde_rs2 <= "01000000000000000000000000000100";
				wait for HALF_PERIOD;
				assert exec_validity = '1' report "Problem signal validaty output  " severity error;
				assert exec_jump = '0' report "Problem signal jump output  " severity error;
				assert exec_branch = '1' report "Problem signal branch output  " severity error;
--				assert exec_rd = "00000000000000000000000000000000" report "Problem signal rd output  " severity error;


				
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

