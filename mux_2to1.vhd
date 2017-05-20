library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1 is
	
	generic(
		bits: integer := 8
	);

	port(
		sel : in std_logic;                          -- selector
		a, b: in std_logic_vector(bits-1 downto 0);  -- inputs
		q   : out std_logic_vector(bits-1 downto 0)  -- output
	);
	
end mux_2to1;

architecture mux_2to1_arch of mux_2to1 is
begin

	q <= a when (sel = '0') else b;

end mux_2to1_arch;