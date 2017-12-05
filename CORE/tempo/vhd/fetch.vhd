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
						o_inst			: out std_logic_vector(c_NBITS - 1 downto 0));

end fetch;

architecture fetch_arch of fetch is

	--signal s_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_idata	: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
		o_iaddress <= i_pc;

		--comb : process(i_clk, i_pc,i_idata)
		--	begin
		--		s_pc <=i_pc;
		--		s_data <= i_idata;
		--end process comb;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= (others => '0');
					o_inst <= (others => '0');
				elsif (i_clk'event and i_clk = '1') then
					o_pc <= i_pc;
					o_inst <= i_idata;
				end if;
		end process seq;
end fetch_arch;
