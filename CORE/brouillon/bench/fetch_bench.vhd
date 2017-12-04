library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;
--use LIB_CORE.registerfile.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

--library vunit_lib;
--context vunit_lib.vunit_context;

entity tb_fetch is 
--	generic (runner_cfg : string);
end entity tb_fetch;


architecture bench_arch of tb_decode is

	begin


		process
			begin
				--assert false report "End of the Simulation !" severity failure;
--				test_runner_cleanup(runner);
		end process;
end bench_arch;
