library ieee;
use ieee.std_logic_1164.all;

entity top is
port(
	reset:in std_logic;
	clock:in std_logic;
	w:in std_logic;
	Y_D:out std_logic_vector(8 downto 0);
	z:out std_logic);

end entity;

architecture rtl of top is
	component flipflop
		port(
			clk, rst, d : in std_logic;
			q : out std_logic);
	end component;
		
	signal Y_Q:std_logic_vector(8 downto 0);

begin
	
	Y_D(0) <= reset or not Y_Q(1) or not Y_Q(2) or not Y_Q(3) or not Y_Q(4) or not Y_Q(5) or not Y_Q(6) or not Y_Q(7) or not Y_Q(8) or not Y_Q(9);
	Y_D(1) <= (Y_Q(0) or Y_Q(5) or Y_Q(6) or Y_Q(7) or Y_Q(8)) and not w;
	Y_D(2) <= Y_Q(1) and not w;
	Y_D(3) <= Y_Q(2) and not w;
	Y_D(4) <= (Y_Q(3) or Y_Q(4)) and not w;
	Y_D(5) <= (Y_Q(0) or Y_Q(1) or Y_Q(2) or Y_Q(3) or Y_Q(4)) and w;
	Y_D(6) <= Y_Q(5) and w;
	Y_D(7) <= Y_Q(6) and w;
	Y_D(8) <= (Y_Q(7) or Y_Q(8)) and w;
	
	
	ff0:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(0),
		q => Y_Q(0));
	
	ff1:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(1),
		q => Y_Q(1));
	
	ff2:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(2),
		q => Y_Q(2));
		
	ff3:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(3),
		q => Y_Q(3));
	
	ff4:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(4),
		q => Y_Q(4));
	
	ff5:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(5),
		q => Y_Q(5));
	
	ff6:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(6),
		q => Y_Q(6));
	
	ff7:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(7),
		q => Y_Q(7));
	
	ff8:flipflop
	port map(
		clk => clock,
		rst => reset,
		d => Y_D(8),
		q => Y_Q(8));
		
	z <= Y_Q(8);

end rtl;
