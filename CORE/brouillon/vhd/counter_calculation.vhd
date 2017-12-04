library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity pc_counter is port (			i_rstn			: in std_logic;
						i_clk			: in std_logic;
						i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
						o_pc			: out std_logic_vector(c_NBITS - 1 downto 0));

end pc_counter;

architecture pc_counter_arch of pc_counter is

	signal s_pc : std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
		
		comb : process(i_clk, i_pc)
			begin
				s_pc <=i_pc + "0100";
		end process comb;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= (others => '0');
				elsif (i_clk'event and i_clk = '1') then
					o_pc <= s_pc;
				end if;
		end process seq;
end pc_counter_arch;
