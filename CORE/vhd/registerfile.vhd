library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity registerfile is port (	i_rstn		: in std_logic;
								i_clk		: in std_logic;
								i_rs1select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								i_rs2select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);
								i_write		: in std_logic;
								i_rdselect	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								i_data		: in std_logic_vector(c_NBITS - 1 downto 0));
end registerfile;

architecture registerfile_arch of registerfile is 
	type regfile is array (0 to c_NREGISTERS - 1) of std_logic_vector(c_NBITS - 1 downto 0);
	signal s_registers : regfile;

	begin

		seq : process(i_clk, i_rstn)
			begin
			if (i_rstn = '0') then
				for I in 0 to c_NREGISTERS - 1 loop
					s_registers(I) <= (others => '0');
				end loop;
			elsif (i_clk'event and i_clk = '1') then
				if ((i_write = '1') and (to_integer(unsigned(i_rdselect)) /= 0)) then				
					s_registers(to_integer(unsigned(i_rdselect))) <= i_data;
				end if;
			end if;
		end process seq;

		o_rs1 <= s_registers(to_integer(unsigned(i_rs1select)));
		o_rs2 <= s_registers(to_integer(unsigned(i_rs2select)));
end registerfile_arch;
