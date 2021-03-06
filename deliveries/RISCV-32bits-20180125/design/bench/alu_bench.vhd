library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;
--use LIB_PIPELINE.registerfile.all;

library LIB_PIPELINE_BENCH;
use LIB_PIPELINE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_alu is 
	generic (runner_cfg : string);
end entity tb_alu;

architecture bench_arch of tb_alu is
	component alu port (		i_op1		: in std_logic_vector(c_NBITS - 1 downto 0);	-- First Operand
								i_op2		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Second Operand
								i_signed	: in std_logic;									-- Signed or Unsigned
								i_amount	: in std_logic_vector(4 downto 0);				-- Amount of shift
								i_sel		: in std_logic_vector(2 downto 0);				-- Selects the operation
								o_result	: out std_logic_vector(c_NBITS - 1 downto 0));	-- Result
	end component;

	signal alu_op1		: std_logic_vector(c_NBITS - 1 downto 0)	:= (others => '0');
	signal alu_op2		: std_logic_vector(c_NBITS - 1 downto 0)	:= (others => '0');
	signal alu_signed	: std_logic									:= '0';
	signal alu_amount	: std_logic_vector(4 downto 0)				:= (others => '0');
	signal alu_sel		: std_logic_vector(2 downto 0)				:= (others => '0');
	signal alu_result	: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
		alu1 : alu port map (	i_op1		=> alu_op1,		-- Module alu1
								i_op2		=> alu_op2,		-- connection signal with input/output
								i_signed	=> alu_signed,
								i_amount	=> alu_amount,
								i_sel		=> alu_sel,
								o_result	=> alu_result);
		process
			begin
				test_runner_setup(runner, runner_cfg);

				
				wait for HALF_PERIOD;						
				alu_op1 <= "00000000000000000000000000000011";										 -- Allocation of alu_op1	
				wait for HALF_PERIOD;
				assert alu_result = alu_op1 report "Problem in the register value !" severity error; -- Verification of the value of alu_op1

				wait for HALF_PERIOD;
				alu_op1 <= "00000000000000000000000000000011";
				alu_op2 <= "00110000000000000000000000000000";										-- Allocation of alu_op2
				wait for HALF_PERIOD;
				assert alu_result = "00110000000000000000000000000011" report "Problem in the register value !" severity error; -- Verification of the value of alu_op2

				wait for HALF_PERIOD;
				alu_sel <= "001";																	
				wait for HALF_PERIOD;
				assert alu_result = alu_op1 report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_amount <= "00100";
				wait for HALF_PERIOD;
				assert alu_result = "00000000000000000000000000110000" report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_sel <= "101";			
				alu_amount <= "00000";
				wait for HALF_PERIOD;
				assert alu_result = alu_op1 report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_amount <= "10000";
				wait for HALF_PERIOD;
				assert alu_result =  "00000000000000000000000000000000" report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_op1 <= "11000000000000000000000000000011";
				wait for HALF_PERIOD;
				assert alu_result =  "00000000000000001100000000000000" report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_op1 <= "11000000000000000000000000000000";
				alu_signed <= '1';
				wait for HALF_PERIOD;
				assert alu_result =  "11111111111111111100000000000000" report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_op1 <= "00010000000000000000000000000011";
				alu_op2 <= "00110000000000000000000000000001";
				alu_sel <= "111";
				wait for HALF_PERIOD;
				assert alu_result = "00010000000000000000000000000001" report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				alu_op1 <= "00010000000000000000000000000011";
				alu_op2 <= "00110000000000000000000000000001";
				alu_sel <= "110";
				wait for HALF_PERIOD;
				assert alu_result = "00110000000000000000000000000011" report "Problem in the register value !" severity error;

				wait for HALF_PERIOD;
				--assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);				
		end process;
end bench_arch;

