library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity pc is port (	i_rstn				: in std_logic;										-- Asynhronous Negative Reset
					i_clk				: in std_logic;										-- Clock
					i_jump				: in std_logic;										-- Indicates a future jump
					i_branch			: in std_logic;										-- Indicates a future branch
					i_freeze			: in std_logic;										-- Freeze for Cache 'Miss'
					i_load_dependency	: in std_logic;										-- Indicates a Load Data Dependency
					i_newpc				: in std_logic_vector(c_NBITS - 1 downto 0);		-- New PC after branch or jump
					o_pc				: out std_logic_vector(c_NBITS - 1 downto 0));		-- Output
end pc;

architecture pc_arch of pc is

	signal s_pc			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_pc_final	: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
		-- Combinatorial Calculation of the Program Counter
		s_pc <=	i_newpc when (i_jump or i_branch) = '1' else		
				s_pc_final + c_PC_STEP;
		
		-- Assignments of the registers
		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					s_pc_final <= c_PC_INIT;
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1' and i_load_dependency = '0') then
					s_pc_final <= s_pc;
				end if;
		end process seq;

		-- Assignment of the output
		o_pc <= s_pc_final;
end pc_arch;
