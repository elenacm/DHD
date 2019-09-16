-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "05/26/2019 17:43:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_R : OUT std_logic_vector(0 TO 7);
	VGA_G : OUT std_logic_vector(0 TO 7);
	VGA_B : OUT std_logic_vector(0 TO 7);
	VGA_BLANK_N : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_CLK : OUT std_logic;
	KEY : IN std_logic_vector(0 TO 3)
	);
END vga_top;

-- Design Ports Information
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_G : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_B : std_logic_vector(0 TO 7);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 TO 3);
SIGNAL \PLL|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA|vga_vs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK3\ : std_logic;
SIGNAL \PLL|altpll_component|pll~CLK4\ : std_logic;
SIGNAL \PELOTA|Add3~13\ : std_logic;
SIGNAL \PELOTA|Add3~14_combout\ : std_logic;
SIGNAL \PELOTA|Add0~4_combout\ : std_logic;
SIGNAL \PELOTA|Add0~6_combout\ : std_logic;
SIGNAL \PELOTA|Add1~0_combout\ : std_logic;
SIGNAL \PELOTA|Add1~4_combout\ : std_logic;
SIGNAL \PELOTA|Add2~4_combout\ : std_logic;
SIGNAL \PELOTA|Add2~8_combout\ : std_logic;
SIGNAL \PELOTA|Add2~11\ : std_logic;
SIGNAL \PELOTA|Add2~12_combout\ : std_logic;
SIGNAL \PELOTA|Add6~0_combout\ : std_logic;
SIGNAL \PELOTA|Add6~4_combout\ : std_logic;
SIGNAL \PELOTA|Add6~9\ : std_logic;
SIGNAL \PELOTA|Add6~10_combout\ : std_logic;
SIGNAL \PELOTA|LessThan11~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan11~16_combout\ : std_logic;
SIGNAL \PELOTA|LessThan10~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan10~16_combout\ : std_logic;
SIGNAL \PELOTA|Add7~10_combout\ : std_logic;
SIGNAL \PELOTA|Add4~9\ : std_logic;
SIGNAL \PELOTA|Add4~10_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[4]~14_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[8]~24\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[9]~25_combout\ : std_logic;
SIGNAL \PELOTA|Add13~4_combout\ : std_logic;
SIGNAL \PELOTA|Add13~8_combout\ : std_logic;
SIGNAL \PELOTA|Add13~11\ : std_logic;
SIGNAL \PELOTA|Add13~12_combout\ : std_logic;
SIGNAL \PELOTA|Add15~4_combout\ : std_logic;
SIGNAL \PELOTA|Add15~8_combout\ : std_logic;
SIGNAL \PELOTA|Add15~11\ : std_logic;
SIGNAL \PELOTA|Add15~12_combout\ : std_logic;
SIGNAL \PELOTA|Add14~4_combout\ : std_logic;
SIGNAL \PELOTA|Add14~8_combout\ : std_logic;
SIGNAL \PELOTA|Add14~11\ : std_logic;
SIGNAL \PELOTA|Add14~12_combout\ : std_logic;
SIGNAL \PELOTA|Add5~2_combout\ : std_logic;
SIGNAL \PELOTA|Add5~6_combout\ : std_logic;
SIGNAL \VGA|vga_r~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan8~0_combout\ : std_logic;
SIGNAL \VGA|vga_r~1_combout\ : std_logic;
SIGNAL \PELOTA|LessThan15~0_combout\ : std_logic;
SIGNAL \VGA|process_0~3_combout\ : std_logic;
SIGNAL \VGA|Equal2~1_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|process_0~8_combout\ : std_logic;
SIGNAL \VGA|Equal0~0_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[1]~2_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[1]~3_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[1]~4_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[1]~5_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~6_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Der~0_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Der~1_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Der~2_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Der~3_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Der~4_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Izq~2_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Izq~3_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Izq~4_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Pala_der_Y~4_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Pala_der_Y~5_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Pala_izq_Y~4_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \VGA|vga_vs~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PLL|altpll_component|pll~FBOUT\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0\ : std_logic;
SIGNAL \PLL|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|cont_hs~2_combout\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \VGA|Equal2~0_combout\ : std_logic;
SIGNAL \VGA|Equal2~2_combout\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \VGA|cont_vs[9]~0_combout\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|cont_hs~1_combout\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|cont_hs~0_combout\ : std_logic;
SIGNAL \VGA|process_0~9_combout\ : std_logic;
SIGNAL \VGA|Add1~1\ : std_logic;
SIGNAL \VGA|Add1~2_combout\ : std_logic;
SIGNAL \VGA|cont_vs[1]~8_combout\ : std_logic;
SIGNAL \VGA|Add1~3\ : std_logic;
SIGNAL \VGA|Add1~4_combout\ : std_logic;
SIGNAL \VGA|cont_vs[2]~7_combout\ : std_logic;
SIGNAL \VGA|Add1~5\ : std_logic;
SIGNAL \VGA|Add1~7\ : std_logic;
SIGNAL \VGA|Add1~9\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|cont_vs[5]~1_combout\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|cont_vs[6]~2_combout\ : std_logic;
SIGNAL \VGA|Add1~13\ : std_logic;
SIGNAL \VGA|Add1~14_combout\ : std_logic;
SIGNAL \VGA|cont_vs[7]~3_combout\ : std_logic;
SIGNAL \VGA|Add1~15\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|cont_vs[8]~4_combout\ : std_logic;
SIGNAL \VGA|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|video_on~q\ : std_logic;
SIGNAL \VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA|pixel_x[0]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \PELOTA|LessThan9~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan9~1_combout\ : std_logic;
SIGNAL \PELOTA|LessThan9~2_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[1]~9_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[1]~feeder_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[2]~9_cout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[2]~10_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[2]~feeder_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[2]~11\ : std_logic;
SIGNAL \PELOTA|Bola_Y[3]~13\ : std_logic;
SIGNAL \PELOTA|Bola_Y[4]~15\ : std_logic;
SIGNAL \PELOTA|Bola_Y[5]~17\ : std_logic;
SIGNAL \PELOTA|Bola_Y[6]~19\ : std_logic;
SIGNAL \PELOTA|Bola_Y[7]~21\ : std_logic;
SIGNAL \PELOTA|Bola_Y[8]~22_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[7]~20_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_Y[2]~0_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[3]~12_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[6]~18_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_Y[2]~1_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_Y[2]~2_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_Y[2]~3_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[8]~23\ : std_logic;
SIGNAL \PELOTA|Bola_Y[9]~24_combout\ : std_logic;
SIGNAL \VGA|pixel_y[8]~feeder_combout\ : std_logic;
SIGNAL \VGA|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|cont_vs[4]~5_combout\ : std_logic;
SIGNAL \VGA|Add1~6_combout\ : std_logic;
SIGNAL \VGA|cont_vs[3]~6_combout\ : std_logic;
SIGNAL \VGA|pixel_y[3]~feeder_combout\ : std_logic;
SIGNAL \PELOTA|Add2~1\ : std_logic;
SIGNAL \PELOTA|Add2~3\ : std_logic;
SIGNAL \PELOTA|Add2~5\ : std_logic;
SIGNAL \PELOTA|Add2~7\ : std_logic;
SIGNAL \PELOTA|Add2~9\ : std_logic;
SIGNAL \PELOTA|Add2~10_combout\ : std_logic;
SIGNAL \PELOTA|Add2~6_combout\ : std_logic;
SIGNAL \PELOTA|Bola_Y[5]~16_combout\ : std_logic;
SIGNAL \PELOTA|Add2~2_combout\ : std_logic;
SIGNAL \PELOTA|Add2~0_combout\ : std_logic;
SIGNAL \VGA|pixel_y[2]~feeder_combout\ : std_logic;
SIGNAL \PELOTA|LessThan2~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan2~16_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[1]~10\ : std_logic;
SIGNAL \PELOTA|Bola_X[2]~11_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[2]~12\ : std_logic;
SIGNAL \PELOTA|Bola_X[3]~13_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[3]~14\ : std_logic;
SIGNAL \PELOTA|Bola_X[4]~15_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[4]~16\ : std_logic;
SIGNAL \PELOTA|Bola_X[5]~17_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[5]~18\ : std_logic;
SIGNAL \PELOTA|Bola_X[6]~19_combout\ : std_logic;
SIGNAL \PELOTA|LessThan18~0_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[6]~20\ : std_logic;
SIGNAL \PELOTA|Bola_X[7]~21_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[7]~22\ : std_logic;
SIGNAL \PELOTA|Bola_X[8]~23_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[1]~0_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~1_combout\ : std_logic;
SIGNAL \PELOTA|Add1~1\ : std_logic;
SIGNAL \PELOTA|Add1~3\ : std_logic;
SIGNAL \PELOTA|Add1~5\ : std_logic;
SIGNAL \PELOTA|Add1~7\ : std_logic;
SIGNAL \PELOTA|Add1~9\ : std_logic;
SIGNAL \PELOTA|Add1~11\ : std_logic;
SIGNAL \PELOTA|Add1~12_combout\ : std_logic;
SIGNAL \PELOTA|Add1~6_combout\ : std_logic;
SIGNAL \PELOTA|Add1~2_combout\ : std_logic;
SIGNAL \PELOTA|Add15~1_cout\ : std_logic;
SIGNAL \PELOTA|Add15~3\ : std_logic;
SIGNAL \PELOTA|Add15~5\ : std_logic;
SIGNAL \PELOTA|Add15~7\ : std_logic;
SIGNAL \PELOTA|Add15~9\ : std_logic;
SIGNAL \PELOTA|Add15~10_combout\ : std_logic;
SIGNAL \PELOTA|Add15~6_combout\ : std_logic;
SIGNAL \PELOTA|Add15~2_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Bola~0_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~10_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[1]~9_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[1]~10\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[2]~11_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[2]~12\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[3]~13_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[3]~14\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[4]~15_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[4]~16\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[5]~17_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[5]~18\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[6]~19_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[6]~20\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[7]~21_combout\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[7]~22\ : std_logic;
SIGNAL \PELOTA|Pala_der_Y[8]~23_combout\ : std_logic;
SIGNAL \PELOTA|Add6~1\ : std_logic;
SIGNAL \PELOTA|Add6~3\ : std_logic;
SIGNAL \PELOTA|Add6~5\ : std_logic;
SIGNAL \PELOTA|Add6~7\ : std_logic;
SIGNAL \PELOTA|Add6~8_combout\ : std_logic;
SIGNAL \PELOTA|Add6~6_combout\ : std_logic;
SIGNAL \PELOTA|Add6~2_combout\ : std_logic;
SIGNAL \PELOTA|Add14~1\ : std_logic;
SIGNAL \PELOTA|Add14~3\ : std_logic;
SIGNAL \PELOTA|Add14~5\ : std_logic;
SIGNAL \PELOTA|Add14~7\ : std_logic;
SIGNAL \PELOTA|Add14~9\ : std_logic;
SIGNAL \PELOTA|Add14~10_combout\ : std_logic;
SIGNAL \PELOTA|Add14~6_combout\ : std_logic;
SIGNAL \PELOTA|Add14~2_combout\ : std_logic;
SIGNAL \PELOTA|Add14~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan24~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan24~16_combout\ : std_logic;
SIGNAL \PELOTA|Add3~1\ : std_logic;
SIGNAL \PELOTA|Add3~3\ : std_logic;
SIGNAL \PELOTA|Add3~5\ : std_logic;
SIGNAL \PELOTA|Add3~7\ : std_logic;
SIGNAL \PELOTA|Add3~9\ : std_logic;
SIGNAL \PELOTA|Add3~11\ : std_logic;
SIGNAL \PELOTA|Add3~12_combout\ : std_logic;
SIGNAL \PELOTA|Add3~6_combout\ : std_logic;
SIGNAL \PELOTA|Add3~4_combout\ : std_logic;
SIGNAL \PELOTA|Add3~2_combout\ : std_logic;
SIGNAL \PELOTA|Add12~1\ : std_logic;
SIGNAL \PELOTA|Add12~3\ : std_logic;
SIGNAL \PELOTA|Add12~5\ : std_logic;
SIGNAL \PELOTA|Add12~7\ : std_logic;
SIGNAL \PELOTA|Add12~9\ : std_logic;
SIGNAL \PELOTA|Add12~11\ : std_logic;
SIGNAL \PELOTA|Add12~12_combout\ : std_logic;
SIGNAL \PELOTA|Add12~10_combout\ : std_logic;
SIGNAL \PELOTA|Add12~6_combout\ : std_logic;
SIGNAL \PELOTA|Add12~4_combout\ : std_logic;
SIGNAL \PELOTA|Add12~2_combout\ : std_logic;
SIGNAL \PELOTA|Add12~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan23~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan23~16_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~11_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Izq~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[8]~24\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[9]~25_combout\ : std_logic;
SIGNAL \PELOTA|Mover_Pala_Izq~0_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Pala_izq_Y~5_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[1]~10\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[2]~11_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[2]~12\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[3]~13_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[3]~14\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[4]~15_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[4]~16\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[5]~17_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[5]~18\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[6]~19_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[6]~20\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[7]~21_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[7]~22\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[8]~23_combout\ : std_logic;
SIGNAL \PELOTA|Add12~8_combout\ : std_logic;
SIGNAL \PELOTA|Add3~0_combout\ : std_logic;
SIGNAL \PELOTA|Pala_izq_Y[1]~9_combout\ : std_logic;
SIGNAL \PELOTA|LessThan20~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan20~16_combout\ : std_logic;
SIGNAL \PELOTA|Add4~1\ : std_logic;
SIGNAL \PELOTA|Add4~3\ : std_logic;
SIGNAL \PELOTA|Add4~5\ : std_logic;
SIGNAL \PELOTA|Add4~7\ : std_logic;
SIGNAL \PELOTA|Add4~8_combout\ : std_logic;
SIGNAL \PELOTA|Add4~4_combout\ : std_logic;
SIGNAL \PELOTA|Add4~2_combout\ : std_logic;
SIGNAL \PELOTA|Add4~0_combout\ : std_logic;
SIGNAL \PELOTA|Add13~1\ : std_logic;
SIGNAL \PELOTA|Add13~3\ : std_logic;
SIGNAL \PELOTA|Add13~5\ : std_logic;
SIGNAL \PELOTA|Add13~7\ : std_logic;
SIGNAL \PELOTA|Add13~9\ : std_logic;
SIGNAL \PELOTA|Add13~10_combout\ : std_logic;
SIGNAL \PELOTA|Add13~6_combout\ : std_logic;
SIGNAL \PELOTA|Add13~2_combout\ : std_logic;
SIGNAL \PELOTA|Add13~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan21~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan21~16_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~7_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~8_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~9_combout\ : std_logic;
SIGNAL \PELOTA|Desplaza_Bola_X[2]~12_combout\ : std_logic;
SIGNAL \PELOTA|Bola_X[8]~24\ : std_logic;
SIGNAL \PELOTA|Bola_X[9]~25_combout\ : std_logic;
SIGNAL \PELOTA|Add1~13\ : std_logic;
SIGNAL \PELOTA|Add1~14_combout\ : std_logic;
SIGNAL \PELOTA|Add1~10_combout\ : std_logic;
SIGNAL \PELOTA|Add1~8_combout\ : std_logic;
SIGNAL \PELOTA|LessThan1~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~17_cout\ : std_logic;
SIGNAL \PELOTA|LessThan1~18_combout\ : std_logic;
SIGNAL \PELOTA|Add0~1\ : std_logic;
SIGNAL \PELOTA|Add0~3\ : std_logic;
SIGNAL \PELOTA|Add0~5\ : std_logic;
SIGNAL \PELOTA|Add0~7\ : std_logic;
SIGNAL \PELOTA|Add0~9\ : std_logic;
SIGNAL \PELOTA|Add0~11\ : std_logic;
SIGNAL \PELOTA|Add0~13\ : std_logic;
SIGNAL \PELOTA|Add0~14_combout\ : std_logic;
SIGNAL \PELOTA|Add0~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan0~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan0~16_combout\ : std_logic;
SIGNAL \PELOTA|Add3~10_combout\ : std_logic;
SIGNAL \PELOTA|Add3~8_combout\ : std_logic;
SIGNAL \VGA|pixel_y[1]~feeder_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \VGA|cont_vs[0]~9_combout\ : std_logic;
SIGNAL \VGA|pixel_y[0]~feeder_combout\ : std_logic;
SIGNAL \PELOTA|LessThan3~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan3~16_combout\ : std_logic;
SIGNAL \PELOTA|Bola_on~0_combout\ : std_logic;
SIGNAL \PELOTA|Bola_on~1_combout\ : std_logic;
SIGNAL \VGA|vga_r~2_combout\ : std_logic;
SIGNAL \VGA|vga_r~q\ : std_logic;
SIGNAL \PELOTA|Add7~1_cout\ : std_logic;
SIGNAL \PELOTA|Add7~3_cout\ : std_logic;
SIGNAL \PELOTA|Add7~5_cout\ : std_logic;
SIGNAL \PELOTA|Add7~7_cout\ : std_logic;
SIGNAL \PELOTA|Add7~9_cout\ : std_logic;
SIGNAL \PELOTA|Add7~11\ : std_logic;
SIGNAL \PELOTA|Add7~13\ : std_logic;
SIGNAL \PELOTA|Add7~15\ : std_logic;
SIGNAL \PELOTA|Add7~16_combout\ : std_logic;
SIGNAL \PELOTA|Add7~14_combout\ : std_logic;
SIGNAL \PELOTA|Add7~12_combout\ : std_logic;
SIGNAL \VGA|vga_g~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan13~0_combout\ : std_logic;
SIGNAL \PELOTA|LessThan13~1_combout\ : std_logic;
SIGNAL \VGA|vga_g~1_combout\ : std_logic;
SIGNAL \VGA|vga_g~2_combout\ : std_logic;
SIGNAL \VGA|vga_g~3_combout\ : std_logic;
SIGNAL \VGA|vga_g~4_combout\ : std_logic;
SIGNAL \VGA|vga_g~q\ : std_logic;
SIGNAL \PELOTA|Add0~12_combout\ : std_logic;
SIGNAL \PELOTA|Add0~8_combout\ : std_logic;
SIGNAL \PELOTA|Add0~10_combout\ : std_logic;
SIGNAL \PELOTA|LessThan4~0_combout\ : std_logic;
SIGNAL \VGA|vga_b~0_combout\ : std_logic;
SIGNAL \VGA|vga_b~1_combout\ : std_logic;
SIGNAL \VGA|vga_b~2_combout\ : std_logic;
SIGNAL \PELOTA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|vga_b~3_combout\ : std_logic;
SIGNAL \PELOTA|Add4~6_combout\ : std_logic;
SIGNAL \PELOTA|LessThan7~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan7~16_combout\ : std_logic;
SIGNAL \VGA|pixel_y[5]~feeder_combout\ : std_logic;
SIGNAL \PELOTA|Add5~0_combout\ : std_logic;
SIGNAL \PELOTA|Add5~1_combout\ : std_logic;
SIGNAL \PELOTA|Add5~3_combout\ : std_logic;
SIGNAL \PELOTA|Add5~4_combout\ : std_logic;
SIGNAL \PELOTA|Add5~5_combout\ : std_logic;
SIGNAL \PELOTA|LessThan6~1_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~3_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~5_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~7_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~9_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~11_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~13_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~15_cout\ : std_logic;
SIGNAL \PELOTA|LessThan6~16_combout\ : std_logic;
SIGNAL \VGA|vga_b~4_combout\ : std_logic;
SIGNAL \VGA|vga_b~5_combout\ : std_logic;
SIGNAL \VGA|vga_b~q\ : std_logic;
SIGNAL \VGA|vga_blank_N~q\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~2_combout\ : std_logic;
SIGNAL \VGA|hs~q\ : std_logic;
SIGNAL \VGA|vga_hs~q\ : std_logic;
SIGNAL \VGA|process_0~4_combout\ : std_logic;
SIGNAL \VGA|vs~q\ : std_logic;
SIGNAL \VGA|vga_vs~feeder_combout\ : std_logic;
SIGNAL \VGA|vga_vs~q\ : std_logic;
SIGNAL \VGA|pixel_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|pixel_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_vs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|cont_hs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Pala_izq_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Pala_der_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Desplaza_Pala_izq_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Desplaza_Pala_der_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Desplaza_Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Desplaza_Bola_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Bola_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PELOTA|Bola_X\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\PLL|altpll_component|_clk0\ <= \PLL|altpll_component|pll_CLK_bus\(0);
\PLL|altpll_component|pll~CLK1\ <= \PLL|altpll_component|pll_CLK_bus\(1);
\PLL|altpll_component|pll~CLK2\ <= \PLL|altpll_component|pll_CLK_bus\(2);
\PLL|altpll_component|pll~CLK3\ <= \PLL|altpll_component|pll_CLK_bus\(3);
\PLL|altpll_component|pll~CLK4\ <= \PLL|altpll_component|pll_CLK_bus\(4);

\VGA|vga_vs~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA|vga_vs~q\);

\PLL|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL|altpll_component|_clk0\);

-- Location: FF_X48_Y64_N7
\PELOTA|Bola_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Bola_Y[4]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(4));

