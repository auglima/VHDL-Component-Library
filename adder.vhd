library ieee;
use ieee.std_logic_1164.all;

entity adder is

	generic (
		n : integer := 8
	);

	port(
		a, b: in	 std_logic_vector(n-1 downto 0);	 -- inputs
		op:	in	 std_logic;                       -- adder or sub
		v: 	out std_logic;                       -- overflow
		s:		out std_logic_vector(n-1 downto 0)   -- output
	);

end adder;


architecture arch_generic of adder is

	component adder_complete
		port(
			a, b, cin:	in  std_logic;	-- inputs, carry in
			s, cout:		out std_logic	-- result, carry out
		);
	end component;
	
	signal c_sig: 	 std_logic_vector(n downto 0);
	signal xor_sig: std_logic_vector(n-1 downto 0);
	
begin

	c_sig(0) <= op;
	
	comp2: for i in (n-1) downto 0 generate
		xor_sig(i) <= b(i) xor op;
	end generate comp2;
	
	adders: for i in (n-1) downto 0 generate
		
		u: adder_complete port map(
			a    => a(i),
			b    => xor_sig(i),
			cin  => c_sig(i),
			s    => s(i),
			cout => c_sig(i+1)		
		);
		
	end generate adders;
	
	v <= c_sig(n) xor c_sig(n-1);
		
end arch_generic;