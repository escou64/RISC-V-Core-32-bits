library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_demo is 
	generic (runner_cfg : string);
end entity tb_demo;
	
architecture bench_arch of tb_demo is

	component pipeline port (		i_rstn			: in std_logic;
									i_clk			: in std_logic;
									o_iaddress		: out std_logic_vector(c_NBITS - 1 downto 0);
									i_idata			: in std_logic_vector(c_NBITS - 1 downto 0);
									o_daddress		: out std_logic_vector(c_NBITS - 1 downto 0);
									o_ddata			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_dwrite		: out std_logic;
									o_dsize			: out std_logic_vector(1 downto 0);
									i_ddata			: in std_logic_vector(c_NBITS - 1 downto 0));
	end component pipeline;

	signal s_rstn			: std_logic					:= '1';
	signal s_clk			: std_logic					:= '1';

	signal s_imem_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_data		: std_logic_vector(c_NBITS - 1 downto 0);	

	signal s_dmem_daddress	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_oddata	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_dwrite	: std_logic;
	signal s_dmem_dsize		: std_logic_vector(1 downto 0);
	signal s_dmem_iddata	: std_logic_vector(c_NBITS - 1 downto 0);	


	begin

		pipeline1 : pipeline port map (		i_rstn		=> s_rstn,
											i_clk		=> s_clk,
											o_iaddress	=> s_imem_addr,
											i_idata		=> s_imem_data,
											o_daddress	=> s_dmem_daddress,
											o_ddata		=> s_dmem_oddata,
											o_dwrite	=> s_dmem_dwrite,
											o_dsize		=> s_dmem_dsize,
											i_ddata		=> s_dmem_iddata);

		s_clk <= not (s_clk) after HALF_PERIOD;

   		process
			file f_inst				: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/CORE/design/bench/demo_bench/instructions.txt";
			variable v_inst_line	: line;
			variable v_inst			: std_logic_vector(c_NBITS - 1 downto 0);

			file f_results			: text open write_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/CORE/design/bench/demo_bench/results.txt";
			variable v_result_line	: line;
			variable v_result		: std_logic_vector(c_NBITS - 1 downto 0);
	
			file f_pc			: text open write_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/CORE/design/bench/demo_bench/pc.txt";
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
					s_imem_data <= v_inst;

					wait for PERIOD;

					if s_dmem_dwrite = '1' then
						write(v_result_line,s_dmem_oddata, right, 15);
						hwrite(v_result_line,s_dmem_oddata, right, 15);
						write(v_result_line,to_integer(unsigned(s_dmem_oddata)), right, 15);
						writeline(f_results, v_result_line);						
					end if;

					write(v_pc_line,s_imem_addr, right, 15);
					--write(v_pc_line,to_integer(unsigned(s_imem_addr)), right, 15);
					hwrite(v_pc_line,s_imem_addr, right, 15);
					write(v_pc_line,to_integer(unsigned(s_imem_addr)), right, 15);
					writeline(f_pc, v_pc_line);
				end loop;				
		
				s_imem_data <= (others => '0');	
				for I in 0 to 4 loop
					wait for PERIOD;

					if s_dmem_dwrite = '1' then
						write(v_result_line,s_dmem_oddata, right, 15);
						hwrite(v_result_line,s_dmem_oddata, right, 15);
						write(v_result_line,to_integer(unsigned(s_dmem_oddata)), right, 15);
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
