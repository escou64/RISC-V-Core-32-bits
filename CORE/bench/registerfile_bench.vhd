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

entity tb_registerfile is 
	--generic (runner_cfg : string);
end entity tb_registerfile;

architecture bench_arch of tb_registerfile is
	component registerfile port (	i_rstn		: in std_logic;
									i_clk		: in std_logic;
									i_rs1select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
									i_rs2select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
									o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);
									o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);
									i_write		: in std_logic;
									i_rdselect	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
									i_data		: in std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	signal sig_rstn			: std_logic	:= '1';
	signal sig_clk			: std_logic := '1';
	signal sig_rs1select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "11111";
	signal sig_rs2select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "01010";
	signal sig_rs1			: std_logic_vector(c_NBITS - 1 downto 0);
	signal sig_rs2			: std_logic_vector(c_NBITS - 1 downto 0);
	signal sig_write		: std_logic := '0';
	signal sig_rdselect		: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)  := "00000";
	signal sig_data			: std_logic_vector(c_NBITS - 1 downto 0)			:= (others => '1');			

	begin
		registerfile1 : registerfile port map (	i_rstn		=> sig_rstn,
												i_clk		=> sig_clk,	
												i_rs1select	=> sig_rs1select,
												i_rs2select	=> sig_rs2select,
												o_rs1		=> sig_rs1,
												o_rs2		=> sig_rs2,
												i_write		=> sig_write,
												i_rdselect	=> sig_rdselect,
												i_data		=> sig_data);
	
		sig_clk <= not (sig_clk) after HALF_PERIOD;

		process
			begin
				--test_runner_setup(runner, runner_cfg);
				wait for HALF_PERIOD*5;
				sig_rstn <= '0';
				wait for PERIOD*5;
				sig_rstn <= '1';
				wait for PERIOD*5;
				sig_write <= '1';
				wait for PERIOD*5;
				sig_rdselect <= (others => '1');
				wait for PERIOD*5;
				--test_runner_cleanup(runner);
		end process;
end bench_arch;

