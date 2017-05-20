library ieee;
use ieee.std_logic_1164.all;

entity register_n is

	generic (
		n     : integer := 8
	);
	
	port(
		d     : in  std_logic_vector(n-1 downto 0); -- input
		load  : in  std_logic;							  -- write enable
		clear : in  std_logic;                      -- clear
		clk   : in  std_logic;                      -- clock
		q     : out std_logic_vector(n-1 downto 0)  -- ouput
	);
	
end register_n;

architecture register_n_arch of register_n is
begin
	
	process(clk, clear) is
	begin
	
		if clear = '1' then
			q <= (others => '0');
		elsif rising_edge(clk) then
			if load = '1' then
				q <= d;
			end if;
		end if;
		
	end process;
	
end register_n_arch;