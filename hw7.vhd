library ieee;
use ieee.std_logic_1164.all;

entity hw7 is
port(	D	:	in		std_logic_vector(3 downto 0);
		V	:	out	std_logic;
		x	:	out	std_logic;
		y	:	out	std_logic



		);
end hw7;
		
architecture fourPE of hw7 is
signal y_int, x_int : std_logic;
		
begin
		x_int <= D(3) or D(2);
		y_int <= not D(2) and D(1);
	
		x <= x_int;
		y <= D(3) or y_int;
		V <= x_int or D(1) or D(0);
	
end fourPE;