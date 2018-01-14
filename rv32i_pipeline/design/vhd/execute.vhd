library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity execute is port (i_rstn			: in std_logic;
						i_clk			: in std_logic;
						i_pc			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_inst			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_validity		: in std_logic;
						i_rs1			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_rs2			: in std_logic_vector(c_NBITS - 1 downto 0);
						i_freeze		: in std_logic;
						o_rd_alu		: out std_logic_vector(c_NBITS - 1 downto 0);
						o_validity_alu	: out std_logic;
						o_newpc			: out std_logic_vector(c_NBITS - 1 downto 0);
						o_jump			: out std_logic;
						o_branch		: out std_logic;
						o_inst			: out std_logic_vector(14 downto 0);
						o_rs2			: out std_logic_vector(c_NBITS - 1 downto 0);
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

	signal s_validity_global	: std_logic;
	signal s_rd					: std_logic_vector(c_NBITS - 1 downto 0);
	
	signal s_op1	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_op2	: std_logic_vector(c_NBITS - 1 downto 0);
	signal s_signed	: std_logic;
	signal s_amount : std_logic_vector(4 downto 0);
	signal s_sel	: std_logic_vector(2 downto 0);
	signal s_result	: std_logic_vector(c_NBITS - 1 downto 0);

	signal s_jump	: std_logic;
	signal s_branch	: std_logic;

	begin

	alu1 : alu port map (	i_op1		=> s_op1,
							i_op2		=> s_op2,
							i_signed	=> s_signed,
							i_amount	=> s_amount,
							i_sel		=> s_sel,
							o_result	=> s_result);

	s_rd <=		i_pc + "100" when s_jump = '1' else
				s_result;

	comb1 : process (i_pc, i_inst, i_validity, i_rs1, i_rs2)
		begin
		if i_validity = '1' then
			if (i_inst(1 downto 0) /= "11") then
				s_validity_global	<= '0';
				s_op1				<= (others => '0');	
				s_op2				<= (others => '0');
				s_signed			<= '0';
				s_amount			<= (others => '0');
				s_sel				<= (others => '0');
				s_jump				<= '0';
				s_branch			<= '0';
			else 
				case i_inst(6 downto 0) is
					when c_OPCODE32_LUI | c_OPCODE32_AUIPC =>
						s_validity_global	<= i_validity;
						s_op1(31 downto 12)	<= i_inst(31 downto 12);
						s_op1(11 downto 0)	<= "000000000000";
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_sel				<= c_ALU_ADD;
						s_jump				<= '0';
						s_branch			<= '0';
						if i_inst(6 downto 0) = c_OPCODE32_AUIPC then
							s_op2				<= i_pc;
						else
							s_op2				<= (others => '0');
						end if;
					when c_OPCODE32_LOAD | c_OPCODE32_STORE =>
						s_validity_global	<= i_validity;
						s_op1				<= i_rs1;
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_sel				<= c_ALU_ADD;
						s_jump				<= '0';
						s_branch			<= '0';
						if i_inst(6 downto 0) = c_OPCODE32_STORE then
							s_op2(4 downto 0)	<= i_inst(11 downto 7);
							s_op2(11 downto 5)	<= i_inst(31 downto 25);
							s_op2(31 downto 12)	<= (others => i_inst(31));
						else
							s_op2(11 downto 0)	<= i_inst(31 downto 20);
							s_op2(31 downto 12)	<= (others => i_inst(31));
						end if;
					when c_OPCODE32_OP_IMM =>
						s_validity_global	<= i_validity;
						s_sel				<= i_inst(14 downto 12);
						s_op1				<= i_rs1;
						s_op2(11 downto 0)	<= i_inst(31 downto 20);
						s_op2(31 downto 12) <= (others => i_inst(31));
						s_amount			<= i_inst(24 downto 20);
						s_jump				<= '0';
						s_branch			<= '0';
						if i_inst(14 downto 12) = c_FUNC3_SRAI then
							s_signed	<= i_inst(30);
						else
							s_signed	<= '0';
						end if; 
					when c_OPCODE32_OP =>
						s_validity_global	<= i_validity;
						s_sel				<= i_inst(14 downto 12);
						s_op1				<= i_rs1;
						s_op2				<= i_rs2;
						s_signed			<= i_inst(30);
						s_amount			<= i_rs2(4 downto 0);
						s_jump				<= '0';
						s_branch			<= '0';
					when c_OPCODE32_JAL =>
						s_validity_global	<= i_validity;
						s_sel				<= c_ALU_ADD;
						s_op1				<= i_pc;
						s_op2(0)			<= '0';
						s_op2(10 downto 1)	<= i_inst(30 downto 21);
						s_op2(11)			<= i_inst(20);
						s_op2(19 downto 12)	<= i_inst(19 downto 12);
						s_op2(31 downto 20)	<= (others => i_inst(31));
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_jump				<= '1';
						s_branch			<= '0';
					when c_OPCODE32_JALR =>
						s_validity_global	<= i_validity;
						s_sel				<= c_ALU_ADD;
						s_op1(0)			<= '0';
						s_op1(31 downto 1)	<= i_rs1(31 downto 1);
						s_op2(0)			<= '0';
						s_op2(12 downto 1)	<= i_inst(31 downto 20);
						s_op2(31 downto 13)	<= (others => i_inst(31));
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_jump				<= '1';
						s_branch			<= '0';
					when c_OPCODE32_BRANCH =>
						s_validity_global	<= i_validity;
						s_sel				<= c_ALU_ADD;
						s_op1				<= i_pc;
						s_op2(0)			<= '0';
						s_op2(4 downto 1)	<= i_inst(11 downto 8);
						s_op2(10 downto 5)	<= i_inst(30 downto 25);
						s_op2(11)			<= i_inst(7);
						s_op2(31 downto 12)	<= (others => i_inst(31));
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_jump				<= '0';
						if (i_inst(14 downto 12) = c_FUNC3_BEQ) and (i_rs1 = i_rs2) then
							s_branch		<= '1';
						elsif (i_inst(14 downto 12) = c_FUNC3_BNE) and (i_rs1 /= i_rs2) then
							s_branch		<= '1';
						elsif (i_inst(14 downto 12) = c_FUNC3_BLT) and (signed(i_rs1) < signed(i_rs2)) then
							s_branch		<= '1';
						elsif (i_inst(14 downto 12) = c_FUNC3_BLTU) and (unsigned(i_rs1) < unsigned(i_rs2)) then
							s_branch		<= '1';
						elsif (i_inst(14 downto 12) = c_FUNC3_BGE) and (signed(i_rs1) >= signed(i_rs2)) then
							s_branch		<= '1';
						elsif (i_inst(14 downto 12) = c_FUNC3_BGEU) and (unsigned(i_rs1) >= unsigned(i_rs2)) then
							s_branch		<= '1';
						else
							s_branch		<= '0';
						end if;
					when others =>
						s_validity_global	<= '0';
						s_op1				<= (others => '0');	
						s_op2				<= (others => '0');
						s_signed			<= '0';
						s_amount			<= (others => '0');
						s_sel				<= (others => '0');
						s_jump				<= '0';
						s_branch			<= '0';
				end case;
			end if;
		else
			s_validity_global	<= '0';
			s_op1				<= (others => '0');	
			s_op2				<= (others => '0');
			s_signed			<= '0';
			s_amount			<= (others => '0');
			s_sel				<= (others => '0');
			s_jump				<= '0';
			s_branch			<= '0';
		end if;
	end process comb1;

	seq : process (i_rstn, i_clk)
		begin
			if i_rstn = '0' then
				o_inst				<= (others => '0');
				o_rs2				<= c_REG_INIT;
				o_rd				<= c_REG_INIT;
				o_validity			<= '0';
			elsif (i_clk'event) and (i_clk = '1') and (i_freeze = '1') then
				o_inst				<= i_inst(14 downto 0);
				o_rs2				<= i_rs2;
				o_rd				<= s_rd;
				o_validity			<= s_validity_global;
			end if;
	end process seq;

	o_jump <= s_jump;
	o_branch <= s_branch;
	o_newpc <= s_result;

	o_rd_alu <= s_rd;
	o_validity_alu <= s_validity_global;
end execute_arch;
