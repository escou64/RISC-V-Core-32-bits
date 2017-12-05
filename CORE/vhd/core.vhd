library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity core is port (	i_rstn			: in std_logic;
						i_clk			: in std_logic;
						o_iaddress		: out std_logic_vector(c_NBITS - 1 downto 0);
						i_idata			: in std_logic_vector(c_NBITS - 1 downto 0);
						o_dadress		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_ddata			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_dwrite		: out std_logic);
end core;

architecture core_arch of core is
	begin

end core_arch;
