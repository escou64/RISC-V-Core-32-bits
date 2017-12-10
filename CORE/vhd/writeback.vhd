library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity writeback is port (	i_rstn			: in std_logic;
							i_clk			: in std_logic;
							i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
							i_validity_accm	: in std_logic;
							i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);
							o_write			: out std_logic;
							o_rdselect		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);
							o_data			: out std_logic_vector(c_NBITS - 1 downto 0);
							o_validity		: out std_logic;
							o_rd			: out std_logic_vector(c_NBITS - 1 downto 0));
end writeback;

architecture writeback_arch of writeback is
	begin

	comb : process (i_clk, i_pc, i_inst, i_validity_accm, i_rd)
		begin
		if i_validity_accm = '1' then
			if (i_inst(1 downto 0) /= "11") then
				o_write		<= '0';
				o_rdselect	<= i_inst(11 downto 7);
				o_data		<= i_rd;
				o_validity	<= '1';
			else 
				case i_inst(6 downto 0) is
					when c_OPCODE32_LUI | c_OPCODE32_AUIPC =>	
						o_write		<= '1';
						o_rdselect	<= i_inst(11 downto 7);
						o_data		<= i_rd;
						o_validity	<= '1';				
					when c_OPCODE32_OP_IMM =>
						o_write		<= '1';
						o_rdselect	<= i_inst(11 downto 7);
						o_data		<= i_rd;
						o_validity	<= '1';										
					when c_OPCODE32_OP =>
						o_write		<= '1';
						o_rdselect	<= i_inst(11 downto 7);
						o_data		<= i_rd;
						o_validity	<= '1';											
					when others => 
						o_write		<= '0';
						o_rdselect	<= i_inst(11 downto 7);
						o_data		<= i_rd;
						o_validity	<= '1';	
				end case;
			end if;
		else
			o_write		<= '0';
			o_rdselect	<= i_inst(11 downto 7);
			o_data		<= i_rd;
			o_validity	<= '1';
		end if;
	end process comb;

	seq : process (i_clk, i_rstn)
		begin
		if i_rstn = '0' then
			o_rd <= c_REG_INIT;
		elsif (i_clk'event) and (i_clk = '1') then
			o_rd <= i_rd;
		end if;
	end process seq;
	
end writeback_arch;
