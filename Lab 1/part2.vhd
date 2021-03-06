library ieee;
use ieee.std_logic_1164.all;

entity part2 is
port (
	w:in std_logic;
	clock:in std_logic;
	reset:in std_logic;
	z:out std_logic;
	led:out std_logic_vector(8 downto 0)
	);
end part2;



architecture rtl of part2 is
	--declare signals

type State_type is (A,B, C, D, E, F, G, H, I);

--attribute to declare a specific encoding for the states
attribute syn_encoding : string;
attribute syn_encoding of State_type : type is "sequential"; --type is "0000 0001 0010 011 0100 0101 0110 0111 1000";

signal y_Q, Y_D : State_type;

begin

process (w, y_Q)
begin
   case y_Q is
	when A =>
	   if( w = '0') then Y_D <= B;
		else Y_D <= F; end if;
	when B => 
		if(w = '0') then Y_D <= C;
		else Y_D <= F; end if;
	when C => 
		if(w = '0') then Y_D <= D;
		else Y_D <= F; end if;
	when D => 
		if(w = '0') then Y_D <= E;
		else Y_D <= F; end if;
	when E => 
		if(w = '0') then Y_D <= E;
		else Y_D <= F; end if;
	when F => 
		if(w = '1') then Y_D <= G;
		else Y_D <= B; end if;
	when G => 
		if(w = '1') then Y_D <= H;
		else Y_D <= B; end if;
	when H => 
		if(w = '1') then Y_D <= I;
		else Y_D <= B; end if;
	when I => 
		if(w = '1') then Y_D <= I;
		else Y_D <= B; end if;
	
	end case;
end process;
process (clock) -- state flip-flops
begin

	if rising_edge(clock) then
			if reset = '1' then
				y_Q <= A;
			else
				y_Q <= Y_D;
			end if;
		end if;

end process;

-- output and leds
process(Y_D)
begin
	case Y_D is
		when A => 
			led(8 downto 0) <= "000000001";
			z <= '0';
		when B => 
			led(8 downto 0) <= "000000010";
			z <= '0';
		when C => 
			led(8 downto 0) <= "000000100";
			z <= '0';
		when D => 
			led(8 downto 0) <= "000001000";
			z <= '0';
		when E => 
			led(8 downto 0) <= "000010000";
			z <= '1';
		when F => 
			led(8 downto 0) <= "000100000";
			z <= '0';
		when G => 
			led(8 downto 0) <= "001000000";
			z <= '0';
		when H => 
			led(8 downto 0) <= "010000000";
			z <= '0';
		when I => 
			led(8 downto 0) <= "100000000";
			z <= '1';
	end case;	
end process;
end rtl;