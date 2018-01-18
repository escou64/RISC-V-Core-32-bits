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

entity tb_pipeline is 
	generic (runner_cfg : string);
end entity tb_pipeline;
	
architecture bench_arch of tb_pipeline is

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
			file f_inst		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/instructions.txt";
			variable v_inst_line	: line;
			variable v_inst		: std_logic_vector(c_NBITS - 1 downto 0);

			file f_ddatain		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/datas_in.txt";
			variable v_ddatain_line	: line;
			variable v_ddatain	: std_logic_vector(c_NBITS - 1 downto 0);

			file f_iaddress		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/iaddress.txt";
			variable v_iaddress_line: line;
			variable v_iaddress	: std_logic_vector(c_NBITS - 1 downto 0);

			file f_daddress		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/daddress.txt";
			variable v_daddress_line: line;
			variable v_daddress	: std_logic_vector(c_NBITS - 1 downto 0);

			file f_ddataout		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/datas_out.txt";
			variable v_ddataout_line: line;
			variable v_ddataout	: std_logic_vector(c_NBITS - 1 downto 0);

			file f_dwrite		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/dwrite.txt";
			variable v_dwrite_line	: line;
			variable v_dwrite	: std_logic_vector(c_NBITS - 1 downto 0);

			file f_dsize		: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/pipeline_bench/dsize.txt";
			variable v_dsize_line	: line;
			variable v_dsize	: std_logic_vector(c_NBITS - 1 downto 0);
			
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

					if(not endfile(f_ddatain)) then
						readline(f_ddatain,v_ddatain_line);
						read(v_ddatain_line, v_ddatain);
						s_dmem_idata <= v_ddatain;
					end if;

					wait for PERIOD;
					--s_dmem_miss <= '0';
					if(not endfile(f_iaddress)) then
						readline(f_iaddress,v_iaddress_line);
						read(v_iaddress_line, v_iaddress);
						assert s_imem_addr = v_iaddress report "Problem in instruction address !" severity error;
					end if;

					if(not endfile(f_ddataout)) then
						readline(f_ddataout,v_ddataout_line);
						read(v_ddataout_line, v_ddataout);
						assert s_dmem_odata = v_ddataout report "Problem in data out !" severity error;
					end if;
				end loop;				
		
				--s_dmem_miss <= '1';
	
				for I in 0 to 4 loop
					wait for PERIOD;
					if(not endfile(f_iaddress)) then
						readline(f_iaddress,v_iaddress_line);
						read(v_iaddress_line, v_iaddress);
						assert s_imem_addr = v_iaddress report "Problem in instruction address !" severity error;
					end if;

					if(not endfile(f_ddataout)) then
						readline(f_ddataout,v_ddataout_line);
						read(v_ddataout_line, v_ddataout);
						assert s_dmem_odata = v_ddataout report "Problem in data out !" severity error;
					end if;
				end loop;

				wait for HALF_PERIOD;
				--assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;


end bench_arch;
