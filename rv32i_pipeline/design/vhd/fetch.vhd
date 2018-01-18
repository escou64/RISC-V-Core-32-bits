library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity fetch is port (	i_rstn				: in std_logic;										-- Asynhronous Negative Reset
						i_clk				: in std_logic;										-- Clock
						i_pc				: in std_logic_vector(c_NBITS - 1 downto 0);		-- Program Counter
						i_data				: in std_logic_vector(c_NBITS - 1 downto 0);		-- Instruction from Instruction Memory
						i_jump				: in std_logic;										-- Indicates a future jump
						i_branch			: in std_logic;										-- Indicates a future branch
						i_freeze			: in std_logic;										-- Freeze for Cache 'Miss'
						i_load_dependency	: in std_logic;										-- Indicates a Load Data Dependency
						o_addr				: out std_logic_vector(c_NBITS - 1 downto 0);		-- Instruction Address
						o_data				: out std_logic_vector(c_NBITS - 1 downto 0);		-- Input data of Instruction Memory (Not Used)
						o_write				: out std_logic;									-- Write of Instruction Memory (Read Only)
						o_size				: out std_logic_vector(1 downto 0);					-- Instruction Size for Instruction Memory (Word Only)
						o_pc				: out std_logic_vector(c_NBITS - 1 downto 0);		-- Program Counter Output
						o_inst				: out std_logic_vector(c_NBITS - 1 downto 0);		-- Instruction Output
						o_validity			: out std_logic);									-- Validity of the instruction
end fetch;

architecture fetch_arch of fetch is	
	signal s_validity_inputs : std_logic;
	begin
		-- Combinatorial Logic
		-- Instruction Address Calculation
		o_addr <= i_pc;
		-- Validity Calculation
		s_validity_inputs <= (NOT i_jump) AND (NOT i_branch);
		-- Input Data of Instruction Memory
		o_data		<= (others => '0');
		-- Write of Instruction Memory
		o_write		<= '0';
		-- Instruction Size for Instruction Memory
		o_size		<= c_MEM_SIZEW;

		-- Sequential Logic
		-- Assignment of the Outputs
		seq : process (i_clk, i_rstn)
			begin
				if (i_rstn = '0') then
					o_pc <= c_PC_INIT;
					o_inst <= c_REG_INIT;
					o_validity <= '0';
				elsif (i_clk'event and i_clk = '1' and i_freeze = '1' and i_load_dependency = '0') then
					o_pc <= i_pc;
					o_inst <= i_data;
					o_validity <= s_validity_inputs;
				end if;
		end process seq;
end fetch_arch;
