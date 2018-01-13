library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;
--use LIB_CORE.reg_status.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_reg_status is 
	generic (runner_cfg : string);
end entity tb_reg_status;

architecture bench_arch of tb_reg_status is

	component reg_status port (	i_rstn			: in std_logic;
								i_clk			: in std_logic;
								i_freeze		: in std_logic;
								i_csrselect		: in std_logic_vector(c_ADDR_CSR - 1 downto 0);
								i_retiredinst	: in std_logic;
								o_selectfault	: out std_logic;
								o_status		: out std_logic_vector(c_NBITS - 1 downto 0));					
	end component;

	signal rstn				: std_logic									:= '1';
	signal clk				: std_logic									:= '1';
	signal freeze			: std_logic									:= '1';
	signal dcde_csrselect	: std_logic_vector(c_ADDR_CSR - 1 downto 0)	:= "110000000000";
	signal wbck_retiredinst	: std_logic									:= '0';
	signal regs_selectfault	: std_logic;
	signal regs_status		: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin
	
		reg_status1 : reg_status port map (		i_rstn			=> rstn,
												i_clk			=> clk,
												i_freeze		=> freeze,
												i_csrselect		=> dcde_csrselect,
												i_retiredinst	=> wbck_retiredinst,
												o_selectfault	=> regs_selectfault, 
												o_status		=> regs_status);

		clk <= not (clk) after HALF_PERIOD;

		process
			begin
				test_runner_setup(runner, runner_cfg);
				wait for QUARTER_PERIOD;
				rstn <= '0';
				wait for PERIOD*5;
				rstn <= '1';
				wait for PERIOD*10;
				wbck_retiredinst <= '1';
				wait for PERIOD*5;
				wbck_retiredinst <= '0';
				wait for PERIOD*5;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

