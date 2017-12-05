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
						o_dwrite		: out std_logic);
end core;

architecture core_arch of core is
	
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


	component counter_calculation port (i_rstn			: in std_logic;
										i_clk			: in std_logic;
										o_pc			: out std_logic_vector(c_NBITS - 1 downto 0));
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

	signal s_imem_addr	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_imem_data	: std_logic_vector(c_NBITS - 1 downto 0);
		

	begin

end core_arch;
