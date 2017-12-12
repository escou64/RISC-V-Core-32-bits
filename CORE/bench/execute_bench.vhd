library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;
--use LIB_CORE.registerfile.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_execute is 
	generic (runner_cfg : string);
end entity tb_execute;

architecture bench_arch of tb_execute is
	component execute port (	i_rstn			: in std_logic;
								i_clk			: in std_logic;
								i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity_dcde	: in std_logic;
								i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rs1_dependency: in std_logic_vector(2 downto 0);
								i_rs2_dependency: in std_logic_vector(2 downto 0);
								i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
								i_rd_wbck		: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity_accm	: in std_logic;
								i_validity_wbck	: in std_logic;
								o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_validity		: out std_logic);
	end component;

	signal rstn				: std_logic												:= '1';
	signal clk				: std_logic												:= '1';
	signal dcde_pc			: std_logic_vector(c_NBITS - 1 downto 0)				:= "00000000000000000000000000000000";
	signal dcde_inst		: std_logic_vector(c_NBITS - 1 downto 0)				:= "00000000000000000000000000000000";
	signal dcde_validity	: std_logic												:= '1';
	--signal wbck_validity	: std_logic												:= '1';											
	signal dcde_rs1			: std_logic_vector(c_NBITS - 1 downto 0)				:= "00000000000000000000000000000000";
	signal dcde_rs2			: std_logic_vector(c_NBITS - 1 downto 0)				:= "00000000000000000000000000000000";
	signal dcde_rs1_dependency	: std_logic_vector(2 downto 0)						:= "000";
	signal dcde_rs2_dependency	: std_logic_vector(2 downto 0)						:= "000";

	signal accm_rd		: std_logic_vector(c_NBITS - 1 downto 0)				:= "00000000000000000000000000000000";
	signal wbck_rd		: std_logic_vector(c_NBITS - 1 downto 0)				:= "00000000000000000000000000000000";
	signal accm_validity	: std_logic											:= '1';
	signal wbck_validity	: std_logic											:= '1';

	signal exec_pc			: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_rs2			: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_rd			: std_logic_vector(c_NBITS - 1 downto 0);
	signal exec_validity	: std_logic;
	begin
		
		execute1 : execute port map (	i_rstn				=> rstn,
										i_clk				=> clk,
										i_pc				=> dcde_pc,
										i_inst				=> dcde_inst,
										i_validity_dcde		=> dcde_validity,
										i_rs1				=> dcde_rs1,
										i_rs2				=> dcde_rs2,
										i_rs1_dependency	=> dcde_rs1_dependency,
										i_rs2_dependency	=> dcde_rs2_dependency,
										i_rd_accm			=> accm_rd,
										i_rd_wbck			=> wbck_rd,
										i_validity_accm		=> accm_validity,
										i_validity_wbck		=> wbck_validity,
										o_pc				=> exec_pc,
										o_inst				=> exec_inst,
										o_rs2				=> exec_rs2,
										o_rd				=> exec_rd,
										o_validity			=> exec_validity);

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

