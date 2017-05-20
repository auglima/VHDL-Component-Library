library ieee;
use ieee.std_logic_1164.all;

entity demux_1to4 is
	
	generic(
		bits: integer := 8
	);

	port(
		sel        : in  std_logic_vector(1 downto 0);      -- selector
		x          : in  std_logic_vector(bits-1 downto 0); -- input
		a, b, c, d : out std_logic_vector(bits-1 downto 0)  -- outputs
	);
	
end entity;

architecture demux_1to4_arch of demux_1to4 is
begin

	process (sel, x)
	begin
		case sel is
			when "00" =>
				a <= x;
			when "01" =>
				b <= x;
			when "10" =>
				c <= x;
			when "11" =>
				d <= x;
		end case;
	end process;
	
end demux_1to4_arch;