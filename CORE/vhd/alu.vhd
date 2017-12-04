library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity alu is port (	i_op1		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_op2		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_signed	: in std_logic;
						i_amount	: in std_logic_vector(4 downto 0);
						i_sel		: in std_logic_vector(2 downto 0);
						o_result	: out std_logic_vector(c_NBITS - 1 downto 0));
end entity alu;

architecture alu_arch of alu is

	signal s_result : std_logic_vector(c_NBITS - 1 downto 0);

	begin
		comb1 : process (i_op1, i_op2, i_signed, i_amount, i_sel)
			begin
			case i_sel is
				when "000" =>		-- ADD SUB
					s_result <= i_op1 + i_op2;	
				when "001" =>		-- SLL
					for I in 31 downto 0 loop
						if I < to_integer(unsigned(i_amount)) then
							s_result(I) <= '0';
						else	
							s_result(I) <= i_op1(I - to_integer(unsigned(i_amount)));
						end if;
					end loop;
				when "010" =>		-- SLT
					s_result(c_NBITS - 1 downto 1) <= (others => '0');
					if (signed(i_op1) < signed(i_op2)) then
						s_result(0) <= '1';
					else   
						s_result(0) <= '0';
					end if;
				when "011" =>		-- SLTU
					s_result(c_NBITS - 1 downto 1) <= (others => '0');
					if (unsigned(i_op1) < unsigned(i_op2)) then
						s_result(0) <= '1';
					else   
						s_result(0) <= '0';
					end if;
				when "100" =>		-- XOR
					s_result <= i_op1 XOR i_op2;
				when "101" =>		-- SRL SRA
					for I in 0 to 31 loop
						if I < (31 - to_integer(unsigned(i_amount)) + 1) then
							s_result(I) <= i_op1(I + to_integer(unsigned(i_amount)));
						else
							if i_signed = '1' then
								s_result(I) <= i_op1(31);
							else
								s_result(I) <= '0';
							end if;
						end if;
					end loop;
				when "110" =>		-- OR
					s_result <= i_op1 OR i_op2;
				when "111" =>		-- AND
					s_result <= i_op1 AND i_op2;
				when others =>
					s_result <= (others => '0');
			end case;
		end process comb1;

		o_result <= s_result;
end alu_arch;
