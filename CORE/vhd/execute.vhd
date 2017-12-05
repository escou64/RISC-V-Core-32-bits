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
						i_rs1_dependency: in std_logic_vector(2 downto 0);
						i_rs2_dependency: in std_logic_vector(2 downto 0);
						i_rd_exec		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rd_accm		: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rd_wbck		: in std_logic_vector(c_NBITS - 1 downto 0);
						o_pc			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_inst			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_rd			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity		: out std_logic);		
end entity execute;

architecture execute_arch of execute is

	component alu port (	i_op1		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_op2		: in std_logic_vector(c_NBITS - 1 downto 0);
							i_signed	: in std_logic;
							i_amount	: in std_logic_vector(4 downto 0);
							i_sel		: in std_logic_vector(2 downto 0);
							o_result	: out std_logic_vector(c_NBITS - 1 downto 0));
	end component alu;


	signal s_validity_inputs : std_logic;
	signal s_validity_global : std_logic;
	signal s_rs1 : std_logic_vector(c_NBITS - 1 downto 0);
	signal s_rs2 : std_logic_vector(c_NBITS - 1 downto 0);
	--signal s_rd : std_logic_vector(c_NBITS - 1 downto 0); 
	
	signal s_op1	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_op2	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_signed	: std_logic;
	signal s_amount : std_logic_vector(4 downto 0);
	signal s_sel	: std_logic_vector(2 downto 0);
	signal s_result	: std_logic_vector(c_NBITS - 1 downto 0);

	begin

	alu1 : alu port map (	i_op1		=> s_op1,
							i_op2		=> s_op2,
							i_signed	=> s_signed,
							i_amount	=> s_amount,
							i_sel		=> s_sel,
							o_result	=> s_result);

	s_validity_inputs <= i_validity_dcde AND i_validity_wbck;

	s_rs1 <=	i_rd_exec when i_rs1_dependency(0) = '1' else
				i_rd_accm when i_rs1_dependency(1) = '1' else
				i_rd_wbck when i_rs1_dependency(2) = '1' else
				i_rs1;

	s_rs2 <=	i_rd_exec when i_rs2_dependency(0) = '1' else
				i_rd_accm when i_rs2_dependency(1) = '1' else
				i_rd_wbck when i_rs1_dependency(2) = '1' else
				i_rs2 ;	

	comb1 : process (i_clk, i_pc, i_inst, s_validity_inputs, s_rs1, s_rs2)
		begin
		if s_validity_inputs = '0' then
			if (i_inst(1 downto 0) /= "11") then
				s_validity_global	<= '0';
				s_op1				<= (others => '0');	
				s_op2				<= (others => '0');
				s_signed			<= '0';
				s_amount			<= (others => '0');
				s_sel				<= (others => '0');
			else 
				case i_inst(6 downto 0) is
					when c_OPCODE32_LUI =>
						s_validity_global	<= s_validity_inputs;
						s_op1				<= i_inst(31 downto 12) & "000000000000";
						s_op2				<= (others => '0');
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_sel				<= c_ALU_ADD;
					when c_OPCODE32_AUIPC =>
						s_validity_global	<= s_validity_inputs;
						s_op1				<= i_inst(31 downto 12) & "000000000000";
						s_op2				<= i_pc;
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_sel				<= c_ALU_ADD;
					when c_OPCODE32_OP_IMM =>
						s_validity_global	<= s_validity_inputs;
						s_sel <= i_inst(14 downto 12);
						s_op1 <= s_rs1;
						s_op2(11 downto 0) <= i_inst(31 downto 20);
						s_op2(31 downto 12) <= (others => i_inst(31));
						s_signed			<= i_inst(30);
						s_amount			<= i_inst(24 downto 20);
					when c_OPCODE32_OP =>
						s_validity_global	<= s_validity_inputs;
						s_sel <= i_inst(14 downto 12);
						s_op1 <= s_rs1;
						s_op2 <= s_rs2;
						s_signed	<= i_inst(30);
						s_amount	<= s_rs2(4 downto 0);
					when others =>
						s_validity_global	<= '0';
						s_op1				<= (others => '0');	
						s_op2				<= (others => '0');
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_sel				<= (others => '0');
				end case;
			end if;
		else
			s_validity_global	<= '0';
			s_op1				<= (others => '0');	
			s_op2				<= (others => '0');
			s_signed			<= '0';
			s_amount			<= (others => '0');
			s_sel				<= (others => '0');
		end if;
	end process comb1;

	seq : process (i_rstn, i_clk)
		begin
			if i_rstn = '0' then
				o_pc		<= (others => '0');
				o_inst		<= (others => '0');
				o_rd		<= (others => '0');
				o_validity	<= '0';
			elsif (i_clk'event) and (i_clk = '1') then
				o_pc		<= i_pc;
				o_inst		<= i_inst;
				o_rd		<= s_result;
				o_validity	<= s_validity_global;
			end if;
	end process seq;
end execute_arch;
