library ieee;

use ieee.std_logic_1164.all;

ENTITY logical_tb IS
END;

ARCHITECTURE rtl OF logical_tb IS
	signal a, b, c, x : std_logic := '0';
	signal y : std_logic;
	
	BEGIN
		circuito: PROCESS (a, b, c, x) IS
		BEGIN
			x <= a NAND b;
			y <= x AND c;
		END PROCESS;
		
		estimulos: PROCESS IS
		BEGIN
			a <= '1' after 40 ns, '0' after 60 ns, '1' after 80 ns;
			b <= '1' after 20 ns, '0' after 60 ns;
			c <= '1' after 20 ns;
			wait;
		END PROCESS;
END rtl;