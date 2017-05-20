library ieee;
use ieee.std_logic_1164.all;

entity adder_complete is

	port(
		a, b, cin:	in  std_logic;	-- inputs, carry in
		s, cout:		out std_logic  -- result, carry out
	);
	
end adder_complete;

architecture adder_complete_arch of adder_complete is
begin

	s <= a xor b xor cin;
	
	cout <= (a and b) or ((a xor b) and cin);
	
end adder_complete_arch;
