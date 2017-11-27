library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity decode is port (	i_rstn			: in std_logic;
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
						o_bubble		: out std_logic;
						o_rs1select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
						o_rs2select		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
						i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0));

end decode;

architecture decode_arch of decode is

	signal s_rs1select : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_rs2select : std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
	signal s_rs1 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rs2 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_validity_inputs : std_logic;
	signal s_validity_global : std_logic;
	
	begin

		s_validity_inputs <= i_validity_ftch AND i_validity_wbck;
		o_rs1select <= s_rs1select;
		o_rs2select <= s_rs2select;

		comb : process(i_clk, i_pc, i_inst, s_validity_inputs, i_rs1, i_rs2)
			begin
				if (i_inst(1 downto 0) /= "11") then
					s_rs1select <= "00000";
					s_rs2select <= "00000";
					s_rs1 <= i_rs1;
					s_rs2 <= i_rs2;
					s_validity_global <= '0';
				elsif (i_inst(4 downto 2) /= "111") then
					case i_inst(6 downto 0) is
						when c_OPCODE32_LUI		=> 
										s_rs1select <= "00000";
										s_rs2select <= "00000";
										s_rs1(31 downto 12) <= i_inst(31 downto 12);
										s_rs1(11 downto 0) <= (others => '0');
										s_rs2 <= i_rs2;
										s_validity_global <= s_validity_inputs;
						when c_OPCODE32_AUIPC	=> 
										s_rs1select <= "00000";
										s_rs2select <= "00000";
										s_rs1(31 downto 12) <= i_inst(31 downto 12);
										s_rs1(11 downto 0) <= (others => '0');
										s_rs2 <= i_pc;
										s_validity_global <= s_validity_inputs;
						when c_OPCODE32_OP_IMM	=> 
										if (i_inst(14 downto 12) = c_FUNC3_SLLI) or (i_inst(14 downto 12) = c_FUNC3_SRLI) or (i_inst(14 downto 12) = c_FUNC3_SRAI) then
											s_rs1select <= i_inst(19 downto 15);
											s_rs2select <= "00000";
											s_rs1 <= i_rs1;
											s_rs2(4 downto 0) <= i_inst(24 downto 20);
											s_rs2(31 downto 5) <= (others => '0');
											s_validity_global <= s_validity_inputs;
										else
											s_rs1select <= i_inst(19 downto 15);
											s_rs2select <= "00000";
											s_rs1 <= i_rs1;
											s_rs2(11 downto 0) <= i_inst(31 downto 20);
											s_rs2(31 downto 12) <= (others => i_inst(31));
											s_validity_global <= s_validity_inputs;
										end if;
						when c_OPCODE32_OP		=> 
										s_rs1select <= i_inst(19 downto 15);
										s_rs2select <= i_inst(24 downto 20);
										s_rs1 <= i_rs1;
										s_rs2 <= i_rs2;
										s_validity_global <= s_validity_inputs;

						when others				=> 
										s_rs1select <= "00000";
										s_rs2select <= "00000";
										s_rs1 <= i_rs1;
										s_rs2 <= i_rs2;
										s_validity_global <= '0';
					end case;
				else
					s_rs1select <= "00000";
					s_rs2select <= "00000";
					s_rs1 <= i_rs1;
					s_rs2 <= i_rs2;
					s_validity_global <= '0';
				end if;
		end process comb;

		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= (others => '0');
					o_inst <= (others => '0');
					o_rs1 <= (others => '0');
					o_rs2 <= (others => '0');
					o_validity <= '0';
				elsif (i_clk'event and i_clk = '1') then
					o_pc <= i_pc;
					o_inst <= i_inst;
					o_rs1 <= s_rs1;
					o_rs2 <= s_rs2;
					o_validity <= s_validity_global;
				end if;
		end process seq;
end decode_arch;
