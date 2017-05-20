library ieee;
use ieee.std_logic_1164.all;

entity ff_d_sync is

	port(
		d     : in std_logic; -- input
		clk   : in std_logic; -- clock
		clear : in std_logic; -- clear
		preset: in std_logic; -- preset
		q     : out std_logic -- output
	);
	
end ff_d_sync;

architecture ff_d_sync_arch of ff_d_sync is
begin
	
	process(clk) is
	begin
		if rising_edge(clk) then
			if clear = '1' then
				q <= '0';
			elsif preset = '1' then
				q <= '1';
			else
				q <= d;
			end if;
		end if;
	end process;
	
end ff_d_sync_arch;