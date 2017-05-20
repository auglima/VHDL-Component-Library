library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is
	
	generic(
		bits: integer := 8
	);

	port(
		sel       : in  std_logic_vector(1 downto 0);       -- selector
		a, b, c, d: in  std_logic_vector(bits-1 downto 0);  -- inputs
		q         : out std_logic_vector(bits-1 downto 0)   -- output
	);
	
end mux_4to1;

architecture mux_4to1_arch of mux_4to1 is
begin

	with sel select q <=
		a when "00",
		b when "01",
		c when "10",
		d when "11";

end mux_4to1_arch;