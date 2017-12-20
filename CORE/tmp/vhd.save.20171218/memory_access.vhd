library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity memory_access is port (	i_rstn          : in std_logic;
                                i_clk           : in std_logic;
                                i_pc            : in std_logic_vector(c_NBITS - 1 downto 0);
                                i_inst          : in std_logic_vector(c_NBITS - 1 downto 0);
                                i_rs2           : in std_logic_vector(c_NBITS - 1 downto 0);
                                i_rd            : in std_logic_vector(c_NBITS - 1 downto 0);
                                i_validity_exec : in std_logic;
                                o_daddress      : out std_logic_vector(c_NBITS - 1 downto 0);
                                o_ddata         : out std_logic_vector(c_NBITS - 1 downto 0);
                                o_dwrite        : out std_logic;
								o_dsize			: out std_logic_vector(1 downto 0);
                                i_ddata         : in std_logic_vector(c_NBITS - 1 downto 0);       
                                o_pc            : out std_logic_vector(c_NBITS - 1 downto 0);
                                o_inst          : out std_logic_vector(c_NBITS - 1 downto 0);
                                o_rd            : out std_logic_vector(c_NBITS - 1 downto 0);
                                o_validity      : out std_logic );
end memory_access;

architecture memory_access_arch of memory_access is
       
        signal s_validity_inputs : std_logic;
        signal s_validity_global : std_logic;
        signal s_rd : std_logic_vector(c_NBITS - 1 downto 0);

        begin
                s_validity_inputs <= i_validity_exec; -- AND i_validity_wbck;
                o_daddress <= i_rd;
                o_ddata <= i_rs2;

                comb1 : process(i_pc, i_inst, s_validity_inputs, i_ddata, i_rd)
                begin
                        case i_inst(6 downto 0) is
                                when c_OPCODE32_LOAD =>
                                        o_dwrite <= '0';
										o_dsize <= "11";
										case i_inst(14 downto 12) is  
											when c_FUNC3_LB =>
												s_rd(7 downto 0) <= i_ddata(7 downto 0);
												s_rd(31 downto 8) <= (others => i_ddata(7));
												s_validity_global <= s_validity_inputs;									
											when c_FUNC3_LH =>
												s_rd(15 downto 0) <= i_ddata(15 downto 0);
												s_rd(31 downto 16) <= (others => i_ddata(15));
												s_validity_global <= s_validity_inputs;
											when c_FUNC3_LW =>
												s_rd <= i_ddata;
												s_validity_global <= s_validity_inputs;
											when c_FUNC3_LBU =>
												s_rd(7 downto 0) <= i_ddata(7 downto 0);
												s_rd(31 downto 8) <= (others => '0');
												s_validity_global <= s_validity_inputs;
											when c_FUNC3_LHU =>
												s_rd(15 downto 0) <= i_ddata(15 downto 0);
												s_rd(31 downto 16) <= (others => '0');
												s_validity_global <= s_validity_inputs;
											when others =>
												s_rd <= i_ddata;
												s_validity_global <= '0';
										end case;     
                                when c_OPCODE32_STORE =>       
                                        s_rd <= i_rd;
										s_validity_global <= '0';
										if s_validity_inputs = '1' then									                                       
											case i_inst(14 downto 12) is
												when c_FUNC3_SB =>
													o_dwrite <= '1';
													o_dsize <= "01";													
												when c_FUNC3_SH =>
													o_dwrite <= '1';
													o_dsize <= "10";
												when c_FUNC3_SW =>
													o_dwrite <= '1';
													o_dsize <= "11";
												when others =>
													o_dwrite <= '0';
													o_dsize <= "00";
											end case;
										else
											o_dwrite <= '0';
											o_dsize <= "00";
										end if;
                                when c_OPCODE32_LUI | c_OPCODE32_OP | c_OPCODE32_OP_IMM | c_OPCODE32_AUIPC | c_OPCODE32_JAL | c_OPCODE32_JALR =>
                                        o_dwrite <= '0';
										o_dsize <= "00";
                                        s_rd <= i_rd;
                                        s_validity_global <= s_validity_inputs;
								when c_OPCODE32_BRANCH =>   
										o_dwrite <= '0';
										o_dsize <= "00";
                                        s_rd <= i_rd;
                                        s_validity_global <= '0';                                    
                                when others =>
                                        o_dwrite <= '0';
										o_dsize <= "00";
                                        s_rd <= i_rd;
                                        s_validity_global <= '0';
                        end case;
                end process comb1;

                seq : process (i_clk, i_rstn)
                        begin
                                if (i_rstn = '0') then
                                        o_pc <= c_PC_INIT;
                                        o_inst <= c_REG_INIT;
                                        o_rd <= c_REG_INIT;
                                        o_validity <= '0';
                                elsif (i_clk'event and i_clk = '1') then
                                        o_pc <= i_pc;
                                        o_inst <= i_inst;
                                        o_rd <= s_rd;
                                        o_validity <= s_validity_global;
                                end if;
                end process seq;
end memory_access_arch;