-- Location: LCCOMB_X48_Y64_N14
\PELOTA|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~12_combout\ = (\PELOTA|Bola_Y\(8) & (\PELOTA|Add3~11\ $ (GND))) # (!\PELOTA|Bola_Y\(8) & (!\PELOTA|Add3~11\ & VCC))
-- \PELOTA|Add3~13\ = CARRY((\PELOTA|Bola_Y\(8) & !\PELOTA|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(8),
	datad => VCC,
	cin => \PELOTA|Add3~11\,
	combout => \PELOTA|Add3~12_combout\,
	cout => \PELOTA|Add3~13\);

-- Location: LCCOMB_X48_Y64_N16
\PELOTA|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~14_combout\ = \PELOTA|Add3~13\ $ (\PELOTA|Bola_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Bola_Y\(9),
	cin => \PELOTA|Add3~13\,
	combout => \PELOTA|Add3~14_combout\);

-- Location: LCCOMB_X46_Y66_N8
\PELOTA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~4_combout\ = (\VGA|pixel_x\(4) & (\PELOTA|Add0~3\ $ (GND))) # (!\VGA|pixel_x\(4) & (!\PELOTA|Add0~3\ & VCC))
-- \PELOTA|Add0~5\ = CARRY((\VGA|pixel_x\(4) & !\PELOTA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \PELOTA|Add0~3\,
	combout => \PELOTA|Add0~4_combout\,
	cout => \PELOTA|Add0~5\);

-- Location: LCCOMB_X46_Y66_N10
\PELOTA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~6_combout\ = (\VGA|pixel_x\(5) & (!\PELOTA|Add0~5\)) # (!\VGA|pixel_x\(5) & ((\PELOTA|Add0~5\) # (GND)))
-- \PELOTA|Add0~7\ = CARRY((!\PELOTA|Add0~5\) # (!\VGA|pixel_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \PELOTA|Add0~5\,
	combout => \PELOTA|Add0~6_combout\,
	cout => \PELOTA|Add0~7\);

-- Location: LCCOMB_X49_Y66_N2
\PELOTA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~0_combout\ = \PELOTA|Bola_X\(2) $ (VCC)
-- \PELOTA|Add1~1\ = CARRY(\PELOTA|Bola_X\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(2),
	datad => VCC,
	combout => \PELOTA|Add1~0_combout\,
	cout => \PELOTA|Add1~1\);

-- Location: LCCOMB_X49_Y66_N6
\PELOTA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~4_combout\ = (\PELOTA|Bola_X\(4) & (\PELOTA|Add1~3\ $ (GND))) # (!\PELOTA|Bola_X\(4) & (!\PELOTA|Add1~3\ & VCC))
-- \PELOTA|Add1~5\ = CARRY((\PELOTA|Bola_X\(4) & !\PELOTA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_X\(4),
	datad => VCC,
	cin => \PELOTA|Add1~3\,
	combout => \PELOTA|Add1~4_combout\,
	cout => \PELOTA|Add1~5\);

-- Location: LCCOMB_X46_Y64_N22
\PELOTA|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~4_combout\ = (\VGA|pixel_y\(5) & (\PELOTA|Add2~3\ $ (GND))) # (!\VGA|pixel_y\(5) & (!\PELOTA|Add2~3\ & VCC))
-- \PELOTA|Add2~5\ = CARRY((\VGA|pixel_y\(5) & !\PELOTA|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \PELOTA|Add2~3\,
	combout => \PELOTA|Add2~4_combout\,
	cout => \PELOTA|Add2~5\);

-- Location: LCCOMB_X46_Y64_N26
\PELOTA|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~8_combout\ = (\VGA|pixel_y\(7) & (\PELOTA|Add2~7\ $ (GND))) # (!\VGA|pixel_y\(7) & (!\PELOTA|Add2~7\ & VCC))
-- \PELOTA|Add2~9\ = CARRY((\VGA|pixel_y\(7) & !\PELOTA|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \PELOTA|Add2~7\,
	combout => \PELOTA|Add2~8_combout\,
	cout => \PELOTA|Add2~9\);

-- Location: LCCOMB_X46_Y64_N28
\PELOTA|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~10_combout\ = (\VGA|pixel_y\(8) & (!\PELOTA|Add2~9\)) # (!\VGA|pixel_y\(8) & ((\PELOTA|Add2~9\) # (GND)))
-- \PELOTA|Add2~11\ = CARRY((!\PELOTA|Add2~9\) # (!\VGA|pixel_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => VCC,
	cin => \PELOTA|Add2~9\,
	combout => \PELOTA|Add2~10_combout\,
	cout => \PELOTA|Add2~11\);

-- Location: LCCOMB_X46_Y64_N30
\PELOTA|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~12_combout\ = !\PELOTA|Add2~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \PELOTA|Add2~11\,
	combout => \PELOTA|Add2~12_combout\);

-- Location: FF_X49_Y67_N19
\PELOTA|Pala_der_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(9));

-- Location: LCCOMB_X49_Y67_N20
\PELOTA|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add6~0_combout\ = (\PELOTA|Pala_der_Y\(3) & (\PELOTA|Pala_der_Y\(4) $ (VCC))) # (!\PELOTA|Pala_der_Y\(3) & (\PELOTA|Pala_der_Y\(4) & VCC))
-- \PELOTA|Add6~1\ = CARRY((\PELOTA|Pala_der_Y\(3) & \PELOTA|Pala_der_Y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(3),
	datab => \PELOTA|Pala_der_Y\(4),
	datad => VCC,
	combout => \PELOTA|Add6~0_combout\,
	cout => \PELOTA|Add6~1\);

-- Location: LCCOMB_X49_Y67_N24
\PELOTA|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add6~4_combout\ = (\PELOTA|Pala_der_Y\(6) & (\PELOTA|Add6~3\ $ (GND))) # (!\PELOTA|Pala_der_Y\(6) & (!\PELOTA|Add6~3\ & VCC))
-- \PELOTA|Add6~5\ = CARRY((\PELOTA|Pala_der_Y\(6) & !\PELOTA|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(6),
	datad => VCC,
	cin => \PELOTA|Add6~3\,
	combout => \PELOTA|Add6~4_combout\,
	cout => \PELOTA|Add6~5\);

-- Location: LCCOMB_X49_Y67_N28
\PELOTA|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add6~8_combout\ = (\PELOTA|Pala_der_Y\(8) & (\PELOTA|Add6~7\ $ (GND))) # (!\PELOTA|Pala_der_Y\(8) & (!\PELOTA|Add6~7\ & VCC))
-- \PELOTA|Add6~9\ = CARRY((\PELOTA|Pala_der_Y\(8) & !\PELOTA|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Pala_der_Y\(8),
	datad => VCC,
	cin => \PELOTA|Add6~7\,
	combout => \PELOTA|Add6~8_combout\,
	cout => \PELOTA|Add6~9\);

-- Location: LCCOMB_X49_Y67_N30
\PELOTA|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add6~10_combout\ = \PELOTA|Add6~9\ $ (\PELOTA|Pala_der_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Pala_der_Y\(9),
	cin => \PELOTA|Add6~9\,
	combout => \PELOTA|Add6~10_combout\);

-- Location: LCCOMB_X47_Y67_N14
\PELOTA|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \PELOTA|LessThan11~1_cout\);

-- Location: LCCOMB_X47_Y67_N16
\PELOTA|LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~3_cout\ = CARRY((\PELOTA|Pala_der_Y\(1) & ((!\PELOTA|LessThan11~1_cout\) # (!\VGA|pixel_y\(1)))) # (!\PELOTA|Pala_der_Y\(1) & (!\VGA|pixel_y\(1) & !\PELOTA|LessThan11~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cin => \PELOTA|LessThan11~1_cout\,
	cout => \PELOTA|LessThan11~3_cout\);

-- Location: LCCOMB_X47_Y67_N18
\PELOTA|LessThan11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~5_cout\ = CARRY((\PELOTA|Pala_der_Y\(2) & (\VGA|pixel_y\(2) & !\PELOTA|LessThan11~3_cout\)) # (!\PELOTA|Pala_der_Y\(2) & ((\VGA|pixel_y\(2)) # (!\PELOTA|LessThan11~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan11~3_cout\,
	cout => \PELOTA|LessThan11~5_cout\);

-- Location: LCCOMB_X47_Y67_N20
\PELOTA|LessThan11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~7_cout\ = CARRY((\PELOTA|Pala_der_Y\(3) & (!\VGA|pixel_y\(3) & !\PELOTA|LessThan11~5_cout\)) # (!\PELOTA|Pala_der_Y\(3) & ((!\PELOTA|LessThan11~5_cout\) # (!\VGA|pixel_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(3),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \PELOTA|LessThan11~5_cout\,
	cout => \PELOTA|LessThan11~7_cout\);

-- Location: LCCOMB_X47_Y67_N22
\PELOTA|LessThan11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~9_cout\ = CARRY((\VGA|pixel_y\(4) & ((!\PELOTA|LessThan11~7_cout\) # (!\PELOTA|Add6~0_combout\))) # (!\VGA|pixel_y\(4) & (!\PELOTA|Add6~0_combout\ & !\PELOTA|LessThan11~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \PELOTA|Add6~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan11~7_cout\,
	cout => \PELOTA|LessThan11~9_cout\);

-- Location: LCCOMB_X47_Y67_N24
\PELOTA|LessThan11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~11_cout\ = CARRY((\PELOTA|Add6~2_combout\ & ((!\PELOTA|LessThan11~9_cout\) # (!\VGA|pixel_y\(5)))) # (!\PELOTA|Add6~2_combout\ & (!\VGA|pixel_y\(5) & !\PELOTA|LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add6~2_combout\,
	datab => \VGA|pixel_y\(5),
	datad => VCC,
	cin => \PELOTA|LessThan11~9_cout\,
	cout => \PELOTA|LessThan11~11_cout\);

-- Location: LCCOMB_X47_Y67_N26
\PELOTA|LessThan11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\PELOTA|LessThan11~11_cout\) # (!\PELOTA|Add6~4_combout\))) # (!\VGA|pixel_y\(6) & (!\PELOTA|Add6~4_combout\ & !\PELOTA|LessThan11~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \PELOTA|Add6~4_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan11~11_cout\,
	cout => \PELOTA|LessThan11~13_cout\);

-- Location: LCCOMB_X47_Y67_N28
\PELOTA|LessThan11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~15_cout\ = CARRY((\PELOTA|Add6~6_combout\ & ((!\PELOTA|LessThan11~13_cout\) # (!\VGA|pixel_y\(7)))) # (!\PELOTA|Add6~6_combout\ & (!\VGA|pixel_y\(7) & !\PELOTA|LessThan11~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add6~6_combout\,
	datab => \VGA|pixel_y\(7),
	datad => VCC,
	cin => \PELOTA|LessThan11~13_cout\,
	cout => \PELOTA|LessThan11~15_cout\);

-- Location: LCCOMB_X47_Y67_N30
\PELOTA|LessThan11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan11~16_combout\ = (\VGA|pixel_y\(8) & ((!\PELOTA|Add6~8_combout\) # (!\PELOTA|LessThan11~15_cout\))) # (!\VGA|pixel_y\(8) & (!\PELOTA|LessThan11~15_cout\ & !\PELOTA|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => \PELOTA|Add6~8_combout\,
	cin => \PELOTA|LessThan11~15_cout\,
	combout => \PELOTA|LessThan11~16_combout\);

-- Location: LCCOMB_X46_Y67_N0
\PELOTA|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~1_cout\ = CARRY((\PELOTA|Pala_der_Y\(1) & !\VGA|pixel_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cout => \PELOTA|LessThan10~1_cout\);

-- Location: LCCOMB_X46_Y67_N2
\PELOTA|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~3_cout\ = CARRY((\PELOTA|Pala_der_Y\(2) & (\VGA|pixel_y\(2) & !\PELOTA|LessThan10~1_cout\)) # (!\PELOTA|Pala_der_Y\(2) & ((\VGA|pixel_y\(2)) # (!\PELOTA|LessThan10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan10~1_cout\,
	cout => \PELOTA|LessThan10~3_cout\);

-- Location: LCCOMB_X46_Y67_N4
\PELOTA|LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~5_cout\ = CARRY((\VGA|pixel_y\(3) & ((\PELOTA|Pala_der_Y\(3)) # (!\PELOTA|LessThan10~3_cout\))) # (!\VGA|pixel_y\(3) & (\PELOTA|Pala_der_Y\(3) & !\PELOTA|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(3),
	datab => \PELOTA|Pala_der_Y\(3),
	datad => VCC,
	cin => \PELOTA|LessThan10~3_cout\,
	cout => \PELOTA|LessThan10~5_cout\);

-- Location: LCCOMB_X46_Y67_N6
\PELOTA|LessThan10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~7_cout\ = CARRY((\PELOTA|Add5~6_combout\ & ((!\PELOTA|LessThan10~5_cout\) # (!\PELOTA|Pala_der_Y\(4)))) # (!\PELOTA|Add5~6_combout\ & (!\PELOTA|Pala_der_Y\(4) & !\PELOTA|LessThan10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add5~6_combout\,
	datab => \PELOTA|Pala_der_Y\(4),
	datad => VCC,
	cin => \PELOTA|LessThan10~5_cout\,
	cout => \PELOTA|LessThan10~7_cout\);

-- Location: LCCOMB_X46_Y67_N8
\PELOTA|LessThan10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~9_cout\ = CARRY((\PELOTA|Pala_der_Y\(5) & ((\PELOTA|Add5~5_combout\) # (!\PELOTA|LessThan10~7_cout\))) # (!\PELOTA|Pala_der_Y\(5) & (\PELOTA|Add5~5_combout\ & !\PELOTA|LessThan10~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(5),
	datab => \PELOTA|Add5~5_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan10~7_cout\,
	cout => \PELOTA|LessThan10~9_cout\);

-- Location: LCCOMB_X46_Y67_N10
\PELOTA|LessThan10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~11_cout\ = CARRY((\PELOTA|Add5~4_combout\ & ((!\PELOTA|LessThan10~9_cout\) # (!\PELOTA|Pala_der_Y\(6)))) # (!\PELOTA|Add5~4_combout\ & (!\PELOTA|Pala_der_Y\(6) & !\PELOTA|LessThan10~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add5~4_combout\,
	datab => \PELOTA|Pala_der_Y\(6),
	datad => VCC,
	cin => \PELOTA|LessThan10~9_cout\,
	cout => \PELOTA|LessThan10~11_cout\);

-- Location: LCCOMB_X46_Y67_N12
\PELOTA|LessThan10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~13_cout\ = CARRY((\PELOTA|Pala_der_Y\(7) & ((!\PELOTA|LessThan10~11_cout\) # (!\PELOTA|Add5~3_combout\))) # (!\PELOTA|Pala_der_Y\(7) & (!\PELOTA|Add5~3_combout\ & !\PELOTA|LessThan10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(7),
	datab => \PELOTA|Add5~3_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan10~11_cout\,
	cout => \PELOTA|LessThan10~13_cout\);

-- Location: LCCOMB_X46_Y67_N14
\PELOTA|LessThan10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~15_cout\ = CARRY((\PELOTA|Pala_der_Y\(8) & (\PELOTA|Add5~2_combout\ & !\PELOTA|LessThan10~13_cout\)) # (!\PELOTA|Pala_der_Y\(8) & ((\PELOTA|Add5~2_combout\) # (!\PELOTA|LessThan10~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(8),
	datab => \PELOTA|Add5~2_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan10~13_cout\,
	cout => \PELOTA|LessThan10~15_cout\);

-- Location: LCCOMB_X46_Y67_N16
\PELOTA|LessThan10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan10~16_combout\ = (\PELOTA|Add5~1_combout\ & (!\PELOTA|LessThan10~15_cout\ & \PELOTA|Pala_der_Y\(9))) # (!\PELOTA|Add5~1_combout\ & ((\PELOTA|Pala_der_Y\(9)) # (!\PELOTA|LessThan10~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add5~1_combout\,
	datad => \PELOTA|Pala_der_Y\(9),
	cin => \PELOTA|LessThan10~15_cout\,
	combout => \PELOTA|LessThan10~16_combout\);

-- Location: LCCOMB_X45_Y66_N10
\PELOTA|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~10_combout\ = (\VGA|pixel_x\(6) & (!\PELOTA|Add7~9_cout\)) # (!\VGA|pixel_x\(6) & ((\PELOTA|Add7~9_cout\) # (GND)))
-- \PELOTA|Add7~11\ = CARRY((!\PELOTA|Add7~9_cout\) # (!\VGA|pixel_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \PELOTA|Add7~9_cout\,
	combout => \PELOTA|Add7~10_combout\,
	cout => \PELOTA|Add7~11\);

-- Location: LCCOMB_X47_Y65_N28
\PELOTA|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add4~8_combout\ = (\PELOTA|Pala_izq_Y\(8) & (\PELOTA|Add4~7\ $ (GND))) # (!\PELOTA|Pala_izq_Y\(8) & (!\PELOTA|Add4~7\ & VCC))
-- \PELOTA|Add4~9\ = CARRY((\PELOTA|Pala_izq_Y\(8) & !\PELOTA|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Pala_izq_Y\(8),
	datad => VCC,
	cin => \PELOTA|Add4~7\,
	combout => \PELOTA|Add4~8_combout\,
	cout => \PELOTA|Add4~9\);

-- Location: LCCOMB_X47_Y65_N30
\PELOTA|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add4~10_combout\ = \PELOTA|Add4~9\ $ (\PELOTA|Pala_izq_Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Pala_izq_Y\(9),
	cin => \PELOTA|Add4~9\,
	combout => \PELOTA|Add4~10_combout\);

-- Location: LCCOMB_X45_Y64_N12
\PELOTA|Bola_Y[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[4]~14_combout\ = (\PELOTA|Bola_Y\(4) & ((\PELOTA|Desplaza_Bola_Y\(2) & (\PELOTA|Bola_Y[3]~13\ & VCC)) # (!\PELOTA|Desplaza_Bola_Y\(2) & (!\PELOTA|Bola_Y[3]~13\)))) # (!\PELOTA|Bola_Y\(4) & ((\PELOTA|Desplaza_Bola_Y\(2) & 
-- (!\PELOTA|Bola_Y[3]~13\)) # (!\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y[3]~13\) # (GND)))))
-- \PELOTA|Bola_Y[4]~15\ = CARRY((\PELOTA|Bola_Y\(4) & (!\PELOTA|Desplaza_Bola_Y\(2) & !\PELOTA|Bola_Y[3]~13\)) # (!\PELOTA|Bola_Y\(4) & ((!\PELOTA|Bola_Y[3]~13\) # (!\PELOTA|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(4),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[3]~13\,
	combout => \PELOTA|Bola_Y[4]~14_combout\,
	cout => \PELOTA|Bola_Y[4]~15\);

-- Location: LCCOMB_X49_Y67_N16
\PELOTA|Pala_der_Y[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[8]~23_combout\ = (\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(8) & (\PELOTA|Pala_der_Y[7]~22\ & VCC)) # (!\PELOTA|Pala_der_Y\(8) & (!\PELOTA|Pala_der_Y[7]~22\)))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & 
-- ((\PELOTA|Pala_der_Y\(8) & (!\PELOTA|Pala_der_Y[7]~22\)) # (!\PELOTA|Pala_der_Y\(8) & ((\PELOTA|Pala_der_Y[7]~22\) # (GND)))))
-- \PELOTA|Pala_der_Y[8]~24\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y\(8) & !\PELOTA|Pala_der_Y[7]~22\)) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & ((!\PELOTA|Pala_der_Y[7]~22\) # (!\PELOTA|Pala_der_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(8),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[7]~22\,
	combout => \PELOTA|Pala_der_Y[8]~23_combout\,
	cout => \PELOTA|Pala_der_Y[8]~24\);

-- Location: LCCOMB_X49_Y67_N18
\PELOTA|Pala_der_Y[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[9]~25_combout\ = \PELOTA|Desplaza_Pala_der_Y\(2) $ (\PELOTA|Pala_der_Y[8]~24\ $ (!\PELOTA|Pala_der_Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datad => \PELOTA|Pala_der_Y\(9),
	cin => \PELOTA|Pala_der_Y[8]~24\,
	combout => \PELOTA|Pala_der_Y[9]~25_combout\);

-- Location: LCCOMB_X48_Y65_N22
\PELOTA|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~4_combout\ = (\PELOTA|Add4~2_combout\ & (\PELOTA|Add13~3\ $ (GND))) # (!\PELOTA|Add4~2_combout\ & (!\PELOTA|Add13~3\ & VCC))
-- \PELOTA|Add13~5\ = CARRY((\PELOTA|Add4~2_combout\ & !\PELOTA|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add4~2_combout\,
	datad => VCC,
	cin => \PELOTA|Add13~3\,
	combout => \PELOTA|Add13~4_combout\,
	cout => \PELOTA|Add13~5\);

-- Location: LCCOMB_X48_Y65_N26
\PELOTA|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~8_combout\ = (\PELOTA|Add4~6_combout\ & (\PELOTA|Add13~7\ $ (GND))) # (!\PELOTA|Add4~6_combout\ & (!\PELOTA|Add13~7\ & VCC))
-- \PELOTA|Add13~9\ = CARRY((\PELOTA|Add4~6_combout\ & !\PELOTA|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add4~6_combout\,
	datad => VCC,
	cin => \PELOTA|Add13~7\,
	combout => \PELOTA|Add13~8_combout\,
	cout => \PELOTA|Add13~9\);

-- Location: LCCOMB_X48_Y65_N28
\PELOTA|Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~10_combout\ = (\PELOTA|Add4~8_combout\ & (!\PELOTA|Add13~9\)) # (!\PELOTA|Add4~8_combout\ & ((\PELOTA|Add13~9\) # (GND)))
-- \PELOTA|Add13~11\ = CARRY((!\PELOTA|Add13~9\) # (!\PELOTA|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add4~8_combout\,
	datad => VCC,
	cin => \PELOTA|Add13~9\,
	combout => \PELOTA|Add13~10_combout\,
	cout => \PELOTA|Add13~11\);

-- Location: LCCOMB_X48_Y65_N30
\PELOTA|Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~12_combout\ = \PELOTA|Add13~11\ $ (!\PELOTA|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Add4~10_combout\,
	cin => \PELOTA|Add13~11\,
	combout => \PELOTA|Add13~12_combout\);

-- Location: LCCOMB_X49_Y66_N22
\PELOTA|Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~4_combout\ = (\PELOTA|Add1~6_combout\ & (\PELOTA|Add15~3\ $ (GND))) # (!\PELOTA|Add1~6_combout\ & (!\PELOTA|Add15~3\ & VCC))
-- \PELOTA|Add15~5\ = CARRY((\PELOTA|Add1~6_combout\ & !\PELOTA|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add1~6_combout\,
	datad => VCC,
	cin => \PELOTA|Add15~3\,
	combout => \PELOTA|Add15~4_combout\,
	cout => \PELOTA|Add15~5\);

-- Location: LCCOMB_X49_Y66_N26
\PELOTA|Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~8_combout\ = (\PELOTA|Add1~10_combout\ & (\PELOTA|Add15~7\ $ (GND))) # (!\PELOTA|Add1~10_combout\ & (!\PELOTA|Add15~7\ & VCC))
-- \PELOTA|Add15~9\ = CARRY((\PELOTA|Add1~10_combout\ & !\PELOTA|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~10_combout\,
	datad => VCC,
	cin => \PELOTA|Add15~7\,
	combout => \PELOTA|Add15~8_combout\,
	cout => \PELOTA|Add15~9\);

-- Location: LCCOMB_X49_Y66_N28
\PELOTA|Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~10_combout\ = (\PELOTA|Add1~12_combout\ & (!\PELOTA|Add15~9\)) # (!\PELOTA|Add1~12_combout\ & ((\PELOTA|Add15~9\) # (GND)))
-- \PELOTA|Add15~11\ = CARRY((!\PELOTA|Add15~9\) # (!\PELOTA|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add1~12_combout\,
	datad => VCC,
	cin => \PELOTA|Add15~9\,
	combout => \PELOTA|Add15~10_combout\,
	cout => \PELOTA|Add15~11\);

-- Location: LCCOMB_X49_Y66_N30
\PELOTA|Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~12_combout\ = \PELOTA|Add15~11\ $ (!\PELOTA|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Add1~14_combout\,
	cin => \PELOTA|Add15~11\,
	combout => \PELOTA|Add15~12_combout\);

-- Location: LCCOMB_X48_Y67_N22
\PELOTA|Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~4_combout\ = (\PELOTA|Add6~2_combout\ & (\PELOTA|Add14~3\ $ (GND))) # (!\PELOTA|Add6~2_combout\ & (!\PELOTA|Add14~3\ & VCC))
-- \PELOTA|Add14~5\ = CARRY((\PELOTA|Add6~2_combout\ & !\PELOTA|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add6~2_combout\,
	datad => VCC,
	cin => \PELOTA|Add14~3\,
	combout => \PELOTA|Add14~4_combout\,
	cout => \PELOTA|Add14~5\);

-- Location: LCCOMB_X48_Y67_N26
\PELOTA|Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~8_combout\ = (\PELOTA|Add6~6_combout\ & (\PELOTA|Add14~7\ $ (GND))) # (!\PELOTA|Add6~6_combout\ & (!\PELOTA|Add14~7\ & VCC))
-- \PELOTA|Add14~9\ = CARRY((\PELOTA|Add6~6_combout\ & !\PELOTA|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add6~6_combout\,
	datad => VCC,
	cin => \PELOTA|Add14~7\,
	combout => \PELOTA|Add14~8_combout\,
	cout => \PELOTA|Add14~9\);

-- Location: LCCOMB_X48_Y67_N28
\PELOTA|Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~10_combout\ = (\PELOTA|Add6~8_combout\ & (!\PELOTA|Add14~9\)) # (!\PELOTA|Add6~8_combout\ & ((\PELOTA|Add14~9\) # (GND)))
-- \PELOTA|Add14~11\ = CARRY((!\PELOTA|Add14~9\) # (!\PELOTA|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add6~8_combout\,
	datad => VCC,
	cin => \PELOTA|Add14~9\,
	combout => \PELOTA|Add14~10_combout\,
	cout => \PELOTA|Add14~11\);

-- Location: LCCOMB_X48_Y67_N30
\PELOTA|Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~12_combout\ = \PELOTA|Add6~10_combout\ $ (!\PELOTA|Add14~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add6~10_combout\,
	cin => \PELOTA|Add14~11\,
	combout => \PELOTA|Add14~12_combout\);

-- Location: LCCOMB_X45_Y65_N24
\PELOTA|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~2_combout\ = \VGA|pixel_y\(8) $ (((\VGA|pixel_y\(7) & \PELOTA|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \PELOTA|Add5~0_combout\,
	datad => \VGA|pixel_y\(8),
	combout => \PELOTA|Add5~2_combout\);

-- Location: LCCOMB_X46_Y67_N26
\PELOTA|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~6_combout\ = \VGA|pixel_y\(4) $ (\VGA|pixel_y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datad => \VGA|pixel_y\(3),
	combout => \PELOTA|Add5~6_combout\);

-- Location: LCCOMB_X47_Y67_N0
\VGA|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~0_combout\ = (!\PELOTA|LessThan10~16_combout\ & (\PELOTA|Add0~14_combout\ & ((\PELOTA|Add6~10_combout\) # (!\PELOTA|LessThan11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|LessThan10~16_combout\,
	datab => \PELOTA|Add0~14_combout\,
	datac => \PELOTA|LessThan11~16_combout\,
	datad => \PELOTA|Add6~10_combout\,
	combout => \VGA|vga_r~0_combout\);

-- Location: LCCOMB_X47_Y66_N4
\PELOTA|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan8~0_combout\ = ((!\PELOTA|Add0~6_combout\ & ((!\PELOTA|Add0~2_combout\) # (!\PELOTA|Add0~4_combout\)))) # (!\PELOTA|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~4_combout\,
	datab => \PELOTA|Add0~8_combout\,
	datac => \PELOTA|Add0~2_combout\,
	datad => \PELOTA|Add0~6_combout\,
	combout => \PELOTA|LessThan8~0_combout\);

-- Location: LCCOMB_X47_Y67_N6
\VGA|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~1_combout\ = (\VGA|vga_r~0_combout\ & ((\PELOTA|Add0~10_combout\) # ((\PELOTA|Add0~12_combout\) # (!\PELOTA|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~10_combout\,
	datab => \PELOTA|LessThan8~0_combout\,
	datac => \PELOTA|Add0~12_combout\,
	datad => \VGA|vga_r~0_combout\,
	combout => \VGA|vga_r~1_combout\);

-- Location: LCCOMB_X45_Y65_N28
\PELOTA|LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan15~0_combout\ = (\VGA|pixel_y\(5) & (\VGA|pixel_y\(8) & (\VGA|pixel_y\(7) & \VGA|pixel_y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \VGA|pixel_y\(8),
	datac => \VGA|pixel_y\(7),
	datad => \VGA|pixel_y\(6),
	combout => \PELOTA|LessThan15~0_combout\);

-- Location: FF_X49_Y64_N29
\PELOTA|Desplaza_Pala_der_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Desplaza_Pala_der_Y~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Desplaza_Pala_der_Y\(2));

-- Location: FF_X49_Y64_N1
\PELOTA|Desplaza_Pala_der_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Desplaza_Pala_der_Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Desplaza_Pala_der_Y\(1));

-- Location: FF_X46_Y67_N23
\PELOTA|Desplaza_Pala_izq_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Desplaza_Pala_izq_Y~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Desplaza_Pala_izq_Y\(2));

-- Location: LCCOMB_X47_Y68_N26
\VGA|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~3_combout\ = (\VGA|cont_vs\(4)) # (((\VGA|cont_vs\(2)) # (!\VGA|cont_vs\(1))) # (!\VGA|cont_vs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(4),
	datab => \VGA|cont_vs\(3),
	datac => \VGA|cont_vs\(1),
	datad => \VGA|cont_vs\(2),
	combout => \VGA|process_0~3_combout\);

-- Location: LCCOMB_X46_Y68_N6
\VGA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~1_combout\ = (\VGA|cont_hs\(2)) # ((\VGA|cont_hs\(8)) # ((\VGA|cont_hs\(1)) # (!\VGA|cont_hs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(1),
	combout => \VGA|Equal2~1_combout\);

-- Location: LCCOMB_X47_Y68_N20
\VGA|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = (!\VGA|cont_vs\(4) & (\VGA|cont_vs\(3) & (!\VGA|cont_vs\(1) & !\VGA|cont_vs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(4),
	datab => \VGA|cont_vs\(3),
	datac => \VGA|cont_vs\(1),
	datad => \VGA|cont_vs\(0),
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X47_Y68_N24
\VGA|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = (!\VGA|cont_vs\(7) & (!\VGA|cont_vs\(5) & (!\VGA|cont_vs\(6) & \VGA|cont_vs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(7),
	datab => \VGA|cont_vs\(5),
	datac => \VGA|cont_vs\(6),
	datad => \VGA|cont_vs\(2),
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X46_Y66_N26
\VGA|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = (\VGA|cont_hs\(7) & ((\VGA|cont_hs\(6)) # ((\VGA|cont_hs\(4) & \VGA|cont_hs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|process_0~7_combout\);

-- Location: LCCOMB_X47_Y68_N10
\VGA|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~8_combout\ = (\VGA|process_0~6_combout\ & (\VGA|process_0~5_combout\ & ((\VGA|process_0~7_combout\) # (\VGA|cont_hs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~7_combout\,
	datab => \VGA|process_0~6_combout\,
	datac => \VGA|cont_hs\(8),
	datad => \VGA|process_0~5_combout\,
	combout => \VGA|process_0~8_combout\);

-- Location: LCCOMB_X46_Y68_N30
\VGA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~0_combout\ = (\VGA|cont_hs\(9) & (\VGA|cont_hs\(4) & (\VGA|cont_hs\(0) & !\VGA|cont_hs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(9),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(0),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y66_N4
\PELOTA|Desplaza_Bola_X[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[1]~2_combout\ = (\PELOTA|Bola_X\(3) & ((\PELOTA|Bola_X\(6)) # (!\PELOTA|Bola_X\(9)))) # (!\PELOTA|Bola_X\(3) & (!\PELOTA|Bola_X\(9) & \PELOTA|Bola_X\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(3),
	datac => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Bola_X\(6),
	combout => \PELOTA|Desplaza_Bola_X[1]~2_combout\);

-- Location: LCCOMB_X50_Y66_N6
\PELOTA|Desplaza_Bola_X[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[1]~3_combout\ = (\PELOTA|Bola_X\(5) & (((\PELOTA|Bola_X\(2)) # (!\PELOTA|Bola_X\(9))))) # (!\PELOTA|Bola_X\(5) & (\PELOTA|Bola_X\(1) & (!\PELOTA|Bola_X\(9) & \PELOTA|Bola_X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \PELOTA|Bola_X\(5),
	datac => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Bola_X\(2),
	combout => \PELOTA|Desplaza_Bola_X[1]~3_combout\);

-- Location: LCCOMB_X50_Y66_N28
\PELOTA|Desplaza_Bola_X[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[1]~4_combout\ = (\PELOTA|Desplaza_Bola_X[1]~3_combout\ & (((\PELOTA|Desplaza_Bola_X[1]~2_combout\ & \PELOTA|Bola_X\(4))) # (!\PELOTA|Bola_X\(9)))) # (!\PELOTA|Desplaza_Bola_X[1]~3_combout\ & (!\PELOTA|Bola_X\(9) & 
-- ((\PELOTA|Desplaza_Bola_X[1]~2_combout\) # (\PELOTA|Bola_X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X[1]~3_combout\,
	datab => \PELOTA|Desplaza_Bola_X[1]~2_combout\,
	datac => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Bola_X\(4),
	combout => \PELOTA|Desplaza_Bola_X[1]~4_combout\);

-- Location: LCCOMB_X50_Y66_N30
\PELOTA|Desplaza_Bola_X[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[1]~5_combout\ = \PELOTA|Bola_X\(9) $ (((\PELOTA|Bola_X\(7)) # ((\PELOTA|Bola_X\(8)) # (\PELOTA|Desplaza_Bola_X[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(7),
	datab => \PELOTA|Bola_X\(8),
	datac => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Desplaza_Bola_X[1]~4_combout\,
	combout => \PELOTA|Desplaza_Bola_X[1]~5_combout\);

-- Location: LCCOMB_X50_Y66_N0
\PELOTA|Desplaza_Bola_X[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~6_combout\ = (\PELOTA|Bola_X\(4) & ((\PELOTA|Bola_X\(1)) # ((\PELOTA|Bola_X\(3)) # (\PELOTA|Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \PELOTA|Bola_X\(4),
	datac => \PELOTA|Bola_X\(3),
	datad => \PELOTA|Bola_X\(2),
	combout => \PELOTA|Desplaza_Bola_X[2]~6_combout\);

-- Location: LCCOMB_X49_Y64_N22
\PELOTA|Mover_Pala_Der~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Der~0_combout\ = (!\PELOTA|Pala_der_Y\(9) & (((!\PELOTA|Pala_der_Y\(4) & !\PELOTA|Pala_der_Y\(3))) # (!\PELOTA|Pala_der_Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(9),
	datab => \PELOTA|Pala_der_Y\(4),
	datac => \PELOTA|Pala_der_Y\(5),
	datad => \PELOTA|Pala_der_Y\(3),
	combout => \PELOTA|Mover_Pala_Der~0_combout\);

-- Location: LCCOMB_X49_Y64_N20
\PELOTA|Mover_Pala_Der~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Der~1_combout\ = (!\PELOTA|Pala_der_Y\(6) & (!\PELOTA|Pala_der_Y\(7) & !\PELOTA|Pala_der_Y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(6),
	datac => \PELOTA|Pala_der_Y\(7),
	datad => \PELOTA|Pala_der_Y\(8),
	combout => \PELOTA|Mover_Pala_Der~1_combout\);

-- Location: LCCOMB_X49_Y64_N30
\PELOTA|Mover_Pala_Der~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Der~2_combout\ = (\PELOTA|Pala_der_Y\(6)) # ((\PELOTA|Pala_der_Y\(3) & (\PELOTA|Pala_der_Y\(4) & \PELOTA|Pala_der_Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(3),
	datab => \PELOTA|Pala_der_Y\(4),
	datac => \PELOTA|Pala_der_Y\(5),
	datad => \PELOTA|Pala_der_Y\(6),
	combout => \PELOTA|Mover_Pala_Der~2_combout\);

-- Location: LCCOMB_X49_Y64_N24
\PELOTA|Mover_Pala_Der~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Der~3_combout\ = (\PELOTA|Pala_der_Y\(7) & \PELOTA|Pala_der_Y\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PELOTA|Pala_der_Y\(7),
	datad => \PELOTA|Pala_der_Y\(8),
	combout => \PELOTA|Mover_Pala_Der~3_combout\);

-- Location: LCCOMB_X49_Y64_N26
\PELOTA|Mover_Pala_Der~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Der~4_combout\ = (\PELOTA|Pala_der_Y\(9)) # ((\KEY[3]~input_o\) # ((\PELOTA|Mover_Pala_Der~3_combout\ & \PELOTA|Mover_Pala_Der~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(9),
	datab => \PELOTA|Mover_Pala_Der~3_combout\,
	datac => \PELOTA|Mover_Pala_Der~2_combout\,
	datad => \KEY[3]~input_o\,
	combout => \PELOTA|Mover_Pala_Der~4_combout\);

-- Location: LCCOMB_X47_Y65_N18
\PELOTA|Mover_Pala_Izq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Izq~2_combout\ = (\PELOTA|Pala_izq_Y\(6)) # ((\PELOTA|Pala_izq_Y\(5) & (\PELOTA|Pala_izq_Y\(3) & \PELOTA|Pala_izq_Y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(5),
	datab => \PELOTA|Pala_izq_Y\(3),
	datac => \PELOTA|Pala_izq_Y\(6),
	datad => \PELOTA|Pala_izq_Y\(4),
	combout => \PELOTA|Mover_Pala_Izq~2_combout\);

-- Location: LCCOMB_X46_Y65_N2
\PELOTA|Mover_Pala_Izq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Izq~3_combout\ = (\PELOTA|Pala_izq_Y\(7) & \PELOTA|Pala_izq_Y\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Pala_izq_Y\(7),
	datad => \PELOTA|Pala_izq_Y\(8),
	combout => \PELOTA|Mover_Pala_Izq~3_combout\);

-- Location: LCCOMB_X46_Y65_N8
\PELOTA|Mover_Pala_Izq~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Izq~4_combout\ = (\PELOTA|Pala_izq_Y\(9)) # ((\KEY[1]~input_o\) # ((\PELOTA|Mover_Pala_Izq~3_combout\ & \PELOTA|Mover_Pala_Izq~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(9),
	datab => \PELOTA|Mover_Pala_Izq~3_combout\,
	datac => \KEY[1]~input_o\,
	datad => \PELOTA|Mover_Pala_Izq~2_combout\,
	combout => \PELOTA|Mover_Pala_Izq~4_combout\);

-- Location: LCCOMB_X49_Y64_N28
\PELOTA|Desplaza_Pala_der_Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Pala_der_Y~4_combout\ = (\PELOTA|Mover_Pala_Der~4_combout\ & (!\KEY[2]~input_o\ & ((!\PELOTA|Mover_Pala_Der~1_combout\) # (!\PELOTA|Mover_Pala_Der~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Mover_Pala_Der~0_combout\,
	datab => \PELOTA|Mover_Pala_Der~1_combout\,
	datac => \PELOTA|Mover_Pala_Der~4_combout\,
	datad => \KEY[2]~input_o\,
	combout => \PELOTA|Desplaza_Pala_der_Y~4_combout\);

-- Location: LCCOMB_X49_Y64_N0
\PELOTA|Desplaza_Pala_der_Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Pala_der_Y~5_combout\ = ((!\KEY[2]~input_o\ & ((!\PELOTA|Mover_Pala_Der~1_combout\) # (!\PELOTA|Mover_Pala_Der~0_combout\)))) # (!\PELOTA|Mover_Pala_Der~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Mover_Pala_Der~0_combout\,
	datab => \PELOTA|Mover_Pala_Der~1_combout\,
	datac => \PELOTA|Mover_Pala_Der~4_combout\,
	datad => \KEY[2]~input_o\,
	combout => \PELOTA|Desplaza_Pala_der_Y~5_combout\);

-- Location: LCCOMB_X46_Y67_N22
\PELOTA|Desplaza_Pala_izq_Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Pala_izq_Y~4_combout\ = (\PELOTA|Mover_Pala_Izq~4_combout\ & (!\KEY[0]~input_o\ & ((!\PELOTA|Mover_Pala_Izq~0_combout\) # (!\PELOTA|Mover_Pala_Izq~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Mover_Pala_Izq~4_combout\,
	datab => \PELOTA|Mover_Pala_Izq~1_combout\,
	datac => \KEY[0]~input_o\,
	datad => \PELOTA|Mover_Pala_Izq~0_combout\,
	combout => \PELOTA|Desplaza_Pala_izq_Y~4_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G14
\VGA|vga_vs~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|vga_vs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA|vga_vs~clkctrl_outclk\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_r~q\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_g~q\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_b~q\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_blank_N~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_hs~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|vga_vs~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\PLL|altpll_component|pll\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 10,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "-3000",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 2,
	m_ph => 4,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6204,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL|altpll_component|pll~FBOUT\,
	inclk => \PLL|altpll_component|pll_INCLK_bus\,
	fbout => \PLL|altpll_component|pll~FBOUT\,
	clk => \PLL|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL|altpll_component|_clk0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y68_N8
\VGA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~0_combout\ = \VGA|cont_hs\(0) $ (VCC)
-- \VGA|Add0~1\ = CARRY(\VGA|cont_hs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(0),
	datad => VCC,
	combout => \VGA|Add0~0_combout\,
	cout => \VGA|Add0~1\);

-- Location: FF_X46_Y68_N9
\VGA|cont_hs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(0));

-- Location: LCCOMB_X46_Y68_N10
\VGA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~2_combout\ = (\VGA|cont_hs\(1) & (!\VGA|Add0~1\)) # (!\VGA|cont_hs\(1) & ((\VGA|Add0~1\) # (GND)))
-- \VGA|Add0~3\ = CARRY((!\VGA|Add0~1\) # (!\VGA|cont_hs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(1),
	datad => VCC,
	cin => \VGA|Add0~1\,
	combout => \VGA|Add0~2_combout\,
	cout => \VGA|Add0~3\);

-- Location: LCCOMB_X46_Y68_N12
\VGA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~4_combout\ = (\VGA|cont_hs\(2) & (\VGA|Add0~3\ $ (GND))) # (!\VGA|cont_hs\(2) & (!\VGA|Add0~3\ & VCC))
-- \VGA|Add0~5\ = CARRY((\VGA|cont_hs\(2) & !\VGA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datad => VCC,
	cin => \VGA|Add0~3\,
	combout => \VGA|Add0~4_combout\,
	cout => \VGA|Add0~5\);

-- Location: LCCOMB_X46_Y68_N14
\VGA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~6_combout\ = (\VGA|cont_hs\(3) & (!\VGA|Add0~5\)) # (!\VGA|cont_hs\(3) & ((\VGA|Add0~5\) # (GND)))
-- \VGA|Add0~7\ = CARRY((!\VGA|Add0~5\) # (!\VGA|cont_hs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(3),
	datad => VCC,
	cin => \VGA|Add0~5\,
	combout => \VGA|Add0~6_combout\,
	cout => \VGA|Add0~7\);

-- Location: FF_X46_Y68_N15
\VGA|cont_hs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(3));

-- Location: LCCOMB_X46_Y68_N16
\VGA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~8_combout\ = (\VGA|cont_hs\(4) & (\VGA|Add0~7\ $ (GND))) # (!\VGA|cont_hs\(4) & (!\VGA|Add0~7\ & VCC))
-- \VGA|Add0~9\ = CARRY((\VGA|cont_hs\(4) & !\VGA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(4),
	datad => VCC,
	cin => \VGA|Add0~7\,
	combout => \VGA|Add0~8_combout\,
	cout => \VGA|Add0~9\);

-- Location: FF_X46_Y68_N17
\VGA|cont_hs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(4));

-- Location: LCCOMB_X46_Y68_N18
\VGA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~10_combout\ = (\VGA|cont_hs\(5) & (!\VGA|Add0~9\)) # (!\VGA|cont_hs\(5) & ((\VGA|Add0~9\) # (GND)))
-- \VGA|Add0~11\ = CARRY((!\VGA|Add0~9\) # (!\VGA|cont_hs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(5),
	datad => VCC,
	cin => \VGA|Add0~9\,
	combout => \VGA|Add0~10_combout\,
	cout => \VGA|Add0~11\);

-- Location: LCCOMB_X45_Y68_N28
\VGA|cont_hs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~2_combout\ = (!\VGA|Equal0~2_combout\ & \VGA|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~2_combout\,
	datad => \VGA|Add0~10_combout\,
	combout => \VGA|cont_hs~2_combout\);

-- Location: FF_X45_Y68_N29
\VGA|cont_hs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(5));

-- Location: LCCOMB_X46_Y68_N20
\VGA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~12_combout\ = (\VGA|cont_hs\(6) & (\VGA|Add0~11\ $ (GND))) # (!\VGA|cont_hs\(6) & (!\VGA|Add0~11\ & VCC))
-- \VGA|Add0~13\ = CARRY((\VGA|cont_hs\(6) & !\VGA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(6),
	datad => VCC,
	cin => \VGA|Add0~11\,
	combout => \VGA|Add0~12_combout\,
	cout => \VGA|Add0~13\);

-- Location: FF_X46_Y68_N21
\VGA|cont_hs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(6));

-- Location: LCCOMB_X46_Y68_N0
\VGA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~0_combout\ = (((\VGA|cont_hs\(0)) # (\VGA|cont_hs\(6))) # (!\VGA|cont_hs\(4))) # (!\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(9),
	datab => \VGA|cont_hs\(4),
	datac => \VGA|cont_hs\(0),
	datad => \VGA|cont_hs\(6),
	combout => \VGA|Equal2~0_combout\);

-- Location: LCCOMB_X46_Y68_N4
\VGA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal2~2_combout\ = (\VGA|Equal2~1_combout\) # ((\VGA|Equal2~0_combout\) # ((\VGA|cont_hs\(3)) # (!\VGA|cont_hs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~1_combout\,
	datab => \VGA|Equal2~0_combout\,
	datac => \VGA|cont_hs\(3),
	datad => \VGA|cont_hs\(5),
	combout => \VGA|Equal2~2_combout\);

-- Location: LCCOMB_X48_Y68_N18
\VGA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~16_combout\ = (\VGA|cont_vs\(8) & (\VGA|Add1~15\ $ (GND))) # (!\VGA|cont_vs\(8) & (!\VGA|Add1~15\ & VCC))
-- \VGA|Add1~17\ = CARRY((\VGA|cont_vs\(8) & !\VGA|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(8),
	datad => VCC,
	cin => \VGA|Add1~15\,
	combout => \VGA|Add1~16_combout\,
	cout => \VGA|Add1~17\);

-- Location: LCCOMB_X48_Y68_N20
\VGA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~18_combout\ = \VGA|Add1~17\ $ (\VGA|cont_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(9),
	cin => \VGA|Add1~17\,
	combout => \VGA|Add1~18_combout\);

-- Location: LCCOMB_X47_Y68_N28
\VGA|cont_vs[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[9]~0_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(9))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(9),
	datad => \VGA|Add1~18_combout\,
	combout => \VGA|cont_vs[9]~0_combout\);

-- Location: FF_X47_Y68_N29
\VGA|cont_vs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(9));

-- Location: LCCOMB_X46_Y68_N22
\VGA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~14_combout\ = (\VGA|cont_hs\(7) & (!\VGA|Add0~13\)) # (!\VGA|cont_hs\(7) & ((\VGA|Add0~13\) # (GND)))
-- \VGA|Add0~15\ = CARRY((!\VGA|Add0~13\) # (!\VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(7),
	datad => VCC,
	cin => \VGA|Add0~13\,
	combout => \VGA|Add0~14_combout\,
	cout => \VGA|Add0~15\);

-- Location: LCCOMB_X46_Y68_N24
\VGA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~16_combout\ = (\VGA|cont_hs\(8) & (\VGA|Add0~15\ $ (GND))) # (!\VGA|cont_hs\(8) & (!\VGA|Add0~15\ & VCC))
-- \VGA|Add0~17\ = CARRY((\VGA|cont_hs\(8) & !\VGA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_hs\(8),
	datad => VCC,
	cin => \VGA|Add0~15\,
	combout => \VGA|Add0~16_combout\,
	cout => \VGA|Add0~17\);

-- Location: LCCOMB_X45_Y68_N6
\VGA|cont_hs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~1_combout\ = (!\VGA|Equal0~2_combout\ & \VGA|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~2_combout\,
	datad => \VGA|Add0~16_combout\,
	combout => \VGA|cont_hs~1_combout\);

-- Location: FF_X45_Y68_N7
\VGA|cont_hs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(8));

-- Location: LCCOMB_X46_Y68_N26
\VGA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add0~18_combout\ = \VGA|Add0~17\ $ (\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(9),
	cin => \VGA|Add0~17\,
	combout => \VGA|Add0~18_combout\);

-- Location: FF_X46_Y68_N23
\VGA|cont_hs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(7));

-- Location: FF_X46_Y68_N11
\VGA|cont_hs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(1));

-- Location: LCCOMB_X46_Y68_N28
\VGA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~1_combout\ = (\VGA|cont_hs\(2) & (!\VGA|cont_hs\(5) & (\VGA|cont_hs\(3) & \VGA|cont_hs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(2),
	datab => \VGA|cont_hs\(5),
	datac => \VGA|cont_hs\(3),
	datad => \VGA|cont_hs\(1),
	combout => \VGA|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y68_N2
\VGA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Equal0~2_combout\ = (\VGA|Equal0~0_combout\ & (\VGA|cont_hs\(8) & (!\VGA|cont_hs\(7) & \VGA|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal0~0_combout\,
	datab => \VGA|cont_hs\(8),
	datac => \VGA|cont_hs\(7),
	datad => \VGA|Equal0~1_combout\,
	combout => \VGA|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y68_N24
\VGA|cont_hs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_hs~0_combout\ = (\VGA|Add0~18_combout\ & !\VGA|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~18_combout\,
	datad => \VGA|Equal0~2_combout\,
	combout => \VGA|cont_hs~0_combout\);

-- Location: FF_X45_Y68_N25
\VGA|cont_hs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_hs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(9));

-- Location: LCCOMB_X47_Y68_N14
\VGA|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~9_combout\ = (\VGA|process_0~8_combout\ & (\VGA|cont_vs\(9) & (\VGA|cont_hs\(9) & !\VGA|cont_vs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~8_combout\,
	datab => \VGA|cont_vs\(9),
	datac => \VGA|cont_hs\(9),
	datad => \VGA|cont_vs\(8),
	combout => \VGA|process_0~9_combout\);

-- Location: LCCOMB_X48_Y68_N2
\VGA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~0_combout\ = \VGA|cont_vs\(0) $ (VCC)
-- \VGA|Add1~1\ = CARRY(\VGA|cont_vs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(0),
	datad => VCC,
	combout => \VGA|Add1~0_combout\,
	cout => \VGA|Add1~1\);

-- Location: LCCOMB_X48_Y68_N4
\VGA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~2_combout\ = (\VGA|cont_vs\(1) & (!\VGA|Add1~1\)) # (!\VGA|cont_vs\(1) & ((\VGA|Add1~1\) # (GND)))
-- \VGA|Add1~3\ = CARRY((!\VGA|Add1~1\) # (!\VGA|cont_vs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(1),
	datad => VCC,
	cin => \VGA|Add1~1\,
	combout => \VGA|Add1~2_combout\,
	cout => \VGA|Add1~3\);

-- Location: LCCOMB_X48_Y68_N0
\VGA|cont_vs[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[1]~8_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(1))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(1),
	datad => \VGA|Add1~2_combout\,
	combout => \VGA|cont_vs[1]~8_combout\);

-- Location: FF_X48_Y68_N1
\VGA|cont_vs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(1));

-- Location: LCCOMB_X48_Y68_N6
\VGA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~4_combout\ = (\VGA|cont_vs\(2) & (\VGA|Add1~3\ $ (GND))) # (!\VGA|cont_vs\(2) & (!\VGA|Add1~3\ & VCC))
-- \VGA|Add1~5\ = CARRY((\VGA|cont_vs\(2) & !\VGA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(2),
	datad => VCC,
	cin => \VGA|Add1~3\,
	combout => \VGA|Add1~4_combout\,
	cout => \VGA|Add1~5\);

-- Location: LCCOMB_X47_Y68_N6
\VGA|cont_vs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[2]~7_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(2))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(2),
	datad => \VGA|Add1~4_combout\,
	combout => \VGA|cont_vs[2]~7_combout\);

-- Location: FF_X47_Y68_N7
\VGA|cont_vs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(2));

-- Location: LCCOMB_X48_Y68_N8
\VGA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~6_combout\ = (\VGA|cont_vs\(3) & (!\VGA|Add1~5\)) # (!\VGA|cont_vs\(3) & ((\VGA|Add1~5\) # (GND)))
-- \VGA|Add1~7\ = CARRY((!\VGA|Add1~5\) # (!\VGA|cont_vs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(3),
	datad => VCC,
	cin => \VGA|Add1~5\,
	combout => \VGA|Add1~6_combout\,
	cout => \VGA|Add1~7\);

-- Location: LCCOMB_X48_Y68_N10
\VGA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~8_combout\ = (\VGA|cont_vs\(4) & (\VGA|Add1~7\ $ (GND))) # (!\VGA|cont_vs\(4) & (!\VGA|Add1~7\ & VCC))
-- \VGA|Add1~9\ = CARRY((\VGA|cont_vs\(4) & !\VGA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(4),
	datad => VCC,
	cin => \VGA|Add1~7\,
	combout => \VGA|Add1~8_combout\,
	cout => \VGA|Add1~9\);

-- Location: LCCOMB_X48_Y68_N12
\VGA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~10_combout\ = (\VGA|cont_vs\(5) & (!\VGA|Add1~9\)) # (!\VGA|cont_vs\(5) & ((\VGA|Add1~9\) # (GND)))
-- \VGA|Add1~11\ = CARRY((!\VGA|Add1~9\) # (!\VGA|cont_vs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(5),
	datad => VCC,
	cin => \VGA|Add1~9\,
	combout => \VGA|Add1~10_combout\,
	cout => \VGA|Add1~11\);

-- Location: LCCOMB_X48_Y68_N28
\VGA|cont_vs[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[5]~1_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(5))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(5),
	datad => \VGA|Add1~10_combout\,
	combout => \VGA|cont_vs[5]~1_combout\);

-- Location: FF_X48_Y68_N29
\VGA|cont_vs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(5));

-- Location: LCCOMB_X48_Y68_N14
\VGA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~12_combout\ = (\VGA|cont_vs\(6) & (\VGA|Add1~11\ $ (GND))) # (!\VGA|cont_vs\(6) & (!\VGA|Add1~11\ & VCC))
-- \VGA|Add1~13\ = CARRY((\VGA|cont_vs\(6) & !\VGA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(6),
	datad => VCC,
	cin => \VGA|Add1~11\,
	combout => \VGA|Add1~12_combout\,
	cout => \VGA|Add1~13\);

-- Location: LCCOMB_X48_Y68_N30
\VGA|cont_vs[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[6]~2_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(6))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(6),
	datad => \VGA|Add1~12_combout\,
	combout => \VGA|cont_vs[6]~2_combout\);

-- Location: FF_X48_Y68_N31
\VGA|cont_vs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(6));

-- Location: LCCOMB_X48_Y68_N16
\VGA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|Add1~14_combout\ = (\VGA|cont_vs\(7) & (!\VGA|Add1~13\)) # (!\VGA|cont_vs\(7) & ((\VGA|Add1~13\) # (GND)))
-- \VGA|Add1~15\ = CARRY((!\VGA|Add1~13\) # (!\VGA|cont_vs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|cont_vs\(7),
	datad => VCC,
	cin => \VGA|Add1~13\,
	combout => \VGA|Add1~14_combout\,
	cout => \VGA|Add1~15\);

-- Location: LCCOMB_X48_Y68_N24
\VGA|cont_vs[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[7]~3_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(7))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(7),
	datad => \VGA|Add1~14_combout\,
	combout => \VGA|cont_vs[7]~3_combout\);

-- Location: FF_X48_Y68_N25
\VGA|cont_vs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(7));

-- Location: LCCOMB_X48_Y68_N22
\VGA|cont_vs[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[8]~4_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(8))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(8),
	datad => \VGA|Add1~16_combout\,
	combout => \VGA|cont_vs[8]~4_combout\);

-- Location: FF_X48_Y68_N23
\VGA|cont_vs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(8));

-- Location: LCCOMB_X47_Y68_N22
\VGA|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~0_combout\ = (\VGA|cont_vs\(6) & (\VGA|cont_vs\(8) & (\VGA|cont_vs\(7) & \VGA|cont_vs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_vs\(6),
	datab => \VGA|cont_vs\(8),
	datac => \VGA|cont_vs\(7),
	datad => \VGA|cont_vs\(5),
	combout => \VGA|LessThan6~0_combout\);

-- Location: LCCOMB_X47_Y68_N18
\VGA|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~0_combout\ = (\VGA|LessThan5~0_combout\ & (!\VGA|LessThan6~0_combout\ & !\VGA|cont_vs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan5~0_combout\,
	datac => \VGA|LessThan6~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~0_combout\);

-- Location: FF_X47_Y68_N19
\VGA|video_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|video_on~q\);

-- Location: LCCOMB_X46_Y67_N24
\VGA|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan5~0_combout\ = ((!\VGA|cont_hs\(8) & !\VGA|cont_hs\(7))) # (!\VGA|cont_hs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(8),
	datad => \VGA|cont_hs\(7),
	combout => \VGA|LessThan5~0_combout\);

-- Location: FF_X46_Y66_N13
\VGA|pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(6),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(6));

-- Location: FF_X46_Y66_N9
\VGA|pixel_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(4),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(4));

-- Location: FF_X47_Y66_N31
\VGA|pixel_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(1),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(1));

-- Location: LCCOMB_X45_Y66_N22
\VGA|pixel_x[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_x[0]~feeder_combout\ = \VGA|cont_hs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_hs\(0),
	combout => \VGA|pixel_x[0]~feeder_combout\);

-- Location: FF_X45_Y66_N23
\VGA|pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_x[0]~feeder_combout\,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(0));

-- Location: FF_X46_Y68_N13
\VGA|cont_hs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_hs\(2));

-- Location: FF_X46_Y66_N5
\VGA|pixel_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(2),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(2));

-- Location: LCCOMB_X45_Y66_N20
\PELOTA|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan9~0_combout\ = (\VGA|pixel_x\(3) & (\VGA|pixel_x\(2) & ((\VGA|pixel_x\(1)) # (\VGA|pixel_x\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \VGA|pixel_x\(1),
	datac => \VGA|pixel_x\(0),
	datad => \VGA|pixel_x\(2),
	combout => \PELOTA|LessThan9~0_combout\);

-- Location: LCCOMB_X45_Y66_N18
\PELOTA|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan9~1_combout\ = (\VGA|pixel_x\(6) & ((\VGA|pixel_x\(5)) # ((\VGA|pixel_x\(4) & \PELOTA|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \VGA|pixel_x\(6),
	datac => \VGA|pixel_x\(4),
	datad => \PELOTA|LessThan9~0_combout\,
	combout => \PELOTA|LessThan9~1_combout\);

-- Location: FF_X46_Y66_N19
\VGA|pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(9),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(9));

-- Location: FF_X46_Y66_N17
\VGA|pixel_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(8),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(8));

-- Location: LCCOMB_X46_Y66_N24
\PELOTA|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan9~2_combout\ = (\VGA|pixel_x\(9) & ((\VGA|pixel_x\(7)) # ((\PELOTA|LessThan9~1_combout\) # (\VGA|pixel_x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datab => \PELOTA|LessThan9~1_combout\,
	datac => \VGA|pixel_x\(9),
	datad => \VGA|pixel_x\(8),
	combout => \PELOTA|LessThan9~2_combout\);

-- Location: LCCOMB_X50_Y66_N10
\PELOTA|Bola_X[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[1]~9_combout\ = \PELOTA|Bola_X\(1) $ (VCC)
-- \PELOTA|Bola_X[1]~10\ = CARRY(\PELOTA|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datad => VCC,
	combout => \PELOTA|Bola_X[1]~9_combout\,
	cout => \PELOTA|Bola_X[1]~10\);

-- Location: LCCOMB_X47_Y66_N28
\PELOTA|Bola_X[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[1]~feeder_combout\ = \PELOTA|Bola_X[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Bola_X[1]~9_combout\,
	combout => \PELOTA|Bola_X[1]~feeder_combout\);

-- Location: FF_X47_Y66_N29
\PELOTA|Bola_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(1));

-- Location: LCCOMB_X45_Y64_N6
\PELOTA|Bola_Y[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[2]~9_cout\ = CARRY(\PELOTA|Bola_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_X\(1),
	datad => VCC,
	cout => \PELOTA|Bola_Y[2]~9_cout\);

-- Location: LCCOMB_X45_Y64_N8
\PELOTA|Bola_Y[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[2]~10_combout\ = (\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y\(2) & (\PELOTA|Bola_Y[2]~9_cout\ & VCC)) # (!\PELOTA|Bola_Y\(2) & (!\PELOTA|Bola_Y[2]~9_cout\)))) # (!\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y\(2) & 
-- (!\PELOTA|Bola_Y[2]~9_cout\)) # (!\PELOTA|Bola_Y\(2) & ((\PELOTA|Bola_Y[2]~9_cout\) # (GND)))))
-- \PELOTA|Bola_Y[2]~11\ = CARRY((\PELOTA|Desplaza_Bola_Y\(2) & (!\PELOTA|Bola_Y\(2) & !\PELOTA|Bola_Y[2]~9_cout\)) # (!\PELOTA|Desplaza_Bola_Y\(2) & ((!\PELOTA|Bola_Y[2]~9_cout\) # (!\PELOTA|Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_Y\(2),
	datab => \PELOTA|Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[2]~9_cout\,
	combout => \PELOTA|Bola_Y[2]~10_combout\,
	cout => \PELOTA|Bola_Y[2]~11\);

-- Location: LCCOMB_X48_Y64_N0
\PELOTA|Bola_Y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[2]~feeder_combout\ = \PELOTA|Bola_Y[2]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Bola_Y[2]~10_combout\,
	combout => \PELOTA|Bola_Y[2]~feeder_combout\);

-- Location: FF_X48_Y64_N1
\PELOTA|Bola_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_Y[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(2));

-- Location: LCCOMB_X45_Y64_N10
\PELOTA|Bola_Y[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[3]~12_combout\ = ((\PELOTA|Bola_Y\(3) $ (\PELOTA|Desplaza_Bola_Y\(2) $ (!\PELOTA|Bola_Y[2]~11\)))) # (GND)
-- \PELOTA|Bola_Y[3]~13\ = CARRY((\PELOTA|Bola_Y\(3) & ((\PELOTA|Desplaza_Bola_Y\(2)) # (!\PELOTA|Bola_Y[2]~11\))) # (!\PELOTA|Bola_Y\(3) & (\PELOTA|Desplaza_Bola_Y\(2) & !\PELOTA|Bola_Y[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(3),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[2]~11\,
	combout => \PELOTA|Bola_Y[3]~12_combout\,
	cout => \PELOTA|Bola_Y[3]~13\);

-- Location: LCCOMB_X45_Y64_N14
\PELOTA|Bola_Y[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[5]~16_combout\ = ((\PELOTA|Bola_Y\(5) $ (\PELOTA|Desplaza_Bola_Y\(2) $ (!\PELOTA|Bola_Y[4]~15\)))) # (GND)
-- \PELOTA|Bola_Y[5]~17\ = CARRY((\PELOTA|Bola_Y\(5) & ((\PELOTA|Desplaza_Bola_Y\(2)) # (!\PELOTA|Bola_Y[4]~15\))) # (!\PELOTA|Bola_Y\(5) & (\PELOTA|Desplaza_Bola_Y\(2) & !\PELOTA|Bola_Y[4]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(5),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[4]~15\,
	combout => \PELOTA|Bola_Y[5]~16_combout\,
	cout => \PELOTA|Bola_Y[5]~17\);

-- Location: LCCOMB_X45_Y64_N16
\PELOTA|Bola_Y[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[6]~18_combout\ = (\PELOTA|Bola_Y\(6) & ((\PELOTA|Desplaza_Bola_Y\(2) & (\PELOTA|Bola_Y[5]~17\ & VCC)) # (!\PELOTA|Desplaza_Bola_Y\(2) & (!\PELOTA|Bola_Y[5]~17\)))) # (!\PELOTA|Bola_Y\(6) & ((\PELOTA|Desplaza_Bola_Y\(2) & 
-- (!\PELOTA|Bola_Y[5]~17\)) # (!\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y[5]~17\) # (GND)))))
-- \PELOTA|Bola_Y[6]~19\ = CARRY((\PELOTA|Bola_Y\(6) & (!\PELOTA|Desplaza_Bola_Y\(2) & !\PELOTA|Bola_Y[5]~17\)) # (!\PELOTA|Bola_Y\(6) & ((!\PELOTA|Bola_Y[5]~17\) # (!\PELOTA|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(6),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[5]~17\,
	combout => \PELOTA|Bola_Y[6]~18_combout\,
	cout => \PELOTA|Bola_Y[6]~19\);

-- Location: LCCOMB_X45_Y64_N18
\PELOTA|Bola_Y[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[7]~20_combout\ = ((\PELOTA|Bola_Y\(7) $ (\PELOTA|Desplaza_Bola_Y\(2) $ (!\PELOTA|Bola_Y[6]~19\)))) # (GND)
-- \PELOTA|Bola_Y[7]~21\ = CARRY((\PELOTA|Bola_Y\(7) & ((\PELOTA|Desplaza_Bola_Y\(2)) # (!\PELOTA|Bola_Y[6]~19\))) # (!\PELOTA|Bola_Y\(7) & (\PELOTA|Desplaza_Bola_Y\(2) & !\PELOTA|Bola_Y[6]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(7),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[6]~19\,
	combout => \PELOTA|Bola_Y[7]~20_combout\,
	cout => \PELOTA|Bola_Y[7]~21\);

-- Location: LCCOMB_X45_Y64_N20
\PELOTA|Bola_Y[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[8]~22_combout\ = (\PELOTA|Bola_Y\(8) & ((\PELOTA|Desplaza_Bola_Y\(2) & (\PELOTA|Bola_Y[7]~21\ & VCC)) # (!\PELOTA|Desplaza_Bola_Y\(2) & (!\PELOTA|Bola_Y[7]~21\)))) # (!\PELOTA|Bola_Y\(8) & ((\PELOTA|Desplaza_Bola_Y\(2) & 
-- (!\PELOTA|Bola_Y[7]~21\)) # (!\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y[7]~21\) # (GND)))))
-- \PELOTA|Bola_Y[8]~23\ = CARRY((\PELOTA|Bola_Y\(8) & (!\PELOTA|Desplaza_Bola_Y\(2) & !\PELOTA|Bola_Y[7]~21\)) # (!\PELOTA|Bola_Y\(8) & ((!\PELOTA|Bola_Y[7]~21\) # (!\PELOTA|Desplaza_Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(8),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|Bola_Y[7]~21\,
	combout => \PELOTA|Bola_Y[8]~22_combout\,
	cout => \PELOTA|Bola_Y[8]~23\);

-- Location: FF_X45_Y64_N21
\PELOTA|Bola_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_Y[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(8));

-- Location: FF_X45_Y64_N19
\PELOTA|Bola_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_Y[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(7));

-- Location: LCCOMB_X45_Y64_N2
\PELOTA|Desplaza_Bola_Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_Y[2]~0_combout\ = (\PELOTA|Bola_Y\(6) & ((\PELOTA|Desplaza_Bola_Y\(2)) # ((\PELOTA|Bola_Y\(8) & \PELOTA|Bola_Y\(7))))) # (!\PELOTA|Bola_Y\(6) & (\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y\(8)) # (\PELOTA|Bola_Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(6),
	datab => \PELOTA|Bola_Y\(8),
	datac => \PELOTA|Bola_Y\(7),
	datad => \PELOTA|Desplaza_Bola_Y\(2),
	combout => \PELOTA|Desplaza_Bola_Y[2]~0_combout\);

-- Location: FF_X48_Y64_N17
\PELOTA|Bola_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Bola_Y[3]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(3));

-- Location: FF_X48_Y64_N3
\PELOTA|Bola_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Bola_Y[6]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(6));

-- Location: LCCOMB_X45_Y64_N0
\PELOTA|Desplaza_Bola_Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_Y[2]~1_combout\ = (\PELOTA|Bola_Y\(4) & ((\PELOTA|Bola_Y\(2)) # ((!\PELOTA|Bola_Y\(6))))) # (!\PELOTA|Bola_Y\(4) & (\PELOTA|Bola_Y\(2) & (!\PELOTA|Bola_Y\(6) & \PELOTA|Bola_X\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(4),
	datab => \PELOTA|Bola_Y\(2),
	datac => \PELOTA|Bola_Y\(6),
	datad => \PELOTA|Bola_X\(1),
	combout => \PELOTA|Desplaza_Bola_Y[2]~1_combout\);

-- Location: LCCOMB_X45_Y64_N24
\PELOTA|Desplaza_Bola_Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_Y[2]~2_combout\ = (\PELOTA|Bola_Y\(5)) # ((\PELOTA|Desplaza_Bola_Y\(2) & ((\PELOTA|Bola_Y\(3)) # (\PELOTA|Desplaza_Bola_Y[2]~1_combout\))) # (!\PELOTA|Desplaza_Bola_Y\(2) & (\PELOTA|Bola_Y\(3) & 
-- \PELOTA|Desplaza_Bola_Y[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(5),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	datac => \PELOTA|Bola_Y\(3),
	datad => \PELOTA|Desplaza_Bola_Y[2]~1_combout\,
	combout => \PELOTA|Desplaza_Bola_Y[2]~2_combout\);

-- Location: LCCOMB_X45_Y64_N28
\PELOTA|Desplaza_Bola_Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_Y[2]~3_combout\ = (\PELOTA|Bola_Y\(9)) # ((\PELOTA|Desplaza_Bola_Y[2]~0_combout\ & ((\PELOTA|Desplaza_Bola_Y\(2)) # (\PELOTA|Desplaza_Bola_Y[2]~2_combout\))) # (!\PELOTA|Desplaza_Bola_Y[2]~0_combout\ & (\PELOTA|Desplaza_Bola_Y\(2) & 
-- \PELOTA|Desplaza_Bola_Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(9),
	datab => \PELOTA|Desplaza_Bola_Y[2]~0_combout\,
	datac => \PELOTA|Desplaza_Bola_Y\(2),
	datad => \PELOTA|Desplaza_Bola_Y[2]~2_combout\,
	combout => \PELOTA|Desplaza_Bola_Y[2]~3_combout\);

-- Location: FF_X45_Y64_N29
\PELOTA|Desplaza_Bola_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Desplaza_Bola_Y[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Desplaza_Bola_Y\(2));

-- Location: LCCOMB_X45_Y64_N22
\PELOTA|Bola_Y[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_Y[9]~24_combout\ = \PELOTA|Bola_Y\(9) $ (\PELOTA|Desplaza_Bola_Y\(2) $ (!\PELOTA|Bola_Y[8]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(9),
	datab => \PELOTA|Desplaza_Bola_Y\(2),
	cin => \PELOTA|Bola_Y[8]~23\,
	combout => \PELOTA|Bola_Y[9]~24_combout\);

-- Location: FF_X45_Y64_N23
\PELOTA|Bola_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_Y[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(9));

-- Location: LCCOMB_X47_Y68_N12
\VGA|pixel_y[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[8]~feeder_combout\ = \VGA|cont_vs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(8),
	combout => \VGA|pixel_y[8]~feeder_combout\);

-- Location: LCCOMB_X47_Y68_N8
\VGA|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|LessThan6~1_combout\ = (!\VGA|LessThan6~0_combout\ & !\VGA|cont_vs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan6~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|LessThan6~1_combout\);

-- Location: FF_X47_Y68_N13
\VGA|pixel_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[8]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(8));

-- Location: FF_X47_Y68_N23
\VGA|pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(7),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(7));

-- Location: FF_X47_Y68_N25
\VGA|pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(6),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(6));

-- Location: LCCOMB_X47_Y68_N30
\VGA|cont_vs[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[4]~5_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(4))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(4),
	datad => \VGA|Add1~8_combout\,
	combout => \VGA|cont_vs[4]~5_combout\);

-- Location: FF_X47_Y68_N31
\VGA|cont_vs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(4));

-- Location: FF_X47_Y68_N9
\VGA|pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_vs\(4),
	sload => VCC,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(4));

-- Location: LCCOMB_X47_Y68_N0
\VGA|cont_vs[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[3]~6_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(3))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Equal2~2_combout\,
	datab => \VGA|process_0~9_combout\,
	datac => \VGA|cont_vs\(3),
	datad => \VGA|Add1~6_combout\,
	combout => \VGA|cont_vs[3]~6_combout\);

-- Location: FF_X47_Y68_N1
\VGA|cont_vs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(3));

-- Location: LCCOMB_X47_Y67_N4
\VGA|pixel_y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[3]~feeder_combout\ = \VGA|cont_vs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(3),
	combout => \VGA|pixel_y[3]~feeder_combout\);

-- Location: FF_X47_Y67_N5
\VGA|pixel_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[3]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(3));

-- Location: LCCOMB_X46_Y64_N18
\PELOTA|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~0_combout\ = (\VGA|pixel_y\(2) & (\VGA|pixel_y\(3) $ (VCC))) # (!\VGA|pixel_y\(2) & (\VGA|pixel_y\(3) & VCC))
-- \PELOTA|Add2~1\ = CARRY((\VGA|pixel_y\(2) & \VGA|pixel_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	combout => \PELOTA|Add2~0_combout\,
	cout => \PELOTA|Add2~1\);

-- Location: LCCOMB_X46_Y64_N20
\PELOTA|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~2_combout\ = (\VGA|pixel_y\(4) & (!\PELOTA|Add2~1\)) # (!\VGA|pixel_y\(4) & ((\PELOTA|Add2~1\) # (GND)))
-- \PELOTA|Add2~3\ = CARRY((!\PELOTA|Add2~1\) # (!\VGA|pixel_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \PELOTA|Add2~1\,
	combout => \PELOTA|Add2~2_combout\,
	cout => \PELOTA|Add2~3\);

-- Location: LCCOMB_X46_Y64_N24
\PELOTA|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add2~6_combout\ = (\VGA|pixel_y\(6) & (!\PELOTA|Add2~5\)) # (!\VGA|pixel_y\(6) & ((\PELOTA|Add2~5\) # (GND)))
-- \PELOTA|Add2~7\ = CARRY((!\PELOTA|Add2~5\) # (!\VGA|pixel_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(6),
	datad => VCC,
	cin => \PELOTA|Add2~5\,
	combout => \PELOTA|Add2~6_combout\,
	cout => \PELOTA|Add2~7\);

-- Location: FF_X48_Y64_N13
\PELOTA|Bola_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Bola_Y[5]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_Y\(5));

-- Location: LCCOMB_X47_Y68_N4
\VGA|pixel_y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[2]~feeder_combout\ = \VGA|cont_vs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(2),
	combout => \VGA|pixel_y[2]~feeder_combout\);

-- Location: FF_X47_Y68_N5
\VGA|pixel_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[2]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(2));

-- Location: LCCOMB_X46_Y64_N0
\PELOTA|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~1_cout\ = CARRY((!\VGA|pixel_y\(1) & \PELOTA|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \PELOTA|Bola_X\(1),
	datad => VCC,
	cout => \PELOTA|LessThan2~1_cout\);

-- Location: LCCOMB_X46_Y64_N2
\PELOTA|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~3_cout\ = CARRY((\PELOTA|Bola_Y\(2) & (!\VGA|pixel_y\(2) & !\PELOTA|LessThan2~1_cout\)) # (!\PELOTA|Bola_Y\(2) & ((!\PELOTA|LessThan2~1_cout\) # (!\VGA|pixel_y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(2),
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan2~1_cout\,
	cout => \PELOTA|LessThan2~3_cout\);

-- Location: LCCOMB_X46_Y64_N4
\PELOTA|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~5_cout\ = CARRY((\PELOTA|Bola_Y\(3) & ((!\PELOTA|LessThan2~3_cout\) # (!\PELOTA|Add2~0_combout\))) # (!\PELOTA|Bola_Y\(3) & (!\PELOTA|Add2~0_combout\ & !\PELOTA|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(3),
	datab => \PELOTA|Add2~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan2~3_cout\,
	cout => \PELOTA|LessThan2~5_cout\);

-- Location: LCCOMB_X46_Y64_N6
\PELOTA|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~7_cout\ = CARRY((\PELOTA|Bola_Y\(4) & (\PELOTA|Add2~2_combout\ & !\PELOTA|LessThan2~5_cout\)) # (!\PELOTA|Bola_Y\(4) & ((\PELOTA|Add2~2_combout\) # (!\PELOTA|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(4),
	datab => \PELOTA|Add2~2_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan2~5_cout\,
	cout => \PELOTA|LessThan2~7_cout\);

-- Location: LCCOMB_X46_Y64_N8
\PELOTA|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~9_cout\ = CARRY((\PELOTA|Add2~4_combout\ & (\PELOTA|Bola_Y\(5) & !\PELOTA|LessThan2~7_cout\)) # (!\PELOTA|Add2~4_combout\ & ((\PELOTA|Bola_Y\(5)) # (!\PELOTA|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add2~4_combout\,
	datab => \PELOTA|Bola_Y\(5),
	datad => VCC,
	cin => \PELOTA|LessThan2~7_cout\,
	cout => \PELOTA|LessThan2~9_cout\);

-- Location: LCCOMB_X46_Y64_N10
\PELOTA|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~11_cout\ = CARRY((\PELOTA|Bola_Y\(6) & (\PELOTA|Add2~6_combout\ & !\PELOTA|LessThan2~9_cout\)) # (!\PELOTA|Bola_Y\(6) & ((\PELOTA|Add2~6_combout\) # (!\PELOTA|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(6),
	datab => \PELOTA|Add2~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan2~9_cout\,
	cout => \PELOTA|LessThan2~11_cout\);

-- Location: LCCOMB_X46_Y64_N12
\PELOTA|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~13_cout\ = CARRY((\PELOTA|Add2~8_combout\ & (\PELOTA|Bola_Y\(7) & !\PELOTA|LessThan2~11_cout\)) # (!\PELOTA|Add2~8_combout\ & ((\PELOTA|Bola_Y\(7)) # (!\PELOTA|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add2~8_combout\,
	datab => \PELOTA|Bola_Y\(7),
	datad => VCC,
	cin => \PELOTA|LessThan2~11_cout\,
	cout => \PELOTA|LessThan2~13_cout\);

-- Location: LCCOMB_X46_Y64_N14
\PELOTA|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~15_cout\ = CARRY((\PELOTA|Bola_Y\(8) & (\PELOTA|Add2~10_combout\ & !\PELOTA|LessThan2~13_cout\)) # (!\PELOTA|Bola_Y\(8) & ((\PELOTA|Add2~10_combout\) # (!\PELOTA|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(8),
	datab => \PELOTA|Add2~10_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan2~13_cout\,
	cout => \PELOTA|LessThan2~15_cout\);

-- Location: LCCOMB_X46_Y64_N16
\PELOTA|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan2~16_combout\ = (\PELOTA|Add2~12_combout\ & (!\PELOTA|LessThan2~15_cout\ & \PELOTA|Bola_Y\(9))) # (!\PELOTA|Add2~12_combout\ & ((\PELOTA|Bola_Y\(9)) # (!\PELOTA|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add2~12_combout\,
	datad => \PELOTA|Bola_Y\(9),
	cin => \PELOTA|LessThan2~15_cout\,
	combout => \PELOTA|LessThan2~16_combout\);

-- Location: LCCOMB_X50_Y66_N12
\PELOTA|Bola_X[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[2]~11_combout\ = (\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(2) & (\PELOTA|Bola_X[1]~10\ & VCC)) # (!\PELOTA|Bola_X\(2) & (!\PELOTA|Bola_X[1]~10\)))) # (!\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(2) & (!\PELOTA|Bola_X[1]~10\)) # 
-- (!\PELOTA|Bola_X\(2) & ((\PELOTA|Bola_X[1]~10\) # (GND)))))
-- \PELOTA|Bola_X[2]~12\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & (!\PELOTA|Bola_X\(2) & !\PELOTA|Bola_X[1]~10\)) # (!\PELOTA|Desplaza_Bola_X\(2) & ((!\PELOTA|Bola_X[1]~10\) # (!\PELOTA|Bola_X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(2),
	datad => VCC,
	cin => \PELOTA|Bola_X[1]~10\,
	combout => \PELOTA|Bola_X[2]~11_combout\,
	cout => \PELOTA|Bola_X[2]~12\);

-- Location: FF_X49_Y66_N31
\PELOTA|Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Bola_X[2]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(2));

-- Location: LCCOMB_X50_Y66_N14
\PELOTA|Bola_X[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[3]~13_combout\ = ((\PELOTA|Desplaza_Bola_X\(2) $ (\PELOTA|Bola_X\(3) $ (!\PELOTA|Bola_X[2]~12\)))) # (GND)
-- \PELOTA|Bola_X[3]~14\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(3)) # (!\PELOTA|Bola_X[2]~12\))) # (!\PELOTA|Desplaza_Bola_X\(2) & (\PELOTA|Bola_X\(3) & !\PELOTA|Bola_X[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(3),
	datad => VCC,
	cin => \PELOTA|Bola_X[2]~12\,
	combout => \PELOTA|Bola_X[3]~13_combout\,
	cout => \PELOTA|Bola_X[3]~14\);

-- Location: FF_X49_Y66_N1
\PELOTA|Bola_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Bola_X[3]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(3));

-- Location: LCCOMB_X50_Y66_N16
\PELOTA|Bola_X[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[4]~15_combout\ = (\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(4) & (\PELOTA|Bola_X[3]~14\ & VCC)) # (!\PELOTA|Bola_X\(4) & (!\PELOTA|Bola_X[3]~14\)))) # (!\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(4) & (!\PELOTA|Bola_X[3]~14\)) # 
-- (!\PELOTA|Bola_X\(4) & ((\PELOTA|Bola_X[3]~14\) # (GND)))))
-- \PELOTA|Bola_X[4]~16\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & (!\PELOTA|Bola_X\(4) & !\PELOTA|Bola_X[3]~14\)) # (!\PELOTA|Desplaza_Bola_X\(2) & ((!\PELOTA|Bola_X[3]~14\) # (!\PELOTA|Bola_X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(4),
	datad => VCC,
	cin => \PELOTA|Bola_X[3]~14\,
	combout => \PELOTA|Bola_X[4]~15_combout\,
	cout => \PELOTA|Bola_X[4]~16\);

-- Location: FF_X50_Y66_N17
\PELOTA|Bola_X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(4));

-- Location: LCCOMB_X50_Y66_N18
\PELOTA|Bola_X[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[5]~17_combout\ = ((\PELOTA|Desplaza_Bola_X\(2) $ (\PELOTA|Bola_X\(5) $ (!\PELOTA|Bola_X[4]~16\)))) # (GND)
-- \PELOTA|Bola_X[5]~18\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(5)) # (!\PELOTA|Bola_X[4]~16\))) # (!\PELOTA|Desplaza_Bola_X\(2) & (\PELOTA|Bola_X\(5) & !\PELOTA|Bola_X[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(5),
	datad => VCC,
	cin => \PELOTA|Bola_X[4]~16\,
	combout => \PELOTA|Bola_X[5]~17_combout\,
	cout => \PELOTA|Bola_X[5]~18\);

-- Location: FF_X50_Y66_N19
\PELOTA|Bola_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(5));

-- Location: LCCOMB_X50_Y66_N20
\PELOTA|Bola_X[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[6]~19_combout\ = (\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(6) & (\PELOTA|Bola_X[5]~18\ & VCC)) # (!\PELOTA|Bola_X\(6) & (!\PELOTA|Bola_X[5]~18\)))) # (!\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(6) & (!\PELOTA|Bola_X[5]~18\)) # 
-- (!\PELOTA|Bola_X\(6) & ((\PELOTA|Bola_X[5]~18\) # (GND)))))
-- \PELOTA|Bola_X[6]~20\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & (!\PELOTA|Bola_X\(6) & !\PELOTA|Bola_X[5]~18\)) # (!\PELOTA|Desplaza_Bola_X\(2) & ((!\PELOTA|Bola_X[5]~18\) # (!\PELOTA|Bola_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(6),
	datad => VCC,
	cin => \PELOTA|Bola_X[5]~18\,
	combout => \PELOTA|Bola_X[6]~19_combout\,
	cout => \PELOTA|Bola_X[6]~20\);

-- Location: FF_X50_Y66_N21
\PELOTA|Bola_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(6));

-- Location: LCCOMB_X47_Y66_N26
\PELOTA|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan18~0_combout\ = (((!\PELOTA|Bola_X\(4)) # (!\PELOTA|Bola_X\(2))) # (!\PELOTA|Bola_X\(3))) # (!\PELOTA|Bola_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(5),
	datab => \PELOTA|Bola_X\(3),
	datac => \PELOTA|Bola_X\(2),
	datad => \PELOTA|Bola_X\(4),
	combout => \PELOTA|LessThan18~0_combout\);

-- Location: LCCOMB_X50_Y66_N22
\PELOTA|Bola_X[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[7]~21_combout\ = ((\PELOTA|Desplaza_Bola_X\(2) $ (\PELOTA|Bola_X\(7) $ (!\PELOTA|Bola_X[6]~20\)))) # (GND)
-- \PELOTA|Bola_X[7]~22\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(7)) # (!\PELOTA|Bola_X[6]~20\))) # (!\PELOTA|Desplaza_Bola_X\(2) & (\PELOTA|Bola_X\(7) & !\PELOTA|Bola_X[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(7),
	datad => VCC,
	cin => \PELOTA|Bola_X[6]~20\,
	combout => \PELOTA|Bola_X[7]~21_combout\,
	cout => \PELOTA|Bola_X[7]~22\);

-- Location: FF_X50_Y66_N23
\PELOTA|Bola_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(7));

-- Location: LCCOMB_X50_Y66_N24
\PELOTA|Bola_X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[8]~23_combout\ = (\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(8) & (\PELOTA|Bola_X[7]~22\ & VCC)) # (!\PELOTA|Bola_X\(8) & (!\PELOTA|Bola_X[7]~22\)))) # (!\PELOTA|Desplaza_Bola_X\(2) & ((\PELOTA|Bola_X\(8) & (!\PELOTA|Bola_X[7]~22\)) # 
-- (!\PELOTA|Bola_X\(8) & ((\PELOTA|Bola_X[7]~22\) # (GND)))))
-- \PELOTA|Bola_X[8]~24\ = CARRY((\PELOTA|Desplaza_Bola_X\(2) & (!\PELOTA|Bola_X\(8) & !\PELOTA|Bola_X[7]~22\)) # (!\PELOTA|Desplaza_Bola_X\(2) & ((!\PELOTA|Bola_X[7]~22\) # (!\PELOTA|Bola_X\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X\(2),
	datab => \PELOTA|Bola_X\(8),
	datad => VCC,
	cin => \PELOTA|Bola_X[7]~22\,
	combout => \PELOTA|Bola_X[8]~23_combout\,
	cout => \PELOTA|Bola_X[8]~24\);

-- Location: FF_X50_Y66_N25
\PELOTA|Bola_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(8));

-- Location: LCCOMB_X47_Y66_N0
\PELOTA|Desplaza_Bola_X[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[1]~0_combout\ = (!\PELOTA|Bola_X\(7) & (!\PELOTA|Bola_X\(8) & ((\PELOTA|LessThan18~0_combout\) # (!\PELOTA|Bola_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(7),
	datab => \PELOTA|Bola_X\(6),
	datac => \PELOTA|LessThan18~0_combout\,
	datad => \PELOTA|Bola_X\(8),
	combout => \PELOTA|Desplaza_Bola_X[1]~0_combout\);

-- Location: LCCOMB_X47_Y66_N30
\PELOTA|Desplaza_Bola_X[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~1_combout\ = (\PELOTA|Bola_X\(9) & !\PELOTA|Desplaza_Bola_X[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Desplaza_Bola_X[1]~0_combout\,
	combout => \PELOTA|Desplaza_Bola_X[2]~1_combout\);

-- Location: LCCOMB_X49_Y66_N4
\PELOTA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~2_combout\ = (\PELOTA|Bola_X\(3) & (!\PELOTA|Add1~1\)) # (!\PELOTA|Bola_X\(3) & ((\PELOTA|Add1~1\) # (GND)))
-- \PELOTA|Add1~3\ = CARRY((!\PELOTA|Add1~1\) # (!\PELOTA|Bola_X\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_X\(3),
	datad => VCC,
	cin => \PELOTA|Add1~1\,
	combout => \PELOTA|Add1~2_combout\,
	cout => \PELOTA|Add1~3\);

-- Location: LCCOMB_X49_Y66_N8
\PELOTA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~6_combout\ = (\PELOTA|Bola_X\(5) & (!\PELOTA|Add1~5\)) # (!\PELOTA|Bola_X\(5) & ((\PELOTA|Add1~5\) # (GND)))
-- \PELOTA|Add1~7\ = CARRY((!\PELOTA|Add1~5\) # (!\PELOTA|Bola_X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_X\(5),
	datad => VCC,
	cin => \PELOTA|Add1~5\,
	combout => \PELOTA|Add1~6_combout\,
	cout => \PELOTA|Add1~7\);

-- Location: LCCOMB_X49_Y66_N10
\PELOTA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~8_combout\ = (\PELOTA|Bola_X\(6) & (\PELOTA|Add1~7\ $ (GND))) # (!\PELOTA|Bola_X\(6) & (!\PELOTA|Add1~7\ & VCC))
-- \PELOTA|Add1~9\ = CARRY((\PELOTA|Bola_X\(6) & !\PELOTA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(6),
	datad => VCC,
	cin => \PELOTA|Add1~7\,
	combout => \PELOTA|Add1~8_combout\,
	cout => \PELOTA|Add1~9\);

-- Location: LCCOMB_X49_Y66_N12
\PELOTA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~10_combout\ = (\PELOTA|Bola_X\(7) & (!\PELOTA|Add1~9\)) # (!\PELOTA|Bola_X\(7) & ((\PELOTA|Add1~9\) # (GND)))
-- \PELOTA|Add1~11\ = CARRY((!\PELOTA|Add1~9\) # (!\PELOTA|Bola_X\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_X\(7),
	datad => VCC,
	cin => \PELOTA|Add1~9\,
	combout => \PELOTA|Add1~10_combout\,
	cout => \PELOTA|Add1~11\);

-- Location: LCCOMB_X49_Y66_N14
\PELOTA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~12_combout\ = (\PELOTA|Bola_X\(8) & (\PELOTA|Add1~11\ $ (GND))) # (!\PELOTA|Bola_X\(8) & (!\PELOTA|Add1~11\ & VCC))
-- \PELOTA|Add1~13\ = CARRY((\PELOTA|Bola_X\(8) & !\PELOTA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(8),
	datad => VCC,
	cin => \PELOTA|Add1~11\,
	combout => \PELOTA|Add1~12_combout\,
	cout => \PELOTA|Add1~13\);

-- Location: LCCOMB_X49_Y66_N18
\PELOTA|Add15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~1_cout\ = CARRY((\PELOTA|Add1~0_combout\ & \PELOTA|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~0_combout\,
	datab => \PELOTA|Add1~2_combout\,
	datad => VCC,
	cout => \PELOTA|Add15~1_cout\);

-- Location: LCCOMB_X49_Y66_N20
\PELOTA|Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~2_combout\ = (\PELOTA|Add1~4_combout\ & (!\PELOTA|Add15~1_cout\)) # (!\PELOTA|Add1~4_combout\ & ((\PELOTA|Add15~1_cout\) # (GND)))
-- \PELOTA|Add15~3\ = CARRY((!\PELOTA|Add15~1_cout\) # (!\PELOTA|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~4_combout\,
	datad => VCC,
	cin => \PELOTA|Add15~1_cout\,
	combout => \PELOTA|Add15~2_combout\,
	cout => \PELOTA|Add15~3\);

-- Location: LCCOMB_X49_Y66_N24
\PELOTA|Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add15~6_combout\ = (\PELOTA|Add1~8_combout\ & (!\PELOTA|Add15~5\)) # (!\PELOTA|Add1~8_combout\ & ((\PELOTA|Add15~5\) # (GND)))
-- \PELOTA|Add15~7\ = CARRY((!\PELOTA|Add15~5\) # (!\PELOTA|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~8_combout\,
	datad => VCC,
	cin => \PELOTA|Add15~5\,
	combout => \PELOTA|Add15~6_combout\,
	cout => \PELOTA|Add15~7\);

-- Location: LCCOMB_X49_Y66_N0
\PELOTA|Mover_Bola~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Bola~0_combout\ = (\PELOTA|Add15~4_combout\) # ((!\PELOTA|Bola_X\(3) & \PELOTA|Add15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add15~4_combout\,
	datac => \PELOTA|Bola_X\(3),
	datad => \PELOTA|Add15~2_combout\,
	combout => \PELOTA|Mover_Bola~0_combout\);

-- Location: LCCOMB_X49_Y65_N2
\PELOTA|Desplaza_Bola_X[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~10_combout\ = (\PELOTA|Add15~8_combout\) # ((\PELOTA|Add15~10_combout\) # ((\PELOTA|Add15~6_combout\ & \PELOTA|Mover_Bola~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add15~8_combout\,
	datab => \PELOTA|Add15~10_combout\,
	datac => \PELOTA|Add15~6_combout\,
	datad => \PELOTA|Mover_Bola~0_combout\,
	combout => \PELOTA|Desplaza_Bola_X[2]~10_combout\);

-- Location: LCCOMB_X49_Y67_N2
\PELOTA|Pala_der_Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[1]~9_combout\ = (\PELOTA|Desplaza_Pala_der_Y\(1) & (\PELOTA|Pala_der_Y\(1) $ (VCC))) # (!\PELOTA|Desplaza_Pala_der_Y\(1) & (\PELOTA|Pala_der_Y\(1) & VCC))
-- \PELOTA|Pala_der_Y[1]~10\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(1) & \PELOTA|Pala_der_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(1),
	datab => \PELOTA|Pala_der_Y\(1),
	datad => VCC,
	combout => \PELOTA|Pala_der_Y[1]~9_combout\,
	cout => \PELOTA|Pala_der_Y[1]~10\);

-- Location: FF_X46_Y67_N27
\PELOTA|Pala_der_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Pala_der_Y[1]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(1));

-- Location: LCCOMB_X49_Y67_N4
\PELOTA|Pala_der_Y[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[2]~11_combout\ = (\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(2) & (\PELOTA|Pala_der_Y[1]~10\ & VCC)) # (!\PELOTA|Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y[1]~10\)))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & 
-- ((\PELOTA|Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y[1]~10\)) # (!\PELOTA|Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y[1]~10\) # (GND)))))
-- \PELOTA|Pala_der_Y[2]~12\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y\(2) & !\PELOTA|Pala_der_Y[1]~10\)) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & ((!\PELOTA|Pala_der_Y[1]~10\) # (!\PELOTA|Pala_der_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(2),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[1]~10\,
	combout => \PELOTA|Pala_der_Y[2]~11_combout\,
	cout => \PELOTA|Pala_der_Y[2]~12\);

-- Location: FF_X49_Y67_N5
\PELOTA|Pala_der_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(2));

-- Location: LCCOMB_X49_Y67_N6
\PELOTA|Pala_der_Y[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[3]~13_combout\ = ((\PELOTA|Desplaza_Pala_der_Y\(2) $ (\PELOTA|Pala_der_Y\(3) $ (!\PELOTA|Pala_der_Y[2]~12\)))) # (GND)
-- \PELOTA|Pala_der_Y[3]~14\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(3)) # (!\PELOTA|Pala_der_Y[2]~12\))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & (\PELOTA|Pala_der_Y\(3) & !\PELOTA|Pala_der_Y[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(3),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[2]~12\,
	combout => \PELOTA|Pala_der_Y[3]~13_combout\,
	cout => \PELOTA|Pala_der_Y[3]~14\);

-- Location: FF_X49_Y67_N7
\PELOTA|Pala_der_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(3));

-- Location: LCCOMB_X49_Y67_N8
\PELOTA|Pala_der_Y[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[4]~15_combout\ = (\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(4) & (\PELOTA|Pala_der_Y[3]~14\ & VCC)) # (!\PELOTA|Pala_der_Y\(4) & (!\PELOTA|Pala_der_Y[3]~14\)))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & 
-- ((\PELOTA|Pala_der_Y\(4) & (!\PELOTA|Pala_der_Y[3]~14\)) # (!\PELOTA|Pala_der_Y\(4) & ((\PELOTA|Pala_der_Y[3]~14\) # (GND)))))
-- \PELOTA|Pala_der_Y[4]~16\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y\(4) & !\PELOTA|Pala_der_Y[3]~14\)) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & ((!\PELOTA|Pala_der_Y[3]~14\) # (!\PELOTA|Pala_der_Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(4),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[3]~14\,
	combout => \PELOTA|Pala_der_Y[4]~15_combout\,
	cout => \PELOTA|Pala_der_Y[4]~16\);

-- Location: FF_X49_Y67_N9
\PELOTA|Pala_der_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(4));

-- Location: LCCOMB_X49_Y67_N10
\PELOTA|Pala_der_Y[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[5]~17_combout\ = ((\PELOTA|Desplaza_Pala_der_Y\(2) $ (\PELOTA|Pala_der_Y\(5) $ (!\PELOTA|Pala_der_Y[4]~16\)))) # (GND)
-- \PELOTA|Pala_der_Y[5]~18\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(5)) # (!\PELOTA|Pala_der_Y[4]~16\))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & (\PELOTA|Pala_der_Y\(5) & !\PELOTA|Pala_der_Y[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(5),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[4]~16\,
	combout => \PELOTA|Pala_der_Y[5]~17_combout\,
	cout => \PELOTA|Pala_der_Y[5]~18\);

-- Location: FF_X49_Y67_N11
\PELOTA|Pala_der_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(5));

-- Location: LCCOMB_X49_Y67_N12
\PELOTA|Pala_der_Y[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[6]~19_combout\ = (\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(6) & (\PELOTA|Pala_der_Y[5]~18\ & VCC)) # (!\PELOTA|Pala_der_Y\(6) & (!\PELOTA|Pala_der_Y[5]~18\)))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & 
-- ((\PELOTA|Pala_der_Y\(6) & (!\PELOTA|Pala_der_Y[5]~18\)) # (!\PELOTA|Pala_der_Y\(6) & ((\PELOTA|Pala_der_Y[5]~18\) # (GND)))))
-- \PELOTA|Pala_der_Y[6]~20\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y\(6) & !\PELOTA|Pala_der_Y[5]~18\)) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & ((!\PELOTA|Pala_der_Y[5]~18\) # (!\PELOTA|Pala_der_Y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(6),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[5]~18\,
	combout => \PELOTA|Pala_der_Y[6]~19_combout\,
	cout => \PELOTA|Pala_der_Y[6]~20\);

-- Location: FF_X49_Y67_N13
\PELOTA|Pala_der_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(6));

-- Location: LCCOMB_X49_Y67_N14
\PELOTA|Pala_der_Y[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_der_Y[7]~21_combout\ = ((\PELOTA|Desplaza_Pala_der_Y\(2) $ (\PELOTA|Pala_der_Y\(7) $ (!\PELOTA|Pala_der_Y[6]~20\)))) # (GND)
-- \PELOTA|Pala_der_Y[7]~22\ = CARRY((\PELOTA|Desplaza_Pala_der_Y\(2) & ((\PELOTA|Pala_der_Y\(7)) # (!\PELOTA|Pala_der_Y[6]~20\))) # (!\PELOTA|Desplaza_Pala_der_Y\(2) & (\PELOTA|Pala_der_Y\(7) & !\PELOTA|Pala_der_Y[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(7),
	datad => VCC,
	cin => \PELOTA|Pala_der_Y[6]~20\,
	combout => \PELOTA|Pala_der_Y[7]~21_combout\,
	cout => \PELOTA|Pala_der_Y[7]~22\);

-- Location: FF_X49_Y67_N15
\PELOTA|Pala_der_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(7));

-- Location: FF_X49_Y67_N17
\PELOTA|Pala_der_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_der_Y[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_der_Y\(8));

-- Location: LCCOMB_X49_Y67_N22
\PELOTA|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add6~2_combout\ = (\PELOTA|Pala_der_Y\(5) & (\PELOTA|Add6~1\ & VCC)) # (!\PELOTA|Pala_der_Y\(5) & (!\PELOTA|Add6~1\))
-- \PELOTA|Add6~3\ = CARRY((!\PELOTA|Pala_der_Y\(5) & !\PELOTA|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(5),
	datad => VCC,
	cin => \PELOTA|Add6~1\,
	combout => \PELOTA|Add6~2_combout\,
	cout => \PELOTA|Add6~3\);

-- Location: LCCOMB_X49_Y67_N26
\PELOTA|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add6~6_combout\ = (\PELOTA|Pala_der_Y\(7) & (!\PELOTA|Add6~5\)) # (!\PELOTA|Pala_der_Y\(7) & ((\PELOTA|Add6~5\) # (GND)))
-- \PELOTA|Add6~7\ = CARRY((!\PELOTA|Add6~5\) # (!\PELOTA|Pala_der_Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Pala_der_Y\(7),
	datad => VCC,
	cin => \PELOTA|Add6~5\,
	combout => \PELOTA|Add6~6_combout\,
	cout => \PELOTA|Add6~7\);

-- Location: LCCOMB_X48_Y67_N18
\PELOTA|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~0_combout\ = (\PELOTA|Pala_der_Y\(2) & (\PELOTA|Pala_der_Y\(3) $ (GND))) # (!\PELOTA|Pala_der_Y\(2) & (!\PELOTA|Pala_der_Y\(3) & VCC))
-- \PELOTA|Add14~1\ = CARRY((\PELOTA|Pala_der_Y\(2) & !\PELOTA|Pala_der_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(2),
	datab => \PELOTA|Pala_der_Y\(3),
	datad => VCC,
	combout => \PELOTA|Add14~0_combout\,
	cout => \PELOTA|Add14~1\);

-- Location: LCCOMB_X48_Y67_N20
\PELOTA|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~2_combout\ = (\PELOTA|Add6~0_combout\ & (!\PELOTA|Add14~1\)) # (!\PELOTA|Add6~0_combout\ & ((\PELOTA|Add14~1\) # (GND)))
-- \PELOTA|Add14~3\ = CARRY((!\PELOTA|Add14~1\) # (!\PELOTA|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add6~0_combout\,
	datad => VCC,
	cin => \PELOTA|Add14~1\,
	combout => \PELOTA|Add14~2_combout\,
	cout => \PELOTA|Add14~3\);

-- Location: LCCOMB_X48_Y67_N24
\PELOTA|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add14~6_combout\ = (\PELOTA|Add6~4_combout\ & (!\PELOTA|Add14~5\)) # (!\PELOTA|Add6~4_combout\ & ((\PELOTA|Add14~5\) # (GND)))
-- \PELOTA|Add14~7\ = CARRY((!\PELOTA|Add14~5\) # (!\PELOTA|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add6~4_combout\,
	datad => VCC,
	cin => \PELOTA|Add14~5\,
	combout => \PELOTA|Add14~6_combout\,
	cout => \PELOTA|Add14~7\);

-- Location: LCCOMB_X48_Y67_N0
\PELOTA|LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~1_cout\ = CARRY((\PELOTA|Bola_X\(1) & !\PELOTA|Pala_der_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \PELOTA|Pala_der_Y\(1),
	datad => VCC,
	cout => \PELOTA|LessThan24~1_cout\);

-- Location: LCCOMB_X48_Y67_N2
\PELOTA|LessThan24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~3_cout\ = CARRY((\PELOTA|Pala_der_Y\(2) & (!\PELOTA|Bola_Y\(2) & !\PELOTA|LessThan24~1_cout\)) # (!\PELOTA|Pala_der_Y\(2) & ((!\PELOTA|LessThan24~1_cout\) # (!\PELOTA|Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(2),
	datab => \PELOTA|Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan24~1_cout\,
	cout => \PELOTA|LessThan24~3_cout\);

-- Location: LCCOMB_X48_Y67_N4
\PELOTA|LessThan24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~5_cout\ = CARRY((\PELOTA|Bola_Y\(3) & ((!\PELOTA|LessThan24~3_cout\) # (!\PELOTA|Add14~0_combout\))) # (!\PELOTA|Bola_Y\(3) & (!\PELOTA|Add14~0_combout\ & !\PELOTA|LessThan24~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(3),
	datab => \PELOTA|Add14~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan24~3_cout\,
	cout => \PELOTA|LessThan24~5_cout\);

-- Location: LCCOMB_X48_Y67_N6
\PELOTA|LessThan24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~7_cout\ = CARRY((\PELOTA|Bola_Y\(4) & (\PELOTA|Add14~2_combout\ & !\PELOTA|LessThan24~5_cout\)) # (!\PELOTA|Bola_Y\(4) & ((\PELOTA|Add14~2_combout\) # (!\PELOTA|LessThan24~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(4),
	datab => \PELOTA|Add14~2_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan24~5_cout\,
	cout => \PELOTA|LessThan24~7_cout\);

-- Location: LCCOMB_X48_Y67_N8
\PELOTA|LessThan24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~9_cout\ = CARRY((\PELOTA|Add14~4_combout\ & (\PELOTA|Bola_Y\(5) & !\PELOTA|LessThan24~7_cout\)) # (!\PELOTA|Add14~4_combout\ & ((\PELOTA|Bola_Y\(5)) # (!\PELOTA|LessThan24~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add14~4_combout\,
	datab => \PELOTA|Bola_Y\(5),
	datad => VCC,
	cin => \PELOTA|LessThan24~7_cout\,
	cout => \PELOTA|LessThan24~9_cout\);

-- Location: LCCOMB_X48_Y67_N10
\PELOTA|LessThan24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~11_cout\ = CARRY((\PELOTA|Bola_Y\(6) & (\PELOTA|Add14~6_combout\ & !\PELOTA|LessThan24~9_cout\)) # (!\PELOTA|Bola_Y\(6) & ((\PELOTA|Add14~6_combout\) # (!\PELOTA|LessThan24~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(6),
	datab => \PELOTA|Add14~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan24~9_cout\,
	cout => \PELOTA|LessThan24~11_cout\);

-- Location: LCCOMB_X48_Y67_N12
\PELOTA|LessThan24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~13_cout\ = CARRY((\PELOTA|Add14~8_combout\ & (\PELOTA|Bola_Y\(7) & !\PELOTA|LessThan24~11_cout\)) # (!\PELOTA|Add14~8_combout\ & ((\PELOTA|Bola_Y\(7)) # (!\PELOTA|LessThan24~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add14~8_combout\,
	datab => \PELOTA|Bola_Y\(7),
	datad => VCC,
	cin => \PELOTA|LessThan24~11_cout\,
	cout => \PELOTA|LessThan24~13_cout\);

-- Location: LCCOMB_X48_Y67_N14
\PELOTA|LessThan24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~15_cout\ = CARRY((\PELOTA|Bola_Y\(8) & (\PELOTA|Add14~10_combout\ & !\PELOTA|LessThan24~13_cout\)) # (!\PELOTA|Bola_Y\(8) & ((\PELOTA|Add14~10_combout\) # (!\PELOTA|LessThan24~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(8),
	datab => \PELOTA|Add14~10_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan24~13_cout\,
	cout => \PELOTA|LessThan24~15_cout\);

-- Location: LCCOMB_X48_Y67_N16
\PELOTA|LessThan24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan24~16_combout\ = (\PELOTA|Add14~12_combout\ & (!\PELOTA|LessThan24~15_cout\ & \PELOTA|Bola_Y\(9))) # (!\PELOTA|Add14~12_combout\ & ((\PELOTA|Bola_Y\(9)) # (!\PELOTA|LessThan24~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add14~12_combout\,
	datad => \PELOTA|Bola_Y\(9),
	cin => \PELOTA|LessThan24~15_cout\,
	combout => \PELOTA|LessThan24~16_combout\);

-- Location: LCCOMB_X48_Y64_N2
\PELOTA|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~0_combout\ = \PELOTA|Bola_Y\(2) $ (VCC)
-- \PELOTA|Add3~1\ = CARRY(\PELOTA|Bola_Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_Y\(2),
	datad => VCC,
	combout => \PELOTA|Add3~0_combout\,
	cout => \PELOTA|Add3~1\);

-- Location: LCCOMB_X48_Y64_N4
\PELOTA|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~2_combout\ = (\PELOTA|Bola_Y\(3) & (!\PELOTA|Add3~1\)) # (!\PELOTA|Bola_Y\(3) & ((\PELOTA|Add3~1\) # (GND)))
-- \PELOTA|Add3~3\ = CARRY((!\PELOTA|Add3~1\) # (!\PELOTA|Bola_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_Y\(3),
	datad => VCC,
	cin => \PELOTA|Add3~1\,
	combout => \PELOTA|Add3~2_combout\,
	cout => \PELOTA|Add3~3\);

-- Location: LCCOMB_X48_Y64_N6
\PELOTA|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~4_combout\ = (\PELOTA|Bola_Y\(4) & (\PELOTA|Add3~3\ $ (GND))) # (!\PELOTA|Bola_Y\(4) & (!\PELOTA|Add3~3\ & VCC))
-- \PELOTA|Add3~5\ = CARRY((\PELOTA|Bola_Y\(4) & !\PELOTA|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(4),
	datad => VCC,
	cin => \PELOTA|Add3~3\,
	combout => \PELOTA|Add3~4_combout\,
	cout => \PELOTA|Add3~5\);

-- Location: LCCOMB_X48_Y64_N8
\PELOTA|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~6_combout\ = (\PELOTA|Bola_Y\(5) & (!\PELOTA|Add3~5\)) # (!\PELOTA|Bola_Y\(5) & ((\PELOTA|Add3~5\) # (GND)))
-- \PELOTA|Add3~7\ = CARRY((!\PELOTA|Add3~5\) # (!\PELOTA|Bola_Y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_Y\(5),
	datad => VCC,
	cin => \PELOTA|Add3~5\,
	combout => \PELOTA|Add3~6_combout\,
	cout => \PELOTA|Add3~7\);

-- Location: LCCOMB_X48_Y64_N10
\PELOTA|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~8_combout\ = (\PELOTA|Bola_Y\(6) & (\PELOTA|Add3~7\ $ (GND))) # (!\PELOTA|Bola_Y\(6) & (!\PELOTA|Add3~7\ & VCC))
-- \PELOTA|Add3~9\ = CARRY((\PELOTA|Bola_Y\(6) & !\PELOTA|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_Y\(6),
	datad => VCC,
	cin => \PELOTA|Add3~7\,
	combout => \PELOTA|Add3~8_combout\,
	cout => \PELOTA|Add3~9\);

-- Location: LCCOMB_X48_Y64_N12
\PELOTA|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add3~10_combout\ = (\PELOTA|Bola_Y\(7) & (!\PELOTA|Add3~9\)) # (!\PELOTA|Bola_Y\(7) & ((\PELOTA|Add3~9\) # (GND)))
-- \PELOTA|Add3~11\ = CARRY((!\PELOTA|Add3~9\) # (!\PELOTA|Bola_Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Bola_Y\(7),
	datad => VCC,
	cin => \PELOTA|Add3~9\,
	combout => \PELOTA|Add3~10_combout\,
	cout => \PELOTA|Add3~11\);

-- Location: LCCOMB_X48_Y64_N18
\PELOTA|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~0_combout\ = \PELOTA|Add3~2_combout\ $ (VCC)
-- \PELOTA|Add12~1\ = CARRY(\PELOTA|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add3~2_combout\,
	datad => VCC,
	combout => \PELOTA|Add12~0_combout\,
	cout => \PELOTA|Add12~1\);

-- Location: LCCOMB_X48_Y64_N20
\PELOTA|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~2_combout\ = (\PELOTA|Add3~4_combout\ & (!\PELOTA|Add12~1\)) # (!\PELOTA|Add3~4_combout\ & ((\PELOTA|Add12~1\) # (GND)))
-- \PELOTA|Add12~3\ = CARRY((!\PELOTA|Add12~1\) # (!\PELOTA|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add3~4_combout\,
	datad => VCC,
	cin => \PELOTA|Add12~1\,
	combout => \PELOTA|Add12~2_combout\,
	cout => \PELOTA|Add12~3\);

-- Location: LCCOMB_X48_Y64_N22
\PELOTA|Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~4_combout\ = (\PELOTA|Add3~6_combout\ & ((GND) # (!\PELOTA|Add12~3\))) # (!\PELOTA|Add3~6_combout\ & (\PELOTA|Add12~3\ $ (GND)))
-- \PELOTA|Add12~5\ = CARRY((\PELOTA|Add3~6_combout\) # (!\PELOTA|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add3~6_combout\,
	datad => VCC,
	cin => \PELOTA|Add12~3\,
	combout => \PELOTA|Add12~4_combout\,
	cout => \PELOTA|Add12~5\);

-- Location: LCCOMB_X48_Y64_N24
\PELOTA|Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~6_combout\ = (\PELOTA|Add3~8_combout\ & (!\PELOTA|Add12~5\)) # (!\PELOTA|Add3~8_combout\ & ((\PELOTA|Add12~5\) # (GND)))
-- \PELOTA|Add12~7\ = CARRY((!\PELOTA|Add12~5\) # (!\PELOTA|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~8_combout\,
	datad => VCC,
	cin => \PELOTA|Add12~5\,
	combout => \PELOTA|Add12~6_combout\,
	cout => \PELOTA|Add12~7\);

-- Location: LCCOMB_X48_Y64_N26
\PELOTA|Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~8_combout\ = (\PELOTA|Add3~10_combout\ & (\PELOTA|Add12~7\ $ (GND))) # (!\PELOTA|Add3~10_combout\ & (!\PELOTA|Add12~7\ & VCC))
-- \PELOTA|Add12~9\ = CARRY((\PELOTA|Add3~10_combout\ & !\PELOTA|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~10_combout\,
	datad => VCC,
	cin => \PELOTA|Add12~7\,
	combout => \PELOTA|Add12~8_combout\,
	cout => \PELOTA|Add12~9\);

-- Location: LCCOMB_X48_Y64_N28
\PELOTA|Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~10_combout\ = (\PELOTA|Add3~12_combout\ & (!\PELOTA|Add12~9\)) # (!\PELOTA|Add3~12_combout\ & ((\PELOTA|Add12~9\) # (GND)))
-- \PELOTA|Add12~11\ = CARRY((!\PELOTA|Add12~9\) # (!\PELOTA|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add3~12_combout\,
	datad => VCC,
	cin => \PELOTA|Add12~9\,
	combout => \PELOTA|Add12~10_combout\,
	cout => \PELOTA|Add12~11\);

-- Location: LCCOMB_X48_Y64_N30
\PELOTA|Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add12~12_combout\ = \PELOTA|Add3~14_combout\ $ (!\PELOTA|Add12~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~14_combout\,
	cin => \PELOTA|Add12~11\,
	combout => \PELOTA|Add12~12_combout\);

-- Location: LCCOMB_X49_Y64_N2
\PELOTA|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~1_cout\ = CARRY((!\PELOTA|Bola_X\(1) & \PELOTA|Pala_der_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \PELOTA|Pala_der_Y\(1),
	datad => VCC,
	cout => \PELOTA|LessThan23~1_cout\);

-- Location: LCCOMB_X49_Y64_N4
\PELOTA|LessThan23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~3_cout\ = CARRY((\PELOTA|Add3~0_combout\ & ((!\PELOTA|LessThan23~1_cout\) # (!\PELOTA|Pala_der_Y\(2)))) # (!\PELOTA|Add3~0_combout\ & (!\PELOTA|Pala_der_Y\(2) & !\PELOTA|LessThan23~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~0_combout\,
	datab => \PELOTA|Pala_der_Y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan23~1_cout\,
	cout => \PELOTA|LessThan23~3_cout\);

-- Location: LCCOMB_X49_Y64_N6
\PELOTA|LessThan23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~5_cout\ = CARRY((\PELOTA|Pala_der_Y\(3) & ((!\PELOTA|LessThan23~3_cout\) # (!\PELOTA|Add12~0_combout\))) # (!\PELOTA|Pala_der_Y\(3) & (!\PELOTA|Add12~0_combout\ & !\PELOTA|LessThan23~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(3),
	datab => \PELOTA|Add12~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan23~3_cout\,
	cout => \PELOTA|LessThan23~5_cout\);

-- Location: LCCOMB_X49_Y64_N8
\PELOTA|LessThan23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~7_cout\ = CARRY((\PELOTA|Pala_der_Y\(4) & (\PELOTA|Add12~2_combout\ & !\PELOTA|LessThan23~5_cout\)) # (!\PELOTA|Pala_der_Y\(4) & ((\PELOTA|Add12~2_combout\) # (!\PELOTA|LessThan23~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(4),
	datab => \PELOTA|Add12~2_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan23~5_cout\,
	cout => \PELOTA|LessThan23~7_cout\);

-- Location: LCCOMB_X49_Y64_N10
\PELOTA|LessThan23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~9_cout\ = CARRY((\PELOTA|Pala_der_Y\(5) & ((!\PELOTA|LessThan23~7_cout\) # (!\PELOTA|Add12~4_combout\))) # (!\PELOTA|Pala_der_Y\(5) & (!\PELOTA|Add12~4_combout\ & !\PELOTA|LessThan23~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(5),
	datab => \PELOTA|Add12~4_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan23~7_cout\,
	cout => \PELOTA|LessThan23~9_cout\);

-- Location: LCCOMB_X49_Y64_N12
\PELOTA|LessThan23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~11_cout\ = CARRY((\PELOTA|Pala_der_Y\(6) & (\PELOTA|Add12~6_combout\ & !\PELOTA|LessThan23~9_cout\)) # (!\PELOTA|Pala_der_Y\(6) & ((\PELOTA|Add12~6_combout\) # (!\PELOTA|LessThan23~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(6),
	datab => \PELOTA|Add12~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan23~9_cout\,
	cout => \PELOTA|LessThan23~11_cout\);

-- Location: LCCOMB_X49_Y64_N14
\PELOTA|LessThan23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~13_cout\ = CARRY((\PELOTA|Add12~8_combout\ & (\PELOTA|Pala_der_Y\(7) & !\PELOTA|LessThan23~11_cout\)) # (!\PELOTA|Add12~8_combout\ & ((\PELOTA|Pala_der_Y\(7)) # (!\PELOTA|LessThan23~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add12~8_combout\,
	datab => \PELOTA|Pala_der_Y\(7),
	datad => VCC,
	cin => \PELOTA|LessThan23~11_cout\,
	cout => \PELOTA|LessThan23~13_cout\);

-- Location: LCCOMB_X49_Y64_N16
\PELOTA|LessThan23~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~15_cout\ = CARRY((\PELOTA|Pala_der_Y\(8) & (\PELOTA|Add12~10_combout\ & !\PELOTA|LessThan23~13_cout\)) # (!\PELOTA|Pala_der_Y\(8) & ((\PELOTA|Add12~10_combout\) # (!\PELOTA|LessThan23~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(8),
	datab => \PELOTA|Add12~10_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan23~13_cout\,
	cout => \PELOTA|LessThan23~15_cout\);

-- Location: LCCOMB_X49_Y64_N18
\PELOTA|LessThan23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan23~16_combout\ = (\PELOTA|Pala_der_Y\(9) & ((!\PELOTA|Add12~12_combout\) # (!\PELOTA|LessThan23~15_cout\))) # (!\PELOTA|Pala_der_Y\(9) & (!\PELOTA|LessThan23~15_cout\ & !\PELOTA|Add12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_der_Y\(9),
	datad => \PELOTA|Add12~12_combout\,
	cin => \PELOTA|LessThan23~15_cout\,
	combout => \PELOTA|LessThan23~16_combout\);

-- Location: LCCOMB_X49_Y65_N8
\PELOTA|Desplaza_Bola_X[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~11_combout\ = (\PELOTA|Add15~12_combout\ & (\PELOTA|Desplaza_Bola_X[2]~10_combout\ & (!\PELOTA|LessThan24~16_combout\ & !\PELOTA|LessThan23~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add15~12_combout\,
	datab => \PELOTA|Desplaza_Bola_X[2]~10_combout\,
	datac => \PELOTA|LessThan24~16_combout\,
	datad => \PELOTA|LessThan23~16_combout\,
	combout => \PELOTA|Desplaza_Bola_X[2]~11_combout\);

-- Location: LCCOMB_X46_Y65_N0
\PELOTA|Mover_Pala_Izq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Izq~1_combout\ = (!\PELOTA|Pala_izq_Y\(8) & (!\PELOTA|Pala_izq_Y\(7) & !\PELOTA|Pala_izq_Y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(8),
	datab => \PELOTA|Pala_izq_Y\(7),
	datad => \PELOTA|Pala_izq_Y\(6),
	combout => \PELOTA|Mover_Pala_Izq~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X47_Y65_N14
\PELOTA|Pala_izq_Y[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[8]~23_combout\ = (\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(8) & (\PELOTA|Pala_izq_Y[7]~22\ & VCC)) # (!\PELOTA|Pala_izq_Y\(8) & (!\PELOTA|Pala_izq_Y[7]~22\)))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & 
-- ((\PELOTA|Pala_izq_Y\(8) & (!\PELOTA|Pala_izq_Y[7]~22\)) # (!\PELOTA|Pala_izq_Y\(8) & ((\PELOTA|Pala_izq_Y[7]~22\) # (GND)))))
-- \PELOTA|Pala_izq_Y[8]~24\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y\(8) & !\PELOTA|Pala_izq_Y[7]~22\)) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & ((!\PELOTA|Pala_izq_Y[7]~22\) # (!\PELOTA|Pala_izq_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(8),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[7]~22\,
	combout => \PELOTA|Pala_izq_Y[8]~23_combout\,
	cout => \PELOTA|Pala_izq_Y[8]~24\);

-- Location: LCCOMB_X47_Y65_N16
\PELOTA|Pala_izq_Y[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[9]~25_combout\ = \PELOTA|Desplaza_Pala_izq_Y\(2) $ (\PELOTA|Pala_izq_Y[8]~24\ $ (!\PELOTA|Pala_izq_Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datad => \PELOTA|Pala_izq_Y\(9),
	cin => \PELOTA|Pala_izq_Y[8]~24\,
	combout => \PELOTA|Pala_izq_Y[9]~25_combout\);

-- Location: FF_X47_Y65_N17
\PELOTA|Pala_izq_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(9));

-- Location: LCCOMB_X45_Y65_N30
\PELOTA|Mover_Pala_Izq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Mover_Pala_Izq~0_combout\ = (!\PELOTA|Pala_izq_Y\(9) & (((!\PELOTA|Pala_izq_Y\(3) & !\PELOTA|Pala_izq_Y\(4))) # (!\PELOTA|Pala_izq_Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(3),
	datab => \PELOTA|Pala_izq_Y\(4),
	datac => \PELOTA|Pala_izq_Y\(5),
	datad => \PELOTA|Pala_izq_Y\(9),
	combout => \PELOTA|Mover_Pala_Izq~0_combout\);

-- Location: LCCOMB_X46_Y67_N28
\PELOTA|Desplaza_Pala_izq_Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Pala_izq_Y~5_combout\ = ((!\KEY[0]~input_o\ & ((!\PELOTA|Mover_Pala_Izq~0_combout\) # (!\PELOTA|Mover_Pala_Izq~1_combout\)))) # (!\PELOTA|Mover_Pala_Izq~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Mover_Pala_Izq~4_combout\,
	datab => \PELOTA|Mover_Pala_Izq~1_combout\,
	datac => \KEY[0]~input_o\,
	datad => \PELOTA|Mover_Pala_Izq~0_combout\,
	combout => \PELOTA|Desplaza_Pala_izq_Y~5_combout\);

-- Location: FF_X46_Y67_N29
\PELOTA|Desplaza_Pala_izq_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Desplaza_Pala_izq_Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Desplaza_Pala_izq_Y\(1));

-- Location: LCCOMB_X47_Y65_N0
\PELOTA|Pala_izq_Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[1]~9_combout\ = (\PELOTA|Pala_izq_Y\(1) & (\PELOTA|Desplaza_Pala_izq_Y\(1) $ (VCC))) # (!\PELOTA|Pala_izq_Y\(1) & (\PELOTA|Desplaza_Pala_izq_Y\(1) & VCC))
-- \PELOTA|Pala_izq_Y[1]~10\ = CARRY((\PELOTA|Pala_izq_Y\(1) & \PELOTA|Desplaza_Pala_izq_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(1),
	datab => \PELOTA|Desplaza_Pala_izq_Y\(1),
	datad => VCC,
	combout => \PELOTA|Pala_izq_Y[1]~9_combout\,
	cout => \PELOTA|Pala_izq_Y[1]~10\);

-- Location: LCCOMB_X47_Y65_N2
\PELOTA|Pala_izq_Y[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[2]~11_combout\ = (\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(2) & (\PELOTA|Pala_izq_Y[1]~10\ & VCC)) # (!\PELOTA|Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y[1]~10\)))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & 
-- ((\PELOTA|Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y[1]~10\)) # (!\PELOTA|Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y[1]~10\) # (GND)))))
-- \PELOTA|Pala_izq_Y[2]~12\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y\(2) & !\PELOTA|Pala_izq_Y[1]~10\)) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & ((!\PELOTA|Pala_izq_Y[1]~10\) # (!\PELOTA|Pala_izq_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(2),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[1]~10\,
	combout => \PELOTA|Pala_izq_Y[2]~11_combout\,
	cout => \PELOTA|Pala_izq_Y[2]~12\);

-- Location: FF_X47_Y65_N3
\PELOTA|Pala_izq_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(2));

-- Location: LCCOMB_X47_Y65_N4
\PELOTA|Pala_izq_Y[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[3]~13_combout\ = ((\PELOTA|Desplaza_Pala_izq_Y\(2) $ (\PELOTA|Pala_izq_Y\(3) $ (!\PELOTA|Pala_izq_Y[2]~12\)))) # (GND)
-- \PELOTA|Pala_izq_Y[3]~14\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(3)) # (!\PELOTA|Pala_izq_Y[2]~12\))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & (\PELOTA|Pala_izq_Y\(3) & !\PELOTA|Pala_izq_Y[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(3),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[2]~12\,
	combout => \PELOTA|Pala_izq_Y[3]~13_combout\,
	cout => \PELOTA|Pala_izq_Y[3]~14\);

-- Location: FF_X47_Y65_N5
\PELOTA|Pala_izq_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(3));

-- Location: LCCOMB_X47_Y65_N6
\PELOTA|Pala_izq_Y[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[4]~15_combout\ = (\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(4) & (\PELOTA|Pala_izq_Y[3]~14\ & VCC)) # (!\PELOTA|Pala_izq_Y\(4) & (!\PELOTA|Pala_izq_Y[3]~14\)))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & 
-- ((\PELOTA|Pala_izq_Y\(4) & (!\PELOTA|Pala_izq_Y[3]~14\)) # (!\PELOTA|Pala_izq_Y\(4) & ((\PELOTA|Pala_izq_Y[3]~14\) # (GND)))))
-- \PELOTA|Pala_izq_Y[4]~16\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y\(4) & !\PELOTA|Pala_izq_Y[3]~14\)) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & ((!\PELOTA|Pala_izq_Y[3]~14\) # (!\PELOTA|Pala_izq_Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(4),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[3]~14\,
	combout => \PELOTA|Pala_izq_Y[4]~15_combout\,
	cout => \PELOTA|Pala_izq_Y[4]~16\);

-- Location: FF_X47_Y65_N7
\PELOTA|Pala_izq_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(4));

-- Location: LCCOMB_X47_Y65_N8
\PELOTA|Pala_izq_Y[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[5]~17_combout\ = ((\PELOTA|Desplaza_Pala_izq_Y\(2) $ (\PELOTA|Pala_izq_Y\(5) $ (!\PELOTA|Pala_izq_Y[4]~16\)))) # (GND)
-- \PELOTA|Pala_izq_Y[5]~18\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(5)) # (!\PELOTA|Pala_izq_Y[4]~16\))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & (\PELOTA|Pala_izq_Y\(5) & !\PELOTA|Pala_izq_Y[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(5),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[4]~16\,
	combout => \PELOTA|Pala_izq_Y[5]~17_combout\,
	cout => \PELOTA|Pala_izq_Y[5]~18\);

-- Location: FF_X47_Y65_N9
\PELOTA|Pala_izq_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(5));

-- Location: LCCOMB_X47_Y65_N10
\PELOTA|Pala_izq_Y[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[6]~19_combout\ = (\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(6) & (\PELOTA|Pala_izq_Y[5]~18\ & VCC)) # (!\PELOTA|Pala_izq_Y\(6) & (!\PELOTA|Pala_izq_Y[5]~18\)))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & 
-- ((\PELOTA|Pala_izq_Y\(6) & (!\PELOTA|Pala_izq_Y[5]~18\)) # (!\PELOTA|Pala_izq_Y\(6) & ((\PELOTA|Pala_izq_Y[5]~18\) # (GND)))))
-- \PELOTA|Pala_izq_Y[6]~20\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y\(6) & !\PELOTA|Pala_izq_Y[5]~18\)) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & ((!\PELOTA|Pala_izq_Y[5]~18\) # (!\PELOTA|Pala_izq_Y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(6),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[5]~18\,
	combout => \PELOTA|Pala_izq_Y[6]~19_combout\,
	cout => \PELOTA|Pala_izq_Y[6]~20\);

-- Location: FF_X47_Y65_N11
\PELOTA|Pala_izq_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(6));

-- Location: LCCOMB_X47_Y65_N12
\PELOTA|Pala_izq_Y[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Pala_izq_Y[7]~21_combout\ = ((\PELOTA|Desplaza_Pala_izq_Y\(2) $ (\PELOTA|Pala_izq_Y\(7) $ (!\PELOTA|Pala_izq_Y[6]~20\)))) # (GND)
-- \PELOTA|Pala_izq_Y[7]~22\ = CARRY((\PELOTA|Desplaza_Pala_izq_Y\(2) & ((\PELOTA|Pala_izq_Y\(7)) # (!\PELOTA|Pala_izq_Y[6]~20\))) # (!\PELOTA|Desplaza_Pala_izq_Y\(2) & (\PELOTA|Pala_izq_Y\(7) & !\PELOTA|Pala_izq_Y[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(7),
	datad => VCC,
	cin => \PELOTA|Pala_izq_Y[6]~20\,
	combout => \PELOTA|Pala_izq_Y[7]~21_combout\,
	cout => \PELOTA|Pala_izq_Y[7]~22\);

-- Location: FF_X47_Y65_N13
\PELOTA|Pala_izq_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(7));

-- Location: FF_X47_Y65_N15
\PELOTA|Pala_izq_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Pala_izq_Y[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(8));

-- Location: FF_X45_Y65_N25
\PELOTA|Pala_izq_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	asdata => \PELOTA|Pala_izq_Y[1]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Pala_izq_Y\(1));

-- Location: LCCOMB_X49_Y65_N10
\PELOTA|LessThan20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~1_cout\ = CARRY((!\PELOTA|Bola_X\(1) & \PELOTA|Pala_izq_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \PELOTA|Pala_izq_Y\(1),
	datad => VCC,
	cout => \PELOTA|LessThan20~1_cout\);

-- Location: LCCOMB_X49_Y65_N12
\PELOTA|LessThan20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~3_cout\ = CARRY((\PELOTA|Pala_izq_Y\(2) & (\PELOTA|Add3~0_combout\ & !\PELOTA|LessThan20~1_cout\)) # (!\PELOTA|Pala_izq_Y\(2) & ((\PELOTA|Add3~0_combout\) # (!\PELOTA|LessThan20~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(2),
	datab => \PELOTA|Add3~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan20~1_cout\,
	cout => \PELOTA|LessThan20~3_cout\);

-- Location: LCCOMB_X49_Y65_N14
\PELOTA|LessThan20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~5_cout\ = CARRY((\PELOTA|Pala_izq_Y\(3) & ((!\PELOTA|LessThan20~3_cout\) # (!\PELOTA|Add12~0_combout\))) # (!\PELOTA|Pala_izq_Y\(3) & (!\PELOTA|Add12~0_combout\ & !\PELOTA|LessThan20~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(3),
	datab => \PELOTA|Add12~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan20~3_cout\,
	cout => \PELOTA|LessThan20~5_cout\);

-- Location: LCCOMB_X49_Y65_N16
\PELOTA|LessThan20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~7_cout\ = CARRY((\PELOTA|Add12~2_combout\ & ((!\PELOTA|LessThan20~5_cout\) # (!\PELOTA|Pala_izq_Y\(4)))) # (!\PELOTA|Add12~2_combout\ & (!\PELOTA|Pala_izq_Y\(4) & !\PELOTA|LessThan20~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add12~2_combout\,
	datab => \PELOTA|Pala_izq_Y\(4),
	datad => VCC,
	cin => \PELOTA|LessThan20~5_cout\,
	cout => \PELOTA|LessThan20~7_cout\);

-- Location: LCCOMB_X49_Y65_N18
\PELOTA|LessThan20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~9_cout\ = CARRY((\PELOTA|Add12~4_combout\ & (\PELOTA|Pala_izq_Y\(5) & !\PELOTA|LessThan20~7_cout\)) # (!\PELOTA|Add12~4_combout\ & ((\PELOTA|Pala_izq_Y\(5)) # (!\PELOTA|LessThan20~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add12~4_combout\,
	datab => \PELOTA|Pala_izq_Y\(5),
	datad => VCC,
	cin => \PELOTA|LessThan20~7_cout\,
	cout => \PELOTA|LessThan20~9_cout\);

-- Location: LCCOMB_X49_Y65_N20
\PELOTA|LessThan20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~11_cout\ = CARRY((\PELOTA|Pala_izq_Y\(6) & (\PELOTA|Add12~6_combout\ & !\PELOTA|LessThan20~9_cout\)) # (!\PELOTA|Pala_izq_Y\(6) & ((\PELOTA|Add12~6_combout\) # (!\PELOTA|LessThan20~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(6),
	datab => \PELOTA|Add12~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan20~9_cout\,
	cout => \PELOTA|LessThan20~11_cout\);

-- Location: LCCOMB_X49_Y65_N22
\PELOTA|LessThan20~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~13_cout\ = CARRY((\PELOTA|Pala_izq_Y\(7) & ((!\PELOTA|LessThan20~11_cout\) # (!\PELOTA|Add12~8_combout\))) # (!\PELOTA|Pala_izq_Y\(7) & (!\PELOTA|Add12~8_combout\ & !\PELOTA|LessThan20~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(7),
	datab => \PELOTA|Add12~8_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan20~11_cout\,
	cout => \PELOTA|LessThan20~13_cout\);

-- Location: LCCOMB_X49_Y65_N24
\PELOTA|LessThan20~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~15_cout\ = CARRY((\PELOTA|Add12~10_combout\ & ((!\PELOTA|LessThan20~13_cout\) # (!\PELOTA|Pala_izq_Y\(8)))) # (!\PELOTA|Add12~10_combout\ & (!\PELOTA|Pala_izq_Y\(8) & !\PELOTA|LessThan20~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add12~10_combout\,
	datab => \PELOTA|Pala_izq_Y\(8),
	datad => VCC,
	cin => \PELOTA|LessThan20~13_cout\,
	cout => \PELOTA|LessThan20~15_cout\);

-- Location: LCCOMB_X49_Y65_N26
\PELOTA|LessThan20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan20~16_combout\ = (\PELOTA|Pala_izq_Y\(9) & ((!\PELOTA|Add12~12_combout\) # (!\PELOTA|LessThan20~15_cout\))) # (!\PELOTA|Pala_izq_Y\(9) & (!\PELOTA|LessThan20~15_cout\ & !\PELOTA|Add12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(9),
	datad => \PELOTA|Add12~12_combout\,
	cin => \PELOTA|LessThan20~15_cout\,
	combout => \PELOTA|LessThan20~16_combout\);

-- Location: LCCOMB_X47_Y65_N20
\PELOTA|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add4~0_combout\ = (\PELOTA|Pala_izq_Y\(4) & (\PELOTA|Pala_izq_Y\(3) $ (VCC))) # (!\PELOTA|Pala_izq_Y\(4) & (\PELOTA|Pala_izq_Y\(3) & VCC))
-- \PELOTA|Add4~1\ = CARRY((\PELOTA|Pala_izq_Y\(4) & \PELOTA|Pala_izq_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(4),
	datab => \PELOTA|Pala_izq_Y\(3),
	datad => VCC,
	combout => \PELOTA|Add4~0_combout\,
	cout => \PELOTA|Add4~1\);

-- Location: LCCOMB_X47_Y65_N22
\PELOTA|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add4~2_combout\ = (\PELOTA|Pala_izq_Y\(5) & (\PELOTA|Add4~1\ & VCC)) # (!\PELOTA|Pala_izq_Y\(5) & (!\PELOTA|Add4~1\))
-- \PELOTA|Add4~3\ = CARRY((!\PELOTA|Pala_izq_Y\(5) & !\PELOTA|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Pala_izq_Y\(5),
	datad => VCC,
	cin => \PELOTA|Add4~1\,
	combout => \PELOTA|Add4~2_combout\,
	cout => \PELOTA|Add4~3\);

-- Location: LCCOMB_X47_Y65_N24
\PELOTA|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add4~4_combout\ = (\PELOTA|Pala_izq_Y\(6) & (\PELOTA|Add4~3\ $ (GND))) # (!\PELOTA|Pala_izq_Y\(6) & (!\PELOTA|Add4~3\ & VCC))
-- \PELOTA|Add4~5\ = CARRY((\PELOTA|Pala_izq_Y\(6) & !\PELOTA|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(6),
	datad => VCC,
	cin => \PELOTA|Add4~3\,
	combout => \PELOTA|Add4~4_combout\,
	cout => \PELOTA|Add4~5\);

-- Location: LCCOMB_X47_Y65_N26
\PELOTA|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add4~6_combout\ = (\PELOTA|Pala_izq_Y\(7) & (!\PELOTA|Add4~5\)) # (!\PELOTA|Pala_izq_Y\(7) & ((\PELOTA|Add4~5\) # (GND)))
-- \PELOTA|Add4~7\ = CARRY((!\PELOTA|Add4~5\) # (!\PELOTA|Pala_izq_Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(7),
	datad => VCC,
	cin => \PELOTA|Add4~5\,
	combout => \PELOTA|Add4~6_combout\,
	cout => \PELOTA|Add4~7\);

-- Location: LCCOMB_X48_Y65_N18
\PELOTA|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~0_combout\ = (\PELOTA|Pala_izq_Y\(2) & (\PELOTA|Pala_izq_Y\(3) $ (GND))) # (!\PELOTA|Pala_izq_Y\(2) & (!\PELOTA|Pala_izq_Y\(3) & VCC))
-- \PELOTA|Add13~1\ = CARRY((\PELOTA|Pala_izq_Y\(2) & !\PELOTA|Pala_izq_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(2),
	datab => \PELOTA|Pala_izq_Y\(3),
	datad => VCC,
	combout => \PELOTA|Add13~0_combout\,
	cout => \PELOTA|Add13~1\);

-- Location: LCCOMB_X48_Y65_N20
\PELOTA|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~2_combout\ = (\PELOTA|Add4~0_combout\ & (!\PELOTA|Add13~1\)) # (!\PELOTA|Add4~0_combout\ & ((\PELOTA|Add13~1\) # (GND)))
-- \PELOTA|Add13~3\ = CARRY((!\PELOTA|Add13~1\) # (!\PELOTA|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add4~0_combout\,
	datad => VCC,
	cin => \PELOTA|Add13~1\,
	combout => \PELOTA|Add13~2_combout\,
	cout => \PELOTA|Add13~3\);

-- Location: LCCOMB_X48_Y65_N24
\PELOTA|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add13~6_combout\ = (\PELOTA|Add4~4_combout\ & (!\PELOTA|Add13~5\)) # (!\PELOTA|Add4~4_combout\ & ((\PELOTA|Add13~5\) # (GND)))
-- \PELOTA|Add13~7\ = CARRY((!\PELOTA|Add13~5\) # (!\PELOTA|Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add4~4_combout\,
	datad => VCC,
	cin => \PELOTA|Add13~5\,
	combout => \PELOTA|Add13~6_combout\,
	cout => \PELOTA|Add13~7\);

-- Location: LCCOMB_X48_Y65_N0
\PELOTA|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~1_cout\ = CARRY((\PELOTA|Bola_X\(1) & !\PELOTA|Pala_izq_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \PELOTA|Pala_izq_Y\(1),
	datad => VCC,
	cout => \PELOTA|LessThan21~1_cout\);

-- Location: LCCOMB_X48_Y65_N2
\PELOTA|LessThan21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~3_cout\ = CARRY((\PELOTA|Pala_izq_Y\(2) & (!\PELOTA|Bola_Y\(2) & !\PELOTA|LessThan21~1_cout\)) # (!\PELOTA|Pala_izq_Y\(2) & ((!\PELOTA|LessThan21~1_cout\) # (!\PELOTA|Bola_Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(2),
	datab => \PELOTA|Bola_Y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan21~1_cout\,
	cout => \PELOTA|LessThan21~3_cout\);

-- Location: LCCOMB_X48_Y65_N4
\PELOTA|LessThan21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~5_cout\ = CARRY((\PELOTA|Bola_Y\(3) & ((!\PELOTA|LessThan21~3_cout\) # (!\PELOTA|Add13~0_combout\))) # (!\PELOTA|Bola_Y\(3) & (!\PELOTA|Add13~0_combout\ & !\PELOTA|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(3),
	datab => \PELOTA|Add13~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan21~3_cout\,
	cout => \PELOTA|LessThan21~5_cout\);

-- Location: LCCOMB_X48_Y65_N6
\PELOTA|LessThan21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~7_cout\ = CARRY((\PELOTA|Bola_Y\(4) & (\PELOTA|Add13~2_combout\ & !\PELOTA|LessThan21~5_cout\)) # (!\PELOTA|Bola_Y\(4) & ((\PELOTA|Add13~2_combout\) # (!\PELOTA|LessThan21~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(4),
	datab => \PELOTA|Add13~2_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan21~5_cout\,
	cout => \PELOTA|LessThan21~7_cout\);

-- Location: LCCOMB_X48_Y65_N8
\PELOTA|LessThan21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~9_cout\ = CARRY((\PELOTA|Add13~4_combout\ & (\PELOTA|Bola_Y\(5) & !\PELOTA|LessThan21~7_cout\)) # (!\PELOTA|Add13~4_combout\ & ((\PELOTA|Bola_Y\(5)) # (!\PELOTA|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add13~4_combout\,
	datab => \PELOTA|Bola_Y\(5),
	datad => VCC,
	cin => \PELOTA|LessThan21~7_cout\,
	cout => \PELOTA|LessThan21~9_cout\);

-- Location: LCCOMB_X48_Y65_N10
\PELOTA|LessThan21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~11_cout\ = CARRY((\PELOTA|Bola_Y\(6) & (\PELOTA|Add13~6_combout\ & !\PELOTA|LessThan21~9_cout\)) # (!\PELOTA|Bola_Y\(6) & ((\PELOTA|Add13~6_combout\) # (!\PELOTA|LessThan21~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(6),
	datab => \PELOTA|Add13~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan21~9_cout\,
	cout => \PELOTA|LessThan21~11_cout\);

-- Location: LCCOMB_X48_Y65_N12
\PELOTA|LessThan21~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~13_cout\ = CARRY((\PELOTA|Add13~8_combout\ & (\PELOTA|Bola_Y\(7) & !\PELOTA|LessThan21~11_cout\)) # (!\PELOTA|Add13~8_combout\ & ((\PELOTA|Bola_Y\(7)) # (!\PELOTA|LessThan21~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add13~8_combout\,
	datab => \PELOTA|Bola_Y\(7),
	datad => VCC,
	cin => \PELOTA|LessThan21~11_cout\,
	cout => \PELOTA|LessThan21~13_cout\);

-- Location: LCCOMB_X48_Y65_N14
\PELOTA|LessThan21~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~15_cout\ = CARRY((\PELOTA|Bola_Y\(8) & (\PELOTA|Add13~10_combout\ & !\PELOTA|LessThan21~13_cout\)) # (!\PELOTA|Bola_Y\(8) & ((\PELOTA|Add13~10_combout\) # (!\PELOTA|LessThan21~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_Y\(8),
	datab => \PELOTA|Add13~10_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan21~13_cout\,
	cout => \PELOTA|LessThan21~15_cout\);

-- Location: LCCOMB_X48_Y65_N16
\PELOTA|LessThan21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan21~16_combout\ = (\PELOTA|Add13~12_combout\ & (!\PELOTA|LessThan21~15_cout\ & \PELOTA|Bola_Y\(9))) # (!\PELOTA|Add13~12_combout\ & ((\PELOTA|Bola_Y\(9)) # (!\PELOTA|LessThan21~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add13~12_combout\,
	datad => \PELOTA|Bola_Y\(9),
	cin => \PELOTA|LessThan21~15_cout\,
	combout => \PELOTA|LessThan21~16_combout\);

-- Location: LCCOMB_X50_Y66_N8
\PELOTA|Desplaza_Bola_X[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~7_combout\ = (\PELOTA|Bola_X\(7)) # ((\PELOTA|Bola_X\(6)) # ((\PELOTA|Bola_X\(9)) # (\PELOTA|Bola_X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(7),
	datab => \PELOTA|Bola_X\(6),
	datac => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Bola_X\(8),
	combout => \PELOTA|Desplaza_Bola_X[2]~7_combout\);

-- Location: LCCOMB_X49_Y65_N6
\PELOTA|Desplaza_Bola_X[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~8_combout\ = (!\PELOTA|LessThan21~16_combout\ & (!\PELOTA|Desplaza_Bola_X[2]~7_combout\ & ((!\PELOTA|Bola_X\(5)) # (!\PELOTA|Desplaza_Bola_X[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X[2]~6_combout\,
	datab => \PELOTA|Bola_X\(5),
	datac => \PELOTA|LessThan21~16_combout\,
	datad => \PELOTA|Desplaza_Bola_X[2]~7_combout\,
	combout => \PELOTA|Desplaza_Bola_X[2]~8_combout\);

-- Location: LCCOMB_X49_Y65_N28
\PELOTA|Desplaza_Bola_X[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~9_combout\ = (\PELOTA|LessThan20~16_combout\ & (((\PELOTA|Desplaza_Bola_X\(2))))) # (!\PELOTA|LessThan20~16_combout\ & ((\PELOTA|Desplaza_Bola_X[2]~8_combout\ & (\PELOTA|Desplaza_Bola_X[2]~1_combout\)) # 
-- (!\PELOTA|Desplaza_Bola_X[2]~8_combout\ & ((\PELOTA|Desplaza_Bola_X\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X[2]~1_combout\,
	datab => \PELOTA|Desplaza_Bola_X\(2),
	datac => \PELOTA|LessThan20~16_combout\,
	datad => \PELOTA|Desplaza_Bola_X[2]~8_combout\,
	combout => \PELOTA|Desplaza_Bola_X[2]~9_combout\);

-- Location: LCCOMB_X49_Y65_N4
\PELOTA|Desplaza_Bola_X[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Desplaza_Bola_X[2]~12_combout\ = (\PELOTA|Desplaza_Bola_X[2]~11_combout\) # ((\PELOTA|Desplaza_Bola_X[1]~5_combout\ & ((\PELOTA|Desplaza_Bola_X[2]~9_combout\))) # (!\PELOTA|Desplaza_Bola_X[1]~5_combout\ & (\PELOTA|Desplaza_Bola_X[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Desplaza_Bola_X[1]~5_combout\,
	datab => \PELOTA|Desplaza_Bola_X[2]~1_combout\,
	datac => \PELOTA|Desplaza_Bola_X[2]~11_combout\,
	datad => \PELOTA|Desplaza_Bola_X[2]~9_combout\,
	combout => \PELOTA|Desplaza_Bola_X[2]~12_combout\);

-- Location: FF_X49_Y65_N5
\PELOTA|Desplaza_Bola_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Desplaza_Bola_X[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Desplaza_Bola_X\(2));

-- Location: LCCOMB_X50_Y66_N26
\PELOTA|Bola_X[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_X[9]~25_combout\ = \PELOTA|Bola_X\(9) $ (\PELOTA|Bola_X[8]~24\ $ (!\PELOTA|Desplaza_Bola_X\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(9),
	datad => \PELOTA|Desplaza_Bola_X\(2),
	cin => \PELOTA|Bola_X[8]~24\,
	combout => \PELOTA|Bola_X[9]~25_combout\);

-- Location: FF_X50_Y66_N27
\PELOTA|Bola_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|vga_vs~clkctrl_outclk\,
	d => \PELOTA|Bola_X[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PELOTA|Bola_X\(9));

-- Location: LCCOMB_X49_Y66_N16
\PELOTA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add1~14_combout\ = \PELOTA|Add1~13\ $ (\PELOTA|Bola_X\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PELOTA|Bola_X\(9),
	cin => \PELOTA|Add1~13\,
	combout => \PELOTA|Add1~14_combout\);

-- Location: FF_X46_Y66_N7
\VGA|pixel_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(3),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(3));

-- Location: LCCOMB_X48_Y66_N6
\PELOTA|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~1_cout\ = CARRY(\VGA|pixel_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(0),
	datad => VCC,
	cout => \PELOTA|LessThan1~1_cout\);

-- Location: LCCOMB_X48_Y66_N8
\PELOTA|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~3_cout\ = CARRY((\PELOTA|Bola_X\(1) & ((!\PELOTA|LessThan1~1_cout\) # (!\VGA|pixel_x\(1)))) # (!\PELOTA|Bola_X\(1) & (!\VGA|pixel_x\(1) & !\PELOTA|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \VGA|pixel_x\(1),
	datad => VCC,
	cin => \PELOTA|LessThan1~1_cout\,
	cout => \PELOTA|LessThan1~3_cout\);

-- Location: LCCOMB_X48_Y66_N10
\PELOTA|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~5_cout\ = CARRY((\PELOTA|Add1~0_combout\ & (\VGA|pixel_x\(2) & !\PELOTA|LessThan1~3_cout\)) # (!\PELOTA|Add1~0_combout\ & ((\VGA|pixel_x\(2)) # (!\PELOTA|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~0_combout\,
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \PELOTA|LessThan1~3_cout\,
	cout => \PELOTA|LessThan1~5_cout\);

-- Location: LCCOMB_X48_Y66_N12
\PELOTA|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~7_cout\ = CARRY((\PELOTA|Add1~2_combout\ & ((!\PELOTA|LessThan1~5_cout\) # (!\VGA|pixel_x\(3)))) # (!\PELOTA|Add1~2_combout\ & (!\VGA|pixel_x\(3) & !\PELOTA|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~2_combout\,
	datab => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \PELOTA|LessThan1~5_cout\,
	cout => \PELOTA|LessThan1~7_cout\);

-- Location: LCCOMB_X48_Y66_N14
\PELOTA|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~9_cout\ = CARRY((\PELOTA|Add1~4_combout\ & (\VGA|pixel_x\(4) & !\PELOTA|LessThan1~7_cout\)) # (!\PELOTA|Add1~4_combout\ & ((\VGA|pixel_x\(4)) # (!\PELOTA|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add1~4_combout\,
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \PELOTA|LessThan1~7_cout\,
	cout => \PELOTA|LessThan1~9_cout\);

-- Location: LCCOMB_X48_Y66_N16
\PELOTA|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~11_cout\ = CARRY((\VGA|pixel_x\(5) & (\PELOTA|Add1~6_combout\ & !\PELOTA|LessThan1~9_cout\)) # (!\VGA|pixel_x\(5) & ((\PELOTA|Add1~6_combout\) # (!\PELOTA|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \PELOTA|Add1~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan1~9_cout\,
	cout => \PELOTA|LessThan1~11_cout\);

-- Location: LCCOMB_X48_Y66_N18
\PELOTA|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~13_cout\ = CARRY((\VGA|pixel_x\(6) & ((!\PELOTA|LessThan1~11_cout\) # (!\PELOTA|Add1~8_combout\))) # (!\VGA|pixel_x\(6) & (!\PELOTA|Add1~8_combout\ & !\PELOTA|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datab => \PELOTA|Add1~8_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan1~11_cout\,
	cout => \PELOTA|LessThan1~13_cout\);

-- Location: LCCOMB_X48_Y66_N20
\PELOTA|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~15_cout\ = CARRY((\VGA|pixel_x\(7) & (\PELOTA|Add1~10_combout\ & !\PELOTA|LessThan1~13_cout\)) # (!\VGA|pixel_x\(7) & ((\PELOTA|Add1~10_combout\) # (!\PELOTA|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(7),
	datab => \PELOTA|Add1~10_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan1~13_cout\,
	cout => \PELOTA|LessThan1~15_cout\);

-- Location: LCCOMB_X48_Y66_N22
\PELOTA|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~17_cout\ = CARRY((\VGA|pixel_x\(8) & ((!\PELOTA|LessThan1~15_cout\) # (!\PELOTA|Add1~12_combout\))) # (!\VGA|pixel_x\(8) & (!\PELOTA|Add1~12_combout\ & !\PELOTA|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(8),
	datab => \PELOTA|Add1~12_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan1~15_cout\,
	cout => \PELOTA|LessThan1~17_cout\);

-- Location: LCCOMB_X48_Y66_N24
\PELOTA|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan1~18_combout\ = (\VGA|pixel_x\(9) & ((\PELOTA|LessThan1~17_cout\) # (!\PELOTA|Add1~14_combout\))) # (!\VGA|pixel_x\(9) & (\PELOTA|LessThan1~17_cout\ & !\PELOTA|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datad => \PELOTA|Add1~14_combout\,
	cin => \PELOTA|LessThan1~17_cout\,
	combout => \PELOTA|LessThan1~18_combout\);

-- Location: FF_X46_Y66_N15
\VGA|pixel_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(7),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(7));

-- Location: LCCOMB_X46_Y66_N4
\PELOTA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~0_combout\ = \VGA|pixel_x\(2) $ (VCC)
-- \PELOTA|Add0~1\ = CARRY(\VGA|pixel_x\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(2),
	datad => VCC,
	combout => \PELOTA|Add0~0_combout\,
	cout => \PELOTA|Add0~1\);

-- Location: LCCOMB_X46_Y66_N6
\PELOTA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~2_combout\ = (\VGA|pixel_x\(3) & (!\PELOTA|Add0~1\)) # (!\VGA|pixel_x\(3) & ((\PELOTA|Add0~1\) # (GND)))
-- \PELOTA|Add0~3\ = CARRY((!\PELOTA|Add0~1\) # (!\VGA|pixel_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \PELOTA|Add0~1\,
	combout => \PELOTA|Add0~2_combout\,
	cout => \PELOTA|Add0~3\);

-- Location: LCCOMB_X46_Y66_N12
\PELOTA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~8_combout\ = (\VGA|pixel_x\(6) & (\PELOTA|Add0~7\ $ (GND))) # (!\VGA|pixel_x\(6) & (!\PELOTA|Add0~7\ & VCC))
-- \PELOTA|Add0~9\ = CARRY((\VGA|pixel_x\(6) & !\PELOTA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datad => VCC,
	cin => \PELOTA|Add0~7\,
	combout => \PELOTA|Add0~8_combout\,
	cout => \PELOTA|Add0~9\);

-- Location: LCCOMB_X46_Y66_N14
\PELOTA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~10_combout\ = (\VGA|pixel_x\(7) & (!\PELOTA|Add0~9\)) # (!\VGA|pixel_x\(7) & ((\PELOTA|Add0~9\) # (GND)))
-- \PELOTA|Add0~11\ = CARRY((!\PELOTA|Add0~9\) # (!\VGA|pixel_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \PELOTA|Add0~9\,
	combout => \PELOTA|Add0~10_combout\,
	cout => \PELOTA|Add0~11\);

-- Location: LCCOMB_X46_Y66_N16
\PELOTA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~12_combout\ = (\VGA|pixel_x\(8) & (\PELOTA|Add0~11\ $ (GND))) # (!\VGA|pixel_x\(8) & (!\PELOTA|Add0~11\ & VCC))
-- \PELOTA|Add0~13\ = CARRY((\VGA|pixel_x\(8) & !\PELOTA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \PELOTA|Add0~11\,
	combout => \PELOTA|Add0~12_combout\,
	cout => \PELOTA|Add0~13\);

-- Location: LCCOMB_X46_Y66_N18
\PELOTA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add0~14_combout\ = \VGA|pixel_x\(9) $ (\PELOTA|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(9),
	cin => \PELOTA|Add0~13\,
	combout => \PELOTA|Add0~14_combout\);

-- Location: LCCOMB_X47_Y66_N8
\PELOTA|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~1_cout\ = CARRY((!\VGA|pixel_x\(1) & \PELOTA|Bola_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(1),
	datab => \PELOTA|Bola_X\(1),
	datad => VCC,
	cout => \PELOTA|LessThan0~1_cout\);

-- Location: LCCOMB_X47_Y66_N10
\PELOTA|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~3_cout\ = CARRY((\PELOTA|Bola_X\(2) & (\PELOTA|Add0~0_combout\ & !\PELOTA|LessThan0~1_cout\)) # (!\PELOTA|Bola_X\(2) & ((\PELOTA|Add0~0_combout\) # (!\PELOTA|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(2),
	datab => \PELOTA|Add0~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan0~1_cout\,
	cout => \PELOTA|LessThan0~3_cout\);

-- Location: LCCOMB_X47_Y66_N12
\PELOTA|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~5_cout\ = CARRY((\PELOTA|Add0~2_combout\ & (\PELOTA|Bola_X\(3) & !\PELOTA|LessThan0~3_cout\)) # (!\PELOTA|Add0~2_combout\ & ((\PELOTA|Bola_X\(3)) # (!\PELOTA|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~2_combout\,
	datab => \PELOTA|Bola_X\(3),
	datad => VCC,
	cin => \PELOTA|LessThan0~3_cout\,
	cout => \PELOTA|LessThan0~5_cout\);

-- Location: LCCOMB_X47_Y66_N14
\PELOTA|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~7_cout\ = CARRY((\PELOTA|Add0~4_combout\ & ((!\PELOTA|LessThan0~5_cout\) # (!\PELOTA|Bola_X\(4)))) # (!\PELOTA|Add0~4_combout\ & (!\PELOTA|Bola_X\(4) & !\PELOTA|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~4_combout\,
	datab => \PELOTA|Bola_X\(4),
	datad => VCC,
	cin => \PELOTA|LessThan0~5_cout\,
	cout => \PELOTA|LessThan0~7_cout\);

-- Location: LCCOMB_X47_Y66_N16
\PELOTA|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~9_cout\ = CARRY((\PELOTA|Add0~6_combout\ & (\PELOTA|Bola_X\(5) & !\PELOTA|LessThan0~7_cout\)) # (!\PELOTA|Add0~6_combout\ & ((\PELOTA|Bola_X\(5)) # (!\PELOTA|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~6_combout\,
	datab => \PELOTA|Bola_X\(5),
	datad => VCC,
	cin => \PELOTA|LessThan0~7_cout\,
	cout => \PELOTA|LessThan0~9_cout\);

-- Location: LCCOMB_X47_Y66_N18
\PELOTA|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~11_cout\ = CARRY((\PELOTA|Add0~8_combout\ & ((!\PELOTA|LessThan0~9_cout\) # (!\PELOTA|Bola_X\(6)))) # (!\PELOTA|Add0~8_combout\ & (!\PELOTA|Bola_X\(6) & !\PELOTA|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~8_combout\,
	datab => \PELOTA|Bola_X\(6),
	datad => VCC,
	cin => \PELOTA|LessThan0~9_cout\,
	cout => \PELOTA|LessThan0~11_cout\);

-- Location: LCCOMB_X47_Y66_N20
\PELOTA|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~13_cout\ = CARRY((\PELOTA|Add0~10_combout\ & (\PELOTA|Bola_X\(7) & !\PELOTA|LessThan0~11_cout\)) # (!\PELOTA|Add0~10_combout\ & ((\PELOTA|Bola_X\(7)) # (!\PELOTA|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~10_combout\,
	datab => \PELOTA|Bola_X\(7),
	datad => VCC,
	cin => \PELOTA|LessThan0~11_cout\,
	cout => \PELOTA|LessThan0~13_cout\);

-- Location: LCCOMB_X47_Y66_N22
\PELOTA|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~15_cout\ = CARRY((\PELOTA|Add0~12_combout\ & ((!\PELOTA|LessThan0~13_cout\) # (!\PELOTA|Bola_X\(8)))) # (!\PELOTA|Add0~12_combout\ & (!\PELOTA|Bola_X\(8) & !\PELOTA|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~12_combout\,
	datab => \PELOTA|Bola_X\(8),
	datad => VCC,
	cin => \PELOTA|LessThan0~13_cout\,
	cout => \PELOTA|LessThan0~15_cout\);

-- Location: LCCOMB_X47_Y66_N24
\PELOTA|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan0~16_combout\ = (\PELOTA|Add0~14_combout\ & (!\PELOTA|LessThan0~15_cout\ & \PELOTA|Bola_X\(9))) # (!\PELOTA|Add0~14_combout\ & ((\PELOTA|Bola_X\(9)) # (!\PELOTA|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add0~14_combout\,
	datad => \PELOTA|Bola_X\(9),
	cin => \PELOTA|LessThan0~15_cout\,
	combout => \PELOTA|LessThan0~16_combout\);

-- Location: LCCOMB_X47_Y67_N10
\VGA|pixel_y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[1]~feeder_combout\ = \VGA|cont_vs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(1),
	combout => \VGA|pixel_y[1]~feeder_combout\);

-- Location: FF_X47_Y67_N11
\VGA|pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[1]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(1));

-- Location: LCCOMB_X48_Y68_N26
\VGA|cont_vs[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|cont_vs[0]~9_combout\ = (!\VGA|process_0~9_combout\ & ((\VGA|Equal2~2_combout\ & (\VGA|cont_vs\(0))) # (!\VGA|Equal2~2_combout\ & ((\VGA|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~9_combout\,
	datab => \VGA|Equal2~2_combout\,
	datac => \VGA|cont_vs\(0),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|cont_vs[0]~9_combout\);

-- Location: FF_X48_Y68_N27
\VGA|cont_vs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|cont_vs[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|cont_vs\(0));

-- Location: LCCOMB_X47_Y68_N2
\VGA|pixel_y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[0]~feeder_combout\ = \VGA|cont_vs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(0),
	combout => \VGA|pixel_y[0]~feeder_combout\);

-- Location: FF_X47_Y68_N3
\VGA|pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[0]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(0));

-- Location: LCCOMB_X47_Y64_N14
\PELOTA|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \PELOTA|LessThan3~1_cout\);

-- Location: LCCOMB_X47_Y64_N16
\PELOTA|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~3_cout\ = CARRY((\PELOTA|Bola_X\(1) & ((!\PELOTA|LessThan3~1_cout\) # (!\VGA|pixel_y\(1)))) # (!\PELOTA|Bola_X\(1) & (!\VGA|pixel_y\(1) & !\PELOTA|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Bola_X\(1),
	datab => \VGA|pixel_y\(1),
	datad => VCC,
	cin => \PELOTA|LessThan3~1_cout\,
	cout => \PELOTA|LessThan3~3_cout\);

-- Location: LCCOMB_X47_Y64_N18
\PELOTA|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~5_cout\ = CARRY((\PELOTA|Add3~0_combout\ & (\VGA|pixel_y\(2) & !\PELOTA|LessThan3~3_cout\)) # (!\PELOTA|Add3~0_combout\ & ((\VGA|pixel_y\(2)) # (!\PELOTA|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~0_combout\,
	datab => \VGA|pixel_y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan3~3_cout\,
	cout => \PELOTA|LessThan3~5_cout\);

-- Location: LCCOMB_X47_Y64_N20
\PELOTA|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~7_cout\ = CARRY((\PELOTA|Add3~2_combout\ & ((!\PELOTA|LessThan3~5_cout\) # (!\VGA|pixel_y\(3)))) # (!\PELOTA|Add3~2_combout\ & (!\VGA|pixel_y\(3) & !\PELOTA|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~2_combout\,
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \PELOTA|LessThan3~5_cout\,
	cout => \PELOTA|LessThan3~7_cout\);

-- Location: LCCOMB_X47_Y64_N22
\PELOTA|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~9_cout\ = CARRY((\PELOTA|Add3~4_combout\ & (\VGA|pixel_y\(4) & !\PELOTA|LessThan3~7_cout\)) # (!\PELOTA|Add3~4_combout\ & ((\VGA|pixel_y\(4)) # (!\PELOTA|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~4_combout\,
	datab => \VGA|pixel_y\(4),
	datad => VCC,
	cin => \PELOTA|LessThan3~7_cout\,
	cout => \PELOTA|LessThan3~9_cout\);

-- Location: LCCOMB_X47_Y64_N24
\PELOTA|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\PELOTA|Add3~6_combout\ & !\PELOTA|LessThan3~9_cout\)) # (!\VGA|pixel_y\(5) & ((\PELOTA|Add3~6_combout\) # (!\PELOTA|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \PELOTA|Add3~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan3~9_cout\,
	cout => \PELOTA|LessThan3~11_cout\);

-- Location: LCCOMB_X47_Y64_N26
\PELOTA|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\PELOTA|LessThan3~11_cout\) # (!\PELOTA|Add3~8_combout\))) # (!\VGA|pixel_y\(6) & (!\PELOTA|Add3~8_combout\ & !\PELOTA|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \PELOTA|Add3~8_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan3~11_cout\,
	cout => \PELOTA|LessThan3~13_cout\);

-- Location: LCCOMB_X47_Y64_N28
\PELOTA|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\PELOTA|Add3~10_combout\ & !\PELOTA|LessThan3~13_cout\)) # (!\VGA|pixel_y\(7) & ((\PELOTA|Add3~10_combout\) # (!\PELOTA|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \PELOTA|Add3~10_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan3~13_cout\,
	cout => \PELOTA|LessThan3~15_cout\);

-- Location: LCCOMB_X47_Y64_N30
\PELOTA|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan3~16_combout\ = (\VGA|pixel_y\(8) & ((!\PELOTA|Add3~12_combout\) # (!\PELOTA|LessThan3~15_cout\))) # (!\VGA|pixel_y\(8) & (!\PELOTA|LessThan3~15_cout\ & !\PELOTA|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(8),
	datad => \PELOTA|Add3~12_combout\,
	cin => \PELOTA|LessThan3~15_cout\,
	combout => \PELOTA|LessThan3~16_combout\);

-- Location: LCCOMB_X48_Y66_N28
\PELOTA|Bola_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_on~0_combout\ = (!\PELOTA|LessThan1~18_combout\ & (!\PELOTA|LessThan0~16_combout\ & ((\PELOTA|Add3~14_combout\) # (!\PELOTA|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~14_combout\,
	datab => \PELOTA|LessThan1~18_combout\,
	datac => \PELOTA|LessThan0~16_combout\,
	datad => \PELOTA|LessThan3~16_combout\,
	combout => \PELOTA|Bola_on~0_combout\);

-- Location: LCCOMB_X48_Y66_N2
\PELOTA|Bola_on~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Bola_on~1_combout\ = (!\PELOTA|LessThan2~16_combout\ & \PELOTA|Bola_on~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PELOTA|LessThan2~16_combout\,
	datad => \PELOTA|Bola_on~0_combout\,
	combout => \PELOTA|Bola_on~1_combout\);

-- Location: LCCOMB_X47_Y67_N8
\VGA|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_r~2_combout\ = (\VGA|video_on~q\ & ((\PELOTA|Bola_on~1_combout\) # ((\VGA|vga_r~1_combout\ & !\PELOTA|LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|vga_r~1_combout\,
	datab => \VGA|video_on~q\,
	datac => \PELOTA|LessThan9~2_combout\,
	datad => \PELOTA|Bola_on~1_combout\,
	combout => \VGA|vga_r~2_combout\);

-- Location: FF_X47_Y67_N9
\VGA|vga_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_r~q\);

-- Location: FF_X46_Y66_N11
\VGA|pixel_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|cont_hs\(5),
	sload => VCC,
	ena => \VGA|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_x\(5));

-- Location: LCCOMB_X45_Y66_N0
\PELOTA|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~1_cout\ = CARRY((\VGA|pixel_x\(0) & \VGA|pixel_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(0),
	datab => \VGA|pixel_x\(1),
	datad => VCC,
	cout => \PELOTA|Add7~1_cout\);

-- Location: LCCOMB_X45_Y66_N2
\PELOTA|Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~3_cout\ = CARRY((!\PELOTA|Add7~1_cout\) # (!\VGA|pixel_x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(2),
	datad => VCC,
	cin => \PELOTA|Add7~1_cout\,
	cout => \PELOTA|Add7~3_cout\);

-- Location: LCCOMB_X45_Y66_N4
\PELOTA|Add7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~5_cout\ = CARRY((\VGA|pixel_x\(3) & !\PELOTA|Add7~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datad => VCC,
	cin => \PELOTA|Add7~3_cout\,
	cout => \PELOTA|Add7~5_cout\);

-- Location: LCCOMB_X45_Y66_N6
\PELOTA|Add7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~7_cout\ = CARRY((!\PELOTA|Add7~5_cout\) # (!\VGA|pixel_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(4),
	datad => VCC,
	cin => \PELOTA|Add7~5_cout\,
	cout => \PELOTA|Add7~7_cout\);

-- Location: LCCOMB_X45_Y66_N8
\PELOTA|Add7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~9_cout\ = CARRY((\VGA|pixel_x\(5) & !\PELOTA|Add7~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(5),
	datad => VCC,
	cin => \PELOTA|Add7~7_cout\,
	cout => \PELOTA|Add7~9_cout\);

-- Location: LCCOMB_X45_Y66_N12
\PELOTA|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~12_combout\ = (\VGA|pixel_x\(7) & (\PELOTA|Add7~11\ $ (GND))) # (!\VGA|pixel_x\(7) & (!\PELOTA|Add7~11\ & VCC))
-- \PELOTA|Add7~13\ = CARRY((\VGA|pixel_x\(7) & !\PELOTA|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(7),
	datad => VCC,
	cin => \PELOTA|Add7~11\,
	combout => \PELOTA|Add7~12_combout\,
	cout => \PELOTA|Add7~13\);

-- Location: LCCOMB_X45_Y66_N14
\PELOTA|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~14_combout\ = (\VGA|pixel_x\(8) & (!\PELOTA|Add7~13\)) # (!\VGA|pixel_x\(8) & ((\PELOTA|Add7~13\) # (GND)))
-- \PELOTA|Add7~15\ = CARRY((!\PELOTA|Add7~13\) # (!\VGA|pixel_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_x\(8),
	datad => VCC,
	cin => \PELOTA|Add7~13\,
	combout => \PELOTA|Add7~14_combout\,
	cout => \PELOTA|Add7~15\);

-- Location: LCCOMB_X45_Y66_N16
\PELOTA|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add7~16_combout\ = \PELOTA|Add7~15\ $ (!\VGA|pixel_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|pixel_x\(9),
	cin => \PELOTA|Add7~15\,
	combout => \PELOTA|Add7~16_combout\);

-- Location: LCCOMB_X45_Y66_N24
\VGA|vga_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~0_combout\ = (!\PELOTA|Add7~16_combout\ & (((!\PELOTA|Add7~10_combout\ & !\PELOTA|Add7~12_combout\)) # (!\PELOTA|Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add7~10_combout\,
	datab => \PELOTA|Add7~16_combout\,
	datac => \PELOTA|Add7~14_combout\,
	datad => \PELOTA|Add7~12_combout\,
	combout => \VGA|vga_g~0_combout\);

-- Location: LCCOMB_X45_Y66_N28
\PELOTA|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan13~0_combout\ = (\VGA|pixel_x\(3)) # ((\VGA|pixel_x\(1)) # ((\VGA|pixel_x\(4)) # (\VGA|pixel_x\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(3),
	datab => \VGA|pixel_x\(1),
	datac => \VGA|pixel_x\(4),
	datad => \VGA|pixel_x\(2),
	combout => \PELOTA|LessThan13~0_combout\);

-- Location: LCCOMB_X45_Y66_N30
\PELOTA|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan13~1_combout\ = (\VGA|pixel_x\(7)) # ((\VGA|pixel_x\(6) & ((\VGA|pixel_x\(5)) # (\PELOTA|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(5),
	datab => \VGA|pixel_x\(7),
	datac => \VGA|pixel_x\(6),
	datad => \PELOTA|LessThan13~0_combout\,
	combout => \PELOTA|LessThan13~1_combout\);

-- Location: LCCOMB_X45_Y66_N26
\VGA|vga_g~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~1_combout\ = (\PELOTA|LessThan15~0_combout\) # ((\VGA|vga_g~0_combout\) # ((\PELOTA|LessThan13~1_combout\ & \VGA|pixel_x\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|LessThan15~0_combout\,
	datab => \VGA|vga_g~0_combout\,
	datac => \PELOTA|LessThan13~1_combout\,
	datad => \VGA|pixel_x\(8),
	combout => \VGA|vga_g~1_combout\);

-- Location: LCCOMB_X48_Y66_N0
\VGA|vga_g~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~2_combout\ = (\PELOTA|LessThan1~18_combout\) # ((\PELOTA|LessThan2~16_combout\) # ((!\PELOTA|Add3~14_combout\ & \PELOTA|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add3~14_combout\,
	datab => \PELOTA|LessThan1~18_combout\,
	datac => \PELOTA|LessThan2~16_combout\,
	datad => \PELOTA|LessThan3~16_combout\,
	combout => \VGA|vga_g~2_combout\);

-- Location: LCCOMB_X48_Y66_N30
\VGA|vga_g~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~3_combout\ = (\VGA|pixel_x\(9) & ((\PELOTA|LessThan0~16_combout\) # ((\VGA|vga_g~2_combout\)))) # (!\VGA|pixel_x\(9) & (\VGA|vga_g~1_combout\ & ((\PELOTA|LessThan0~16_combout\) # (\VGA|vga_g~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(9),
	datab => \PELOTA|LessThan0~16_combout\,
	datac => \VGA|vga_g~1_combout\,
	datad => \VGA|vga_g~2_combout\,
	combout => \VGA|vga_g~3_combout\);

-- Location: LCCOMB_X48_Y66_N4
\VGA|vga_g~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_g~4_combout\ = (\VGA|video_on~q\ & !\VGA|vga_g~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datac => \VGA|vga_g~3_combout\,
	combout => \VGA|vga_g~4_combout\);

-- Location: FF_X48_Y66_N5
\VGA|vga_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_g~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_g~q\);

-- Location: LCCOMB_X46_Y66_N22
\PELOTA|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan4~0_combout\ = (!\PELOTA|Add0~14_combout\ & (!\PELOTA|Add0~12_combout\ & (!\PELOTA|Add0~8_combout\ & !\PELOTA|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~14_combout\,
	datab => \PELOTA|Add0~12_combout\,
	datac => \PELOTA|Add0~8_combout\,
	datad => \PELOTA|Add0~10_combout\,
	combout => \PELOTA|LessThan4~0_combout\);

-- Location: LCCOMB_X47_Y66_N2
\VGA|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~0_combout\ = (\PELOTA|Add0~6_combout\ & (((!\PELOTA|LessThan9~0_combout\)) # (!\VGA|pixel_x\(5)))) # (!\PELOTA|Add0~6_combout\ & (!\PELOTA|LessThan4~0_combout\ & ((!\PELOTA|LessThan9~0_combout\) # (!\VGA|pixel_x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~6_combout\,
	datab => \VGA|pixel_x\(5),
	datac => \PELOTA|LessThan9~0_combout\,
	datad => \PELOTA|LessThan4~0_combout\,
	combout => \VGA|vga_b~0_combout\);

-- Location: LCCOMB_X46_Y66_N20
\VGA|vga_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~1_combout\ = (!\VGA|pixel_x\(6) & (!\VGA|pixel_x\(8) & (!\VGA|pixel_x\(7) & !\VGA|pixel_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(6),
	datab => \VGA|pixel_x\(8),
	datac => \VGA|pixel_x\(7),
	datad => \VGA|pixel_x\(9),
	combout => \VGA|vga_b~1_combout\);

-- Location: LCCOMB_X46_Y66_N2
\VGA|vga_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~2_combout\ = (\VGA|vga_b~1_combout\ & ((!\VGA|pixel_x\(5)) # (!\VGA|pixel_x\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_x\(4),
	datab => \VGA|vga_b~1_combout\,
	datad => \VGA|pixel_x\(5),
	combout => \VGA|vga_b~2_combout\);

-- Location: LCCOMB_X46_Y66_N28
\VGA|vga_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~3_combout\ = (\VGA|vga_b~2_combout\ & ((\PELOTA|Add0~4_combout\) # ((\PELOTA|Add0~2_combout\) # (!\PELOTA|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add0~4_combout\,
	datab => \VGA|vga_b~2_combout\,
	datac => \PELOTA|LessThan4~0_combout\,
	datad => \PELOTA|Add0~2_combout\,
	combout => \VGA|vga_b~3_combout\);

-- Location: LCCOMB_X46_Y65_N14
\PELOTA|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~1_cout\ = CARRY(\VGA|pixel_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(0),
	datad => VCC,
	cout => \PELOTA|LessThan7~1_cout\);

-- Location: LCCOMB_X46_Y65_N16
\PELOTA|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~3_cout\ = CARRY((\VGA|pixel_y\(1) & (\PELOTA|Pala_izq_Y\(1) & !\PELOTA|LessThan7~1_cout\)) # (!\VGA|pixel_y\(1) & ((\PELOTA|Pala_izq_Y\(1)) # (!\PELOTA|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \PELOTA|Pala_izq_Y\(1),
	datad => VCC,
	cin => \PELOTA|LessThan7~1_cout\,
	cout => \PELOTA|LessThan7~3_cout\);

-- Location: LCCOMB_X46_Y65_N18
\PELOTA|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~5_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\PELOTA|LessThan7~3_cout\) # (!\PELOTA|Pala_izq_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\PELOTA|Pala_izq_Y\(2) & !\PELOTA|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \PELOTA|Pala_izq_Y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan7~3_cout\,
	cout => \PELOTA|LessThan7~5_cout\);

-- Location: LCCOMB_X46_Y65_N20
\PELOTA|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~7_cout\ = CARRY((\PELOTA|Pala_izq_Y\(3) & (!\VGA|pixel_y\(3) & !\PELOTA|LessThan7~5_cout\)) # (!\PELOTA|Pala_izq_Y\(3) & ((!\PELOTA|LessThan7~5_cout\) # (!\VGA|pixel_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(3),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \PELOTA|LessThan7~5_cout\,
	cout => \PELOTA|LessThan7~7_cout\);

-- Location: LCCOMB_X46_Y65_N22
\PELOTA|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~9_cout\ = CARRY((\VGA|pixel_y\(4) & ((!\PELOTA|LessThan7~7_cout\) # (!\PELOTA|Add4~0_combout\))) # (!\VGA|pixel_y\(4) & (!\PELOTA|Add4~0_combout\ & !\PELOTA|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \PELOTA|Add4~0_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan7~7_cout\,
	cout => \PELOTA|LessThan7~9_cout\);

-- Location: LCCOMB_X46_Y65_N24
\PELOTA|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~11_cout\ = CARRY((\VGA|pixel_y\(5) & (\PELOTA|Add4~2_combout\ & !\PELOTA|LessThan7~9_cout\)) # (!\VGA|pixel_y\(5) & ((\PELOTA|Add4~2_combout\) # (!\PELOTA|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(5),
	datab => \PELOTA|Add4~2_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan7~9_cout\,
	cout => \PELOTA|LessThan7~11_cout\);

-- Location: LCCOMB_X46_Y65_N26
\PELOTA|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~13_cout\ = CARRY((\VGA|pixel_y\(6) & ((!\PELOTA|LessThan7~11_cout\) # (!\PELOTA|Add4~4_combout\))) # (!\VGA|pixel_y\(6) & (!\PELOTA|Add4~4_combout\ & !\PELOTA|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \PELOTA|Add4~4_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan7~11_cout\,
	cout => \PELOTA|LessThan7~13_cout\);

-- Location: LCCOMB_X46_Y65_N28
\PELOTA|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~15_cout\ = CARRY((\VGA|pixel_y\(7) & (\PELOTA|Add4~6_combout\ & !\PELOTA|LessThan7~13_cout\)) # (!\VGA|pixel_y\(7) & ((\PELOTA|Add4~6_combout\) # (!\PELOTA|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(7),
	datab => \PELOTA|Add4~6_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan7~13_cout\,
	cout => \PELOTA|LessThan7~15_cout\);

-- Location: LCCOMB_X46_Y65_N30
\PELOTA|LessThan7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan7~16_combout\ = (\VGA|pixel_y\(8) & ((!\PELOTA|Add4~8_combout\) # (!\PELOTA|LessThan7~15_cout\))) # (!\VGA|pixel_y\(8) & (!\PELOTA|LessThan7~15_cout\ & !\PELOTA|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(8),
	datad => \PELOTA|Add4~8_combout\,
	cin => \PELOTA|LessThan7~15_cout\,
	combout => \PELOTA|LessThan7~16_combout\);

-- Location: LCCOMB_X47_Y67_N2
\VGA|pixel_y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|pixel_y[5]~feeder_combout\ = \VGA|cont_vs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|cont_vs\(5),
	combout => \VGA|pixel_y[5]~feeder_combout\);

-- Location: FF_X47_Y67_N3
\VGA|pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|pixel_y[5]~feeder_combout\,
	ena => \VGA|LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|pixel_y\(5));

-- Location: LCCOMB_X46_Y65_N12
\PELOTA|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~0_combout\ = (\VGA|pixel_y\(6) & ((\VGA|pixel_y\(5)) # ((\VGA|pixel_y\(3) & \VGA|pixel_y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(6),
	datab => \VGA|pixel_y\(3),
	datac => \VGA|pixel_y\(5),
	datad => \VGA|pixel_y\(4),
	combout => \PELOTA|Add5~0_combout\);

-- Location: LCCOMB_X45_Y65_N2
\PELOTA|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~1_combout\ = (\VGA|pixel_y\(7) & (\PELOTA|Add5~0_combout\ & \VGA|pixel_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(7),
	datac => \PELOTA|Add5~0_combout\,
	datad => \VGA|pixel_y\(8),
	combout => \PELOTA|Add5~1_combout\);

-- Location: LCCOMB_X45_Y65_N0
\PELOTA|Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~3_combout\ = \PELOTA|Add5~0_combout\ $ (\VGA|pixel_y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PELOTA|Add5~0_combout\,
	datad => \VGA|pixel_y\(7),
	combout => \PELOTA|Add5~3_combout\);

-- Location: LCCOMB_X45_Y65_N4
\PELOTA|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~4_combout\ = \VGA|pixel_y\(6) $ (((\VGA|pixel_y\(5)) # ((\VGA|pixel_y\(4) & \VGA|pixel_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(4),
	datab => \VGA|pixel_y\(6),
	datac => \VGA|pixel_y\(5),
	datad => \VGA|pixel_y\(3),
	combout => \PELOTA|Add5~4_combout\);

-- Location: LCCOMB_X45_Y65_N26
\PELOTA|Add5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|Add5~5_combout\ = \VGA|pixel_y\(5) $ (((\VGA|pixel_y\(3) & \VGA|pixel_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|pixel_y\(3),
	datac => \VGA|pixel_y\(5),
	datad => \VGA|pixel_y\(4),
	combout => \PELOTA|Add5~5_combout\);

-- Location: LCCOMB_X45_Y65_N6
\PELOTA|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~1_cout\ = CARRY((!\VGA|pixel_y\(1) & \PELOTA|Pala_izq_Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(1),
	datab => \PELOTA|Pala_izq_Y\(1),
	datad => VCC,
	cout => \PELOTA|LessThan6~1_cout\);

-- Location: LCCOMB_X45_Y65_N8
\PELOTA|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~3_cout\ = CARRY((\VGA|pixel_y\(2) & ((!\PELOTA|LessThan6~1_cout\) # (!\PELOTA|Pala_izq_Y\(2)))) # (!\VGA|pixel_y\(2) & (!\PELOTA|Pala_izq_Y\(2) & !\PELOTA|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|pixel_y\(2),
	datab => \PELOTA|Pala_izq_Y\(2),
	datad => VCC,
	cin => \PELOTA|LessThan6~1_cout\,
	cout => \PELOTA|LessThan6~3_cout\);

-- Location: LCCOMB_X45_Y65_N10
\PELOTA|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~5_cout\ = CARRY((\PELOTA|Pala_izq_Y\(3) & ((\VGA|pixel_y\(3)) # (!\PELOTA|LessThan6~3_cout\))) # (!\PELOTA|Pala_izq_Y\(3) & (\VGA|pixel_y\(3) & !\PELOTA|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(3),
	datab => \VGA|pixel_y\(3),
	datad => VCC,
	cin => \PELOTA|LessThan6~3_cout\,
	cout => \PELOTA|LessThan6~5_cout\);

-- Location: LCCOMB_X45_Y65_N12
\PELOTA|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~7_cout\ = CARRY((\PELOTA|Add5~6_combout\ & ((!\PELOTA|LessThan6~5_cout\) # (!\PELOTA|Pala_izq_Y\(4)))) # (!\PELOTA|Add5~6_combout\ & (!\PELOTA|Pala_izq_Y\(4) & !\PELOTA|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add5~6_combout\,
	datab => \PELOTA|Pala_izq_Y\(4),
	datad => VCC,
	cin => \PELOTA|LessThan6~5_cout\,
	cout => \PELOTA|LessThan6~7_cout\);

-- Location: LCCOMB_X45_Y65_N14
\PELOTA|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~9_cout\ = CARRY((\PELOTA|Pala_izq_Y\(5) & ((\PELOTA|Add5~5_combout\) # (!\PELOTA|LessThan6~7_cout\))) # (!\PELOTA|Pala_izq_Y\(5) & (\PELOTA|Add5~5_combout\ & !\PELOTA|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(5),
	datab => \PELOTA|Add5~5_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan6~7_cout\,
	cout => \PELOTA|LessThan6~9_cout\);

-- Location: LCCOMB_X45_Y65_N16
\PELOTA|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~11_cout\ = CARRY((\PELOTA|Pala_izq_Y\(6) & (\PELOTA|Add5~4_combout\ & !\PELOTA|LessThan6~9_cout\)) # (!\PELOTA|Pala_izq_Y\(6) & ((\PELOTA|Add5~4_combout\) # (!\PELOTA|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(6),
	datab => \PELOTA|Add5~4_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan6~9_cout\,
	cout => \PELOTA|LessThan6~11_cout\);

-- Location: LCCOMB_X45_Y65_N18
\PELOTA|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~13_cout\ = CARRY((\PELOTA|Pala_izq_Y\(7) & ((!\PELOTA|LessThan6~11_cout\) # (!\PELOTA|Add5~3_combout\))) # (!\PELOTA|Pala_izq_Y\(7) & (!\PELOTA|Add5~3_combout\ & !\PELOTA|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Pala_izq_Y\(7),
	datab => \PELOTA|Add5~3_combout\,
	datad => VCC,
	cin => \PELOTA|LessThan6~11_cout\,
	cout => \PELOTA|LessThan6~13_cout\);

-- Location: LCCOMB_X45_Y65_N20
\PELOTA|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~15_cout\ = CARRY((\PELOTA|Add5~2_combout\ & ((!\PELOTA|LessThan6~13_cout\) # (!\PELOTA|Pala_izq_Y\(8)))) # (!\PELOTA|Add5~2_combout\ & (!\PELOTA|Pala_izq_Y\(8) & !\PELOTA|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add5~2_combout\,
	datab => \PELOTA|Pala_izq_Y\(8),
	datad => VCC,
	cin => \PELOTA|LessThan6~13_cout\,
	cout => \PELOTA|LessThan6~15_cout\);

-- Location: LCCOMB_X45_Y65_N22
\PELOTA|LessThan6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PELOTA|LessThan6~16_combout\ = (\PELOTA|Add5~1_combout\ & (!\PELOTA|LessThan6~15_cout\ & \PELOTA|Pala_izq_Y\(9))) # (!\PELOTA|Add5~1_combout\ & ((\PELOTA|Pala_izq_Y\(9)) # (!\PELOTA|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PELOTA|Add5~1_combout\,
	datad => \PELOTA|Pala_izq_Y\(9),
	cin => \PELOTA|LessThan6~15_cout\,
	combout => \PELOTA|LessThan6~16_combout\);

-- Location: LCCOMB_X46_Y65_N10
\VGA|vga_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~4_combout\ = (\VGA|vga_b~3_combout\ & (!\PELOTA|LessThan6~16_combout\ & ((\PELOTA|Add4~10_combout\) # (!\PELOTA|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PELOTA|Add4~10_combout\,
	datab => \VGA|vga_b~3_combout\,
	datac => \PELOTA|LessThan7~16_combout\,
	datad => \PELOTA|LessThan6~16_combout\,
	combout => \VGA|vga_b~4_combout\);

-- Location: LCCOMB_X48_Y66_N26
\VGA|vga_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_b~5_combout\ = (\VGA|video_on~q\ & (((\VGA|vga_b~0_combout\ & \VGA|vga_b~4_combout\)) # (!\VGA|vga_g~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|video_on~q\,
	datab => \VGA|vga_b~0_combout\,
	datac => \VGA|vga_g~3_combout\,
	datad => \VGA|vga_b~4_combout\,
	combout => \VGA|vga_b~5_combout\);

-- Location: FF_X48_Y66_N27
\VGA|vga_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_b~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_b~q\);

-- Location: FF_X47_Y70_N5
\VGA|vga_blank_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|video_on~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_blank_N~q\);

-- Location: LCCOMB_X46_Y66_N0
\VGA|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~1_combout\ = (!\VGA|cont_hs\(8) & (\VGA|cont_hs\(9) & \VGA|cont_hs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(8),
	datab => \VGA|cont_hs\(9),
	datac => \VGA|cont_hs\(7),
	combout => \VGA|process_0~1_combout\);

-- Location: LCCOMB_X46_Y66_N30
\VGA|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = ((\VGA|cont_hs\(6) & (\VGA|cont_hs\(5) & \VGA|cont_hs\(4))) # (!\VGA|cont_hs\(6) & (!\VGA|cont_hs\(5) & !\VGA|cont_hs\(4)))) # (!\VGA|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|cont_hs\(6),
	datab => \VGA|cont_hs\(5),
	datac => \VGA|cont_hs\(4),
	datad => \VGA|process_0~1_combout\,
	combout => \VGA|process_0~2_combout\);

-- Location: FF_X46_Y66_N31
\VGA|hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|hs~q\);

-- Location: FF_X46_Y70_N17
\VGA|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	asdata => \VGA|hs~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_hs~q\);

-- Location: LCCOMB_X47_Y68_N16
\VGA|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = (\VGA|process_0~3_combout\) # ((\VGA|cont_vs\(9)) # (!\VGA|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~3_combout\,
	datac => \VGA|LessThan6~0_combout\,
	datad => \VGA|cont_vs\(9),
	combout => \VGA|process_0~4_combout\);

-- Location: FF_X47_Y68_N17
\VGA|vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vs~q\);

-- Location: LCCOMB_X55_Y72_N0
\VGA|vga_vs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA|vga_vs~feeder_combout\ = \VGA|vs~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|vs~q\,
	combout => \VGA|vga_vs~feeder_combout\);

-- Location: FF_X55_Y72_N1
\VGA|vga_vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL|altpll_component|_clk0~clkctrl_outclk\,
	d => \VGA|vga_vs~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|vga_vs~q\);
END structure;


