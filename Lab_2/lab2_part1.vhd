
---------------------------------------------------------
--  This code is generated by Terasic System Builder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lab2_part1 is
port
(

	------------ CLOCK ------------
	CLOCK2_50       	:in    	std_logic;
	CLOCK3_50       	:in    	std_logic;
	CLOCK4_50       	:in    	std_logic;
	CLOCK_50        	:in    	std_logic;

	------------ SW ------------
	SW              	:in    	std_logic_vector(9 downto 0);

	------------ LED ------------
	LEDR            	:out   	std_logic_vector(9 downto 0);

	------------ Seg7 ------------
	HEX0            	:out   	std_logic_vector(6 downto 0);
	HEX1            	:out   	std_logic_vector(6 downto 0);
	HEX2            	:out   	std_logic_vector(6 downto 0);
	HEX3            	:out   	std_logic_vector(6 downto 0);
	HEX4            	:out   	std_logic_vector(6 downto 0);
	HEX5            	:out   	std_logic_vector(6 downto 0)
);

end entity;



---------------------------------------------------------
--  Structural coding
---------------------------------------------------------


architecture rtl of lab2_part1 is

	component nios is 
    port ( 
        clk_clk                           : in  std_logic := 'X'; -- clk 
        reset_reset_n                     : in  std_logic := 'X'; -- reset_n 
        switch_external_connection_export : in  std_logic := 'X'; -- export 
        led_external_connection_export    : out std_logic         -- export 
    ); 
    end component nios; 
 
   signal sw0_invert : std_logic := '0';

begin

	u0 : component nios 
    port map ( 
        clk_clk                           => CLOCK2_50,  -- clk.clk 
        reset_reset_n                     => SW(1),      -- reset.reset_n 
        switch_external_connection_export => sw0_invert, -- switch_external_connection.export 
        led_external_connection_export    => LEDR(0)     -- led_external_connection.export 
    ); 
     
    sw0_invert <= SW(0); 

end rtl;

