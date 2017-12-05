library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity core is port (	i_rstn			: in std_logic;
						i_clk			: in std_logic;
						o_iaddress		: out std_logic_vector(c_NBITS - 1 downto 0);
						i_idata			: in std_logic_vector(c_NBITS - 1 downto 0);
						o_daddress		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_ddata			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_dwrite		: out std_logic;
						i_ddata			: out std_logic_vector(c_NBITS - 1 downto 0));
end core;

architecture core_arch of core is
	
	component counter_calculation port (i_rstn			: in std_logic;
										i_clk			: in std_logic;
										o_pc			: out std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	component fetch port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_idata			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_wbck	: in std_logic;
							o_iaddress		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic);
	end component;

	component decode port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_ftch	: in std_logic;
							i_validity_wbck	: in std_logic;	
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

	component execute port (i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_dcde	: in std_logic;
							i_validity_wbck	: in std_logic;
							i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs1_dependency: in std_logic_vector(2 downto 0);
							i_rs2_dependency: in std_logic_vector(2 downto 0);
							i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rd_wbck		: in std_logic_vector(c_NBITS - 1 downto 0);
							o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic);		
	end component;

	component memory_access port (	i_rstn			: in std_logic;
									i_clk			: in std_logic;
									i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_validity_exec	: in std_logic;
									i_validity_wbck	: in std_logic;
									o_daddress		: out std_logic_vector(c_NBITS - 1 downto 0);
									o_ddata			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_dwrite		: out std_logic;
									i_ddata			: out std_logic_vector(c_NBITS - 1 downto 0);		
									o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_validity		: out std_logic );
	end component;

	component writeback port (	i_rstn			: in std_logic;
								i_clk			: in std_logic;
								i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity_accm	: in std_logic;
								i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
								o_write			: out std_logic;
								o_rdselect		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
								o_validity		: out std_logic;
								o_rd			: out std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	signal s_rstn	: std_logic;
	signal s_clk	: std_logic;

	signal s_calc_pc	: std_logic_vector(c_NBITS - 1 downto 0);

	signal s_imem_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_data		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_validity	: std_logic;

	signal s_regf_rs1select			: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_rs2select			: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_regf_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_pc				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_inst				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_validity			: std_logic;
	signal s_dcde_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_rs1_dependency	: std_logic_vector(2 downto 0);
	signal s_dcde_rs2_dependency	: std_logic_vector(2 downto 0);
	
	signal s_exec_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_validity	: std_logic;
	signal s_exec_rd		: std_logic_vector(c_NBITS - 1 downto 0);

	signal s_dmem_daddress	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_oddata	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_dwrite	: std_logic;
	signal s_dmem_iddata	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_validity	: std_logic;
	signal s_accm_rd		: std_logic_vector(c_NBITS - 1 downto 0);

	signal s_regf_write		: std_logic;
	signal s_regf_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_data		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_wbck_rd		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_wbck_validity	: std_logic;
	
	begin

		s_rstn	<= i_rstn;
		s_clk	<= i_clk;

		o_iaddress		<= s_imem_addr;
		s_imem_data		<= i_idata;
		o_daddress		<= s_dmem_daddress; 
		o_ddata			<= s_dmem_oddata;	
		o_dwrite		<= s_dmem_dwrite;	
		s_dmem_iddata	<= i_ddata;

		counter_calculation1 : counter_calculation port map (	i_rstn	=> s_rstn,
																i_clk	=> s_clk,
																o_pc	=> s_calc_pc);

		fetch1 : fetch port map (	i_rstn			=> s_rstn,
									i_clk			=> s_clk,	
									i_pc			=> s_calc_pc,
									i_idata			=> s_imem_data,
									i_validity_wbck	=> s_wbck_validity,
									o_iaddress		=> s_imem_addr,
									o_pc			=> s_ftch_pc,
									o_inst			=> s_ftch_inst,
									o_validity		=> s_ftch_validity);

		registerfile1 : registerfile port map (	i_rstn		=> s_rstn,
												i_clk		=> s_clk,	
												i_rs1select	=> s_regf_rs1select,
												i_rs2select	=> s_regf_rs2select,
												o_rs1		=> s_regf_rs1,
												o_rs2		=> s_regf_rs2,
												i_write		=> s_regf_write,
												i_rdselect	=> s_regf_rdselect,
												i_data		=> s_regf_data);

		decode1 : decode port map (	i_rstn				=> s_rstn,
									i_clk				=> s_clk,
									i_pc				=> s_ftch_pc,		
									i_inst				=> s_ftch_inst,		
									i_validity_ftch		=> s_ftch_validity,
									i_validity_wbck		=> s_wbck_validity,	
									o_pc				=> s_dcde_pc,		
									o_inst				=> s_dcde_inst,		
									o_rs1				=> s_dcde_rs1,
									o_rs2				=> s_dcde_rs2,
									o_validity			=> s_dcde_validity,
									o_rs1select			=> s_regf_rs1select,
									o_rs2select			=> s_regf_rs2select,
									i_rs1				=> s_regf_rs1,
									i_rs2				=> s_regf_rs2,
									o_rs1_dependency	=> s_dcde_rs1_dependency,
									o_rs2_dependency	=> s_dcde_rs2_dependency);

		execute1 : execute port map (	i_rstn				=> s_rstn,
										i_clk				=> s_clk,
										i_pc				=> s_dcde_pc,
										i_inst				=> s_dcde_inst,
										i_validity_dcde		=> s_dcde_validity,
										i_validity_wbck		=> s_wbck_validity,
										i_rs1				=> s_dcde_rs1,
										i_rs2				=> s_dcde_rs2,
										i_rs1_dependency	=> s_dcde_rs1_dependency,
										i_rs2_dependency	=> s_dcde_rs2_dependency,
										i_rd_accm			=> s_accm_rd,
										i_rd_wbck			=> s_wbck_rd,
										o_pc				=> s_exec_pc,
										o_inst				=> s_exec_inst,
										o_rd				=> s_exec_rd,
										o_validity			=> s_exec_validity);

		memory_access1 : memory_access port map (	i_rstn			=> s_rstn,
													i_clk			=> s_clk,
													i_pc			=> s_exec_pc,
													i_inst			=> s_exec_inst,
													i_rd			=> s_exec_rd,
													i_validity_exec	=> s_exec_validity,
													i_validity_wbck	=> s_wbck_validity,
													o_daddress		=> s_dmem_daddress,
													o_ddata			=> s_dmem_oddata,
													o_dwrite		=> s_dmem_dwrite,
													i_ddata			=> s_dmem_iddata,		
													o_pc			=> s_accm_pc,
													o_inst			=> s_accm_inst,
													o_rd			=> s_accm_rd,
													o_validity		=> s_accm_validity);

	writeback1 : writeback port map (	i_rstn			=> s_rstn,
										i_clk			=> s_clk,
										i_pc			=> s_accm_pc,
										i_inst			=> s_accm_inst,
										i_validity_accm	=> s_accm_validity,
										i_rd			=> s_accm_rd,
										o_write			=> s_regf_write,
										o_rdselect		=> s_regf_rdselect,
										o_data			=> s_regf_data,
										o_validity		=> s_wbck_validity,
										o_rd			=> s_wbck_rd);

end core_arch;