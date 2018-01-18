library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity memory_access is port (	i_rstn          : in std_logic;									-- Asynhronous Negative Reset
                                i_clk           : in std_logic;									-- Clock
                                i_inst          : in std_logic_vector(14 downto 0);				-- Instruction
                                i_rs2           : in std_logic_vector(c_NBITS - 1 downto 0);	-- Value of the Source Register 2
                                i_rd            : in std_logic_vector(c_NBITS - 1 downto 0);	-- Execute Result
                                i_validity		: in std_logic;									-- Validity of the instruction
                                o_addr			: out std_logic_vector(c_NBITS - 1 downto 0);	-- Memory Address
                                o_data			: out std_logic_vector(c_NBITS - 1 downto 0);	-- Data to Write
                                o_write			: out std_logic;								-- Read / Write
								o_size			: out std_logic_vector(1 downto 0);				-- Data Size
                                i_data			: in std_logic_vector(c_NBITS - 1 downto 0);	-- Read Data
								i_freeze		: in std_logic;									-- Freeze for Cache 'Miss'
                                o_inst          : out std_logic_vector(11 downto 0);			-- Instruction
                                o_rd            : out std_logic_vector(c_NBITS - 1 downto 0);	-- Access Memory Result
                                o_validity      : out std_logic );								-- Validity of the instruction
end memory_access;

architecture memory_access_arch of memory_access is
       
        signal s_validity_global : std_logic;
        signal s_rd : std_logic_vector(c_NBITS - 1 downto 0);

        begin
			-- Combinatorial Logic
			o_addr <= i_rd;
            o_data <= i_rs2;

            comb1 : process(i_inst, i_validity, i_data, i_rd)
            begin
			if i_validity = '1' then
				case i_inst(6 downto 0) is
					when c_OPCODE32_LOAD =>				-- LOAD
						o_write <= '0';
						o_size <= c_MEM_SIZEW;
						case i_inst(14 downto 12) is  
							when c_FUNC3_LB =>				-- Byte
								s_rd(7 downto 0) <= i_data(7 downto 0);
								s_rd(31 downto 8) <= (others => i_data(7));
								s_validity_global <= i_validity;						
							when c_FUNC3_LH =>				-- Half-Word
								s_rd(15 downto 0) <= i_data(15 downto 0);
								s_rd(31 downto 16) <= (others => i_data(15));
								s_validity_global <= i_validity;
							when c_FUNC3_LW =>				-- Word
								s_rd <= i_data;
								s_validity_global <= i_validity;
								when c_FUNC3_LBU =>			-- Byte Unsigned
								s_rd(7 downto 0) <= i_data(7 downto 0);
								s_rd(31 downto 8) <= (others => '0');
								s_validity_global <= i_validity;
							when c_FUNC3_LHU =>				-- Half-Word Unsigned
								s_rd(15 downto 0) <= i_data(15 downto 0);
								s_rd(31 downto 16) <= (others => '0');
								s_validity_global <= i_validity;
							when others =>
								s_rd <= i_data;
								s_validity_global <= '0';
						end case;     
                    when c_OPCODE32_STORE =>			-- STORE      
						s_rd <= i_rd;														                                       
						case i_inst(14 downto 12) is
							when c_FUNC3_SB =>			-- Byte
								o_write <= '1';
								o_size <= c_MEM_SIZEB;
								s_validity_global <= i_validity;											
							when c_FUNC3_SH =>			-- Half-Word
								o_write <= '1';
								o_size <= c_MEM_SIZEH;													
								s_validity_global <= i_validity;
							when c_FUNC3_SW =>			-- Word
								o_write <= '1';
								o_size <= c_MEM_SIZEW;
								s_validity_global <= i_validity;
							when others =>
								o_write <= '0';
								o_size <= c_MEM_SIZEW;
								s_validity_global <= '0';
						end case;
					when c_OPCODE32_LUI | c_OPCODE32_OP | c_OPCODE32_OP_IMM | c_OPCODE32_AUIPC | c_OPCODE32_JAL | c_OPCODE32_JALR | c_OPCODE32_BRANCH => -- Other Valid Instructions
                        o_write <= '0';
						o_size <= c_MEM_SIZEW;
                        s_rd <= i_rd;
                        s_validity_global <= i_validity;                           
                    when others =>
                        o_write <= '0';
						o_size <= c_MEM_SIZEW;
                        s_rd <= i_rd;
                        s_validity_global <= '0';
                end case;
			else
				o_write <= '0';
				o_size <= c_MEM_SIZEW;
				s_rd <= i_rd;
                s_validity_global <= '0';
			end if;
        end process comb1;

		-- Sequential Logic
        seq : process (i_clk, i_rstn)
            begin
                if (i_rstn = '0') then
                    o_inst <= (others => '0');
                    o_rd <= c_REG_INIT;
                    o_validity <= '0';
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
					o_inst <= i_inst(11 downto 0);
                    o_rd <= s_rd;
                    o_validity <= s_validity_global;
                end if;
        end process seq;
end memory_access_arch;
