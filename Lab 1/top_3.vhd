library ieee;
use ieee.std_logic_1164.all;

entity top_3 is
port(
	reset:in std_logic;
	clock:in std_logic;
	w:in std_logic;
	
	z:out std_logic);

end entity;



architecture rtl of top_3 is
	component parallel_shift_si
		 port(
 clk : in std_logic;
 rst : in std_logic;
 D: in std_logic;
 Q: out std_logic_vector(3 downto 0));
end component;
	
	
	signal Y_Q:std_logic_vector(3 downto 0);
	signal Y_D:std_logic;
	
	
	signal nand_1:std_logic;
	signal nand_2:std_logic;

	
		

begin
	
	
		
	

		

	

	
ff0:parallel_shift_si
	port map(
		clk => clock,
		rst => reset,
		d => w,
		q => Y_Q);

	

		
	nand_1 <= (Y_Q(0) or Y_Q(1));
	
	nand_2 <= (Y_Q(2) or Y_Q(3));
	
	
	z <= not  (nand_1 and nand_2);
	
	

end rtl;