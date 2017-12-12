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

entity tb_decode is 
	generic (runner_cfg : string);
end entity tb_decode;

architecture bench_arch of tb_decode is
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

	component decode port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_ftch	: in std_logic;
							--i_validity_exec	: in std_logic;
							--i_validity_accm	: in std_logic;
							--i_validity_wbck	: in std_logic;
							o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs1			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic;
							o_rs1select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							o_rs2select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
							o_rs1_dependency: out std_logic_vector(2 downto 0);
							o_rs2_dependency: out std_logic_vector(2 downto 0));
	end component;


	signal rstn				: std_logic												:= '1';
	signal clk				: std_logic												:= '1';
	signal regf_rs1select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "11111";
	signal regf_rs2select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "01010";
	signal regf_rs1			: std_logic_vector(c_NBITS - 1 downto 0);
	signal regf_rs2			: std_logic_vector(c_NBITS - 1 downto 0);
	signal regf_write		: std_logic												:= '0';
	signal regf_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal regf_data		: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '1');

	signal ftch_pc			: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');
	signal ftch_inst		: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');	--"11111111111111111111111111100011";
	signal ftch_validity	: std_logic												:= '1';
	--signal exec_validity	: std_logic												:= '1';
	--signal accm_validity	: std_logic												:= '1';
	--signal wbck_validity	: std_logic												:= '1';											
	signal dcde_pc			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_rs1			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_rs2			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_validity	: std_logic;
	signal dcde_rs1_dependency	: std_logic_vector(2 downto 0);
	signal dcde_rs2_dependency	: std_logic_vector(2 downto 0);

	begin
		registerfile1 : registerfile port map (	i_rstn		=> rstn,
												i_clk		=> clk,	
												i_rs1select	=> regf_rs1select,
												i_rs2select	=> regf_rs2select,
												o_rs1		=> regf_rs1,
												o_rs2		=> regf_rs2,
												i_write		=> regf_write,
												i_rdselect	=> regf_rdselect,
												i_data		=> regf_data);

		decode1 : decode port map (	i_rstn		=> rstn,
									i_clk		=> clk,
									i_pc		=> ftch_pc,		
									i_inst		=> ftch_inst,		
									i_validity_ftch	=> ftch_validity,
									--i_validity_exec => exec_validity,
									--i_validity_accm => accm_validity,
									--i_validity_wbck => wbck_validity,	
									o_pc		=> dcde_pc,		
									o_inst		=> dcde_inst,		
									o_rs1		=> dcde_rs1,
									o_rs2		=> dcde_rs2,
									o_validity	=> dcde_validity,
									o_rs1select	=> regf_rs1select,
									o_rs2select	=> regf_rs2select,
									i_rs1		=> regf_rs1,
									i_rs2		=> regf_rs2,
									o_rs1_dependency => dcde_rs1_dependency,
									o_rs2_dependency => dcde_rs2_dependency
									);
	
		clk <= not (clk) after HALF_PERIOD;

		process
			variable v_value_regfile : std_logic_vector(c_NBITS - 1 downto 0) := c_REG_INIT;
			variable v_address_regfile : std_logic_vector(4 downto 0) := "00000";
			begin
				test_runner_setup(runner, runner_cfg);				
				wait for QUARTER_PERIOD*5;
				
				-- Verifications for Reset
				rstn <= '0';
				wait for PERIOD;
				assert dcde_inst = c_REG_INIT report "Problem for resetting !" severity error;
				assert dcde_pc = c_PC_INIT report "Problem for resetting !" severity error;
				assert dcde_rs1 = c_REG_INIT report "Problem for resetting !" severity error;
				assert dcde_rs2 = c_REG_INIT report "Problem for resetting !" severity error;
				assert dcde_validity = '0' report "Problem for resetting !" severity error;
				assert regf_rs1select = "00000" report "Problem for resetting !" severity error;
				assert regf_rs2select = "00000" report "Problem for resetting !" severity error;

				wait for PERIOD*5;
				rstn <= '1';
				wait for PERIOD*5;

				--Writing differents datas in regfile
				regf_write <= '1';
				for I in 0 to c_NREGISTERS - 1 loop
					regf_data <= v_value_regfile;
					regf_rdselect <= v_address_regfile;
					wait for PERIOD;
					v_value_regfile := v_value_regfile + "1";
					v_address_regfile := v_address_regfile + "1";
				end loop;
				regf_write <= '0';

				-- Verifications for different valid instructions
				ftch_inst <= "0000000" & "00000" & "11111" & c_FUNC3_ADD & "01110" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "11111" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "00000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000011111" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				ftch_inst <= "0000000" & "10000" & "01110" & c_FUNC3_ADD & "01111" & c_OPCODE32_OP;
				wait for HALF_PERIOD;
				assert regf_rs1select = "01110" report "Problem to generate the register number !" severity error;
				assert regf_rs2select = "10000" report "Problem to generate the register number !" severity error;
				wait for HALF_PERIOD;
				assert dcde_inst = ftch_inst report "Problem for instruction !" severity error;
				assert dcde_pc = ftch_pc report "Problem for pc !" severity error;
				assert dcde_rs1 = "000000000000000000000000000001110" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000010000" report "Problem in the register value !" severity error;
				assert dcde_validity = '1' report "Problem about instruction validity !" severity error;

				--Writing differents datas in regfile
				regf_write <= '1';
				v_value_regfile := "00000000000000000000000000000010";
				v_address_regfile := "00000";
				for I in 0 to c_NREGISTERS - 1 loop
					regf_data <= v_value_regfile;
					regf_rdselect <= v_address_regfile;
					wait for PERIOD;
					v_value_regfile := v_value_regfile + "10";
					v_address_regfile := v_address_regfile + "1";
				end loop;
				regf_write <= '0';
				

				ftch_inst <= "0000000" & "00000" & "01111" & c_FUNC3_ADD & "11111" & c_OPCODE32_OP;	
				wait for PERIOD;
				assert dcde_rs1 = "000000000000000000000000000100000" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;

				ftch_inst <= "0000000" & "01010" & "01110" & c_FUNC3_ORI & "10101" & c_OPCODE32_OP;
				wait for PERIOD;
				assert dcde_rs1 = "000000000000000000000000000011110" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000010110" report "Problem in the register value !" severity error;

				ftch_inst <= "000000010101" & "01011" & c_FUNC3_ADDI & "01111" & c_OPCODE32_OP_IMM;				
				wait for PERIOD*5;
				assert dcde_rs1 = "000000000000000000000000000011000" report "Problem in the register value !" severity error;
				assert dcde_rs2 = "000000000000000000000000000000000" report "Problem in the register value !" severity error;


				--assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;
end bench_arch;

