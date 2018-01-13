library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity reg_status is port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_freeze		: in std_logic;
							i_csrselect		: in std_logic_vector(c_ADDR_CSR - 1 downto 0);
							o_selectfault	: out std_logic;
							o_status		: out std_logic_vector(c_NBITS - 1 downto 0));							
end reg_status;

architecture reg_status_arch of reg_status is
	signal r_cycle : std_logic_vector(c_NCOUNTERBITS - 1 downto 0);

	signal s_cycle : std_logic_vector(c_NCOUNTERBITS - 1 downto 0);
	begin
		-- cycle CSR
		s_cycle <= r_cycle + "1";

		-- Reading
		comb : process(i_csrselect)
			begin
				case i_csrselect is
					when c_CSR_CYCLE =>
					when c_CSR_CYCLEH =>
					when others =>
		end process comb;

		-- Writing
		seq : process(i_clk, i_rstn)
			begin
			if (i_rstn = '0') then
				r_cycle <= (others => '0');
			elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
				r_cycle <= s_cycle;	
			end if;
		end process seq;

end reg_integer_arch;
