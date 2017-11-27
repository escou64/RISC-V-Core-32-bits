library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

package RISCV_CORE_CONFIG is
	constant c_NBITS				: integer := 32;
	constant c_NREGISTERS			: integer := 32;
	constant c_SELECTREGISTERBITS	: integer := 5;

	constant c_OPCODE32_OP_IMM	: std_logic_vector(6 downto 0) := "0010011";
	constant c_OPCODE32_LUI		: std_logic_vector(6 downto 0) := "0110111";
	constant c_OPCODE32_AUIPC	: std_logic_vector(6 downto 0) := "0010111";
	constant c_OPCODE32_OP		: std_logic_vector(6 downto 0) := "0110011";

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
