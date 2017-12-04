library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_CORE;
use LIB_CORE.RISCV_CORE_CONFIG.all;

entity execute is port (i_rstn			: in std_logic;
						i_clk			: in std_logic;
						i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_validity_dcde	: in std_logic;
						i_validity_wbck	: in std_logic;
						i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rs1_dependency: in std_logic_vector(1 downto 0);
						i_rs2_dependency: in std_logic_vector(1 downto 0);
						i_rd_exec		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
						o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity		: out std_logic);		
end entity execute;

architecture execute_arch of execute is

	signal s_validity_inputs : std_logic;
	signal s_validity_global : std_logic;
	signal s_rs1 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rs2 : std_logic_vector(c_NBITS - 1 downto 0); 

	signal s_rd : std_logic_vector(c_NBITS - 1 downto 0); 
	
	begin
	s_validity_inputs <= i_validity_dcde AND i_validity_wbck;

	s_rs1 <=	i_rd_exec when i_rs1_dependency(0) = '1' else
				i_rd_accm when i_rs1_dependency(1) = '1' else
				i_rs1;

	s_rs2 <=	i_rd_exec when i_rs2_dependency(0) = '1' else
				i_rd_accm when i_rs2_dependency(1) = '1' else
				i_rs2 ;

	comb1 : process (i_clk, i_pc, i_inst, s_validity_inputs, s_rs1, s_rs2)
		begin
		case i_inst(6 downto 0) is
			when c_OPCODE32_LUI =>
			when c_OPCODE32_AUIPC =>
			when c_OPCODE32_OP_IMM =>
			when c_OPCODE32_OP =>
			when others =>
		end case;
	end process comb1;
end execute_arch;
