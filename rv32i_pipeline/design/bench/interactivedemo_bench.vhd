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

entity tb_interactivedemo is 
	generic (runner_cfg : string);
end entity tb_interactivedemo;
	
architecture bench_arch of tb_interactivedemo is

	component pipeline port (	i_rstn			: in std_logic;									-- Asynchronous Negative Reset
								i_clk			: in std_logic;									-- Clock
								o_imem_addr		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Instruction Address
								o_imem_data		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Instruction to write (Not Used)
								o_imem_write	: out std_logic;								-- Instruction Write (Not Used)
								o_imem_size		: out std_logic_vector(1 downto 0);				-- Instruction Size (Always Word)
								i_imem_data		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Read Instruction
								i_imem_miss		: in std_logic;									-- Instruction Cache 'Miss'
								o_dmem_addr		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Data Address
								o_dmem_data		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Data to write
								o_dmem_write	: out std_logic;								-- Data Write
								o_dmem_size		: out std_logic_vector(1 downto 0);				-- Data Size
								i_dmem_data		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Read Data
								i_dmem_miss		: in std_logic);								-- Daata Cache 'Miss'
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

	type fakememory is array (0 to 65535) of std_logic_vector(7 downto 0);
	signal m_inst : fakememory;
	signal m_data : fakememory;
	signal s_test_writeinst		: std_logic									:= '0';
	signal s_test_newinst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_test_newinstaddr	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_test_writedata		: std_logic									:= '0';
	signal s_test_newdata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_test_newdataaddr	: std_logic_vector(c_NBITS - 1 downto 0);


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

		-- FAKE INSTRUCTION MEMORY
		imem : process(s_test_writeinst, s_test_newinstaddr, s_test_newinst)
			begin
				if s_test_writeinst = '1' then
					m_inst(to_integer(unsigned(s_test_newinstaddr)))			<= s_test_newinst(7 downto 0);
					m_inst(to_integer(unsigned(s_test_newinstaddr)) + 1 )		<= s_test_newinst(15 downto 8);
					m_inst(to_integer(unsigned(s_test_newinstaddr)) + 2 )		<= s_test_newinst(23 downto 16);
					m_inst(to_integer(unsigned(s_test_newinstaddr)) + 3 )		<= s_test_newinst(31 downto 24);
				end if;	
		end process;
		s_imem_idata(7 downto 0) <= m_inst(to_integer(unsigned(s_imem_addr(15 downto 0))));
		s_imem_idata(15 downto 8) <= m_inst(to_integer(unsigned(s_imem_addr(15 downto 0))) + 1);
		s_imem_idata(23 downto 16) <= m_inst(to_integer(unsigned(s_imem_addr(15 downto 0))) + 2);
		s_imem_idata(31 downto 24) <= m_inst(to_integer(unsigned(s_imem_addr(15 downto 0))) + 3);

		-- FAKE DATA MEMORY
		dmem : process(s_dmem_write, s_dmem_addr, s_dmem_odata, s_dmem_size, s_test_writedata, s_test_newdata, s_test_newdataaddr)
			begin
				if s_dmem_write = '1' then					
					if s_dmem_size = "00" then
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))))		<= s_dmem_odata(7 downto 0); 	
					elsif s_dmem_size = "01" then
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))))		<= s_dmem_odata(7 downto 0);
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 1 )	<= s_dmem_odata(15 downto 8);
					elsif s_dmem_size = "10" then 
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))))		<= s_dmem_odata(7 downto 0);
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 1 )	<= s_dmem_odata(15 downto 8);
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 2 )	<= s_dmem_odata(23 downto 16);
						m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 3 )	<= s_dmem_odata(31 downto 24);
					end if;
				elsif s_test_writedata = '1' then
					m_data(to_integer(unsigned(s_test_newdataaddr(15 downto 0))))		<= s_test_newdata(7 downto 0);
					m_data(to_integer(unsigned(s_test_newdataaddr(15 downto 0))) + 1 )	<= s_test_newdata(15 downto 8);
					m_data(to_integer(unsigned(s_test_newdataaddr(15 downto 0))) + 2 )	<= s_test_newdata(23 downto 16);
					m_data(to_integer(unsigned(s_test_newdataaddr(15 downto 0))) + 3 )	<= s_test_newdata(31 downto 24);	
				end if;	
		end process;
		s_dmem_idata(7 downto 0) <= m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))));
		s_dmem_idata(15 downto 8) <= m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 1);
		s_dmem_idata(23 downto 16) <= m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 2);
		s_dmem_idata(31 downto 24) <= m_data(to_integer(unsigned(s_dmem_addr(15 downto 0))) + 3);


   		process
			file f_inst				: text open read_mode is "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/bench/interactivedemo/pgcd.txt";
			variable v_inst_line	: line;
			variable v_inst			: std_logic_vector(c_NBITS - 1 downto 0);

			-- The different parameters used for the PGCD calculation
			-- The two values must be between 0 and 4.294.967.296
			-- The calculation time is proportional to the difference between the two values
			variable v_test_arg_1		: integer := 75830;				-- First value
			variable v_test_arg_addr_1	: integer := 200;				-- First value address
			variable v_test_arg_2		: integer := 19680;				-- Second value
			variable v_test_arg_addr_2	: integer := 204;				-- Second value address
			begin
				test_runner_setup(runner, runner_cfg);
				wait for QUARTER_PERIOD;
				
				-- Instruction Memory Initialization
				s_test_writeinst	<= '1';
				s_test_newinstaddr	<= (others => '0');
				while not endfile(f_inst) loop
					readline(f_inst,v_inst_line);
					read(v_inst_line, v_inst);
					s_test_newinst <= v_inst;

					wait for PERIOD;

					s_test_newinstaddr <= s_test_newinstaddr + "100";	
				end loop;
				s_test_writeinst	<= '0';

				-- Data Memory Initialization
				s_test_writedata	<= '1';
				s_test_newdataaddr	<= std_logic_vector(to_unsigned(v_test_arg_addr_1, s_test_newdataaddr'length));
				s_test_newdata		<= std_logic_vector(to_unsigned(v_test_arg_1, s_test_newdata'length));
				wait for PERIOD;
				s_test_newdataaddr	<= std_logic_vector(to_unsigned(v_test_arg_addr_2, s_test_newdataaddr'length));
				s_test_newdata		<= std_logic_vector(to_unsigned(v_test_arg_2, s_test_newdata'length));
				wait for PERIOD;
				s_test_writedata	<= '0';


				-- Verifications for Reset
				s_rstn <= '0';
				wait for PERIOD;
				s_rstn <= '1';

				-- Beginning of the real test
				wait for PERIOD*2000;					
				
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;


end bench_arch;
