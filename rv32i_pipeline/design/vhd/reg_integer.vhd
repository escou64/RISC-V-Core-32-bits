library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

library LIB_PIPELINE;
use LIB_PIPELINE.RISCV_CORE_CONFIG.all;

entity reg_integer is port (	i_rstn		: in std_logic;												-- Asynhronous Negative Reset					
								i_clk		: in std_logic;												-- Clock
								i_freeze	: in std_logic;												-- Freeze for Cache 'Miss'
								i_rs1select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects Source Register 1
								i_rs2select	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects Source Register 2
								o_rs1		: out std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 1
								o_rs2		: out std_logic_vector(c_NBITS - 1 downto 0);				-- Value of the Source Register 2
								i_write		: in std_logic;												-- Write Signal
								i_rdselect	: in std_logic_vector(c_SELECTREGISTERBITS - 1 downto 0);	-- Selects register for writing
								i_data		: in std_logic_vector(c_NBITS - 1 downto 0));				-- Data to write 
end reg_integer;

architecture reg_integer_arch of reg_integer is 
	type regfile is array (0 to c_NREGISTERS - 1) of std_logic_vector(c_NBITS - 1 downto 0);
	signal r_integers : regfile;

	begin
		-- Sequential Logic
		-- Writing and Resetting
		seq : process(i_clk, i_rstn)
			begin
			if (i_rstn = '0') then
				for I in 0 to c_NREGISTERS - 1 loop
					r_integers(I) <= c_REG_INIT;
				end loop;
			elsif (i_clk'event and i_clk = '1' and i_freeze = '1') then
				if ((i_write = '1') and (to_integer(unsigned(i_rdselect)) /= 0)) then				
					r_integers(to_integer(unsigned(i_rdselect))) <= i_data;
				end if;
			end if;
		end process seq;

		-- Combinatorial Logic
		-- Reading
		o_rs1 <= r_integers(to_integer(unsigned(i_rs1select)));
		o_rs2 <= r_integers(to_integer(unsigned(i_rs2select)));
end reg_integer_arch;
