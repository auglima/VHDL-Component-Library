library ieee;
use ieee.std_logic_1164.all;

entity demux_1to2 is
	
	generic(
		bits: integer := 8
	);

	port(
		sel: in std_logic_vector(1 downto 0);
		x:    in std_logic_vector(bits-1 downto 0);
		a, b, c, d: out std_logic_vector(bits-1 downto 0)
	);
	
end demux_1to2;

architecture demux_1to2_arch of demux_1to2 is
begin

	process (sel, x)
	begin
		case sel is
			when "0" =>
				a <= x;
			when "1" =>
				b <= x;
		end case;
	end process;

end demux_1to2_arch;