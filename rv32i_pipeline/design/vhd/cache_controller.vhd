library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity cache_controller is port (	i_core_addr		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Memory Address
									i_core_data		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Data to write
									i_core_write	: in std_logic;									-- Read / Write
									i_core_size		: in std_logic_vector(1 downto 0);				-- Size of the data
									o_core_data		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Read Data
									o_core_freeze	: out std_logic;								-- Core Freeze
									o_mem_addr		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Memory Address
									o_mem_data		: out std_logic_vector(c_NBITS - 1 downto 0);	-- Data to write
									o_mem_write		: out std_logic;								-- Read / Write
									o_mem_size		: out std_logic_vector(1 downto 0);				-- Size of the data
									i_mem_data		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Read Data
									i_mem_miss		: in std_logic);								-- Cache Miss
end cache_controller;

architecture cache_controller_arch of cache_controller is
	begin
		o_mem_addr		<= i_core_addr;
		o_mem_data		<= i_core_data;
		o_mem_write		<= i_core_write;
		o_mem_size		<=	c_MEM_SIZEB when i_core_size = c_MEM_SIZEB else
							c_MEM_SIZEH when i_core_size = c_MEM_SIZEH else
							c_MEM_SIZEW;

		o_core_data		<= i_mem_data;		
		o_core_freeze	<=	'1' when i_mem_miss = '1' else
							'0';
end cache_controller_arch;
