LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
	PORT( control : IN STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	A_input, B_input : IN STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	ALU_output : OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ) );
END ALU;

ARCHITECTURE behavior OF ALU IS
	-- Declare signal(s) internal to module here
	SIGNAL temp_output : STD_LOGIC_VECTOR( 3 DOWNTO 0 );
	BEGIN
	PROCESS ( Control, A_input, B_input )
	BEGIN
		--Select Arithmetic/Logical Operation
		CASE control IS
			WHEN "00" =>
				temp_output <= A_input + B_input;
			WHEN "01" =>
				temp_output <= A_input - B_input;
			WHEN "10" =>
				temp_output <= A_input AND B_input;
			WHEN "11" =>
				temp_output <= A_input OR B_input;
			WHEN OTHERS =>
				temp_output <= "0000";
		END CASE;
		-- Select Shift Operation: Shift bits left with zero fill using concatenation operator
		-- Can also use VHDL 1076-1993 shift operator such as SLL
		IF Control( 0 ) = '1' THEN
			Alu_output <= temp_output( 2 DOWNTO 0 ) & '0';
		ELSE
			Alu_output <= temp_output;
		END IF;
	END PROCESS;
END behavior;