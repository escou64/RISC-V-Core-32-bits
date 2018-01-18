library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

library LIB_PIPELINE_BENCH;
use LIB_PIPELINE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_demo is 
	generic (runner_cfg : string);
end entity tb_demo;
	
architecture bench_arch of tb_demo is

	component pipeline port (	i_rstn			: in std_logic;
								i_clk			: in std_logic;
								o_imem_addr		: out std_logic_vector(c_NBITS - 1 downto 0);
								o_imem_data		: out std_logic_vector(c_NBITS - 1 downto 0);
								o_imem_write	: out std_logic;
								o_imem_size		: out std_logic_vector(1 downto 0);
								i_imem_data		: in std_logic_vector(c_NBITS - 1 downto 0);
								i_imem_miss		: in std_logic;
								o_dmem_addr		: out std_logic_vector(c_NBITS - 1 downto 0);
								o_dmem_data		: out std_logic_vector(c_NBITS - 1 downto 0);
								o_dmem_write	: out std_logic;
								o_dmem_size		: out std_logic_vector(1 downto 0);
								i_dmem_data		: in std_logic_vector(c_NBITS - 1 downto 0);
								i_dmem_miss		: in std_logic);
	end component pipeline;

	signal s_rstn			: std_logic					:= '1';
	signal s_clk			: std_logic					:= '1';

	signal s_imem_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_write		: std_logic;
	signal s_imem_size		: std_logic_vector(1 downto 0);		
	signal s_imem_idata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_miss		: std_logic					:= '1';

	signal s_dmem_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_write		: std_logic;
	signal s_dmem_size		: std_logic_vector(1 downto 0);
	signal s_dmem_idata		: std_logic_vector(c_NBITS - 1 downto 0)	:= "11111111111111111111101000101101";	
	signal s_dmem_miss		: std_logic					:= '1';

	begin

		pipeline1 : pipeline port map (		i_rstn			=> s_rstn,
											i_clk			=> s_clk,
											o_imem_addr		=> s_imem_addr,
											o_imem_data		=> s_imem_odata,
											o_imem_write	=> s_imem_write,
											o_imem_size		=> s_imem_size,
											i_imem_data		=> s_imem_idata,
											i_imem_miss		=> s_imem_miss,
											o_dmem_addr		=> s_dmem_addr,
											o_dmem_data		=> s_dmem_odata,
											o_dmem_write	=> s_dmem_write,
											o_dmem_size		=> s_dmem_size,
											i_dmem_data		=> s_dmem_idata,
											i_dmem_miss		=> s_dmem_miss);

		s_clk <= not (s_clk) after HALF_PERIOD;

   		process
			file f_inst				: text open read_mode is "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/demo_bench/instructions.txt";
			variable v_inst_line	: line;
			variable v_inst			: std_logic_vector(c_NBITS - 1 downto 0);

			file f_results			: text open write_mode is "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/demo_bench/results.txt";
			variable v_result_line	: line;
			variable v_result		: std_logic_vector(c_NBITS - 1 downto 0);
	
			file f_pc			: text open write_mode is "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/demo_bench/pc.txt";
			variable v_pc_line	: line;
			variable v_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	
			begin
				test_runner_setup(runner, runner_cfg);
				wait for QUARTER_PERIOD;
				
				-- Verifications for Reset
				s_rstn <= '0';
				wait for PERIOD;
				s_rstn <= '1';
				
				while not endfile(f_inst) loop
					readline(f_inst,v_inst_line);
					read(v_inst_line, v_inst);
					s_imem_idata <= v_inst;

					wait for PERIOD;

					if s_dmem_write = '1' then
						write(v_result_line,s_dmem_odata, right, 15);
						hwrite(v_result_line,s_dmem_odata, right, 15);
						write(v_result_line,to_integer(unsigned(s_dmem_odata)), right, 15);
						writeline(f_results, v_result_line);						
					end if;

					write(v_pc_line,s_imem_addr, right, 15);
					--write(v_pc_line,to_integer(unsigned(s_imem_addr)), right, 15);
					hwrite(v_pc_line,s_imem_addr, right, 15);
					write(v_pc_line,to_integer(unsigned(s_imem_addr)), right, 15);
					writeline(f_pc, v_pc_line);
				end loop;							

				s_imem_idata <= (others => '0');	
				for I in 0 to 4 loop
					wait for PERIOD;

					if s_dmem_write = '1' then
						write(v_result_line,s_dmem_odata, right, 15);
						hwrite(v_result_line,s_dmem_odata, right, 15);
						write(v_result_line,to_integer(unsigned(s_dmem_odata)), right, 15);
						writeline(f_results, v_result_line);
					end if;

					write(v_pc_line,s_imem_addr, right, 15);
					hwrite(v_pc_line,s_imem_addr, right, 15);
					write(v_pc_line,to_integer(unsigned(s_imem_addr)), right, 15);
					writeline(f_pc, v_pc_line);
				end loop;

				wait for HALF_PERIOD;
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;


end bench_arch;
