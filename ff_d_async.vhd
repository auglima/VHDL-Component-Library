library ieee;
use ieee.std_logic_1164.all;

entity ff_d_async is

	port(
		d     : in std_logic; -- input
		clk   : in std_logic; -- clock
		clear : in std_logic; -- clear
		preset: in std_logic; -- preset
		q     : out std_logic -- output
	);
	
end ff_d_async;

architecture ff_d_async_arch of ff_d_async is
begin
	
	process(clk, clear, preset) is
	begin
		if (clear = '1') then
			q <= '0';
		elsif (preset = '1') then
			q <= '1';
		elsif (rising_edge(clk)) then
			q <= d;
		end if;
	end process;
	
end ff_d_async_arch;