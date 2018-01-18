library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity pipeline is port (	i_rstn			: in std_logic;									-- Asynchronous Negative Reset
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
end entity pipeline;

architecture pipeline_arch of pipeline is
	
	component pc port (	i_rstn				: in std_logic;
						i_clk				: in std_logic;
						i_jump				: in std_logic;
						i_branch			: in std_logic;
						i_freeze			: in std_logic;
						i_load_dependency	: in std_logic;
						i_newpc				: in std_logic_vector(c_NBITS - 1 downto 0);
						o_pc				: out std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	component fetch port (	i_rstn				: in std_logic;
							i_clk				: in std_logic;
							i_pc				: in std_logic_vector(c_NBITS - 1 downto 0);
							i_data				: in std_logic_vector(c_NBITS - 1 downto 0);
							i_jump				: in std_logic;
							i_branch			: in std_logic;
							i_freeze			: in std_logic;
							i_load_dependency	: in std_logic;
							o_addr				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_data				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_write				: out std_logic;
							o_size				: out std_logic_vector(1 downto 0);
							o_pc				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity			: out std_logic);
	end component;

	component decode port (	i_rstn				: in std_logic;
							i_clk				: in std_logic;
							i_pc				: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst				: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity			: in std_logic;
							i_jump				: in std_logic;
							i_branch			: in std_logic;
							i_freeze			: in std_logic;
							i_rd_alu			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rd_exec			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rd_accm			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_alu		: in std_logic;
							i_validity_exec		: in std_logic;
							i_validity_accm		: in std_logic;
							o_pc				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs1				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs2				: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity			: out std_logic;
							o_load_dependency	: out std_logic; 
							o_rs1select			: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							o_rs2select			: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							i_rs1				: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2				: in std_logic_vector(c_NBITS - 1 downto 0));
	end component;

	component reg_integer port (	i_rstn		: in std_logic;
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
							i_validity		: in std_logic;
							i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_freeze		: in std_logic;
							o_rd_alu		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity_alu	: out std_logic;
							o_newpc			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_jump			: out std_logic;
							o_branch		: out std_logic;
							o_inst			: out std_logic_vector(14 downto 0);
							o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic);		
	end component;

	component memory_access port (	i_rstn			: in std_logic;
									i_clk			: in std_logic;
									i_inst			: in std_logic_vector(14 downto 0);
									i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
									i_validity		: in std_logic;
									i_freeze		: in std_logic;
									o_addr			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_write			: out std_logic;
									o_size			: out std_logic_vector(1 downto 0);
									i_data			: in std_logic_vector(c_NBITS - 1 downto 0);		
									o_inst			: out std_logic_vector(11 downto 0);
									o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
									o_validity		: out std_logic );
	end component;

	component writeback port (	i_inst			: in std_logic_vector(11 downto 0);
								i_validity		: in std_logic;
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

	-- Global Signals
	signal s_rstn	: std_logic;
	signal s_clk	: std_logic;
	signal s_freeze	: std_logic;
	-- PC Block Output
	signal s_pc	: std_logic_vector(c_NBITS - 1 downto 0);
	-- Instruction Memory Outputs
	signal s_imem_idata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_freeze	: std_logic;
	-- Fetch Block Outputs
	signal s_ftch_pc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_validity	: std_logic;
	signal s_ftch_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_ftch_size		: std_logic_vector(1 downto 0);
	signal s_ftch_write		: std_logic;	
	-- Integer Register Block Outputs
	signal s_regi_rs1select			: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regi_rs2select			: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_regi_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_regi_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	-- Decode Block Outputs
	signal s_dcde_pc				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_inst				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_validity			: std_logic;
	signal s_dcde_load_dependency	: std_logic;
	signal s_dcde_rs1				: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dcde_rs2				: std_logic_vector(c_NBITS - 1 downto 0);
	-- Execute Block Ouputs
	signal s_exec_inst		: std_logic_vector(14 downto 0);
	signal s_exec_validity	: std_logic;
	signal s_exec_rs2		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_rd		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_newpc		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_exec_jump		: std_logic;
	signal s_exec_branch	: std_logic;
	-- ALU Block Ouputs (From Inside Execute Block)
	signal s_alu_rd			: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_alu_validity	: std_logic;
	-- Data Memory Outputs
	signal s_dmem_idata	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_dmem_freeze	: std_logic;
	-- Access Memory Block Outputs
	signal s_accm_inst		: std_logic_vector(11 downto 0);
	signal s_accm_validity	: std_logic;
	signal s_accm_rd		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_addr		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_odata		: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_accm_write		: std_logic;
	signal s_accm_size		: std_logic_vector(1 downto 0);
	-- Write Back Block Outputs
	signal s_wbck_write		: std_logic;
	signal s_wbck_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_wbck_data		: std_logic_vector(c_NBITS - 1 downto 0);	
	begin

		s_rstn		<= i_rstn;
		s_clk		<= i_clk;
		-- Global Freeze with Instruction/ Data Memories
		s_freeze	<= s_dmem_freeze AND s_imem_freeze;

		pc1 : pc port map (	i_rstn				=> s_rstn,
							i_clk				=> s_clk,
							i_jump				=> s_exec_jump,
							i_branch			=> s_exec_branch,
							i_freeze			=> s_freeze,
							i_load_dependency	=> s_dcde_load_dependency,
							i_newpc				=> s_exec_newpc,
							o_pc				=> s_pc);

		fetch1 : fetch port map (	i_rstn				=> s_rstn,
									i_clk				=> s_clk,	
									i_pc				=> s_pc,
									i_data				=> s_imem_idata,
									i_jump				=> s_exec_jump,
									i_branch			=> s_exec_branch,
									i_freeze			=> s_freeze,
									i_load_dependency	=> s_dcde_load_dependency,
									o_addr				=> s_ftch_addr,
									o_data				=> s_ftch_odata,
									o_write				=> s_ftch_write,
									o_size				=> s_ftch_size,
									o_pc				=> s_ftch_pc,
									o_inst				=> s_ftch_inst,
									o_validity			=> s_ftch_validity);

		reg_integer1 : reg_integer port map (	i_rstn		=> s_rstn,
												i_clk		=> s_clk,	
												i_freeze	=> s_freeze,
												i_rs1select	=> s_regi_rs1select,
												i_rs2select	=> s_regi_rs2select,
												o_rs1		=> s_regi_rs1,
												o_rs2		=> s_regi_rs2,
												i_write		=> s_wbck_write,
												i_rdselect	=> s_wbck_rdselect,
												i_data		=> s_wbck_data);

		decode1 : decode port map (	i_rstn				=> s_rstn,
									i_clk				=> s_clk,
									i_pc				=> s_ftch_pc,		
									i_inst				=> s_ftch_inst,		
									i_validity			=> s_ftch_validity,
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
									o_load_dependency	=> s_dcde_load_dependency,
									o_rs1select			=> s_regi_rs1select,
									o_rs2select			=> s_regi_rs2select,
									i_rs1				=> s_regi_rs1,
									i_rs2				=> s_regi_rs2);

		execute1 : execute port map (	i_rstn				=> s_rstn,
										i_clk				=> s_clk,
										i_pc				=> s_dcde_pc,
										i_inst				=> s_dcde_inst,
										i_validity			=> s_dcde_validity,
										i_rs1				=> s_dcde_rs1,
										i_rs2				=> s_dcde_rs2,
										i_freeze			=> s_freeze,
										o_rd_alu			=> s_alu_rd,
										o_validity_alu		=> s_alu_validity,
										o_newpc				=> s_exec_newpc,
										o_jump				=> s_exec_jump,
										o_branch			=> s_exec_branch,
										o_inst				=> s_exec_inst,
										o_rs2				=> s_exec_rs2,
										o_rd				=> s_exec_rd,
										o_validity			=> s_exec_validity);

		memory_access1 : memory_access port map (	i_rstn			=> s_rstn,
													i_clk			=> s_clk,
													i_inst			=> s_exec_inst,
													i_rs2			=> s_exec_rs2,
													i_rd			=> s_exec_rd,
													i_validity		=> s_exec_validity,
													i_freeze		=> s_freeze,
													o_addr			=> s_accm_addr,
													o_data			=> s_accm_odata,
													o_write			=> s_accm_write,
													o_size			=> s_accm_size,
													i_data			=> s_dmem_idata,		
													o_inst			=> s_accm_inst,
													o_rd			=> s_accm_rd,
													o_validity		=> s_accm_validity);

	writeback1 : writeback port map (	i_inst			=> s_accm_inst,
										i_validity		=> s_accm_validity,
										i_rd			=> s_accm_rd,
										o_write			=> s_wbck_write,
										o_rdselect		=> s_wbck_rdselect,
										o_data			=> s_wbck_data);

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
