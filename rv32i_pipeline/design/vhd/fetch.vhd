library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity fetch is port (	i_rstn			: in std_logic;
						i_clk			: in std_logic;
						i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_data			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_jump			: in std_logic;
						i_branch		: in std_logic;
						i_freeze		: in std_logic;
						o_addr			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_write			: out std_logic;
						o_size			: out std_logic_vector(1 downto 0);
						o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity		: out std_logic);
end fetch;

architecture fetch_arch of fetch is	
	signal s_validity_inputs : std_logic;
	begin
		o_addr <= i_pc;
		s_validity_inputs <= (NOT i_jump) AND (NOT i_branch);

		o_data		<= (others => '0');
		o_write		<= '0';
		o_size		<= c_MEM_SIZEW;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= c_PC_INIT;
					o_inst <= c_REG_INIT;
					o_validity <= '0';
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
					o_pc <= i_pc;
					o_inst <= i_data;
					o_validity <= s_validity_inputs;
				end if;
		end process seq;
end fetch_arch;
