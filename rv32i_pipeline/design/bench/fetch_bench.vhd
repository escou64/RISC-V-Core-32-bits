library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;


library vunit_lib;
context vunit_lib.vunit_context;

entity tb_fetch is 
	generic (runner_cfg : string);
end entity tb_fetch;

architecture bench_arch of tb_fetch is
	component fetch port (				i_rstn			: in std_logic;
										i_clk			: in std_logic;
										i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
										i_data			: in std_logic_vector(c_NBITS - 1 downto 0);
										i_jump			: in std_logic;
										i_branch		: in std_logic;
										i_freeze		: in std_logic;
										o_addr			: out std_logic_vector(c_NBITS - 1 downto 0);
										o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
										o_write			: out std_logic;
										o_size			: out std_logic_vector(1 downto 0);
										o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
										o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
										o_validity		: out std_logic);
	end component;

	signal s_rstn				: std_logic									:= '1';
	signal s_clk				: std_logic									:= '1';
	signal s_freeze				: std_logic									:= '1';
	signal s_calc_pc			: std_logic_vector(c_NBITS - 1 downto 0)	:= c_PC_INIT;
	signal s_imem_addr			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_odata			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_write			: std_logic;
	signal s_imem_size			: std_logic_vector(1 downto 0);
	signal s_imem_idata			: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
	signal s_ftch_pc			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_inst			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_validity		: std_logic;
	signal s_exec_jump			: std_logic									:= '0';
	signal s_exec_branch		: std_logic									:= '0';

	begin
		fetch1 : fetch port map (				i_rstn			=> s_rstn,
												i_clk			=> s_clk,	
												i_pc			=> s_calc_pc,
												i_data			=> s_imem_idata,
												i_jump			=> s_exec_jump,
												i_branch		=> s_exec_branch,
												i_freeze		=> s_freeze,
												o_addr			=> s_imem_addr,
												o_data			=> s_imem_odata,
												o_write			=> s_imem_write,
												o_size			=> s_imem_size,
												o_pc			=> s_ftch_pc,
												o_inst			=> s_ftch_inst,
												o_validity		=> s_ftch_validity);

		s_clk <= not (s_clk) after HALF_PERIOD;

		process
			variable v_calc_pc		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_PC_INIT;
			variable v_imem_data	: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;

			begin
				test_runner_setup(runner, runner_cfg);
				s_rstn <= '1';			
				wait for QUARTER_PERIOD;
				
				-- Verifications for Reset
				s_rstn <= '0';
				wait for HALF_PERIOD;
				assert s_ftch_pc = c_PC_INIT report "Problem for resetting 1" severity error;
				assert s_ftch_inst = c_REG_INIT report "Problem for resetting 2" severity error;
				assert s_ftch_validity = '0' report "Problem for resetting 3" severity error;
				wait for HALF_PERIOD;
				s_rstn <= '1';
				wait for PERIOD;

				for I in 0 to 20 loop
					s_calc_pc		<= v_calc_pc;
					s_imem_idata	<= v_imem_data;
					wait for HALF_PERIOD;
					assert s_imem_addr = s_calc_pc report "Problem for accessing instruction memory" severity error;
					wait for HALF_PERIOD;
					assert s_ftch_pc = s_calc_pc report "Problem for fetching instruction 1" severity error;
					assert s_ftch_inst = s_imem_idata report "Problem for fetching instruction 2" severity error;
					assert s_ftch_validity = '1' report "Problem for fetching instruction 3" severity error;

					v_calc_pc	:= v_calc_pc + "1011";
					v_imem_data	:= v_imem_data + "10110";
				end loop;			
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

