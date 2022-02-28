library ieee;
use ieee.std_logic_1164.all;

entity top is
port(
	reset:in std_logic;
	clock:in std_logic;
	w:in std_logic;
	
	z:out std_logic);

end entity;

architecture rtl of top is
	component flipflop
		port(
			clk, rst, d : in std_logic;
			q : out std_logic);
	end component;
		
	signal Y_Q:std_logic_vector(8 downto 0);
	signal Y_D:std_logic_vector(8 downto 0);
begin
	
	Y_D(0) <= reset or not Y_Q(1) or not Y_Q(2) or not Y_Q(3) or not Y_Q(4) or not Y_Q(5) or not Y_Q(6) or not Y_Q(7) or not Y_Q(8);
		
	ff0: flipflop PORT MAP(clock, reset, Y_D(0), Y_Q(0));

	Y_D(1) <= (Y_Q(0) or Y_Q(5) or Y_Q(6) or Y_Q(7) or Y_Q(8)) and not w;
	
		ff1: flipflop PORT MAP(clock, reset, Y_D(1), Y_Q(1));
	Y_D(2) <= Y_Q(1) and not w;
	
	
	ff2: flipflop PORT MAP(clock, reset, Y_D(2), Y_Q(2));
	Y_D(3) <= Y_Q(2) and not w;
		
		
	ff3: flipflop PORT MAP(clock, reset, Y_D(3), Y_Q(3));
	
	Y_D(4) <= (Y_Q(3) or Y_Q(4)) and not w;

	ff4: flipflop PORT MAP(clock, reset, Y_D(4), Y_Q(4));
	
	Y_D(5) <= (Y_Q(0) or Y_Q(1) or Y_Q(2) or Y_Q(3) or Y_Q(4)) and w;
	
	ff5: flipflop PORT MAP(clock, reset, Y_D(5), Y_Q(5));
	
	Y_D(6) <= Y_Q(5) and w;
		
	ff6: flipflop PORT MAP(clock, reset, Y_D(6), Y_Q(6));
	
	Y_D(7) <= Y_Q(6) and w;
	ff7: flipflop PORT MAP(clock, reset, Y_D(7), Y_Q(7));
	
	
	Y_D(8) <= (Y_Q(7) or Y_Q(8)) and w;
	
	
	

	
		

	

	
	ff8: flipflop PORT MAP(clock, reset, Y_D(8), Y_Q(8));
	
		
	z <= Y_Q(4) or Y_Q(8);
	
	

end rtl;