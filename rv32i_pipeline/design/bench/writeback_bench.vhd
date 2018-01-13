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

entity tb_writeback is 
	generic (runner_cfg : string);
end entity tb_writeback;

architecture bench_arch of tb_writeback is
	component writeback port (	i_inst			: in std_logic_vector(11 downto 0);
								i_validity		: in std_logic;
								i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
								o_write			: out std_logic;
								o_rdselect		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								o_data			: out std_logic_vector(c_NBITS - 1 downto 0));								
	end component;

	component registerfile port (	i_rstn		: in std_logic;
									i_clk		: in std_logic;
									i_freeze	: in std_logic;
									i_rs1select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
									i_rs2select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
									o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);
									o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);
									i_write		: in std_logic;
									i_rdselect	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
									i_data		: in std_logic_vector(c_NBITS - 1 downto 0));

	end component;
	
	signal rstn		: std_logic		:= '1';
	signal clk		: std_logic		:= '1';
	signal freeze	: std_logic		:= '1';

	signal s_regf_rs1select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal s_regf_rs2select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal s_regf_rs1		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_regf_rs2		: std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_accm_pc		: std_logic_vector(c_NBITS - 1 downto 0)				:= c_PC_INIT;
	signal s_accm_inst		: std_logic_vector(11 downto 0)							:= (others => '0');
	signal s_accm_validity	: std_logic												:= '0';
	signal s_accm_rd		: std_logic_vector(c_NBITS - 1 downto 0)				:= c_REG_INIT;

	signal s_regf_write		: std_logic;
	signal s_regf_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_data		: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin

		registerfile1 : registerfile port map (	i_rstn		=> rstn,
												i_clk		=> clk,	
												i_freeze	=> freeze,
												i_rs1select	=> s_regf_rs1select,
												i_rs2select	=> s_regf_rs2select,
												o_rs1		=> s_regf_rs1,
												o_rs2		=> s_regf_rs2,
												i_write		=> s_regf_write,
												i_rdselect	=> s_regf_rdselect,
												i_data		=> s_regf_data);
	
		writeback1 : writeback port map (	i_inst			=> s_accm_inst,
											i_validity		=> s_accm_validity,
											i_rd			=> s_accm_rd,
											o_write			=> s_regf_write,
											o_rdselect		=> s_regf_rdselect,
											o_data			=> s_regf_data);

		clk <= not (clk) after HALF_PERIOD;

		process
			begin
				test_runner_setup(runner, runner_cfg);				
				wait for QUARTER_PERIOD;
				
				-- Verifications for Reset
				rstn <= '0';
				wait for PERIOD;
				rstn <= '1';
				wait for PERIOD;
								
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

