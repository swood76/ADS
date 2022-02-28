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
 --rst : in std_logic;
 D: in std_logic;
 Q: out std_logic_vector(3 downto 0));
end component;


signal Y_Q_1:std_logic_vector(3 downto 0);
signal Y_Q_0:std_logic_vector(3 downto 0);
signal Y_D:std_logic;
signal ones:std_logic;
signal zeros:std_logic;




begin










ff0:parallel_shift_si
port map(
clk => clock,

d => w,
q => Y_Q_0);

--rset_reg <= not reset;
ff1:parallel_shift_si
port map(
clk => clock,
d => w,
q => Y_Q_1);

zeros <= not (Y_Q_0(0) or Y_Q_0(1) or Y_Q_0(2) or Y_Q_0(3));

--nand_2 <= ;


ones <= Y_Q_1(0) and Y_Q_1(1) and  Y_Q_1(2) and Y_Q_1(3);
--and_2 <= );
--not(  (nand_1 and nand_2) ) or

z <=  ones or zeros;



end rtl;

