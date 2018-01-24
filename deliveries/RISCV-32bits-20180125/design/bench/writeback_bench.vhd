library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

library LIB_PIPELINE_BENCH;
use LIB_PIPELINE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_writeback is 
	generic (runner_cfg : string);
end entity tb_writeback;

architecture bench_arch of tb_writeback is
	component writeback port (	i_inst			: in std_logic_vector(11 downto 0);							-- Instruction
								i_validity		: in std_logic;												-- Instrution Validity
								i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);				-- Accees Memory Result
								o_write			: out std_logic;											-- Write Integer Register
								o_rdselect		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Select Integer Register Destination
								o_data			: out std_logic_vector(c_NBITS - 1 downto 0));				-- Data to write								
	end component;

	component reg_integer port (	i_rstn		: in std_logic;												-- Asynhronous Negative Reset					
									i_clk		: in std_logic;												-- Clock
									i_freeze	: in std_logic;												-- Freeze for Cache 'Miss'
									i_rs1select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects Source Register 1
									i_rs2select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects Source Register 2
									o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 1
									o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 2
									i_write		: in std_logic;												-- Write Signal
									i_rdselect	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects register for writing
									i_data		: in std_logic_vector(c_NBITS - 1 downto 0));				-- Data to write 

	end component;
	
	signal rstn		: std_logic		:= '1';
	signal clk		: std_logic		:= '1';
	signal freeze	: std_logic		:= '1';

	signal s_regf_rs1select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal s_regf_rs2select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal s_regf_rs1		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_regf_rs2		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_inst		: std_logic_vector(11 downto 0)							:= (others => '0');
	signal s_accm_validity	: std_logic												:= '0';
	signal s_accm_rd		: std_logic_vector(c_NBITS - 1 downto 0)				:= c_REG_INIT;

	signal s_regf_write		: std_logic;
	signal s_regf_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_data		: std_logic_vector(c_NBITS - 1 downto 0);
	
	begin

		reg_integer1 : reg_integer port map (	i_rstn		=> rstn,				-- Module reg_integer1
												i_clk		=> clk,					-- Connection signal with input/output
												i_freeze	=> freeze,
												i_rs1select	=> s_regf_rs1select,
												i_rs2select	=> s_regf_rs2select,
												o_rs1		=> s_regf_rs1,
												o_rs2		=> s_regf_rs2,
												i_write		=> s_regf_write,
												i_rdselect	=> s_regf_rdselect,
												i_data		=> s_regf_data);
	
		writeback1 : writeback port map (	i_inst			=> s_accm_inst,			-- Module writeback1
											i_validity		=> s_accm_validity,		-- Connection signal with input/output
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
				
				s_accm_validity <= '1';

				-- Verifications for differents value of register rd to write in register file
				wait for HALF_PERIOD;
				s_accm_inst <= "00000" & c_OPCODE32_LUI;																		--Allocation of instruction
				s_accm_rd <= "00000000000000000000000000001000";																-- Allocation of rd
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;								-- Verification of the value of write signal
				assert s_regf_rdselect = "00000" report "Problem signal rdselect output  " severity error;						-- Verification of the value of rd address 
				assert s_regf_data = "00000000000000000000000000001000" report "Problem signal data output  " severity error;	-- Verification of the value of data to write

				wait for HALF_PERIOD;
				s_accm_inst <= "00001" & c_OPCODE32_AUIPC;
				s_accm_rd <= "00000000000000000000000001001000";
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00001" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000001001000" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "00010" & c_OPCODE32_OP_IMM;
				s_accm_rd <= "10000000000000000000000000001000";
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00010" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "10000000000000000000000000001000" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "00011" & c_OPCODE32_OP;
				s_accm_rd <= "00000000000000000000000000001100";
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00011" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000000001100" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "00100" & c_OPCODE32_LOAD;
				s_accm_rd <= "00000000000000000000000000001010";
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00100" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000000001010" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "01000" & c_OPCODE32_STORE;
				s_accm_rd <= "00000000000000000000000000001000";
				wait for HALF_PERIOD;
				assert s_regf_write = '0' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00000" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000000001000" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "00101" & c_OPCODE32_JAL;
				s_accm_rd <= "00000000000000000000000000011000";
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00101" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000000011000" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "01000" & c_OPCODE32_JALR;
				s_accm_rd <= "00000000000000010000000000001000";
				wait for HALF_PERIOD;
				assert s_regf_write = '1' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "01000" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000010000000000001000" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "11111" & c_OPCODE32_BRANCH;
				s_accm_rd <= "00000000000000000000000111001000";
				wait for HALF_PERIOD;
				assert s_regf_write = '0' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "00000" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000111001000" report "Problem signal data output  " severity error;

				wait for HALF_PERIOD;
				s_accm_inst <= "11011" & c_OPCODE32_MISC_MEM;
				s_accm_rd <= "00000000000000000000000101001000";
				wait for HALF_PERIOD;
				assert s_regf_write = '0' report "Problem signal write output  " severity error;
				assert s_regf_rdselect = "11011" report "Problem signal rdselect output  " severity error;
				assert s_regf_data = "00000000000000000000000101001000" report "Problem signal data output  " severity error;


								
				-- assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

