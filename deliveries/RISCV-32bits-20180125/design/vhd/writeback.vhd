library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity writeback is port (	i_inst			: in std_logic_vector(11 downto 0);							-- Instruction
							i_validity		: in std_logic;												-- Instrution Validity
							i_rd			: in std_logic_vector(c_NBITS - 1 downto 0);				-- Accees Memory Result
							o_write			: out std_logic;											-- Write Integer Register
							o_rdselect		: out std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Select Integer Register Destination
							o_data			: out std_logic_vector(c_NBITS - 1 downto 0));				-- Data to write
end writeback;

architecture writeback_arch of writeback is
	begin
	-- Combinatorial Logic
	comb : process (i_inst, i_validity, i_rd)
		begin
		if i_validity = '1' then
			if (i_inst(1 downto 0) /= "11") then
				o_write				<= '0';
				o_rdselect			<= i_inst(11 downto 7);
				o_data				<= i_rd;				
			else 
				case i_inst(6 downto 0) is			-- Writing in Integer Registers for the different instructions
					when c_OPCODE32_LUI | c_OPCODE32_AUIPC =>						-- Load Upper Immediate / Add Upper Immediate to Program Counter
						o_write				<= '1';
						o_rdselect			<= i_inst(11 downto 7);
						o_data				<= i_rd;				
					when c_OPCODE32_OP_IMM | c_OPCODE32_OP | c_OPCODE32_LOAD =>		-- Operations / Load
						o_write				<= '1';
						o_rdselect			<= i_inst(11 downto 7);
						o_data				<= i_rd;									
					when c_OPCODE32_STORE =>										-- Store
						o_write				<= '0';
						o_rdselect			<= "00000";
						o_data				<= i_rd;	
					when c_OPCODE32_JAL | c_OPCODE32_JALR =>						-- Jump And Link
						o_write				<= '1';
						o_rdselect			<= i_inst(11 downto 7);
						o_data				<= i_rd;
					when c_OPCODE32_BRANCH =>										-- Branch
						o_write				<= '0';
						o_rdselect			<= "00000";
						o_data				<= i_rd;	
					when others => 
						o_write				<= '0';
						o_rdselect			<= i_inst(11 downto 7);
						o_data				<= i_rd;
				end case;
			end if;
		else
			o_write				<= '0';
			o_rdselect			<= i_inst(11 downto 7);
			o_data				<= i_rd;
		end if;
	end process comb;
end writeback_arch;
