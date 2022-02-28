library ieee;
use ieee.std_logic_1164.ALL;

entity lab1_tb is 

end lab1_tb;

architecture ham_sandwich of lab1_tb is
signal w:std_logic;
signal reset:std_logic := '1';
signal clock:std_logic := '0';
signal z:std_logic;
signal led:std_logic_vector(8 downto 0);


begin
clock <= not clock after 10 ns ;		
		
process begin
	
	reset <= '0';

	
	wait for 9 ns;
	
	w <= '1';
	wait for 10 ns;
	
	w <= '0';
	wait for 10 ns;
	
	w <= '1';
	
	wait for 50 ns;
	wait for 10 ns;
	
	end process;

DUT :entity work.part2	port map(
		reset => reset,
		clock => clock,
		w => w,
		led(8 downto 0) => led(8 downto 0),
		z => z);	
end ham_sandwich;




