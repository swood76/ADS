library ieee;
use ieee.std_logic_1164.ALL;

entity lab1_tb is 

end lab1_tb;

architecture ham_sandwich of lab1_tb is
component DE10_Standard is 
port (
	KEY             	:in    	std_logic_vector(3 downto 0);
	SW              	:in    	std_logic_vector(9 downto 0);
	LEDR            	:out   	std_logic_vector(9 downto 0));

end component;

signal w:std_logic;
signal reset:std_logic := '0';
signal clock:std_logic := '0';
signal Y_Q:std_logic_vector(8 downto 0);
signal unusedkey:std_logic_vector(2 downto 0);
signal unusedsw:std_logic_vector(7 downto 0);
	


begin
clock <= not clock after 10 ns ;		
		
process begin
	reset <= '1';

	

	
	wait for 9 ns;
	
	w <= '1';
	wait for 10 ns;
	
	w <= '0';
	wait for 10 ns;
	
	w <= '1';
	wait for 50 ns;
	wait for 10 ns;
	
	end process;
	
DUT : DE10_Standard
	port map(
		SW(1) => w,
		SW(0) => reset,
		SW(9 downto 2) => unusedsw(7 downto 0),
		KEY(0) => clock,
		KEY(3 downto 1) => unusedkey(2 downto 0),
		LEDR(8 downto 0) => Y_Q(8 downto 0),
		LEDR(9) => Y_Q(8));	
end ham_sandwich;
