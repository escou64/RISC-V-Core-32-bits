library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity fetch is port (	i_rstn			: in std_logic;
						i_clk			: in std_logic;
						i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_idata			: in std_logic_vector(c_NBITS - 1 downto 0);
						o_iaddress		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity		: out std_logic);
end fetch;

architecture fetch_arch of fetch is	
	begin
		o_iaddress <= i_pc;
		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= c_PC_INIT;
					o_inst <= c_REG_INIT;
					o_validity <= '0';
				elsif (i_clk'event and i_clk = '1') then
					o_pc <= i_pc;
					o_inst <= i_idata;
					o_validity <= '1';
				end if;
		end process seq;
end fetch_arch;
