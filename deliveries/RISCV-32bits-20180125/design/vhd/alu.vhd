library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity alu is port (	i_op1		: in std_logic_vector(c_NBITS - 1 downto 0);	-- First Operand
						i_op2		: in std_logic_vector(c_NBITS - 1 downto 0);	-- Second Operand
						i_signed	: in std_logic;									-- Signed or Unsigned
						i_amount	: in std_logic_vector(4 downto 0);				-- Amount of shift
						i_sel		: in std_logic_vector(2 downto 0);				-- Selects the operation
						o_result	: out std_logic_vector(c_NBITS - 1 downto 0));	-- Result
end entity alu;

architecture alu_arch of alu is

	signal s_result : std_logic_vector(c_NBITS - 1 downto 0); 

	begin
		-- Combinatorial Logic
		comb1 : process (i_op1, i_op2, i_signed, i_amount, i_sel)
			begin
			case i_sel is
				when c_ALU_ADD =>		-- Addition / Substraction
					if i_signed = '0' then
						s_result <= i_op1 + i_op2;
					else
						s_result <= i_op1 - i_op2;
					end if;	
				when c_ALU_SLL =>		-- Left Shift (Logical)
					for I in 31 downto 0 loop
						if I < to_integer(unsigned(i_amount)) then
							s_result(I) <= '0';
						else	
							s_result(I) <= i_op1(I - to_integer(unsigned(i_amount)));
						end if;
					end loop;
				when c_ALU_SLT =>		-- Set on Less Than (Signed)
					s_result(c_NBITS - 1 downto 1) <= (others => '0');
					if (signed(i_op1) < signed(i_op2)) then
						s_result(0) <= '1';
					else   
						s_result(0) <= '0';
					end if;
				when c_ALU_SLTU =>		-- Set on Less Than (Unsigned)
					s_result(c_NBITS - 1 downto 1) <= (others => '0');
					if (unsigned(i_op1) < unsigned(i_op2)) then
						s_result(0) <= '1';
					else   
						s_result(0) <= '0';
					end if;
				when c_ALU_XOR =>		-- Logical XOR
					s_result <= i_op1 XOR i_op2;
				when c_ALU_SR =>		-- Right Shift (Logical or Arithmetic)
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
				when c_ALU_OR =>		-- Logical OR
					s_result <= i_op1 OR i_op2;
				when c_ALU_AND =>		-- Logical AND
					s_result <= i_op1 AND i_op2;
				when others =>
					s_result <= (others => '0');
			end case;
		end process comb1;

		o_result <= s_result;
end alu_arch;
