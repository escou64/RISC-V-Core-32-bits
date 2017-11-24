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
end package RISCV_CORE_CONFIG;
