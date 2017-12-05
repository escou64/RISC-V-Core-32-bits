library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity counter_calculation is port (	i_rstn			: in std_logic;
										i_clk			: in std_logic;
										i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
										o_pc			: out std_logic_vector(c_NBITS - 1 downto 0));

end counter_calculation;

architecture counter_calculation_arch of counter_calculation is

	signal s_pc : std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
		
		comb : process(i_clk, i_pc)
			begin
			s_pc <=	i_pc + c_PC_STEP;
		end process comb;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= c_PC_INIT;
				elsif (i_clk'event and i_clk = '1') then
					o_pc <= s_pc;
				end if;
		end process seq;
end counter_calculation_arch;
