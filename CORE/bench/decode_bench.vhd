library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;
--use LIB_CORE.registerfile.all;

library LIB_CORE_BENCH;
use LIB_CORE_BENCH.RISCV_CORE_CONFIG_BENCH.all;

entity decode_bench is end decode_bench;

architecture bench_arch of decode_bench is
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

	component decode port (	i_rstn		: in std_logic;
							i_clk		: in std_logic;
							i_pc		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity	: in std_logic;
							o_pc		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_inst		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity	: out std_logic;
							o_rs1select	: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							o_rs2select	: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							i_rs1		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_rs2		: in std_logic_vector(c_NBITS - 1 downto 0));
	end component;


	signal rstn				: std_logic												:= '1';
	signal clk				: std_logic												:= '1';
	signal regf_rs1select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "11111";
	signal regf_rs2select	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "01010";
	signal regf_rs1			: std_logic_vector(c_NBITS - 1 downto 0);
	signal regf_rs2			: std_logic_vector(c_NBITS - 1 downto 0);
	signal regf_write		: std_logic := '0';
	signal regf_rdselect	: std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0)	:= "00000";
	signal regf_data		: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '1');

	signal ftch_pc			: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');
	signal ftch_inst		: std_logic_vector(c_NBITS - 1 downto 0)				:= (others => '0');	--"11111111111111111111111111100011";
	signal ftch_validity	: std_logic												:= '1';
	signal dcde_pc			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_inst		: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_rs1			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_rs2			: std_logic_vector(c_NBITS - 1 downto 0);
	signal dcde_validity	: std_logic;

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
									i_validity	=> ftch_validity,	
									o_pc		=> dcde_pc,		
									o_inst		=> dcde_inst,		
									o_rs1		=> dcde_rs1,
									o_rs2		=> dcde_rs2,
									o_validity	=> dcde_validity,
									o_rs1select	=> regf_rs1select,
									o_rs2select	=> regf_rs2select,
									i_rs1		=> regf_rs1,
									i_rs2		=> regf_rs2);
	
		clk <= not (clk) after HALF_PERIOD;

		process
			begin
				wait for HALF_PERIOD*5;
				rstn <= '0';
				wait for PERIOD*5;
				rstn <= '1';
				wait for PERIOD*5;
				
				wait for PERIOD*5;
				
				wait for PERIOD*5;

		end process;
end bench_arch;

