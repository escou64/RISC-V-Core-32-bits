library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity pipeline is port (	i_rstn			: in std_logic;
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
end entity pipeline;

architecture pipeline_arch of pipeline is
	
	component counter_calculation port (i_rstn			: in std_logic;
										i_clk			: in std_logic;
										i_jump			: in std_logic;
										i_branch		: in std_logic;
										i_freeze		: in std_logic;
										i_newpc			: in std_logic_vector(c_NBITS - 1 downto 0);
										o_pc			: out std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	component fetch port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_idata			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_jump			: in std_logic;
							i_branch		: in std_logic;
							i_freeze		: in std_logic;
							o_iaddress		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_write			: out std_logic;
							o_size			: out std_logic_vector(1 downto 0);
							o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic);
	end component;

	component decode port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_ftch	: in std_logic;
							i_jump			: in std_logic;
							i_branch		: in std_logic;
							i_freeze		: in std_logic;
							i_rd_alu		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rd_exec		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_alu	: in std_logic;
							i_validity_exec	: in std_logic;
							i_validity_accm	: in std_logic;
							o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs1			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic; 
							o_rs1select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							o_rs2select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0));
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

	component execute port (i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_dcde	: in std_logic;
							i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_freeze		: in std_logic;
							o_rd_alu		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity_alu	: out std_logic;
							o_newpc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_jump			: out std_logic;
							o_branch		: out std_logic;
							o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic);		
	end component;

	component memory_access port (	i_rstn			: in std_logic;
									i_clk			: in std_logic;
									i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_validity_exec	: in std_logic;
									i_freeze		: in std_logic;
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

	component writeback port (	i_rstn			: in std_logic;
								i_clk			: in std_logic;
								i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_validity_accm	: in std_logic;
								i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
								o_write			: out std_logic;
								o_rdselect		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
								o_data			: out std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	component cache_controller is port (i_core_addr		: in std_logic_vector(c_NBITS - 1 downto 0);
										i_core_data		: in std_logic_vector(c_NBITS - 1 downto 0);
										i_core_write	: in std_logic;
										i_core_size		: in std_logic_vector(1 downto 0);
										o_core_data		: out std_logic_vector(c_NBITS - 1 downto 0);
										o_core_freeze	: out std_logic;
										o_mem_addr		: out std_logic_vector(c_NBITS - 1 downto 0);
										o_mem_data		: out std_logic_vector(c_NBITS - 1 downto 0);
										o_mem_write		: out std_logic;
										o_mem_size		: out std_logic_vector(1 downto 0);
										i_mem_data		: in std_logic_vector(c_NBITS - 1 downto 0);
										i_mem_miss		: in std_logic);
	end component;


	signal s_rstn	: std_logic;
	signal s_clk	: std_logic;
	signal s_freeze	: std_logic;

	signal s_calc_pc	: std_logic_vector(c_NBITS - 1 downto 0);

	--signal s_imem_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_imem_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_imem_size		: std_logic;
	--signal s_imem_write		: std_logic;
	signal s_imem_idata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_freeze	: std_logic;

	signal s_ftch_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_validity	: std_logic;
	signal s_ftch_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_size		: std_logic_vector(1 downto 0);
	signal s_ftch_write		: std_logic;
	

	signal s_regf_rs1select			: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_rs2select			: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_regf_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_pc				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_inst				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_validity			: std_logic;
	signal s_dcde_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_rs2				: std_logic_vector(c_NBITS - 1 downto 0);

	signal s_exec_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_validity	: std_logic;
	signal s_exec_rs2		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_rd		: std_logic_vector(c_NBITS - 1 downto 0);

	signal s_exec_newpc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_jump		: std_logic;
	signal s_exec_branch	: std_logic;

	signal s_alu_rd			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_alu_validity	: std_logic;

	--signal s_dmem_daddress	: std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_dmem_oddata	: std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_dmem_dwrite	: std_logic;
	--signal s_dmem_dsize		: std_logic_vector(1 downto 0);
	signal s_dmem_idata	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_freeze	: std_logic;

	signal s_accm_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_validity	: std_logic;
	signal s_accm_rd		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_write		: std_logic;
	signal s_accm_size		: std_logic_vector(1 downto 0);

	signal s_regf_write		: std_logic;
	signal s_regf_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regf_data		: std_logic_vector(c_NBITS - 1 downto 0);
		
	begin

		s_rstn		<= i_rstn;
		s_clk		<= i_clk;
		s_freeze	<= s_dmem_freeze AND s_imem_freeze;

		--o_iaddress		<= s_imem_addr;
		--s_imem_data		<= i_idata;
		--o_daddress		<= s_dmem_daddress; 
		--o_ddata			<= s_dmem_oddata;	
		--o_dwrite		<= s_dmem_dwrite;
		--o_dsize			<= s_dmem_dsize;	
		--s_dmem_iddata	<= i_ddata;

		counter_calculation1 : counter_calculation port map (	i_rstn		=> s_rstn,
																i_clk		=> s_clk,
																i_jump		=> s_exec_jump,
																i_branch	=> s_exec_branch,
																i_freeze	=> s_freeze,
																i_newpc		=> s_exec_newpc,
																o_pc		=> s_calc_pc);

		fetch1 : fetch port map (	i_rstn			=> s_rstn,
									i_clk			=> s_clk,	
									i_pc			=> s_calc_pc,
									i_idata			=> s_imem_idata,
									i_jump			=> s_exec_jump,
									i_branch		=> s_exec_branch,
									i_freeze		=> s_freeze,
									o_iaddress		=> s_ftch_addr,
									o_data			=> s_ftch_odata,
									o_write			=> s_ftch_write,
									o_size			=> s_ftch_size,
									o_pc			=> s_ftch_pc,
									o_inst			=> s_ftch_inst,
									o_validity		=> s_ftch_validity);

		registerfile1 : registerfile port map (	i_rstn		=> s_rstn,
												i_clk		=> s_clk,	
												i_freeze	=> s_freeze,
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
									i_jump				=> s_exec_jump,
									i_branch			=> s_exec_branch,
									i_freeze			=> s_freeze,
									i_rd_alu			=> s_alu_rd,
									i_rd_exec			=> s_exec_rd,
									i_rd_accm			=> s_accm_rd,
									i_validity_alu		=> s_alu_validity,
									i_validity_exec		=> s_exec_validity,
									i_validity_accm		=> s_accm_validity,
									o_pc				=> s_dcde_pc,		
									o_inst				=> s_dcde_inst,		
									o_rs1				=> s_dcde_rs1,
									o_rs2				=> s_dcde_rs2,
									o_validity			=> s_dcde_validity,
									o_rs1select			=> s_regf_rs1select,
									o_rs2select			=> s_regf_rs2select,
									i_rs1				=> s_regf_rs1,
									i_rs2				=> s_regf_rs2);

		execute1 : execute port map (	i_rstn				=> s_rstn,
										i_clk				=> s_clk,
										i_pc				=> s_dcde_pc,
										i_inst				=> s_dcde_inst,
										i_validity_dcde		=> s_dcde_validity,
										i_rs1				=> s_dcde_rs1,
										i_rs2				=> s_dcde_rs2,
										i_freeze			=> s_freeze,
										o_rd_alu			=> s_alu_rd,
										o_validity_alu		=> s_alu_validity,
										o_newpc				=> s_exec_newpc,
										o_jump				=> s_exec_jump,
										o_branch			=> s_exec_branch,
										o_pc				=> s_exec_pc,
										o_inst				=> s_exec_inst,
										o_rs2				=> s_exec_rs2,
										o_rd				=> s_exec_rd,
										o_validity			=> s_exec_validity);

		memory_access1 : memory_access port map (	i_rstn			=> s_rstn,
													i_clk			=> s_clk,
													i_pc			=> s_exec_pc,
													i_inst			=> s_exec_inst,
													i_rs2			=> s_exec_rs2,
													i_rd			=> s_exec_rd,
													i_validity_exec	=> s_exec_validity,
													i_freeze		=> s_freeze,
													o_daddress		=> s_accm_addr,
													o_ddata			=> s_accm_odata,
													o_dwrite		=> s_accm_write,
													o_dsize			=> s_accm_size,
													i_ddata			=> s_dmem_idata,		
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
										o_data			=> s_regf_data);

	icache_controller1 : cache_controller port map (i_core_addr		=> s_ftch_addr,
													i_core_data		=> s_ftch_odata,
													i_core_write	=> s_ftch_write,
													i_core_size		=> s_ftch_size,
													o_core_data		=> s_imem_idata,
													o_core_freeze	=> s_imem_freeze,
													o_mem_addr		=> o_imem_addr,
													o_mem_data		=> o_imem_data,
													o_mem_write		=> o_imem_write,
													o_mem_size		=> o_imem_size,
													i_mem_data		=> i_imem_data,
													i_mem_miss		=> i_imem_miss);

	dcache_controller1 : cache_controller port map (i_core_addr		=> s_accm_addr,
													i_core_data		=> s_accm_odata,
													i_core_write	=> s_accm_write,
													i_core_size		=> s_accm_size,
													o_core_data		=> s_dmem_idata,
													o_core_freeze	=> s_dmem_freeze,
													o_mem_addr		=> o_dmem_addr,
													o_mem_data		=> o_dmem_data,
													o_mem_write		=> o_dmem_write,
													o_mem_size		=> o_dmem_size,
													i_mem_data		=> i_dmem_data,
													i_mem_miss		=> i_dmem_miss);
end pipeline_arch;
