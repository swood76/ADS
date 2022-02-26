library ieee;
use ieee.std_logic_1164.ALL;

entity lab1_tb is 

end lab1_tb;

architecture ham_sandwich of lab1_tb is
signal w:std_logic;
signal reset:std_logic;
signal clock:std_logic := '0';
signal z:std_logic;


	

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

DUT :entity work.top_3	port map(
	reset => reset,
		clock => clock,
		w => w,
		
	
	
		z => z);	
end ham_sandwich;




