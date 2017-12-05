library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity memory_access is port (	i_rstn			: in std_logic;
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

end memory_access;

architecture memory_access_arch of memory_access is 
	
	signal s_validity_inputs : std_logic;
	signal s_validity_global : std_logic;
	signal s_memory_load : std_logic_vector(c_NBITS - 1 downto 0);

	begin
		s_validity_inputs <= i_validity_exec AND i_validity_wbck;

		comb1 : process(i_clk, i_pc, i_inst)
		begin
			case i_inst(6 downto 0) is
				when c_OPCODE32_LOAD =>
					o_pc <= i_pc;
					s_memory_load <= i_rd;
					o_rd <= s_memory_load;
					s_validity_global <= s_validity_inputs;	
				when c_OPCODE32_STORE =>									
					o_pc <= i_pc;
					s_validity_global <= s_validity_inputs;
				when others => 
					s_validity_global <= '0';
			end case;
		end process comb1;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= (others => '0');
					o_inst <= (others => '0');
				elsif (i_clk'event and i_clk = '1') then
					o_pc <= i_pc;
					o_inst <= i_inst;
					o_validity <= s_validity_global;
				end if;
		end process seq;
end memory_access_arch;
