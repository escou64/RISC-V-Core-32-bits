library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity memory_access is port (	i_rstn          : in std_logic;
                                i_clk           : in std_logic;
                                i_inst          : in std_logic_vector(14 downto 0);
                                i_rs2           : in std_logic_vector(c_NBITS - 1 downto 0);
                                i_rd            : in std_logic_vector(c_NBITS - 1 downto 0);
                                i_validity		: in std_logic;
                                o_addr			: out std_logic_vector(c_NBITS - 1 downto 0);
                                o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
                                o_write			: out std_logic;
								o_size			: out std_logic_vector(1 downto 0);
                                i_data			: in std_logic_vector(c_NBITS - 1 downto 0);
								i_freeze		: in std_logic;     
                                o_inst          : out std_logic_vector(11 downto 0);
                                o_rd            : out std_logic_vector(c_NBITS - 1 downto 0);
                                o_validity      : out std_logic );
end memory_access;

architecture memory_access_arch of memory_access is
       
        signal s_validity_global : std_logic;
        signal s_rd : std_logic_vector(c_NBITS - 1 downto 0);

        begin
                o_addr <= i_rd;
                o_data <= i_rs2;

                comb1 : process(i_inst, i_validity, i_data, i_rd)
                begin
					if i_validity = '1' then
                        case i_inst(6 downto 0) is
                                when c_OPCODE32_LOAD =>
                                        o_write <= '0';
										o_size <= c_MEM_SIZEW;
										case i_inst(14 downto 12) is  
											when c_FUNC3_LB =>
												s_rd(7 downto 0) <= i_data(7 downto 0);
												s_rd(31 downto 8) <= (others => i_data(7));
												s_validity_global <= i_validity;						
											when c_FUNC3_LH =>
												s_rd(15 downto 0) <= i_data(15 downto 0);
												s_rd(31 downto 16) <= (others => i_data(15));
												s_validity_global <= i_validity;
											when c_FUNC3_LW =>
												s_rd <= i_data;
												s_validity_global <= i_validity;
											when c_FUNC3_LBU =>
												s_rd(7 downto 0) <= i_data(7 downto 0);
												s_rd(31 downto 8) <= (others => '0');
												s_validity_global <= i_validity;
											when c_FUNC3_LHU =>
												s_rd(15 downto 0) <= i_data(15 downto 0);
												s_rd(31 downto 16) <= (others => '0');
												s_validity_global <= i_validity;
											when others =>
												s_rd <= i_data;
												s_validity_global <= '0';
										end case;     
                                when c_OPCODE32_STORE =>       
                                        s_rd <= i_rd;														                                       
										case i_inst(14 downto 12) is
											when c_FUNC3_SB =>
												o_write <= '1';
												o_size <= c_MEM_SIZEB;
												s_validity_global <= i_validity;											
											when c_FUNC3_SH =>
												o_write <= '1';
												o_size <= c_MEM_SIZEH;													
												s_validity_global <= i_validity;
											when c_FUNC3_SW =>
												o_write <= '1';
												o_size <= c_MEM_SIZEW;
												s_validity_global <= i_validity;
											when others =>
												o_write <= '0';
												o_size <= c_MEM_SIZEW;
												s_validity_global <= '0';
										end case;
                                when c_OPCODE32_LUI | c_OPCODE32_OP | c_OPCODE32_OP_IMM | c_OPCODE32_AUIPC | c_OPCODE32_JAL | c_OPCODE32_JALR =>
                                        o_write <= '0';
										o_size <= c_MEM_SIZEW;
                                        s_rd <= i_rd;
                                        s_validity_global <= i_validity;
								when c_OPCODE32_BRANCH =>   
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
