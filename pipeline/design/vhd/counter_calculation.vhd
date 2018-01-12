library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity counter_calculation is port (	i_rstn			: in std_logic;
										i_clk			: in std_logic;
										i_jump			: in std_logic;
										i_branch		: in std_logic;
										i_freeze		: in std_logic;
										i_newpc			: in std_logic_vector(c_NBITS - 1 downto 0);
										o_pc			: out std_logic_vector(c_NBITS - 1 downto 0));

end counter_calculation;

architecture counter_calculation_arch of counter_calculation is

	signal s_pc			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_pc_final	: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
		
		s_pc <=	i_newpc when (i_jump or i_branch) = '1' else
				s_pc_final + c_PC_STEP;
		
		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					s_pc_final <= c_PC_INIT;
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
					s_pc_final <= s_pc;
				end if;
		end process seq;

		o_pc <= s_pc_final;
end counter_calculation_arch;
