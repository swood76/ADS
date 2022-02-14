library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_8_bit_Carry_TB is

end Ripple_8_bit_Carry_TB;

architecture imp of Ripple_8_bit_Carry_TB is
component top is
port ( a : in std_logic_vector(7 downto 0);
 b : in std_logic_vector(7 downto 0);
 cin : in std_logic;
 sum : out std_logic_vector(7 downto 0);
 cout : out std_logic);
end component;
signal a_s,b_s,sum_s : std_logic_vector (7 downto 0);
signal cin_s,cout_s : std_logic;
begin

DUT : top port map (a_s,b_s,cin_s,sum_s,cout_s);
process
 begin
  a_s <= "10101010";
  b_s <= "01010101";
  cin_s <= '0';
  wait for 10 ns;
  
  a_s <= "11001100";
  b_s <= "11110000";
  cin_s <= '1';
  wait for 10 ns;
  
  a_s <= "11010111";
  b_s <= "01011010";
  cin_s <= '0';
  wait for 10 ns;
  
  a_s <= "10110011";
  b_s <= "11111111";
  cin_s <= '1';
  wait for 10 ns;
 end process;
 
end imp;