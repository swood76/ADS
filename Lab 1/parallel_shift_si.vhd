library ieee;
use ieee.std_logic_1164.all;
 --parallel shift, serial in
entity parallel_shift_si is
 port(
 clk, rst : in std_logic;
 D: in std_logic;
 Q: buffer std_logic_vector(3 downto 0) );
end parallel_shift_si;
 
architecture rtl of parallel_shift_si is
 
begin
 
 process (clk)
 begin
 if rst = '1' then
 Q <= "0000";
 elsif (clk'event and clk='1') then
 Q(3 downto 1) <= Q(2 downto 0);
 Q(0) <= D;
 end if;
 end process;
end rtl;
