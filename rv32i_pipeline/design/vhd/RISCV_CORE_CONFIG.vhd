library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package RISCV_CORE_CONFIG is
	--Specific constants to implement this core
	constant c_NBITS				: integer := 32;
	constant c_NREGISTERS			: integer := 32;
	constant c_SELECTREGISTERBITS	: integer := 5;

	constant c_PC_INIT	: std_logic_vector(c_NBITS - 1 downto 0) := "00000000000000000000000000000000";
	constant c_PC_STEP	: std_logic_vector(c_NBITS - 1 downto 0) := "00000000000000000000000000000100";
	constant c_REG_INIT	: std_logic_vector(c_NBITS - 1 downto 0) := "00000000000000000000000000000000";

	--Constants to choose the differents operations of the ALU
	constant c_ALU_ADD	: std_logic_vector(2 downto 0) := "000";
	constant c_ALU_SLL	: std_logic_vector(2 downto 0) := "001";
	constant c_ALU_SLT	: std_logic_vector(2 downto 0) := "010";
	constant c_ALU_SLTU	: std_logic_vector(2 downto 0) := "011";
	constant c_ALU_XOR	: std_logic_vector(2 downto 0) := "100";
	constant c_ALU_SR	: std_logic_vector(2 downto 0) := "101";
	constant c_ALU_OR	: std_logic_vector(2 downto 0) := "110";
	constant c_ALU_AND	: std_logic_vector(2 downto 0) := "111";

	--Constants to choose the size of the data stored
	constant c_MEM_SIZEB	: std_logic_vector(1 downto 0) := "00";
	constant c_MEM_SIZEH	: std_logic_vector(1 downto 0) := "01";
	constant c_MEM_SIZEW	: std_logic_vector(1 downto 0) := "10";

	--Contants to use the RV32I Instruction Set
	--OPCODES
	constant c_OPCODE32_LUI		: std_logic_vector(6 downto 0) := "0110111";
	constant c_OPCODE32_AUIPC	: std_logic_vector(6 downto 0) := "0010111";
	constant c_OPCODE32_JAL		: std_logic_vector(6 downto 0) := "1101111";
	constant c_OPCODE32_JALR	: std_logic_vector(6 downto 0) := "1100111";
	constant c_OPCODE32_BRANCH	: std_logic_vector(6 downto 0) := "1100011";
	constant c_OPCODE32_LOAD	: std_logic_vector(6 downto 0) := "0000011";
	constant c_OPCODE32_STORE	: std_logic_vector(6 downto 0) := "0100011";	
	constant c_OPCODE32_OP_IMM	: std_logic_vector(6 downto 0) := "0010011";
	constant c_OPCODE32_OP		: std_logic_vector(6 downto 0) := "0110011";
	constant c_OPCODE32_MISC_MEM	: std_logic_vector(6 downto 0) := "0001111";
	constant c_OPCODE32_SYSTEM	: std_logic_vector(6 downto 0) := "1110011";

	--FUNCTIONS
	constant c_FUNC3_BEQ		: std_logic_vector(2 downto 0) := "000";
	constant c_FUNC3_BNE		: std_logic_vector(2 downto 0) := "001";
	constant c_FUNC3_BLT		: std_logic_vector(2 downto 0) := "100";
	constant c_FUNC3_BGE		: std_logic_vector(2 downto 0) := "101";
	constant c_FUNC3_BLTU		: std_logic_vector(2 downto 0) := "110";
	constant c_FUNC3_BGEU		: std_logic_vector(2 downto 0) := "111";	

	constant c_FUNC3_LB			: std_logic_vector(2 downto 0) := "000";
	constant c_FUNC3_LH			: std_logic_vector(2 downto 0) := "001";
	constant c_FUNC3_LW			: std_logic_vector(2 downto 0) := "010";
	constant c_FUNC3_LBU		: std_logic_vector(2 downto 0) := "100";
	constant c_FUNC3_LHU		: std_logic_vector(2 downto 0) := "101";

	constant c_FUNC3_SB			: std_logic_vector(2 downto 0) := "000";
	constant c_FUNC3_SH			: std_logic_vector(2 downto 0) := "001";
	constant c_FUNC3_SW			: std_logic_vector(2 downto 0) := "010";

	constant c_FUNC3_ADDI		: std_logic_vector(2 downto 0) := "000";
	constant c_FUNC3_SLTI		: std_logic_vector(2 downto 0) := "010";
	constant c_FUNC3_SLTIU		: std_logic_vector(2 downto 0) := "011";
	constant c_FUNC3_XORI		: std_logic_vector(2 downto 0) := "100";
	constant c_FUNC3_ORI		: std_logic_vector(2 downto 0) := "110";
	constant c_FUNC3_ANDI		: std_logic_vector(2 downto 0) := "111";
	constant c_FUNC3_SLLI		: std_logic_vector(2 downto 0) := "001";
	constant c_FUNC3_SRLI		: std_logic_vector(2 downto 0) := "101";
	constant c_FUNC3_SRAI		: std_logic_vector(2 downto 0) := "101";

	constant c_FUNC3_ADD		: std_logic_vector(2 downto 0) := "000";
	constant c_FUNC3_SUB		: std_logic_vector(2 downto 0) := "000";
	constant c_FUNC3_SLL		: std_logic_vector(2 downto 0) := "001";
	constant c_FUNC3_SLT		: std_logic_vector(2 downto 0) := "010";
	constant c_FUNC3_SLTU		: std_logic_vector(2 downto 0) := "011";
	constant c_FUNC3_XOR		: std_logic_vector(2 downto 0) := "100";
	constant c_FUNC3_SRL		: std_logic_vector(2 downto 0) := "101";
	constant c_FUNC3_SRA		: std_logic_vector(2 downto 0) := "101";
	constant c_FUNC3_OR			: std_logic_vector(2 downto 0) := "110";
	constant c_FUNC3_AND		: std_logic_vector(2 downto 0) := "111";
end package RISCV_CORE_CONFIG;
