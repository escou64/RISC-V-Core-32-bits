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

entity tb_memory_access is 
	generic (runner_cfg : string);
end entity tb_memory_access;
	
architecture bench_arch of tb_memory_access is
	
	component memory_access port (					i_rstn			: in std_logic;
									i_clk			: in std_logic;
									i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_validity_exec	: in std_logic;
									o_daddress		: out std_logic_vector(c_NBITS - 1 downto 0);
									o_ddata			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_dwrite		: out std_logic;
									o_dsize			: out std_logic_vector(1 downto 0);
									i_ddata			: in std_logic_vector(c_NBITS - 1 downto 0);		
									o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_validity		: out std_logic );
	end component;

	signal s_rstn	: std_logic											:= '1';
	signal s_clk	: std_logic											:= '1';

	signal s_exec_pc		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_PC_INIT;
	signal s_exec_inst		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
	signal s_exec_validity	: std_logic									:= '1';
	signal s_exec_rs2		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
	signal s_exec_rd		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;

	signal s_dmem_daddress	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_oddata	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_dwrite	: std_logic;
	signal s_dmem_dsize		: std_logic_vector(1 downto 0);
	signal s_dmem_iddata	: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
	signal s_accm_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_validity	: std_logic;
	signal s_accm_rd		: std_logic_vector(c_NBITS - 1 downto 0);

	--signal s_wbck_validity	: std_logic									:= '1';

	begin
		memory_access1 : memory_access port map (	i_rstn			=> s_rstn,
													i_clk			=> s_clk,
													i_pc			=> s_exec_pc,
													i_inst			=> s_exec_inst,
													i_rs2			=> s_exec_rs2,
													i_rd			=> s_exec_rd,
													i_validity_exec	=> s_exec_validity,										
													o_daddress		=> s_dmem_daddress,
													o_ddata			=> s_dmem_oddata,
													o_dwrite		=> s_dmem_dwrite,
													o_dsize			=> s_dmem_dsize,
													i_ddata			=> s_dmem_iddata,		
													o_pc			=> s_accm_pc,
													o_inst			=> s_accm_inst,
													o_rd			=> s_accm_rd,
													o_validity		=> s_accm_validity);

		s_clk <= not (s_clk) after HALF_PERIOD;

   		process
		variable v_exec_pc		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_PC_INIT;
		--variable v_exec_inst	: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
		variable v_exec_rs2		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
		variable v_exec_rd		: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;
		variable v_dmem_iddata	: std_logic_vector(c_NBITS - 1 downto 0)	:= c_REG_INIT;

		begin
				test_runner_setup(runner, runner_cfg);
				s_rstn <= '1';
				wait for QUARTER_PERIOD;				
				-- Verifications for Reset
				s_rstn <= '0';
				wait for QUARTER_PERIOD;
				assert s_accm_pc = c_PC_INIT report "Problem for resetting 1!" severity error;
				assert s_accm_inst = c_REG_INIT report "Problem for resetting 2!" severity error;
				assert s_accm_rd = c_REG_INIT report "Problem for resetting 3!" severity error;
				assert s_accm_validity = '0' report "Problem for resetting 4!" severity error;
				assert s_dmem_daddress = c_REG_INIT report "Problem for resetting 5!" severity error;
				assert s_dmem_oddata = c_REG_INIT report "Problem for resetting 6!" severity error;
				assert s_dmem_dwrite = '0' report "Problem for resetting 7!" severity error;				
				wait for QUARTER_PERIOD*3;
				s_rstn <= '1';
				wait for PERIOD;	

				-- LOAD
				v_exec_pc		:= c_PC_INIT;
				v_exec_rs2		:= c_REG_INIT;
				v_exec_rd		:= c_REG_INIT;
				v_dmem_iddata	:= c_REG_INIT;
				for I in 0 to 8 loop
					s_exec_pc		<= v_exec_pc;
					s_exec_inst		<= "000000000000" & "00010" & "010" & "00001" & c_OPCODE32_LOAD;
					s_exec_rs2		<= v_exec_rs2;
					s_exec_rd		<= v_exec_rd;
					s_dmem_iddata	<= v_dmem_iddata;
					--s_wbck_validity	<= '1';
					s_exec_validity	<= '1';				
					wait for HALF_PERIOD;
					assert s_dmem_daddress = s_exec_rd report "Problem for loading 1!" severity error;
					assert s_dmem_oddata = s_exec_rs2 report "Problem for loading 2!" severity error;
					assert s_dmem_dwrite = '0' report "Problem for loading 3!" severity error;
					wait for HALF_PERIOD;
					assert s_accm_pc = s_exec_pc report "Problem for loading 4!" severity error;
					assert s_accm_inst = s_exec_inst report "Problem for loading 5!" severity error;
					assert s_accm_rd = s_dmem_iddata report "Problem for loading 6!" severity error;
					assert s_accm_validity = '1' report "Problem for loading 7!" severity error;

					v_exec_pc		:= v_exec_pc + "101";
					v_exec_rs2		:= v_exec_rs2 + "10";
					v_exec_rd		:= v_exec_rd + "110";
					v_dmem_iddata	:= v_dmem_iddata + "100";
					--wait for QUARTER_PERIOD;
				end loop;

				-- STORE
				v_exec_pc		:= c_PC_INIT;
				v_exec_rs2		:= c_REG_INIT;
				v_exec_rd		:= c_REG_INIT;
				v_dmem_iddata	:= c_REG_INIT;
				for I in 0 to 8 loop
					s_exec_pc		<= v_exec_pc;
					s_exec_inst		<= "0000000" & "00000" & "00010" & "010" & "00000" & c_OPCODE32_STORE;
					s_exec_rs2		<= v_exec_rs2;
					s_exec_rd		<= v_exec_rd;
					s_dmem_iddata	<= v_dmem_iddata;
					--s_wbck_validity	<= '1';
					s_exec_validity	<= '1';
					wait for HALF_PERIOD;
					assert s_dmem_daddress = s_exec_rd report "Problem for storing 1!" severity error;
					assert s_dmem_oddata = s_exec_rs2 report "Problem for storing 2!" severity error;
					assert s_dmem_dwrite = '1' report "Problem for storing 3!" severity error;
					wait for HALF_PERIOD;
					assert s_accm_pc = s_exec_pc report "Problem for storing 4!" severity error;
					assert s_accm_inst = s_exec_inst report "Problem for storing 5!" severity error;
					assert s_accm_rd = s_exec_rd report "Problem for storing 6!" severity error;
					assert s_accm_validity = '0' report "Problem for storing 7!" severity error;

					v_exec_pc		:= v_exec_pc + "01";
					v_exec_rs2		:= v_exec_rs2 + "11";
					v_exec_rd		:= v_exec_rd + "111";
					v_dmem_iddata	:= v_dmem_iddata + "101";
					--wait for QUARTER_PERIOD;
				end loop;


				-- OTHERS
				v_exec_pc		:= c_PC_INIT;
				v_exec_rs2		:= c_REG_INIT;
				v_exec_rd		:= c_REG_INIT;
				v_dmem_iddata	:= c_REG_INIT;
				for I in 0 to 8 loop
					s_exec_pc		<= v_exec_pc;
					s_exec_inst		<= "0000000" & "00000" & "00010" & "000" & "00000" & c_OPCODE32_OP;
					s_exec_rs2		<= v_exec_rs2;
					s_exec_rd		<= v_exec_rd;
					s_dmem_iddata	<= v_dmem_iddata;
					--s_wbck_validity	<= '1';
					s_exec_validity	<= '1';
					wait for HALF_PERIOD;
					assert s_dmem_daddress = s_exec_rd report "Problem 1!" severity error;
					assert s_dmem_oddata = s_exec_rs2 report "Problem 2!" severity error;
					assert s_dmem_dwrite = '0' report "Problem 3!" severity error;
					wait for HALF_PERIOD;
					assert s_accm_pc = s_exec_pc report "Problem 4!" severity error;
					assert s_accm_inst = s_exec_inst report "Problem 5!" severity error;
					assert s_accm_rd = s_exec_rd report "Problem 6!" severity error;
					assert s_accm_validity = '1' report "Problem 7!" severity error;

					v_exec_pc		:= v_exec_pc + "010";
					v_exec_rs2		:= v_exec_rs2 + "111";
					v_exec_rd		:= v_exec_rd + "1110";
					v_dmem_iddata	:= v_dmem_iddata + "1010";
					--wait for QUARTER_PERIOD;
				end loop;



				--assert false report "End of the Simulation !" severity failure;
				test_runner_cleanup(runner);
		end process;


end bench_arch;