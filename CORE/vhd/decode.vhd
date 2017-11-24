library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity decode is port (	i_rstn		: in std_logic;
						i_clk		: in std_logic;
						i_pc		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_inst		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_validity	: in std_logic;
						o_pc		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_inst		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity	: out std_logic);

end decode;

architecture decode_arch of decode is

	begin

		process(i_pc, i_inst, i_validity)
			begin
				if (i_inst(1 downto 0) /= "11") then
				
				elsif (i_inst(4 downto 2) /= "111") then
					case i_inst(6 downto 0) is
						when c_OPCODE32_OP_IMM	=> NULL;
						when c_OPCODE32_LUI		=> NULL;
						when c_OPCODE32_AUIPC	=> NULL;
						when c_OPCODE32_OP		=> NULL;
						when others				=> NULL;
					end case;
				else

				end if;
		end process;

		process (i_clk, i_rstn)
			begin

		end process;
end decode_arch;
