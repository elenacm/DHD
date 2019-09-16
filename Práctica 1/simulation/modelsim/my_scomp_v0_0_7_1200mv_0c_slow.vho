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

-- DATE "04/30/2019 11:54:06"

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

ENTITY 	my_scomp_v0_0 IS
    PORT (
	reloj : IN std_logic;
	reset : IN std_logic;
	IR_out : OUT std_logic_vector(15 DOWNTO 0);
	AC_out : OUT std_logic_vector(15 DOWNTO 0);
	PC_out : OUT std_logic_vector(7 DOWNTO 0);
	IO_input : IN std_logic_vector(7 DOWNTO 0);
	IO_output : OUT std_logic_vector(7 DOWNTO 0)
	);
END my_scomp_v0_0;

-- Design Ports Information
-- IR_out[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[5]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[8]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[9]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[10]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[11]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[12]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[13]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[14]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[15]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[8]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[13]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_out[15]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_output[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO_input[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF my_scomp_v0_0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_IR_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AC_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IO_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IO_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PROC|Add1~4_combout\ : std_logic;
SIGNAL \PROC|Add1~7_combout\ : std_logic;
SIGNAL \PROC|Add1~19_combout\ : std_logic;
SIGNAL \PROC|Add1~28_combout\ : std_logic;
SIGNAL \PROC|Add1~37_combout\ : std_logic;
SIGNAL \PROC|Add1~46_combout\ : std_logic;
SIGNAL \PROC|Add0~2_combout\ : std_logic;
SIGNAL \PROC|Add0~4_combout\ : std_logic;
SIGNAL \PROC|Add0~6_combout\ : std_logic;
SIGNAL \PROC|Add0~8_combout\ : std_logic;
SIGNAL \PROC|Add0~12_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~2_combout\ : std_logic;
SIGNAL \PROC|WideOr1~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~16_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~19_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~20_combout\ : std_logic;
SIGNAL \PROC|Add1~9_combout\ : std_logic;
SIGNAL \PROC|Add1~15_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~31_combout\ : std_logic;
SIGNAL \PROC|Selector17~3_combout\ : std_logic;
SIGNAL \PROC|Selector17~7_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \PROC|Selector16~5_combout\ : std_logic;
SIGNAL \PROC|Add1~24_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \PROC|Add1~27_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \PROC|Selector14~1_combout\ : std_logic;
SIGNAL \PROC|Selector14~2_combout\ : std_logic;
SIGNAL \PROC|Add1~33_combout\ : std_logic;
SIGNAL \PROC|Selector13~1_combout\ : std_logic;
SIGNAL \PROC|Selector13~6_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \PROC|Selector12~4_combout\ : std_logic;
SIGNAL \PROC|Selector12~5_combout\ : std_logic;
SIGNAL \PROC|Selector11~0_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \PROC|Selector11~1_combout\ : std_logic;
SIGNAL \PROC|Selector11~2_combout\ : std_logic;
SIGNAL \PROC|Selector11~3_combout\ : std_logic;
SIGNAL \PROC|Selector11~4_combout\ : std_logic;
SIGNAL \PROC|Add1~42_combout\ : std_logic;
SIGNAL \PROC|Selector10~0_combout\ : std_logic;
SIGNAL \PROC|Selector10~1_combout\ : std_logic;
SIGNAL \PROC|Selector10~2_combout\ : std_logic;
SIGNAL \PROC|Selector10~3_combout\ : std_logic;
SIGNAL \PROC|Selector10~4_combout\ : std_logic;
SIGNAL \PROC|Add1~45_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \PROC|Selector9~4_combout\ : std_logic;
SIGNAL \PROC|Equal0~1_combout\ : std_logic;
SIGNAL \PROC|PC[0]~0_combout\ : std_logic;
SIGNAL \PROC|Selector4~0_combout\ : std_logic;
SIGNAL \PROC|Selector1~0_combout\ : std_logic;
SIGNAL \PROC|WideOr2~1_combout\ : std_logic;
SIGNAL \PROC|state~24_combout\ : std_logic;
SIGNAL \IO_input[1]~input_o\ : std_logic;
SIGNAL \IO_input[4]~input_o\ : std_logic;
SIGNAL \IO_input[7]~input_o\ : std_logic;
SIGNAL \PROC|RT[9]~feeder_combout\ : std_logic;
SIGNAL \PROC|RT[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|RT[11]~feeder_combout\ : std_logic;
SIGNAL \IR_out[0]~output_o\ : std_logic;
SIGNAL \IR_out[1]~output_o\ : std_logic;
SIGNAL \IR_out[2]~output_o\ : std_logic;
SIGNAL \IR_out[3]~output_o\ : std_logic;
SIGNAL \IR_out[4]~output_o\ : std_logic;
SIGNAL \IR_out[5]~output_o\ : std_logic;
SIGNAL \IR_out[6]~output_o\ : std_logic;
SIGNAL \IR_out[7]~output_o\ : std_logic;
SIGNAL \IR_out[8]~output_o\ : std_logic;
SIGNAL \IR_out[9]~output_o\ : std_logic;
SIGNAL \IR_out[10]~output_o\ : std_logic;
SIGNAL \IR_out[11]~output_o\ : std_logic;
SIGNAL \IR_out[12]~output_o\ : std_logic;
SIGNAL \IR_out[13]~output_o\ : std_logic;
SIGNAL \IR_out[14]~output_o\ : std_logic;
SIGNAL \IR_out[15]~output_o\ : std_logic;
SIGNAL \AC_out[0]~output_o\ : std_logic;
SIGNAL \AC_out[1]~output_o\ : std_logic;
SIGNAL \AC_out[2]~output_o\ : std_logic;
SIGNAL \AC_out[3]~output_o\ : std_logic;
SIGNAL \AC_out[4]~output_o\ : std_logic;
SIGNAL \AC_out[5]~output_o\ : std_logic;
SIGNAL \AC_out[6]~output_o\ : std_logic;
SIGNAL \AC_out[7]~output_o\ : std_logic;
SIGNAL \AC_out[8]~output_o\ : std_logic;
SIGNAL \AC_out[9]~output_o\ : std_logic;
SIGNAL \AC_out[10]~output_o\ : std_logic;
SIGNAL \AC_out[11]~output_o\ : std_logic;
SIGNAL \AC_out[12]~output_o\ : std_logic;
SIGNAL \AC_out[13]~output_o\ : std_logic;
SIGNAL \AC_out[14]~output_o\ : std_logic;
SIGNAL \AC_out[15]~output_o\ : std_logic;
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \IO_output[0]~output_o\ : std_logic;
SIGNAL \IO_output[1]~output_o\ : std_logic;
SIGNAL \IO_output[2]~output_o\ : std_logic;
SIGNAL \IO_output[3]~output_o\ : std_logic;
SIGNAL \IO_output[4]~output_o\ : std_logic;
SIGNAL \IO_output[5]~output_o\ : std_logic;
SIGNAL \IO_output[6]~output_o\ : std_logic;
SIGNAL \IO_output[7]~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \PROC|state.decode~q\ : std_logic;
SIGNAL \PROC|Add0~1\ : std_logic;
SIGNAL \PROC|Add0~3\ : std_logic;
SIGNAL \PROC|Add0~5\ : std_logic;
SIGNAL \PROC|Add0~7\ : std_logic;
SIGNAL \PROC|Add0~9\ : std_logic;
SIGNAL \PROC|Add0~11\ : std_logic;
SIGNAL \PROC|Add0~13\ : std_logic;
SIGNAL \PROC|Add0~14_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \PROC|Selector22~6_combout\ : std_logic;
SIGNAL \PROC|state~25_combout\ : std_logic;
SIGNAL \PROC|state.shr0~q\ : std_logic;
SIGNAL \PROC|state~29_combout\ : std_logic;
SIGNAL \PROC|state.shl0~q\ : std_logic;
SIGNAL \PROC|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \PROC|state~38_combout\ : std_logic;
SIGNAL \PROC|state.add2~q\ : std_logic;
SIGNAL \PROC|state.add1~q\ : std_logic;
SIGNAL \PROC|Add1~12_combout\ : std_logic;
SIGNAL \PROC|state~39_combout\ : std_logic;
SIGNAL \PROC|state.sub1~q\ : std_logic;
SIGNAL \PROC|RT[0]~0_combout\ : std_logic;
SIGNAL \PROC|Add1~6_combout\ : std_logic;
SIGNAL \PROC|Add1~1_combout\ : std_logic;
SIGNAL \PROC|Add1~3_cout\ : std_logic;
SIGNAL \PROC|Add1~5\ : std_logic;
SIGNAL \PROC|Add1~8\ : std_logic;
SIGNAL \PROC|Add1~11\ : std_logic;
SIGNAL \PROC|Add1~13_combout\ : std_logic;
SIGNAL \PROC|state~26_combout\ : std_logic;
SIGNAL \PROC|state.in1~q\ : std_logic;
SIGNAL \PROC|Selector19~5_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \PROC|state.sub0~q\ : std_logic;
SIGNAL \PROC|Add1~14\ : std_logic;
SIGNAL \PROC|Add1~16_combout\ : std_logic;
SIGNAL \PROC|Selector19~6_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~8_combout\ : std_logic;
SIGNAL \PROC|Selector18~6_combout\ : std_logic;
SIGNAL \PROC|Selector18~7_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \PROC|AC[4]~7_combout\ : std_logic;
SIGNAL \PROC|AC[0]~3_combout\ : std_logic;
SIGNAL \PROC|Add1~36_combout\ : std_logic;
SIGNAL \PROC|AC[9]~9_combout\ : std_logic;
SIGNAL \PROC|Add1~30_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \PROC|Selector17~2_combout\ : std_logic;
SIGNAL \PROC|Selector17~6_combout\ : std_logic;
SIGNAL \PROC|Add1~21_combout\ : std_logic;
SIGNAL \PROC|Add1~18_combout\ : std_logic;
SIGNAL \PROC|Add1~17\ : std_logic;
SIGNAL \PROC|Add1~20\ : std_logic;
SIGNAL \PROC|Add1~22_combout\ : std_logic;
SIGNAL \IO_input[6]~input_o\ : std_logic;
SIGNAL \PROC|Selector13~5_combout\ : std_logic;
SIGNAL \PROC|Selector15~10_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~17_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~27_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~28_combout\ : std_logic;
SIGNAL \PROC|AC[0]~5_combout\ : std_logic;
SIGNAL \PROC|Selector12~0_combout\ : std_logic;
SIGNAL \PROC|Selector12~1_combout\ : std_logic;
SIGNAL \PROC|Selector15~0_combout\ : std_logic;
SIGNAL \PROC|Selector15~3_combout\ : std_logic;
SIGNAL \PROC|Selector14~0_combout\ : std_logic;
SIGNAL \PROC|Add1~31_combout\ : std_logic;
SIGNAL \PROC|Selector15~1_combout\ : std_logic;
SIGNAL \PROC|Selector14~3_combout\ : std_logic;
SIGNAL \PROC|Selector14~4_combout\ : std_logic;
SIGNAL \PROC|Selector14~5_combout\ : std_logic;
SIGNAL \PROC|Selector14~6_combout\ : std_logic;
SIGNAL \PROC|state.reset_pc~feeder_combout\ : std_logic;
SIGNAL \PROC|state.reset_pc~q\ : std_logic;
SIGNAL \PROC|state~28_combout\ : std_logic;
SIGNAL \PROC|state.load1~q\ : std_logic;
SIGNAL \PROC|WideOr1~1_combout\ : std_logic;
SIGNAL \PROC|AC[8]~10_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \PROC|Selector12~3_combout\ : std_logic;
SIGNAL \IO_input[3]~input_o\ : std_logic;
SIGNAL \PROC|Selector12~2_combout\ : std_logic;
SIGNAL \PROC|Selector12~6_combout\ : std_logic;
SIGNAL \PROC|Selector12~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~4_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~23_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~24_combout\ : std_logic;
SIGNAL \PROC|Selector17~4_combout\ : std_logic;
SIGNAL \PROC|Selector17~5_combout\ : std_logic;
SIGNAL \PROC|Selector17~9_combout\ : std_logic;
SIGNAL \PROC|Selector17~8_combout\ : std_logic;
SIGNAL \PROC|AC[2]~12_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \PROC|Selector15~2_combout\ : std_logic;
SIGNAL \IO_input[0]~input_o\ : std_logic;
SIGNAL \PROC|Selector15~5_combout\ : std_logic;
SIGNAL \PROC|Selector15~6_combout\ : std_logic;
SIGNAL \PROC|Selector15~7_combout\ : std_logic;
SIGNAL \PROC|Selector15~4_combout\ : std_logic;
SIGNAL \PROC|Selector15~8_combout\ : std_logic;
SIGNAL \PROC|Selector15~9_combout\ : std_logic;
SIGNAL \PROC|Selector16~9_combout\ : std_logic;
SIGNAL \PROC|Add1~23\ : std_logic;
SIGNAL \PROC|Add1~25_combout\ : std_logic;
SIGNAL \PROC|Selector16~6_combout\ : std_logic;
SIGNAL \PROC|Selector16~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~18_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~12_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~26_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \PROC|Selector16~3_combout\ : std_logic;
SIGNAL \PROC|Selector16~2_combout\ : std_logic;
SIGNAL \PROC|Selector16~4_combout\ : std_logic;
SIGNAL \PROC|Selector16~8_combout\ : std_logic;
SIGNAL \PROC|Add1~26\ : std_logic;
SIGNAL \PROC|Add1~29\ : std_logic;
SIGNAL \PROC|Add1~32\ : std_logic;
SIGNAL \PROC|Add1~34_combout\ : std_logic;
SIGNAL \IO_input[2]~input_o\ : std_logic;
SIGNAL \PROC|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \PROC|Selector13~0_combout\ : std_logic;
SIGNAL \PROC|Selector9~1_combout\ : std_logic;
SIGNAL \PROC|RT[14]~feeder_combout\ : std_logic;
SIGNAL \PROC|Selector9~3_combout\ : std_logic;
SIGNAL \PROC|AC[8]~11_combout\ : std_logic;
SIGNAL \PROC|Selector9~2_combout\ : std_logic;
SIGNAL \PROC|Selector9~0_combout\ : std_logic;
SIGNAL \PROC|Selector9~5_combout\ : std_logic;
SIGNAL \PROC|Selector9~6_combout\ : std_logic;
SIGNAL \PROC|Selector9~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~22_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~25_combout\ : std_logic;
SIGNAL \PROC|Selector13~2_combout\ : std_logic;
SIGNAL \PROC|Selector13~3_combout\ : std_logic;
SIGNAL \PROC|Selector13~4_combout\ : std_logic;
SIGNAL \PROC|Selector13~7_combout\ : std_logic;
SIGNAL \PROC|Add1~35\ : std_logic;
SIGNAL \PROC|Add1~38\ : std_logic;
SIGNAL \PROC|Add1~41\ : std_logic;
SIGNAL \PROC|Add1~43_combout\ : std_logic;
SIGNAL \IO_input[5]~input_o\ : std_logic;
SIGNAL \PROC|Selector10~5_combout\ : std_logic;
SIGNAL \PROC|Selector10~6_combout\ : std_logic;
SIGNAL \PROC|Selector10~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~15_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~30_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~13_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~14_combout\ : std_logic;
SIGNAL \PROC|Selector18~3_combout\ : std_logic;
SIGNAL \PROC|Selector18~4_combout\ : std_logic;
SIGNAL \PROC|Selector18~5_combout\ : std_logic;
SIGNAL \PROC|Selector18~8_combout\ : std_logic;
SIGNAL \PROC|Selector18~9_combout\ : std_logic;
SIGNAL \PROC|RT[12]~feeder_combout\ : std_logic;
SIGNAL \PROC|Add1~39_combout\ : std_logic;
SIGNAL \PROC|Add1~40_combout\ : std_logic;
SIGNAL \PROC|Selector11~5_combout\ : std_logic;
SIGNAL \PROC|Selector11~6_combout\ : std_logic;
SIGNAL \PROC|Selector11~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~7_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~29_combout\ : std_logic;
SIGNAL \PROC|AC[0]~8_combout\ : std_logic;
SIGNAL \PROC|Selector19~2_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~5_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~6_combout\ : std_logic;
SIGNAL \PROC|Selector19~3_combout\ : std_logic;
SIGNAL \PROC|Selector19~4_combout\ : std_logic;
SIGNAL \PROC|Selector19~7_combout\ : std_logic;
SIGNAL \PROC|Selector19~8_combout\ : std_logic;
SIGNAL \PROC|IR[0]~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~10_combout\ : std_logic;
SIGNAL \PROC|AC[0]~2_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \PROC|Selector20~0_combout\ : std_logic;
SIGNAL \PROC|Selector20~1_combout\ : std_logic;
SIGNAL \PROC|Selector20~2_combout\ : std_logic;
SIGNAL \PROC|Selector20~3_combout\ : std_logic;
SIGNAL \PROC|Selector20~4_combout\ : std_logic;
SIGNAL \PROC|Selector20~5_combout\ : std_logic;
SIGNAL \PROC|Selector20~6_combout\ : std_logic;
SIGNAL \PROC|Selector18~2_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \PROC|Add1~10_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~3_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~1_combout\ : std_logic;
SIGNAL \PROC|Selector21~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~21_combout\ : std_logic;
SIGNAL \PROC|Selector21~1_combout\ : std_logic;
SIGNAL \PROC|Selector21~2_combout\ : std_logic;
SIGNAL \PROC|Selector21~3_combout\ : std_logic;
SIGNAL \PROC|Selector21~4_combout\ : std_logic;
SIGNAL \PROC|Selector21~5_combout\ : std_logic;
SIGNAL \PROC|Selector21~6_combout\ : std_logic;
SIGNAL \PROC|Selector24~0_combout\ : std_logic;
SIGNAL \PROC|state~30_combout\ : std_logic;
SIGNAL \PROC|state~40_combout\ : std_logic;
SIGNAL \PROC|state.nand1~q\ : std_logic;
SIGNAL \PROC|state.nand0~q\ : std_logic;
SIGNAL \PROC|Selector8~0_combout\ : std_logic;
SIGNAL \PROC|Add1~48_combout\ : std_logic;
SIGNAL \PROC|Add1~44\ : std_logic;
SIGNAL \PROC|Add1~47\ : std_logic;
SIGNAL \PROC|Add1~49_combout\ : std_logic;
SIGNAL \PROC|Selector8~2_combout\ : std_logic;
SIGNAL \PROC|Selector8~3_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \PROC|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \PROC|Selector8~1_combout\ : std_logic;
SIGNAL \PROC|Selector8~4_combout\ : std_logic;
SIGNAL \PROC|Selector8~5_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~11_combout\ : std_logic;
SIGNAL \PROC|Selector22~0_combout\ : std_logic;
SIGNAL \PROC|Selector22~1_combout\ : std_logic;
SIGNAL \PROC|Selector22~2_combout\ : std_logic;
SIGNAL \PROC|Selector22~3_combout\ : std_logic;
SIGNAL \PROC|Selector22~4_combout\ : std_logic;
SIGNAL \PROC|Selector22~5_combout\ : std_logic;
SIGNAL \PROC|Selector22~7_combout\ : std_logic;
SIGNAL \PROC|AC[0]~6_combout\ : std_logic;
SIGNAL \PROC|Selector0~0_combout\ : std_logic;
SIGNAL \PROC|Selector0~1_combout\ : std_logic;
SIGNAL \PROC|state~32_combout\ : std_logic;
SIGNAL \PROC|state.jzero~q\ : std_logic;
SIGNAL \PROC|state~31_combout\ : std_logic;
SIGNAL \PROC|state.jpos~q\ : std_logic;
SIGNAL \PROC|PC[0]~1_combout\ : std_logic;
SIGNAL \PROC|state.store1~q\ : std_logic;
SIGNAL \PROC|Selector32~0_combout\ : std_logic;
SIGNAL \PROC|Selector25~0_combout\ : std_logic;
SIGNAL \PROC|Selector26~0_combout\ : std_logic;
SIGNAL \PROC|state~27_combout\ : std_logic;
SIGNAL \PROC|state~37_combout\ : std_logic;
SIGNAL \PROC|state.store0~q\ : std_logic;
SIGNAL \PROC|WideOr2~0_combout\ : std_logic;
SIGNAL \PROC|Selector32~1_combout\ : std_logic;
SIGNAL \PROC|Add0~10_combout\ : std_logic;
SIGNAL \PROC|Selector2~0_combout\ : std_logic;
SIGNAL \PROC|Selector2~1_combout\ : std_logic;
SIGNAL \PROC|Selector27~0_combout\ : std_logic;
SIGNAL \PROC|Selector3~0_combout\ : std_logic;
SIGNAL \PROC|Selector3~1_combout\ : std_logic;
SIGNAL \PROC|Selector28~0_combout\ : std_logic;
SIGNAL \PROC|state~33_combout\ : std_logic;
SIGNAL \PROC|state.jneg~q\ : std_logic;
SIGNAL \PROC|Equal0~0_combout\ : std_logic;
SIGNAL \PROC|Equal0~2_combout\ : std_logic;
SIGNAL \PROC|Equal0~3_combout\ : std_logic;
SIGNAL \PROC|Equal0~4_combout\ : std_logic;
SIGNAL \PROC|Selector6~2_combout\ : std_logic;
SIGNAL \PROC|Selector6~3_combout\ : std_logic;
SIGNAL \PROC|Selector4~1_combout\ : std_logic;
SIGNAL \PROC|Selector29~0_combout\ : std_logic;
SIGNAL \PROC|state~34_combout\ : std_logic;
SIGNAL \PROC|state.jump~q\ : std_logic;
SIGNAL \PROC|Selector6~0_combout\ : std_logic;
SIGNAL \PROC|Selector6~1_combout\ : std_logic;
SIGNAL \PROC|Selector5~0_combout\ : std_logic;
SIGNAL \PROC|Selector5~1_combout\ : std_logic;
SIGNAL \PROC|Selector30~0_combout\ : std_logic;
SIGNAL \PROC|Selector31~0_combout\ : std_logic;
SIGNAL \PROC|Mux0~0_combout\ : std_logic;
SIGNAL \PROC|Selector24~1_combout\ : std_logic;
SIGNAL \PROC|state.fetch1~q\ : std_logic;
SIGNAL \PROC|Add0~0_combout\ : std_logic;
SIGNAL \PROC|Selector7~0_combout\ : std_logic;
SIGNAL \PROC|Selector7~1_combout\ : std_logic;
SIGNAL \PROC|Selector32~2_combout\ : std_logic;
SIGNAL \PROC|AC[0]~4_combout\ : std_logic;
SIGNAL \PROC|Selector23~0_combout\ : std_logic;
SIGNAL \PROC|ShiftRight0~9_combout\ : std_logic;
SIGNAL \PROC|Selector23~1_combout\ : std_logic;
SIGNAL \PROC|Selector23~2_combout\ : std_logic;
SIGNAL \PROC|Selector23~3_combout\ : std_logic;
SIGNAL \PROC|Selector23~4_combout\ : std_logic;
SIGNAL \PROC|Selector23~5_combout\ : std_logic;
SIGNAL \PROC|Selector23~6_combout\ : std_logic;
SIGNAL \PROC|Selector6~4_combout\ : std_logic;
SIGNAL \PROC|Selector6~5_combout\ : std_logic;
SIGNAL \PROC|Selector1~1_combout\ : std_logic;
SIGNAL \PROC|IO_output~0_combout\ : std_logic;
SIGNAL \PROC|state~35_combout\ : std_logic;
SIGNAL \PROC|state~36_combout\ : std_logic;
SIGNAL \PROC|state.out1~q\ : std_logic;
SIGNAL \PROC|IO_output[0]~1_combout\ : std_logic;
SIGNAL \PROC|IO_output~2_combout\ : std_logic;
SIGNAL \PROC|IO_output~3_combout\ : std_logic;
SIGNAL \PROC|IO_output~4_combout\ : std_logic;
SIGNAL \PROC|IO_output~5_combout\ : std_logic;
SIGNAL \PROC|IO_output~6_combout\ : std_logic;
SIGNAL \PROC|IO_output~7_combout\ : std_logic;
SIGNAL \PROC|IO_output~8_combout\ : std_logic;
SIGNAL \MEM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|RT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROC|IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|IO_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROC|AC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_reloj <= reloj;
ww_reset <= reset;
IR_out <= ww_IR_out;
AC_out <= ww_AC_out;
PC_out <= ww_PC_out;
ww_IO_input <= IO_input;
IO_output <= ww_IO_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \PROC|AC\(15) & \PROC|AC\(14) & \PROC|AC\(13) & \PROC|AC\(12) & \PROC|AC\(11) & \PROC|AC\(10) & \PROC|AC\(9) & \PROC|AC\(8) & \PROC|AC\(7) & \PROC|AC\(6)
& \PROC|AC\(5) & \PROC|AC\(4) & \PROC|AC\(3) & \PROC|AC\(2) & \PROC|AC\(1) & \PROC|AC\(0));

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PROC|Selector25~0_combout\ & \PROC|Selector26~0_combout\ & \PROC|Selector27~0_combout\ & \PROC|Selector28~0_combout\ & \PROC|Selector29~0_combout\ & \PROC|Selector30~0_combout\ & 
\PROC|Selector31~0_combout\ & \PROC|Selector32~2_combout\);

\MEM|altsyncram_component|auto_generated|q_a\(0) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEM|altsyncram_component|auto_generated|q_a\(1) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEM|altsyncram_component|auto_generated|q_a\(2) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEM|altsyncram_component|auto_generated|q_a\(3) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEM|altsyncram_component|auto_generated|q_a\(4) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEM|altsyncram_component|auto_generated|q_a\(5) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEM|altsyncram_component|auto_generated|q_a\(6) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEM|altsyncram_component|auto_generated|q_a\(7) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\MEM|altsyncram_component|auto_generated|q_a\(8) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\MEM|altsyncram_component|auto_generated|q_a\(9) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\MEM|altsyncram_component|auto_generated|q_a\(10) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\MEM|altsyncram_component|auto_generated|q_a\(11) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\MEM|altsyncram_component|auto_generated|q_a\(12) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\MEM|altsyncram_component|auto_generated|q_a\(13) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\MEM|altsyncram_component|auto_generated|q_a\(14) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\MEM|altsyncram_component|auto_generated|q_a\(15) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: LCCOMB_X17_Y59_N18
\PROC|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~4_combout\ = (\PROC|AC\(0) & ((\PROC|Add1~1_combout\ & (!\PROC|Add1~3_cout\)) # (!\PROC|Add1~1_combout\ & (\PROC|Add1~3_cout\ & VCC)))) # (!\PROC|AC\(0) & ((\PROC|Add1~1_combout\ & ((\PROC|Add1~3_cout\) # (GND))) # (!\PROC|Add1~1_combout\ & 
-- (!\PROC|Add1~3_cout\))))
-- \PROC|Add1~5\ = CARRY((\PROC|AC\(0) & (\PROC|Add1~1_combout\ & !\PROC|Add1~3_cout\)) # (!\PROC|AC\(0) & ((\PROC|Add1~1_combout\) # (!\PROC|Add1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(0),
	datab => \PROC|Add1~1_combout\,
	datad => VCC,
	cin => \PROC|Add1~3_cout\,
	combout => \PROC|Add1~4_combout\,
	cout => \PROC|Add1~5\);

-- Location: LCCOMB_X17_Y59_N20
\PROC|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~7_combout\ = ((\PROC|AC\(1) $ (\PROC|Add1~6_combout\ $ (\PROC|Add1~5\)))) # (GND)
-- \PROC|Add1~8\ = CARRY((\PROC|AC\(1) & ((!\PROC|Add1~5\) # (!\PROC|Add1~6_combout\))) # (!\PROC|AC\(1) & (!\PROC|Add1~6_combout\ & !\PROC|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(1),
	datab => \PROC|Add1~6_combout\,
	datad => VCC,
	cin => \PROC|Add1~5\,
	combout => \PROC|Add1~7_combout\,
	cout => \PROC|Add1~8\);

-- Location: LCCOMB_X17_Y59_N28
\PROC|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~19_combout\ = ((\PROC|AC\(5) $ (\PROC|Add1~18_combout\ $ (\PROC|Add1~17\)))) # (GND)
-- \PROC|Add1~20\ = CARRY((\PROC|AC\(5) & ((!\PROC|Add1~17\) # (!\PROC|Add1~18_combout\))) # (!\PROC|AC\(5) & (!\PROC|Add1~18_combout\ & !\PROC|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(5),
	datab => \PROC|Add1~18_combout\,
	datad => VCC,
	cin => \PROC|Add1~17\,
	combout => \PROC|Add1~19_combout\,
	cout => \PROC|Add1~20\);

-- Location: LCCOMB_X17_Y58_N2
\PROC|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~28_combout\ = (\PROC|Add1~27_combout\ & ((\PROC|AC\(8) & (!\PROC|Add1~26\)) # (!\PROC|AC\(8) & ((\PROC|Add1~26\) # (GND))))) # (!\PROC|Add1~27_combout\ & ((\PROC|AC\(8) & (\PROC|Add1~26\ & VCC)) # (!\PROC|AC\(8) & (!\PROC|Add1~26\))))
-- \PROC|Add1~29\ = CARRY((\PROC|Add1~27_combout\ & ((!\PROC|Add1~26\) # (!\PROC|AC\(8)))) # (!\PROC|Add1~27_combout\ & (!\PROC|AC\(8) & !\PROC|Add1~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~27_combout\,
	datab => \PROC|AC\(8),
	datad => VCC,
	cin => \PROC|Add1~26\,
	combout => \PROC|Add1~28_combout\,
	cout => \PROC|Add1~29\);

-- Location: LCCOMB_X17_Y58_N8
\PROC|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~37_combout\ = ((\PROC|AC\(11) $ (\PROC|Add1~36_combout\ $ (\PROC|Add1~35\)))) # (GND)
-- \PROC|Add1~38\ = CARRY((\PROC|AC\(11) & ((!\PROC|Add1~35\) # (!\PROC|Add1~36_combout\))) # (!\PROC|AC\(11) & (!\PROC|Add1~36_combout\ & !\PROC|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(11),
	datab => \PROC|Add1~36_combout\,
	datad => VCC,
	cin => \PROC|Add1~35\,
	combout => \PROC|Add1~37_combout\,
	cout => \PROC|Add1~38\);

-- Location: LCCOMB_X17_Y58_N14
\PROC|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~46_combout\ = (\PROC|Add1~45_combout\ & ((\PROC|AC\(14) & (!\PROC|Add1~44\)) # (!\PROC|AC\(14) & ((\PROC|Add1~44\) # (GND))))) # (!\PROC|Add1~45_combout\ & ((\PROC|AC\(14) & (\PROC|Add1~44\ & VCC)) # (!\PROC|AC\(14) & (!\PROC|Add1~44\))))
-- \PROC|Add1~47\ = CARRY((\PROC|Add1~45_combout\ & ((!\PROC|Add1~44\) # (!\PROC|AC\(14)))) # (!\PROC|Add1~45_combout\ & (!\PROC|AC\(14) & !\PROC|Add1~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~45_combout\,
	datab => \PROC|AC\(14),
	datad => VCC,
	cin => \PROC|Add1~44\,
	combout => \PROC|Add1~46_combout\,
	cout => \PROC|Add1~47\);

-- Location: LCCOMB_X9_Y58_N10
\PROC|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~2_combout\ = (\PROC|PC\(1) & (!\PROC|Add0~1\)) # (!\PROC|PC\(1) & ((\PROC|Add0~1\) # (GND)))
-- \PROC|Add0~3\ = CARRY((!\PROC|Add0~1\) # (!\PROC|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(1),
	datad => VCC,
	cin => \PROC|Add0~1\,
	combout => \PROC|Add0~2_combout\,
	cout => \PROC|Add0~3\);

-- Location: LCCOMB_X9_Y58_N12
\PROC|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~4_combout\ = (\PROC|PC\(2) & (\PROC|Add0~3\ $ (GND))) # (!\PROC|PC\(2) & (!\PROC|Add0~3\ & VCC))
-- \PROC|Add0~5\ = CARRY((\PROC|PC\(2) & !\PROC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(2),
	datad => VCC,
	cin => \PROC|Add0~3\,
	combout => \PROC|Add0~4_combout\,
	cout => \PROC|Add0~5\);

-- Location: LCCOMB_X9_Y58_N14
\PROC|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~6_combout\ = (\PROC|PC\(3) & (!\PROC|Add0~5\)) # (!\PROC|PC\(3) & ((\PROC|Add0~5\) # (GND)))
-- \PROC|Add0~7\ = CARRY((!\PROC|Add0~5\) # (!\PROC|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(3),
	datad => VCC,
	cin => \PROC|Add0~5\,
	combout => \PROC|Add0~6_combout\,
	cout => \PROC|Add0~7\);

-- Location: LCCOMB_X9_Y58_N16
\PROC|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~8_combout\ = (\PROC|PC\(4) & (\PROC|Add0~7\ $ (GND))) # (!\PROC|PC\(4) & (!\PROC|Add0~7\ & VCC))
-- \PROC|Add0~9\ = CARRY((\PROC|PC\(4) & !\PROC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(4),
	datad => VCC,
	cin => \PROC|Add0~7\,
	combout => \PROC|Add0~8_combout\,
	cout => \PROC|Add0~9\);

-- Location: LCCOMB_X9_Y58_N20
\PROC|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~12_combout\ = (\PROC|PC\(6) & (\PROC|Add0~11\ $ (GND))) # (!\PROC|PC\(6) & (!\PROC|Add0~11\ & VCC))
-- \PROC|Add0~13\ = CARRY((\PROC|PC\(6) & !\PROC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(6),
	datad => VCC,
	cin => \PROC|Add0~11\,
	combout => \PROC|Add0~12_combout\,
	cout => \PROC|Add0~13\);

-- Location: LCCOMB_X16_Y59_N10
\PROC|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~2_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~0_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~1_combout\,
	datad => \PROC|ShiftRight0~0_combout\,
	combout => \PROC|ShiftRight0~2_combout\);

-- Location: LCCOMB_X11_Y59_N6
\PROC|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr1~0_combout\ = (!\PROC|state.nand0~q\ & (!\PROC|state.shl0~q\ & (!\PROC|state.shr0~q\ & !\PROC|state.in1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|state.shl0~q\,
	datac => \PROC|state.shr0~q\,
	datad => \PROC|state.in1~q\,
	combout => \PROC|WideOr1~0_combout\);

-- Location: LCCOMB_X13_Y57_N4
\PROC|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~16_combout\ = (\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|AC\(15))) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~15_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~16_combout\);

-- Location: LCCOMB_X12_Y57_N12
\PROC|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~19_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~17_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~18_combout\,
	datac => \PROC|IR\(1),
	datad => \PROC|ShiftRight0~17_combout\,
	combout => \PROC|ShiftRight0~19_combout\);

-- Location: LCCOMB_X13_Y57_N22
\PROC|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~20_combout\ = (\PROC|ShiftRight0~16_combout\) # ((!\PROC|IR\(2) & \PROC|ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~16_combout\,
	datad => \PROC|ShiftRight0~19_combout\,
	combout => \PROC|ShiftRight0~20_combout\);

-- Location: LCCOMB_X17_Y59_N6
\PROC|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~9_combout\ = \PROC|state.add1~q\ $ (\PROC|RT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|state.add1~q\,
	datad => \PROC|RT\(2),
	combout => \PROC|Add1~9_combout\);

-- Location: FF_X17_Y59_N15
\PROC|RT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(3));

-- Location: LCCOMB_X17_Y59_N2
\PROC|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~15_combout\ = \PROC|RT\(4) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(4),
	datac => \PROC|state.add1~q\,
	combout => \PROC|Add1~15_combout\);

-- Location: LCCOMB_X13_Y58_N4
\PROC|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~31_combout\ = (\PROC|AC[0]~4_combout\ & ((\PROC|AC\(14)))) # (!\PROC|AC[0]~4_combout\ & (\PROC|AC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(15),
	datac => \PROC|AC\(14),
	datad => \PROC|AC[0]~4_combout\,
	combout => \PROC|ShiftRight0~31_combout\);

-- Location: LCCOMB_X13_Y58_N26
\PROC|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~3_combout\ = (\PROC|AC[4]~7_combout\ & (!\PROC|AC[0]~8_combout\)) # (!\PROC|AC[4]~7_combout\ & ((\PROC|AC[0]~8_combout\ & ((\PROC|ShiftRight0~21_combout\))) # (!\PROC|AC[0]~8_combout\ & (\PROC|ShiftRight0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[4]~7_combout\,
	datab => \PROC|AC[0]~8_combout\,
	datac => \PROC|ShiftRight0~31_combout\,
	datad => \PROC|ShiftRight0~21_combout\,
	combout => \PROC|Selector17~3_combout\);

-- Location: LCCOMB_X18_Y59_N4
\PROC|Selector17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~7_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(6)) # (!\PROC|AC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(6),
	datac => \PROC|state.nand0~q\,
	datad => \PROC|RT\(6),
	combout => \PROC|Selector17~7_combout\);

-- Location: LCCOMB_X12_Y59_N6
\PROC|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~16_combout\ = (\PROC|IR\(0) & (\PROC|AC\(6))) # (!\PROC|IR\(0) & ((\PROC|AC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(6),
	datad => \PROC|AC\(7),
	combout => \PROC|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X18_Y58_N22
\PROC|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~5_combout\ = (\PROC|Selector15~0_combout\) # ((!\PROC|IR\(0) & (\IO_input[7]~input_o\ & \PROC|state.in1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|Selector15~0_combout\,
	datac => \IO_input[7]~input_o\,
	datad => \PROC|state.in1~q\,
	combout => \PROC|Selector16~5_combout\);

-- Location: LCCOMB_X17_Y58_N22
\PROC|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~24_combout\ = \PROC|state.add1~q\ $ (\PROC|RT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add1~q\,
	datad => \PROC|RT\(7),
	combout => \PROC|Add1~24_combout\);

-- Location: LCCOMB_X14_Y57_N12
\PROC|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~18_combout\ = (\PROC|IR\(0) & (\PROC|AC\(7))) # (!\PROC|IR\(0) & ((\PROC|AC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(7),
	datad => \PROC|AC\(8),
	combout => \PROC|ShiftLeft0~18_combout\);

-- Location: FF_X17_Y58_N21
\PROC|RT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(8));

-- Location: LCCOMB_X17_Y58_N26
\PROC|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~27_combout\ = \PROC|state.add1~q\ $ (\PROC|RT\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add1~q\,
	datad => \PROC|RT\(8),
	combout => \PROC|Add1~27_combout\);

-- Location: LCCOMB_X12_Y59_N8
\PROC|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~21_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~16_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~20_combout\,
	datad => \PROC|ShiftLeft0~16_combout\,
	combout => \PROC|ShiftLeft0~21_combout\);

-- Location: FF_X16_Y58_N23
\PROC|RT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|RT[9]~feeder_combout\,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(9));

-- Location: LCCOMB_X16_Y57_N10
\PROC|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~1_combout\ = (\IO_input[1]~input_o\ & ((\PROC|state.in1~q\) # ((\PROC|AC[0]~5_combout\ & \PROC|ShiftRight0~20_combout\)))) # (!\IO_input[1]~input_o\ & (((\PROC|AC[0]~5_combout\ & \PROC|ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[1]~input_o\,
	datab => \PROC|state.in1~q\,
	datac => \PROC|AC[0]~5_combout\,
	datad => \PROC|ShiftRight0~20_combout\,
	combout => \PROC|Selector14~1_combout\);

-- Location: LCCOMB_X17_Y58_N24
\PROC|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~2_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(9)) # (!\PROC|AC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(9),
	datab => \PROC|state.nand0~q\,
	datad => \PROC|RT\(9),
	combout => \PROC|Selector14~2_combout\);

-- Location: FF_X16_Y58_N19
\PROC|RT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|RT[10]~feeder_combout\,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(10));

-- Location: LCCOMB_X16_Y58_N16
\PROC|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~33_combout\ = \PROC|RT\(10) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|RT\(10),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~33_combout\);

-- Location: LCCOMB_X14_Y58_N20
\PROC|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~1_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(10)) # (!\PROC|AC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|AC\(10),
	datad => \PROC|RT\(10),
	combout => \PROC|Selector13~1_combout\);

-- Location: LCCOMB_X14_Y57_N28
\PROC|Selector13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~6_combout\ = (\PROC|ShiftLeft0~36_combout\ & ((\PROC|Selector13~5_combout\) # ((\PROC|Selector15~10_combout\ & \PROC|ShiftLeft0~15_combout\)))) # (!\PROC|ShiftLeft0~36_combout\ & (((\PROC|Selector15~10_combout\ & 
-- \PROC|ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~36_combout\,
	datab => \PROC|Selector13~5_combout\,
	datac => \PROC|Selector15~10_combout\,
	datad => \PROC|ShiftLeft0~15_combout\,
	combout => \PROC|Selector13~6_combout\);

-- Location: LCCOMB_X12_Y59_N2
\PROC|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~24_combout\ = (\PROC|IR\(0) & (\PROC|AC\(10))) # (!\PROC|IR\(0) & ((\PROC|AC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(10),
	datad => \PROC|AC\(11),
	combout => \PROC|ShiftLeft0~24_combout\);

-- Location: FF_X16_Y58_N11
\PROC|RT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|RT[11]~feeder_combout\,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(11));

-- Location: LCCOMB_X14_Y58_N8
\PROC|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~4_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|AC\(11)) # (!\PROC|RT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|RT\(11),
	datad => \PROC|AC\(11),
	combout => \PROC|Selector12~4_combout\);

-- Location: LCCOMB_X13_Y59_N6
\PROC|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~5_combout\ = (\PROC|Selector12~4_combout\) # ((\PROC|Add1~37_combout\ & ((\PROC|state.sub0~q\) # (\PROC|state.add1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.sub0~q\,
	datab => \PROC|state.add1~q\,
	datac => \PROC|Selector12~4_combout\,
	datad => \PROC|Add1~37_combout\,
	combout => \PROC|Selector12~5_combout\);

-- Location: LCCOMB_X16_Y57_N24
\PROC|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~0_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|AC\(12)) # (!\PROC|RT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|RT\(12),
	datad => \PROC|AC\(12),
	combout => \PROC|Selector11~0_combout\);

-- Location: LCCOMB_X17_Y57_N30
\PROC|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~26_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(11)))) # (!\PROC|IR\(0) & (\PROC|AC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(12),
	datac => \PROC|AC\(11),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X16_Y57_N4
\PROC|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~1_combout\ = (\PROC|ShiftLeft0~2_combout\ & ((\PROC|AC[0]~2_combout\ & ((\PROC|ShiftLeft0~22_combout\))) # (!\PROC|AC[0]~2_combout\ & (\PROC|ShiftLeft0~26_combout\)))) # (!\PROC|ShiftLeft0~2_combout\ & (((!\PROC|AC[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~26_combout\,
	datab => \PROC|ShiftLeft0~2_combout\,
	datac => \PROC|AC[0]~2_combout\,
	datad => \PROC|ShiftLeft0~22_combout\,
	combout => \PROC|Selector11~1_combout\);

-- Location: LCCOMB_X17_Y57_N20
\PROC|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~2_combout\ = (\PROC|ShiftLeft0~2_combout\ & (((\PROC|Selector11~1_combout\)))) # (!\PROC|ShiftLeft0~2_combout\ & ((\PROC|Selector11~1_combout\ & ((\PROC|ShiftLeft0~19_combout\))) # (!\PROC|Selector11~1_combout\ & 
-- (\PROC|ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~10_combout\,
	datab => \PROC|ShiftLeft0~2_combout\,
	datac => \PROC|Selector11~1_combout\,
	datad => \PROC|ShiftLeft0~19_combout\,
	combout => \PROC|Selector11~2_combout\);

-- Location: LCCOMB_X17_Y57_N18
\PROC|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~3_combout\ = (!\PROC|ShiftRight0~10_combout\ & (\PROC|state.shl0~q\ & \PROC|Selector11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|state.shl0~q\,
	datad => \PROC|Selector11~2_combout\,
	combout => \PROC|Selector11~3_combout\);

-- Location: LCCOMB_X17_Y57_N12
\PROC|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~4_combout\ = (\PROC|Selector11~0_combout\) # ((\PROC|Selector11~3_combout\) # ((\PROC|AC[0]~5_combout\ & \PROC|ShiftRight0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~5_combout\,
	datab => \PROC|Selector11~0_combout\,
	datac => \PROC|ShiftRight0~29_combout\,
	datad => \PROC|Selector11~3_combout\,
	combout => \PROC|Selector11~4_combout\);

-- Location: FF_X16_Y58_N3
\PROC|RT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(13));

-- Location: LCCOMB_X16_Y58_N2
\PROC|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~42_combout\ = \PROC|RT\(13) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|RT\(13),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~42_combout\);

-- Location: LCCOMB_X16_Y57_N16
\PROC|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~0_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(13)) # (!\PROC|AC\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datac => \PROC|AC\(13),
	datad => \PROC|RT\(13),
	combout => \PROC|Selector10~0_combout\);

-- Location: LCCOMB_X12_Y59_N4
\PROC|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~1_combout\ = (\PROC|ShiftLeft0~2_combout\ & ((\PROC|ShiftLeft0~27_combout\) # ((\PROC|AC[0]~2_combout\)))) # (!\PROC|ShiftLeft0~2_combout\ & (((\PROC|ShiftLeft0~21_combout\ & !\PROC|AC[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~27_combout\,
	datab => \PROC|ShiftLeft0~2_combout\,
	datac => \PROC|ShiftLeft0~21_combout\,
	datad => \PROC|AC[0]~2_combout\,
	combout => \PROC|Selector10~1_combout\);

-- Location: LCCOMB_X12_Y59_N10
\PROC|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~2_combout\ = (\PROC|AC[0]~2_combout\ & ((\PROC|Selector10~1_combout\ & (\PROC|ShiftLeft0~24_combout\)) # (!\PROC|Selector10~1_combout\ & ((\PROC|ShiftLeft0~13_combout\))))) # (!\PROC|AC[0]~2_combout\ & (((\PROC|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~24_combout\,
	datab => \PROC|AC[0]~2_combout\,
	datac => \PROC|Selector10~1_combout\,
	datad => \PROC|ShiftLeft0~13_combout\,
	combout => \PROC|Selector10~2_combout\);

-- Location: LCCOMB_X12_Y59_N12
\PROC|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~3_combout\ = (\PROC|state.shl0~q\ & (!\PROC|ShiftRight0~10_combout\ & \PROC|Selector10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl0~q\,
	datac => \PROC|ShiftRight0~10_combout\,
	datad => \PROC|Selector10~2_combout\,
	combout => \PROC|Selector10~3_combout\);

-- Location: LCCOMB_X13_Y57_N12
\PROC|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~4_combout\ = (\PROC|Selector10~0_combout\) # ((\PROC|Selector10~3_combout\) # ((\PROC|AC[0]~5_combout\ & \PROC|ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~5_combout\,
	datab => \PROC|Selector10~0_combout\,
	datac => \PROC|ShiftRight0~30_combout\,
	datad => \PROC|Selector10~3_combout\,
	combout => \PROC|Selector10~4_combout\);

-- Location: LCCOMB_X16_Y58_N26
\PROC|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~45_combout\ = \PROC|RT\(14) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|RT\(14),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~45_combout\);

-- Location: LCCOMB_X17_Y57_N26
\PROC|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~28_combout\ = (\PROC|IR\(3) & ((\PROC|IR\(2) & ((\PROC|ShiftLeft0~36_combout\))) # (!\PROC|IR\(2) & (\PROC|ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|IR\(3),
	datac => \PROC|ShiftLeft0~15_combout\,
	datad => \PROC|ShiftLeft0~36_combout\,
	combout => \PROC|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X17_Y57_N0
\PROC|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~29_combout\ = (!\PROC|IR\(1) & ((\PROC|IR\(0) & ((\PROC|AC\(13)))) # (!\PROC|IR\(0) & (\PROC|AC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(14),
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(13),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X17_Y57_N10
\PROC|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~30_combout\ = (\PROC|ShiftLeft0~2_combout\ & ((\PROC|ShiftLeft0~29_combout\) # ((\PROC|IR\(1) & \PROC|ShiftLeft0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftLeft0~2_combout\,
	datac => \PROC|ShiftLeft0~26_combout\,
	datad => \PROC|ShiftLeft0~29_combout\,
	combout => \PROC|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X17_Y57_N16
\PROC|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~31_combout\ = (\PROC|ShiftLeft0~30_combout\) # ((\PROC|IR\(2) & (!\PROC|IR\(3) & \PROC|ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|IR\(3),
	datac => \PROC|ShiftLeft0~23_combout\,
	datad => \PROC|ShiftLeft0~30_combout\,
	combout => \PROC|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X17_Y57_N14
\PROC|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~4_combout\ = (!\PROC|ShiftRight0~10_combout\ & (\PROC|state.shl0~q\ & ((\PROC|ShiftLeft0~28_combout\) # (\PROC|ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~28_combout\,
	datab => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|state.shl0~q\,
	datad => \PROC|ShiftLeft0~31_combout\,
	combout => \PROC|Selector9~4_combout\);

-- Location: LCCOMB_X14_Y58_N6
\PROC|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~1_combout\ = (!\PROC|AC\(7) & (!\PROC|AC\(8) & (!\PROC|AC\(9) & !\PROC|AC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(7),
	datab => \PROC|AC\(8),
	datac => \PROC|AC\(9),
	datad => \PROC|AC\(10),
	combout => \PROC|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y58_N26
\PROC|PC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|PC[0]~0_combout\ = (\PROC|state.jneg~q\) # (((\PROC|state.fetch1~q\) # (\PROC|state.jump~q\)) # (!\PROC|state.reset_pc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.jneg~q\,
	datab => \PROC|state.reset_pc~q\,
	datac => \PROC|state.fetch1~q\,
	datad => \PROC|state.jump~q\,
	combout => \PROC|PC[0]~0_combout\);

-- Location: LCCOMB_X10_Y58_N6
\PROC|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector4~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~6_combout\) # ((!\PROC|Selector6~1_combout\ & \PROC|IR\(3))))) # (!\PROC|state.fetch1~q\ & (!\PROC|Selector6~1_combout\ & (\PROC|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Selector6~1_combout\,
	datac => \PROC|IR\(3),
	datad => \PROC|Add0~6_combout\,
	combout => \PROC|Selector4~0_combout\);

-- Location: LCCOMB_X10_Y58_N0
\PROC|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector1~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~12_combout\) # ((\PROC|IR\(6) & !\PROC|Selector6~1_combout\)))) # (!\PROC|state.fetch1~q\ & (((\PROC|IR\(6) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Add0~12_combout\,
	datac => \PROC|IR\(6),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector1~0_combout\);

-- Location: LCCOMB_X11_Y58_N2
\PROC|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr2~1_combout\ = (\PROC|WideOr2~0_combout\ & (!\PROC|state.store0~q\ & !\PROC|state.decode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|WideOr2~0_combout\,
	datac => \PROC|state.store0~q\,
	datad => \PROC|state.decode~q\,
	combout => \PROC|WideOr2~1_combout\);

-- Location: LCCOMB_X10_Y58_N8
\PROC|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~24_combout\ = (\PROC|IR\(11) & (!\PROC|IR\(10) & (\PROC|state.decode~q\ & \PROC|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(11),
	datab => \PROC|IR\(10),
	datac => \PROC|state.decode~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|state~24_combout\);

-- Location: IOIBUF_X115_Y37_N1
\IO_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(1),
	o => \IO_input[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\IO_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(4),
	o => \IO_input[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\IO_input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(7),
	o => \IO_input[7]~input_o\);

-- Location: LCCOMB_X16_Y58_N22
\PROC|RT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[9]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(9),
	combout => \PROC|RT[9]~feeder_combout\);

-- Location: LCCOMB_X16_Y58_N18
\PROC|RT[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[10]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(10),
	combout => \PROC|RT[10]~feeder_combout\);

-- Location: LCCOMB_X16_Y58_N10
\PROC|RT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[11]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(11),
	combout => \PROC|RT[11]~feeder_combout\);

-- Location: IOOBUF_X0_Y59_N23
\IR_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(0),
	devoe => ww_devoe,
	o => \IR_out[0]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\IR_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(1),
	devoe => ww_devoe,
	o => \IR_out[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\IR_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(2),
	devoe => ww_devoe,
	o => \IR_out[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\IR_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(3),
	devoe => ww_devoe,
	o => \IR_out[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\IR_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(4),
	devoe => ww_devoe,
	o => \IR_out[4]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\IR_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(5),
	devoe => ww_devoe,
	o => \IR_out[5]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\IR_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(6),
	devoe => ww_devoe,
	o => \IR_out[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\IR_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(7),
	devoe => ww_devoe,
	o => \IR_out[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\IR_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(8),
	devoe => ww_devoe,
	o => \IR_out[8]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\IR_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(9),
	devoe => ww_devoe,
	o => \IR_out[9]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\IR_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(10),
	devoe => ww_devoe,
	o => \IR_out[10]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\IR_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(11),
	devoe => ww_devoe,
	o => \IR_out[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\IR_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(12),
	devoe => ww_devoe,
	o => \IR_out[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\IR_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(13),
	devoe => ww_devoe,
	o => \IR_out[13]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\IR_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(14),
	devoe => ww_devoe,
	o => \IR_out[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\IR_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IR\(15),
	devoe => ww_devoe,
	o => \IR_out[15]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\AC_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(0),
	devoe => ww_devoe,
	o => \AC_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\AC_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(1),
	devoe => ww_devoe,
	o => \AC_out[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\AC_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(2),
	devoe => ww_devoe,
	o => \AC_out[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\AC_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(3),
	devoe => ww_devoe,
	o => \AC_out[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\AC_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(4),
	devoe => ww_devoe,
	o => \AC_out[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\AC_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(5),
	devoe => ww_devoe,
	o => \AC_out[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\AC_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(6),
	devoe => ww_devoe,
	o => \AC_out[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\AC_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(7),
	devoe => ww_devoe,
	o => \AC_out[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\AC_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(8),
	devoe => ww_devoe,
	o => \AC_out[8]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\AC_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(9),
	devoe => ww_devoe,
	o => \AC_out[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\AC_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(10),
	devoe => ww_devoe,
	o => \AC_out[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\AC_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(11),
	devoe => ww_devoe,
	o => \AC_out[11]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\AC_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(12),
	devoe => ww_devoe,
	o => \AC_out[12]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\AC_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(13),
	devoe => ww_devoe,
	o => \AC_out[13]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\AC_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(14),
	devoe => ww_devoe,
	o => \AC_out[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\AC_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|AC\(15),
	devoe => ww_devoe,
	o => \AC_out[15]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\PC_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(0),
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\PC_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(1),
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\PC_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(2),
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\PC_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(3),
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\PC_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(4),
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\PC_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(5),
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\PC_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(6),
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\PC_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|PC\(7),
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\IO_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(0),
	devoe => ww_devoe,
	o => \IO_output[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\IO_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(1),
	devoe => ww_devoe,
	o => \IO_output[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\IO_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(2),
	devoe => ww_devoe,
	o => \IO_output[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\IO_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(3),
	devoe => ww_devoe,
	o => \IO_output[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\IO_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(4),
	devoe => ww_devoe,
	o => \IO_output[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\IO_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(5),
	devoe => ww_devoe,
	o => \IO_output[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\IO_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(6),
	devoe => ww_devoe,
	o => \IO_output[6]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\IO_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PROC|IO_output\(7),
	devoe => ww_devoe,
	o => \IO_output[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G2
\reloj~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X12_Y58_N23
\PROC|state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.fetch1~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.decode~q\);

-- Location: LCCOMB_X9_Y58_N8
\PROC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~0_combout\ = \PROC|PC\(0) $ (VCC)
-- \PROC|Add0~1\ = CARRY(\PROC|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|PC\(0),
	datad => VCC,
	combout => \PROC|Add0~0_combout\,
	cout => \PROC|Add0~1\);

-- Location: LCCOMB_X9_Y58_N18
\PROC|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~10_combout\ = (\PROC|PC\(5) & (!\PROC|Add0~9\)) # (!\PROC|PC\(5) & ((\PROC|Add0~9\) # (GND)))
-- \PROC|Add0~11\ = CARRY((!\PROC|Add0~9\) # (!\PROC|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(5),
	datad => VCC,
	cin => \PROC|Add0~9\,
	combout => \PROC|Add0~10_combout\,
	cout => \PROC|Add0~11\);

-- Location: LCCOMB_X9_Y58_N22
\PROC|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add0~14_combout\ = \PROC|PC\(7) $ (\PROC|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(7),
	cin => \PROC|Add0~13\,
	combout => \PROC|Add0~14_combout\);

-- Location: LCCOMB_X14_Y57_N26
\PROC|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~3_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(0)))) # (!\PROC|IR\(0) & (\PROC|AC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(1),
	datad => \PROC|AC\(0),
	combout => \PROC|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X17_Y57_N22
\PROC|Selector22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~6_combout\ = (!\PROC|IR\(1) & (\PROC|ShiftLeft0~3_combout\ & !\PROC|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~3_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector22~6_combout\);

-- Location: LCCOMB_X11_Y59_N16
\PROC|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~25_combout\ = (\PROC|state~24_combout\ & (!\PROC|IR\(8) & \PROC|IR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~24_combout\,
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	combout => \PROC|state~25_combout\);

-- Location: FF_X11_Y59_N17
\PROC|state.shr0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.shr0~q\);

-- Location: LCCOMB_X11_Y59_N2
\PROC|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~29_combout\ = (\PROC|state~24_combout\ & (\PROC|IR\(8) & !\PROC|IR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~24_combout\,
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	combout => \PROC|state~29_combout\);

-- Location: FF_X11_Y59_N3
\PROC|state.shl0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.shl0~q\);

-- Location: LCCOMB_X13_Y59_N16
\PROC|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~6_combout\ = (\PROC|IR\(0) & (\PROC|AC\(2))) # (!\PROC|IR\(0) & ((\PROC|AC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(2),
	datac => \PROC|AC\(3),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X13_Y59_N22
\PROC|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~7_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~3_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftLeft0~6_combout\,
	datac => \PROC|IR\(1),
	datad => \PROC|ShiftLeft0~3_combout\,
	combout => \PROC|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X11_Y59_N12
\PROC|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~38_combout\ = (!\PROC|IR\(9) & (!\PROC|IR\(8) & \PROC|state~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	datad => \PROC|state~27_combout\,
	combout => \PROC|state~38_combout\);

-- Location: FF_X11_Y59_N13
\PROC|state.add2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.add2~q\);

-- Location: FF_X17_Y59_N9
\PROC|state.add1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.add2~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.add1~q\);

-- Location: LCCOMB_X17_Y59_N0
\PROC|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~12_combout\ = \PROC|RT\(3) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(3),
	datab => \PROC|state.add1~q\,
	combout => \PROC|Add1~12_combout\);

-- Location: LCCOMB_X11_Y59_N28
\PROC|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~39_combout\ = (!\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|state~30_combout\,
	combout => \PROC|state~39_combout\);

-- Location: FF_X11_Y59_N29
\PROC|state.sub1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.sub1~q\);

-- Location: LCCOMB_X11_Y59_N18
\PROC|RT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[0]~0_combout\ = (!\reset~input_o\ & ((\PROC|state.nand1~q\) # ((\PROC|state.sub1~q\) # (\PROC|state.add2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand1~q\,
	datab => \PROC|state.sub1~q\,
	datac => \reset~input_o\,
	datad => \PROC|state.add2~q\,
	combout => \PROC|RT[0]~0_combout\);

-- Location: FF_X17_Y59_N5
\PROC|RT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(1));

-- Location: LCCOMB_X17_Y59_N14
\PROC|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~6_combout\ = \PROC|RT\(1) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|RT\(1),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~6_combout\);

-- Location: FF_X16_Y59_N21
\PROC|RT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(0));

-- Location: LCCOMB_X17_Y59_N10
\PROC|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~1_combout\ = \PROC|RT\(0) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|RT\(0),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~1_combout\);

-- Location: LCCOMB_X17_Y59_N16
\PROC|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~3_cout\ = CARRY(!\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add1~q\,
	datad => VCC,
	cout => \PROC|Add1~3_cout\);

-- Location: LCCOMB_X17_Y59_N22
\PROC|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~10_combout\ = (\PROC|Add1~9_combout\ & ((\PROC|AC\(2) & (!\PROC|Add1~8\)) # (!\PROC|AC\(2) & ((\PROC|Add1~8\) # (GND))))) # (!\PROC|Add1~9_combout\ & ((\PROC|AC\(2) & (\PROC|Add1~8\ & VCC)) # (!\PROC|AC\(2) & (!\PROC|Add1~8\))))
-- \PROC|Add1~11\ = CARRY((\PROC|Add1~9_combout\ & ((!\PROC|Add1~8\) # (!\PROC|AC\(2)))) # (!\PROC|Add1~9_combout\ & (!\PROC|AC\(2) & !\PROC|Add1~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~9_combout\,
	datab => \PROC|AC\(2),
	datad => VCC,
	cin => \PROC|Add1~8\,
	combout => \PROC|Add1~10_combout\,
	cout => \PROC|Add1~11\);

-- Location: LCCOMB_X17_Y59_N24
\PROC|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~13_combout\ = ((\PROC|AC\(3) $ (\PROC|Add1~12_combout\ $ (\PROC|Add1~11\)))) # (GND)
-- \PROC|Add1~14\ = CARRY((\PROC|AC\(3) & ((!\PROC|Add1~11\) # (!\PROC|Add1~12_combout\))) # (!\PROC|AC\(3) & (!\PROC|Add1~12_combout\ & !\PROC|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(3),
	datab => \PROC|Add1~12_combout\,
	datad => VCC,
	cin => \PROC|Add1~11\,
	combout => \PROC|Add1~13_combout\,
	cout => \PROC|Add1~14\);

-- Location: LCCOMB_X11_Y59_N24
\PROC|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~26_combout\ = (\PROC|state~24_combout\ & (\PROC|IR\(8) & \PROC|IR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~24_combout\,
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	combout => \PROC|state~26_combout\);

-- Location: FF_X11_Y59_N25
\PROC|state.in1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.in1~q\);

-- Location: FF_X17_Y59_N13
\PROC|RT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(4));

-- Location: LCCOMB_X14_Y59_N22
\PROC|Selector19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~5_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(4)) # (!\PROC|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(4),
	datac => \PROC|state.nand0~q\,
	datad => \PROC|RT\(4),
	combout => \PROC|Selector19~5_combout\);

-- Location: LCCOMB_X17_Y57_N24
\PROC|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~4_combout\ = (\PROC|AC\(0) & !\PROC|IR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|AC\(0),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X14_Y57_N14
\PROC|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~5_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(1)))) # (!\PROC|IR\(0) & (\PROC|AC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datac => \PROC|AC\(1),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X14_Y57_N20
\PROC|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~8_combout\ = (\PROC|IR\(0) & (\PROC|AC\(3))) # (!\PROC|IR\(0) & ((\PROC|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(3),
	datad => \PROC|AC\(4),
	combout => \PROC|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X14_Y57_N30
\PROC|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~9_combout\ = (\PROC|IR\(1) & (\PROC|ShiftLeft0~5_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~5_combout\,
	datad => \PROC|ShiftLeft0~8_combout\,
	combout => \PROC|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X17_Y57_N6
\PROC|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~10_combout\ = (\PROC|IR\(2) & (\PROC|ShiftLeft0~4_combout\ & (!\PROC|IR\(1)))) # (!\PROC|IR\(2) & (((\PROC|ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|ShiftLeft0~4_combout\,
	datac => \PROC|IR\(1),
	datad => \PROC|ShiftLeft0~9_combout\,
	combout => \PROC|ShiftLeft0~10_combout\);

-- Location: FF_X12_Y59_N3
\PROC|state.sub0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.sub1~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.sub0~q\);

-- Location: LCCOMB_X17_Y59_N26
\PROC|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~16_combout\ = (\PROC|Add1~15_combout\ & ((\PROC|AC\(4) & (!\PROC|Add1~14\)) # (!\PROC|AC\(4) & ((\PROC|Add1~14\) # (GND))))) # (!\PROC|Add1~15_combout\ & ((\PROC|AC\(4) & (\PROC|Add1~14\ & VCC)) # (!\PROC|AC\(4) & (!\PROC|Add1~14\))))
-- \PROC|Add1~17\ = CARRY((\PROC|Add1~15_combout\ & ((!\PROC|Add1~14\) # (!\PROC|AC\(4)))) # (!\PROC|Add1~15_combout\ & (!\PROC|AC\(4) & !\PROC|Add1~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~15_combout\,
	datab => \PROC|AC\(4),
	datad => VCC,
	cin => \PROC|Add1~14\,
	combout => \PROC|Add1~16_combout\,
	cout => \PROC|Add1~17\);

-- Location: LCCOMB_X17_Y59_N8
\PROC|Selector19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~6_combout\ = (\PROC|Add1~16_combout\ & ((\PROC|state.sub0~q\) # (\PROC|state.add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.sub0~q\,
	datac => \PROC|state.add1~q\,
	datad => \PROC|Add1~16_combout\,
	combout => \PROC|Selector19~6_combout\);

-- Location: LCCOMB_X16_Y59_N26
\PROC|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~8_combout\ = (\PROC|IR\(1) & ((\PROC|IR\(0) & ((\PROC|AC\(15)))) # (!\PROC|IR\(0) & (\PROC|AC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(14),
	datab => \PROC|AC\(15),
	datac => \PROC|IR\(0),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~8_combout\);

-- Location: LCCOMB_X14_Y59_N14
\PROC|Selector18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~6_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|AC\(5)) # (!\PROC|RT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(5),
	datab => \PROC|AC\(5),
	datac => \PROC|state.nand0~q\,
	combout => \PROC|Selector18~6_combout\);

-- Location: LCCOMB_X17_Y59_N4
\PROC|Selector18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~7_combout\ = (\PROC|Add1~19_combout\ & ((\PROC|state.sub0~q\) # (\PROC|state.add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~19_combout\,
	datab => \PROC|state.sub0~q\,
	datad => \PROC|state.add1~q\,
	combout => \PROC|Selector18~7_combout\);

-- Location: LCCOMB_X12_Y59_N0
\PROC|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~11_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(4)))) # (!\PROC|IR\(0) & (\PROC|AC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(5),
	datac => \PROC|AC\(4),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X12_Y59_N30
\PROC|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~12_combout\ = (\PROC|IR\(1) & (\PROC|ShiftLeft0~6_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~6_combout\,
	datad => \PROC|ShiftLeft0~11_combout\,
	combout => \PROC|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X12_Y59_N20
\PROC|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~13_combout\ = (\PROC|IR\(2) & (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~3_combout\)))) # (!\PROC|IR\(2) & (((\PROC|ShiftLeft0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~12_combout\,
	datad => \PROC|ShiftLeft0~3_combout\,
	combout => \PROC|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X12_Y58_N2
\PROC|AC[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[4]~7_combout\ = (\PROC|ShiftRight0~10_combout\) # ((\PROC|IR\(2) & !\PROC|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|IR\(3),
	datad => \PROC|ShiftRight0~10_combout\,
	combout => \PROC|AC[4]~7_combout\);

-- Location: LCCOMB_X12_Y59_N28
\PROC|AC[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~3_combout\ = (!\PROC|state.sub0~q\ & !\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.sub0~q\,
	datad => \PROC|state.add1~q\,
	combout => \PROC|AC[0]~3_combout\);

-- Location: LCCOMB_X16_Y58_N30
\PROC|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~36_combout\ = \PROC|RT\(11) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(11),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~36_combout\);

-- Location: LCCOMB_X13_Y58_N8
\PROC|AC[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[9]~9_combout\ = (\PROC|state.shl0~q\ & ((\PROC|ShiftRight0~10_combout\) # ((!\PROC|IR\(2) & !\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|state.shl0~q\,
	datac => \PROC|IR\(2),
	datad => \PROC|IR\(3),
	combout => \PROC|AC[9]~9_combout\);

-- Location: LCCOMB_X16_Y58_N4
\PROC|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~30_combout\ = \PROC|RT\(9) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(9),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~30_combout\);

-- Location: LCCOMB_X14_Y57_N0
\PROC|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~15_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~8_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~14_combout\,
	datad => \PROC|ShiftLeft0~8_combout\,
	combout => \PROC|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X14_Y57_N2
\PROC|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~2_combout\ = (\PROC|Selector18~2_combout\ & ((\PROC|IR\(2) & (\PROC|ShiftLeft0~36_combout\)) # (!\PROC|IR\(2) & ((\PROC|ShiftLeft0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~36_combout\,
	datab => \PROC|ShiftLeft0~15_combout\,
	datac => \PROC|Selector18~2_combout\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector17~2_combout\);

-- Location: LCCOMB_X14_Y59_N26
\PROC|Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~6_combout\ = (\PROC|state.load1~q\ & \MEM|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(6),
	combout => \PROC|Selector17~6_combout\);

-- Location: FF_X17_Y59_N11
\PROC|RT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(6));

-- Location: LCCOMB_X17_Y59_N12
\PROC|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~21_combout\ = \PROC|state.add1~q\ $ (\PROC|RT\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.add1~q\,
	datad => \PROC|RT\(6),
	combout => \PROC|Add1~21_combout\);

-- Location: FF_X16_Y59_N29
\PROC|RT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(5));

-- Location: LCCOMB_X16_Y59_N28
\PROC|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~18_combout\ = \PROC|RT\(5) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|RT\(5),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~18_combout\);

-- Location: LCCOMB_X17_Y59_N30
\PROC|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~22_combout\ = (\PROC|AC\(6) & ((\PROC|Add1~21_combout\ & (!\PROC|Add1~20\)) # (!\PROC|Add1~21_combout\ & (\PROC|Add1~20\ & VCC)))) # (!\PROC|AC\(6) & ((\PROC|Add1~21_combout\ & ((\PROC|Add1~20\) # (GND))) # (!\PROC|Add1~21_combout\ & 
-- (!\PROC|Add1~20\))))
-- \PROC|Add1~23\ = CARRY((\PROC|AC\(6) & (\PROC|Add1~21_combout\ & !\PROC|Add1~20\)) # (!\PROC|AC\(6) & ((\PROC|Add1~21_combout\) # (!\PROC|Add1~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datab => \PROC|Add1~21_combout\,
	datad => VCC,
	cin => \PROC|Add1~20\,
	combout => \PROC|Add1~22_combout\,
	cout => \PROC|Add1~23\);

-- Location: IOIBUF_X18_Y0_N15
\IO_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(6),
	o => \IO_input[6]~input_o\);

-- Location: LCCOMB_X13_Y59_N2
\PROC|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~5_combout\ = (\PROC|state.shl0~q\ & (\PROC|IR\(3) & !\PROC|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.shl0~q\,
	datac => \PROC|IR\(3),
	datad => \PROC|IR\(2),
	combout => \PROC|Selector13~5_combout\);

-- Location: LCCOMB_X13_Y59_N20
\PROC|Selector15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~10_combout\ = (\PROC|state.shl0~q\ & (\PROC|IR\(2) & ((\PROC|ShiftRight0~10_combout\) # (!\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|state.shl0~q\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector15~10_combout\);

-- Location: LCCOMB_X12_Y57_N28
\PROC|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~17_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(12)))) # (!\PROC|IR\(0) & (\PROC|AC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(11),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(12),
	combout => \PROC|ShiftRight0~17_combout\);

-- Location: LCCOMB_X12_Y57_N30
\PROC|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~27_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~15_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftRight0~17_combout\,
	datac => \PROC|IR\(1),
	datad => \PROC|ShiftRight0~15_combout\,
	combout => \PROC|ShiftRight0~27_combout\);

-- Location: LCCOMB_X12_Y57_N20
\PROC|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~28_combout\ = (\PROC|IR\(2) & ((\PROC|AC\(15)))) # (!\PROC|IR\(2) & (\PROC|ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~27_combout\,
	datad => \PROC|AC\(15),
	combout => \PROC|ShiftRight0~28_combout\);

-- Location: LCCOMB_X13_Y58_N30
\PROC|AC[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~5_combout\ = (!\PROC|ShiftRight0~10_combout\ & (\PROC|state.shr0~q\ & !\PROC|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|state.shr0~q\,
	datad => \PROC|IR\(3),
	combout => \PROC|AC[0]~5_combout\);

-- Location: LCCOMB_X13_Y59_N24
\PROC|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~0_combout\ = (\PROC|ShiftLeft0~17_combout\ & ((\PROC|Selector15~10_combout\) # ((\PROC|ShiftRight0~28_combout\ & \PROC|AC[0]~5_combout\)))) # (!\PROC|ShiftLeft0~17_combout\ & (((\PROC|ShiftRight0~28_combout\ & \PROC|AC[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~17_combout\,
	datab => \PROC|Selector15~10_combout\,
	datac => \PROC|ShiftRight0~28_combout\,
	datad => \PROC|AC[0]~5_combout\,
	combout => \PROC|Selector12~0_combout\);

-- Location: LCCOMB_X13_Y59_N26
\PROC|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~1_combout\ = (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector12~0_combout\) # ((\PROC|Selector13~5_combout\ & \PROC|ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|Selector13~5_combout\,
	datac => \PROC|ShiftLeft0~7_combout\,
	datad => \PROC|Selector12~0_combout\,
	combout => \PROC|Selector12~1_combout\);

-- Location: LCCOMB_X13_Y58_N2
\PROC|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~0_combout\ = (\PROC|state.shr0~q\ & (\PROC|AC\(15) & ((\PROC|ShiftRight0~10_combout\) # (\PROC|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr0~q\,
	datab => \PROC|AC\(15),
	datac => \PROC|ShiftRight0~10_combout\,
	datad => \PROC|IR\(3),
	combout => \PROC|Selector15~0_combout\);

-- Location: LCCOMB_X16_Y57_N22
\PROC|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~3_combout\ = (!\PROC|ShiftRight0~10_combout\ & (\PROC|state.shl0~q\ & \PROC|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|state.shl0~q\,
	datad => \PROC|IR\(3),
	combout => \PROC|Selector15~3_combout\);

-- Location: LCCOMB_X16_Y57_N20
\PROC|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~0_combout\ = (\PROC|ShiftLeft0~21_combout\ & ((\PROC|AC[9]~9_combout\) # ((\PROC|Selector15~3_combout\ & \PROC|Selector22~6_combout\)))) # (!\PROC|ShiftLeft0~21_combout\ & (((\PROC|Selector15~3_combout\ & \PROC|Selector22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~21_combout\,
	datab => \PROC|AC[9]~9_combout\,
	datac => \PROC|Selector15~3_combout\,
	datad => \PROC|Selector22~6_combout\,
	combout => \PROC|Selector14~0_combout\);

-- Location: LCCOMB_X17_Y58_N4
\PROC|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~31_combout\ = ((\PROC|AC\(9) $ (\PROC|Add1~30_combout\ $ (\PROC|Add1~29\)))) # (GND)
-- \PROC|Add1~32\ = CARRY((\PROC|AC\(9) & ((!\PROC|Add1~29\) # (!\PROC|Add1~30_combout\))) # (!\PROC|AC\(9) & (!\PROC|Add1~30_combout\ & !\PROC|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(9),
	datab => \PROC|Add1~30_combout\,
	datad => VCC,
	cin => \PROC|Add1~29\,
	combout => \PROC|Add1~31_combout\,
	cout => \PROC|Add1~32\);

-- Location: LCCOMB_X17_Y57_N4
\PROC|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~1_combout\ = (!\PROC|ShiftRight0~10_combout\ & (!\PROC|IR\(3) & (\PROC|state.shl0~q\ & \PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|IR\(3),
	datac => \PROC|state.shl0~q\,
	datad => \PROC|IR\(2),
	combout => \PROC|Selector15~1_combout\);

-- Location: LCCOMB_X16_Y58_N8
\PROC|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~3_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(9)) # ((\PROC|Selector15~1_combout\ & \PROC|ShiftLeft0~12_combout\)))) # (!\PROC|state.load1~q\ & (\PROC|Selector15~1_combout\ & 
-- (\PROC|ShiftLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|Selector15~1_combout\,
	datac => \PROC|ShiftLeft0~12_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(9),
	combout => \PROC|Selector14~3_combout\);

-- Location: LCCOMB_X17_Y58_N28
\PROC|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~4_combout\ = (\PROC|Selector14~2_combout\) # ((\PROC|Selector15~0_combout\) # (\PROC|Selector14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector14~2_combout\,
	datac => \PROC|Selector15~0_combout\,
	datad => \PROC|Selector14~3_combout\,
	combout => \PROC|Selector14~4_combout\);

-- Location: LCCOMB_X17_Y58_N18
\PROC|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~5_combout\ = (\PROC|Selector14~1_combout\) # ((\PROC|Selector14~4_combout\) # ((!\PROC|AC[0]~3_combout\ & \PROC|Add1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector14~1_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|Add1~31_combout\,
	datad => \PROC|Selector14~4_combout\,
	combout => \PROC|Selector14~5_combout\);

-- Location: LCCOMB_X17_Y58_N30
\PROC|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector14~6_combout\ = (\PROC|AC[9]~9_combout\ & (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector14~0_combout\) # (\PROC|Selector14~5_combout\)))) # (!\PROC|AC[9]~9_combout\ & (((\PROC|Selector14~0_combout\) # (\PROC|Selector14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[9]~9_combout\,
	datab => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|Selector14~0_combout\,
	datad => \PROC|Selector14~5_combout\,
	combout => \PROC|Selector14~6_combout\);

-- Location: LCCOMB_X11_Y59_N4
\PROC|state.reset_pc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state.reset_pc~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \PROC|state.reset_pc~feeder_combout\);

-- Location: FF_X11_Y59_N5
\PROC|state.reset_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state.reset_pc~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.reset_pc~q\);

-- Location: LCCOMB_X11_Y59_N30
\PROC|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~28_combout\ = (\PROC|IR\(9) & (!\PROC|IR\(8) & \PROC|state~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(9),
	datac => \PROC|IR\(8),
	datad => \PROC|state~27_combout\,
	combout => \PROC|state~28_combout\);

-- Location: FF_X11_Y59_N31
\PROC|state.load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.load1~q\);

-- Location: LCCOMB_X11_Y59_N0
\PROC|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr1~1_combout\ = (\PROC|WideOr1~0_combout\ & (\PROC|state.reset_pc~q\ & (!\PROC|state.load1~q\ & \PROC|AC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr1~0_combout\,
	datab => \PROC|state.reset_pc~q\,
	datac => \PROC|state.load1~q\,
	datad => \PROC|AC[0]~3_combout\,
	combout => \PROC|WideOr1~1_combout\);

-- Location: LCCOMB_X11_Y59_N26
\PROC|AC[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[8]~10_combout\ = (!\reset~input_o\ & (!\PROC|WideOr1~1_combout\ & ((\PROC|IR\(0)) # (!\PROC|state.in1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|state.in1~q\,
	datac => \reset~input_o\,
	datad => \PROC|WideOr1~1_combout\,
	combout => \PROC|AC[8]~10_combout\);

-- Location: FF_X17_Y58_N31
\PROC|AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector14~6_combout\,
	ena => \PROC|AC[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(9));

-- Location: LCCOMB_X12_Y59_N26
\PROC|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~20_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(8)))) # (!\PROC|IR\(0) & (\PROC|AC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(9),
	datad => \PROC|AC\(8),
	combout => \PROC|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X12_Y59_N18
\PROC|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~25_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~20_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~24_combout\,
	datac => \PROC|ShiftLeft0~20_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X13_Y59_N4
\PROC|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~3_combout\ = (\PROC|AC[9]~9_combout\ & (((\PROC|ShiftLeft0~25_combout\)))) # (!\PROC|AC[9]~9_combout\ & (\PROC|AC[0]~5_combout\ & (\PROC|ShiftRight0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~5_combout\,
	datab => \PROC|ShiftRight0~28_combout\,
	datac => \PROC|AC[9]~9_combout\,
	datad => \PROC|ShiftLeft0~25_combout\,
	combout => \PROC|Selector12~3_combout\);

-- Location: IOIBUF_X13_Y73_N22
\IO_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(3),
	o => \IO_input[3]~input_o\);

-- Location: LCCOMB_X14_Y59_N28
\PROC|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~2_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(11)) # ((\PROC|state.in1~q\ & \IO_input[3]~input_o\)))) # (!\PROC|state.load1~q\ & (\PROC|state.in1~q\ & (\IO_input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|state.in1~q\,
	datac => \IO_input[3]~input_o\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(11),
	combout => \PROC|Selector12~2_combout\);

-- Location: LCCOMB_X13_Y59_N12
\PROC|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~6_combout\ = (\PROC|Selector12~5_combout\) # ((\PROC|Selector15~0_combout\) # ((\PROC|Selector12~3_combout\) # (\PROC|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector12~5_combout\,
	datab => \PROC|Selector15~0_combout\,
	datac => \PROC|Selector12~3_combout\,
	datad => \PROC|Selector12~2_combout\,
	combout => \PROC|Selector12~6_combout\);

-- Location: LCCOMB_X13_Y59_N28
\PROC|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector12~7_combout\ = (\PROC|Selector12~1_combout\) # ((\PROC|Selector12~6_combout\ & ((!\PROC|AC[9]~9_combout\) # (!\PROC|ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|AC[9]~9_combout\,
	datac => \PROC|Selector12~1_combout\,
	datad => \PROC|Selector12~6_combout\,
	combout => \PROC|Selector12~7_combout\);

-- Location: FF_X13_Y59_N29
\PROC|AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector12~7_combout\,
	ena => \PROC|AC[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(11));

-- Location: LCCOMB_X13_Y58_N0
\PROC|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~4_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(11)))) # (!\PROC|IR\(0) & (\PROC|AC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(10),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(11),
	combout => \PROC|ShiftRight0~4_combout\);

-- Location: LCCOMB_X14_Y58_N4
\PROC|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~23_combout\ = (\PROC|IR\(0) & (\PROC|AC\(13))) # (!\PROC|IR\(0) & ((\PROC|AC\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(13),
	datab => \PROC|AC\(12),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftRight0~23_combout\);

-- Location: LCCOMB_X13_Y58_N14
\PROC|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~24_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~23_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftRight0~4_combout\,
	datac => \PROC|ShiftRight0~23_combout\,
	combout => \PROC|ShiftRight0~24_combout\);

-- Location: LCCOMB_X13_Y58_N28
\PROC|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~4_combout\ = (\PROC|Selector17~3_combout\ & ((\PROC|AC\(15)) # ((!\PROC|AC[4]~7_combout\)))) # (!\PROC|Selector17~3_combout\ & (((\PROC|ShiftRight0~24_combout\ & \PROC|AC[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector17~3_combout\,
	datab => \PROC|AC\(15),
	datac => \PROC|ShiftRight0~24_combout\,
	datad => \PROC|AC[4]~7_combout\,
	combout => \PROC|Selector17~4_combout\);

-- Location: LCCOMB_X14_Y59_N16
\PROC|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~5_combout\ = (\PROC|state.shr0~q\ & ((\PROC|Selector17~4_combout\) # ((\IO_input[6]~input_o\ & \PROC|state.in1~q\)))) # (!\PROC|state.shr0~q\ & (\IO_input[6]~input_o\ & ((\PROC|state.in1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shr0~q\,
	datab => \IO_input[6]~input_o\,
	datac => \PROC|Selector17~4_combout\,
	datad => \PROC|state.in1~q\,
	combout => \PROC|Selector17~5_combout\);

-- Location: LCCOMB_X14_Y59_N12
\PROC|Selector17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~9_combout\ = (\PROC|Selector17~5_combout\) # ((\PROC|Add1~22_combout\ & ((\PROC|state.add1~q\) # (\PROC|state.sub0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datab => \PROC|Add1~22_combout\,
	datac => \PROC|state.sub0~q\,
	datad => \PROC|Selector17~5_combout\,
	combout => \PROC|Selector17~9_combout\);

-- Location: LCCOMB_X14_Y59_N10
\PROC|Selector17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector17~8_combout\ = (\PROC|Selector17~7_combout\) # ((\PROC|Selector17~2_combout\) # ((\PROC|Selector17~6_combout\) # (\PROC|Selector17~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector17~7_combout\,
	datab => \PROC|Selector17~2_combout\,
	datac => \PROC|Selector17~6_combout\,
	datad => \PROC|Selector17~9_combout\,
	combout => \PROC|Selector17~8_combout\);

-- Location: LCCOMB_X11_Y59_N14
\PROC|AC[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[2]~12_combout\ = (!\reset~input_o\ & (!\PROC|WideOr1~1_combout\ & ((!\PROC|state.in1~q\) # (!\PROC|IR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|state.in1~q\,
	datac => \reset~input_o\,
	datad => \PROC|WideOr1~1_combout\,
	combout => \PROC|AC[2]~12_combout\);

-- Location: FF_X14_Y59_N11
\PROC|AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector17~8_combout\,
	ena => \PROC|AC[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(6));

-- Location: LCCOMB_X13_Y57_N6
\PROC|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~14_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(5)))) # (!\PROC|IR\(0) & (\PROC|AC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(6),
	datad => \PROC|AC\(5),
	combout => \PROC|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X14_Y57_N8
\PROC|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~19_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~14_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~18_combout\,
	datab => \PROC|ShiftLeft0~14_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X14_Y57_N10
\PROC|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~2_combout\ = (\PROC|ShiftLeft0~9_combout\ & ((\PROC|Selector15~1_combout\) # ((\PROC|ShiftLeft0~19_combout\ & \PROC|AC[9]~9_combout\)))) # (!\PROC|ShiftLeft0~9_combout\ & (\PROC|ShiftLeft0~19_combout\ & (\PROC|AC[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~9_combout\,
	datab => \PROC|ShiftLeft0~19_combout\,
	datac => \PROC|AC[9]~9_combout\,
	datad => \PROC|Selector15~1_combout\,
	combout => \PROC|Selector15~2_combout\);

-- Location: IOIBUF_X115_Y37_N8
\IO_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(0),
	o => \IO_input[0]~input_o\);

-- Location: LCCOMB_X16_Y58_N24
\PROC|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~5_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(8)) # ((\PROC|state.in1~q\ & \IO_input[0]~input_o\)))) # (!\PROC|state.load1~q\ & (\PROC|state.in1~q\ & (\IO_input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|state.in1~q\,
	datac => \IO_input[0]~input_o\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(8),
	combout => \PROC|Selector15~5_combout\);

-- Location: LCCOMB_X16_Y58_N6
\PROC|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~6_combout\ = (\PROC|Selector15~5_combout\) # ((\PROC|state.nand0~q\ & ((!\PROC|AC\(8)) # (!\PROC|RT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(8),
	datab => \PROC|state.nand0~q\,
	datac => \PROC|AC\(8),
	datad => \PROC|Selector15~5_combout\,
	combout => \PROC|Selector15~6_combout\);

-- Location: LCCOMB_X16_Y58_N12
\PROC|Selector15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~7_combout\ = (\PROC|Selector15~0_combout\) # ((\PROC|Selector15~6_combout\) # ((\PROC|Add1~28_combout\ & !\PROC|AC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~28_combout\,
	datab => \PROC|Selector15~0_combout\,
	datac => \PROC|AC[0]~3_combout\,
	datad => \PROC|Selector15~6_combout\,
	combout => \PROC|Selector15~7_combout\);

-- Location: LCCOMB_X11_Y57_N0
\PROC|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~4_combout\ = (\PROC|AC\(0) & (\PROC|Selector15~3_combout\ & \PROC|AC[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(0),
	datac => \PROC|Selector15~3_combout\,
	datad => \PROC|AC[0]~4_combout\,
	combout => \PROC|Selector15~4_combout\);

-- Location: LCCOMB_X11_Y58_N0
\PROC|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~8_combout\ = (\PROC|Selector15~7_combout\) # ((\PROC|Selector15~4_combout\) # ((\PROC|ShiftRight0~9_combout\ & \PROC|AC[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~9_combout\,
	datab => \PROC|AC[0]~5_combout\,
	datac => \PROC|Selector15~7_combout\,
	datad => \PROC|Selector15~4_combout\,
	combout => \PROC|Selector15~8_combout\);

-- Location: LCCOMB_X11_Y58_N20
\PROC|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector15~9_combout\ = (\PROC|ShiftRight0~10_combout\ & (!\PROC|AC[9]~9_combout\ & ((\PROC|Selector15~2_combout\) # (\PROC|Selector15~8_combout\)))) # (!\PROC|ShiftRight0~10_combout\ & (((\PROC|Selector15~2_combout\) # 
-- (\PROC|Selector15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|AC[9]~9_combout\,
	datac => \PROC|Selector15~2_combout\,
	datad => \PROC|Selector15~8_combout\,
	combout => \PROC|Selector15~9_combout\);

-- Location: FF_X11_Y58_N21
\PROC|AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector15~9_combout\,
	ena => \PROC|AC[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(8));

-- Location: LCCOMB_X18_Y58_N14
\PROC|Selector16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~9_combout\ = (\PROC|AC\(7) & ((\PROC|WideOr1~1_combout\) # ((\PROC|state.in1~q\ & \PROC|IR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.in1~q\,
	datab => \PROC|AC\(7),
	datac => \PROC|IR\(0),
	datad => \PROC|WideOr1~1_combout\,
	combout => \PROC|Selector16~9_combout\);

-- Location: FF_X17_Y58_N25
\PROC|RT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(7));

-- Location: LCCOMB_X17_Y58_N0
\PROC|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~25_combout\ = ((\PROC|Add1~24_combout\ $ (\PROC|AC\(7) $ (\PROC|Add1~23\)))) # (GND)
-- \PROC|Add1~26\ = CARRY((\PROC|Add1~24_combout\ & (\PROC|AC\(7) & !\PROC|Add1~23\)) # (!\PROC|Add1~24_combout\ & ((\PROC|AC\(7)) # (!\PROC|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~24_combout\,
	datab => \PROC|AC\(7),
	datad => VCC,
	cin => \PROC|Add1~23\,
	combout => \PROC|Add1~25_combout\,
	cout => \PROC|Add1~26\);

-- Location: LCCOMB_X18_Y58_N20
\PROC|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~6_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(7)) # ((!\PROC|AC[0]~3_combout\ & \PROC|Add1~25_combout\)))) # (!\PROC|state.load1~q\ & (!\PROC|AC[0]~3_combout\ & (\PROC|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|Add1~25_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(7),
	combout => \PROC|Selector16~6_combout\);

-- Location: LCCOMB_X18_Y58_N30
\PROC|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~7_combout\ = (\PROC|Selector16~6_combout\) # ((\PROC|state.nand0~q\ & ((!\PROC|AC\(7)) # (!\PROC|RT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|RT\(7),
	datac => \PROC|AC\(7),
	datad => \PROC|Selector16~6_combout\,
	combout => \PROC|Selector16~7_combout\);

-- Location: LCCOMB_X12_Y57_N22
\PROC|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~18_combout\ = (\PROC|IR\(0) & (\PROC|AC\(10))) # (!\PROC|IR\(0) & ((\PROC|AC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(10),
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(9),
	combout => \PROC|ShiftRight0~18_combout\);

-- Location: LCCOMB_X12_Y57_N6
\PROC|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~12_combout\ = (\PROC|IR\(0) & (\PROC|AC\(8))) # (!\PROC|IR\(0) & ((\PROC|AC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(8),
	datad => \PROC|AC\(7),
	combout => \PROC|ShiftRight0~12_combout\);

-- Location: LCCOMB_X12_Y57_N26
\PROC|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~26_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~18_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~18_combout\,
	datad => \PROC|ShiftRight0~12_combout\,
	combout => \PROC|ShiftRight0~26_combout\);

-- Location: LCCOMB_X12_Y59_N16
\PROC|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~17_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftLeft0~11_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftLeft0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~16_combout\,
	datab => \PROC|ShiftLeft0~11_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X12_Y57_N24
\PROC|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~3_combout\ = (\PROC|state.shl0~q\ & ((\PROC|ShiftLeft0~17_combout\) # ((\PROC|state.shr0~q\ & \PROC|ShiftRight0~26_combout\)))) # (!\PROC|state.shl0~q\ & (\PROC|state.shr0~q\ & (\PROC|ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl0~q\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|ShiftRight0~26_combout\,
	datad => \PROC|ShiftLeft0~17_combout\,
	combout => \PROC|Selector16~3_combout\);

-- Location: LCCOMB_X12_Y57_N10
\PROC|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~2_combout\ = (\PROC|state.shl0~q\ & ((\PROC|ShiftLeft0~7_combout\) # ((\PROC|state.shr0~q\ & \PROC|ShiftRight0~27_combout\)))) # (!\PROC|state.shl0~q\ & (\PROC|state.shr0~q\ & (\PROC|ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.shl0~q\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|ShiftRight0~27_combout\,
	datad => \PROC|ShiftLeft0~7_combout\,
	combout => \PROC|Selector16~2_combout\);

-- Location: LCCOMB_X12_Y57_N2
\PROC|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~4_combout\ = (\PROC|AC[0]~8_combout\ & ((\PROC|IR\(2) & ((\PROC|Selector16~2_combout\))) # (!\PROC|IR\(2) & (\PROC|Selector16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~8_combout\,
	datab => \PROC|Selector16~3_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|Selector16~2_combout\,
	combout => \PROC|Selector16~4_combout\);

-- Location: LCCOMB_X18_Y58_N12
\PROC|Selector16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector16~8_combout\ = (\PROC|Selector16~5_combout\) # ((\PROC|Selector16~9_combout\) # ((\PROC|Selector16~7_combout\) # (\PROC|Selector16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector16~5_combout\,
	datab => \PROC|Selector16~9_combout\,
	datac => \PROC|Selector16~7_combout\,
	datad => \PROC|Selector16~4_combout\,
	combout => \PROC|Selector16~8_combout\);

-- Location: FF_X18_Y58_N13
\PROC|AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector16~8_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(7));

-- Location: LCCOMB_X17_Y58_N6
\PROC|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~34_combout\ = (\PROC|Add1~33_combout\ & ((\PROC|AC\(10) & (!\PROC|Add1~32\)) # (!\PROC|AC\(10) & ((\PROC|Add1~32\) # (GND))))) # (!\PROC|Add1~33_combout\ & ((\PROC|AC\(10) & (\PROC|Add1~32\ & VCC)) # (!\PROC|AC\(10) & (!\PROC|Add1~32\))))
-- \PROC|Add1~35\ = CARRY((\PROC|Add1~33_combout\ & ((!\PROC|Add1~32\) # (!\PROC|AC\(10)))) # (!\PROC|Add1~33_combout\ & (!\PROC|AC\(10) & !\PROC|Add1~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~33_combout\,
	datab => \PROC|AC\(10),
	datad => VCC,
	cin => \PROC|Add1~32\,
	combout => \PROC|Add1~34_combout\,
	cout => \PROC|Add1~35\);

-- Location: IOIBUF_X11_Y0_N8
\IO_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(2),
	o => \IO_input[2]~input_o\);

-- Location: LCCOMB_X14_Y57_N4
\PROC|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~22_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(9)))) # (!\PROC|IR\(0) & (\PROC|AC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(10),
	datac => \PROC|AC\(9),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X14_Y57_N18
\PROC|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~23_combout\ = (\PROC|IR\(1) & (\PROC|ShiftLeft0~18_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~18_combout\,
	datac => \PROC|ShiftLeft0~22_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X14_Y58_N18
\PROC|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~0_combout\ = (\PROC|AC[9]~9_combout\ & ((\PROC|ShiftLeft0~23_combout\) # ((\PROC|state.in1~q\ & \IO_input[2]~input_o\)))) # (!\PROC|AC[9]~9_combout\ & (\PROC|state.in1~q\ & (\IO_input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[9]~9_combout\,
	datab => \PROC|state.in1~q\,
	datac => \IO_input[2]~input_o\,
	datad => \PROC|ShiftLeft0~23_combout\,
	combout => \PROC|Selector13~0_combout\);

-- Location: LCCOMB_X17_Y57_N8
\PROC|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~1_combout\ = (\PROC|state.shr0~q\ & (\PROC|AC\(15) & ((!\PROC|AC[0]~4_combout\) # (!\PROC|AC[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~8_combout\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|AC\(15),
	datad => \PROC|AC[0]~4_combout\,
	combout => \PROC|Selector9~1_combout\);

-- Location: LCCOMB_X16_Y58_N28
\PROC|RT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[14]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|RT[14]~feeder_combout\);

-- Location: FF_X16_Y58_N29
\PROC|RT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|RT[14]~feeder_combout\,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(14));

-- Location: LCCOMB_X18_Y58_N0
\PROC|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~3_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|AC\(14)) # (!\PROC|RT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|RT\(14),
	datad => \PROC|AC\(14),
	combout => \PROC|Selector9~3_combout\);

-- Location: LCCOMB_X18_Y58_N28
\PROC|AC[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[8]~11_combout\ = (!\PROC|WideOr1~1_combout\ & ((\PROC|IR\(0)) # (!\PROC|state.in1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|WideOr1~1_combout\,
	datad => \PROC|state.in1~q\,
	combout => \PROC|AC[8]~11_combout\);

-- Location: LCCOMB_X18_Y58_N26
\PROC|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~2_combout\ = (\PROC|AC\(14) & (((\PROC|AC[0]~4_combout\ & \PROC|AC[0]~5_combout\)) # (!\PROC|AC[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(14),
	datab => \PROC|AC[0]~4_combout\,
	datac => \PROC|AC[0]~5_combout\,
	datad => \PROC|AC[8]~11_combout\,
	combout => \PROC|Selector9~2_combout\);

-- Location: LCCOMB_X18_Y58_N24
\PROC|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~0_combout\ = (\PROC|state.in1~q\ & \PROC|IR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.in1~q\,
	datac => \PROC|IR\(0),
	combout => \PROC|Selector9~0_combout\);

-- Location: LCCOMB_X18_Y58_N18
\PROC|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~5_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(14)) # ((\PROC|Selector9~0_combout\ & \IO_input[6]~input_o\)))) # (!\PROC|state.load1~q\ & (\PROC|Selector9~0_combout\ & (\IO_input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|Selector9~0_combout\,
	datac => \IO_input[6]~input_o\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|Selector9~5_combout\);

-- Location: LCCOMB_X18_Y58_N16
\PROC|Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~6_combout\ = (\PROC|Selector9~4_combout\) # ((\PROC|Selector9~3_combout\) # ((\PROC|Selector9~2_combout\) # (\PROC|Selector9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector9~4_combout\,
	datab => \PROC|Selector9~3_combout\,
	datac => \PROC|Selector9~2_combout\,
	datad => \PROC|Selector9~5_combout\,
	combout => \PROC|Selector9~6_combout\);

-- Location: LCCOMB_X18_Y58_N10
\PROC|Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector9~7_combout\ = (\PROC|Selector9~1_combout\) # ((\PROC|Selector9~6_combout\) # ((\PROC|Add1~46_combout\ & !\PROC|AC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~46_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|Selector9~1_combout\,
	datad => \PROC|Selector9~6_combout\,
	combout => \PROC|Selector9~7_combout\);

-- Location: FF_X18_Y58_N11
\PROC|AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector9~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(14));

-- Location: LCCOMB_X13_Y58_N20
\PROC|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~22_combout\ = (\PROC|IR\(0) & (\PROC|AC\(15))) # (!\PROC|IR\(0) & ((\PROC|IR\(1) & (\PROC|AC\(15))) # (!\PROC|IR\(1) & ((\PROC|AC\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(14),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~22_combout\);

-- Location: LCCOMB_X13_Y58_N16
\PROC|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~25_combout\ = (\PROC|IR\(2) & ((\PROC|ShiftRight0~22_combout\))) # (!\PROC|IR\(2) & (\PROC|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~24_combout\,
	datad => \PROC|ShiftRight0~22_combout\,
	combout => \PROC|ShiftRight0~25_combout\);

-- Location: LCCOMB_X13_Y58_N6
\PROC|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~2_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(10)) # ((\PROC|ShiftRight0~25_combout\ & \PROC|AC[0]~5_combout\)))) # (!\PROC|state.load1~q\ & (\PROC|ShiftRight0~25_combout\ & 
-- (\PROC|AC[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|ShiftRight0~25_combout\,
	datac => \PROC|AC[0]~5_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(10),
	combout => \PROC|Selector13~2_combout\);

-- Location: LCCOMB_X13_Y58_N12
\PROC|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~3_combout\ = (\PROC|Selector13~1_combout\) # ((\PROC|Selector13~0_combout\) # ((\PROC|Selector15~0_combout\) # (\PROC|Selector13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector13~1_combout\,
	datab => \PROC|Selector13~0_combout\,
	datac => \PROC|Selector15~0_combout\,
	datad => \PROC|Selector13~2_combout\,
	combout => \PROC|Selector13~3_combout\);

-- Location: LCCOMB_X13_Y58_N10
\PROC|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~4_combout\ = (\PROC|Selector13~3_combout\) # ((\PROC|Add1~34_combout\ & ((\PROC|state.add1~q\) # (\PROC|state.sub0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datab => \PROC|state.sub0~q\,
	datac => \PROC|Add1~34_combout\,
	datad => \PROC|Selector13~3_combout\,
	combout => \PROC|Selector13~4_combout\);

-- Location: LCCOMB_X13_Y58_N22
\PROC|Selector13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector13~7_combout\ = (\PROC|ShiftRight0~10_combout\ & (((!\PROC|AC[9]~9_combout\ & \PROC|Selector13~4_combout\)))) # (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector13~6_combout\) # ((\PROC|Selector13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector13~6_combout\,
	datab => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|AC[9]~9_combout\,
	datad => \PROC|Selector13~4_combout\,
	combout => \PROC|Selector13~7_combout\);

-- Location: FF_X13_Y58_N23
\PROC|AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector13~7_combout\,
	ena => \PROC|AC[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(10));

-- Location: LCCOMB_X17_Y58_N10
\PROC|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~40_combout\ = (\PROC|AC\(12) & ((\PROC|Add1~39_combout\ & (!\PROC|Add1~38\)) # (!\PROC|Add1~39_combout\ & (\PROC|Add1~38\ & VCC)))) # (!\PROC|AC\(12) & ((\PROC|Add1~39_combout\ & ((\PROC|Add1~38\) # (GND))) # (!\PROC|Add1~39_combout\ & 
-- (!\PROC|Add1~38\))))
-- \PROC|Add1~41\ = CARRY((\PROC|AC\(12) & (\PROC|Add1~39_combout\ & !\PROC|Add1~38\)) # (!\PROC|AC\(12) & ((\PROC|Add1~39_combout\) # (!\PROC|Add1~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(12),
	datab => \PROC|Add1~39_combout\,
	datad => VCC,
	cin => \PROC|Add1~38\,
	combout => \PROC|Add1~40_combout\,
	cout => \PROC|Add1~41\);

-- Location: LCCOMB_X17_Y58_N12
\PROC|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~43_combout\ = ((\PROC|Add1~42_combout\ $ (\PROC|AC\(13) $ (\PROC|Add1~41\)))) # (GND)
-- \PROC|Add1~44\ = CARRY((\PROC|Add1~42_combout\ & (\PROC|AC\(13) & !\PROC|Add1~41\)) # (!\PROC|Add1~42_combout\ & ((\PROC|AC\(13)) # (!\PROC|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~42_combout\,
	datab => \PROC|AC\(13),
	datad => VCC,
	cin => \PROC|Add1~41\,
	combout => \PROC|Add1~43_combout\,
	cout => \PROC|Add1~44\);

-- Location: IOIBUF_X0_Y52_N1
\IO_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_input(5),
	o => \IO_input[5]~input_o\);

-- Location: M9K_X15_Y58_N0
\MEM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020001400020000C000500000000000000000000000000000000000000000000000000000000000000000000000000000000000C340125030040B0102804090101C2008080182005240108C0022000840220",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "programa.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IP_RAM_256_x_16:MEM|altsyncram:altsyncram_component|altsyncram_dfi1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \PROC|state.store0~q\,
	portare => VCC,
	clk0 => \reloj~inputclkctrl_outclk\,
	portadatain => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y58_N30
\PROC|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~5_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(13)) # ((\PROC|state.in1~q\ & \IO_input[5]~input_o\)))) # (!\PROC|state.load1~q\ & (\PROC|state.in1~q\ & (\IO_input[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|state.in1~q\,
	datac => \IO_input[5]~input_o\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(13),
	combout => \PROC|Selector10~5_combout\);

-- Location: LCCOMB_X13_Y57_N2
\PROC|Selector10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~6_combout\ = (\PROC|Selector15~0_combout\) # (\PROC|Selector10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Selector15~0_combout\,
	datad => \PROC|Selector10~5_combout\,
	combout => \PROC|Selector10~6_combout\);

-- Location: LCCOMB_X13_Y57_N24
\PROC|Selector10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector10~7_combout\ = (\PROC|Selector10~4_combout\) # ((\PROC|Selector10~6_combout\) # ((!\PROC|AC[0]~3_combout\ & \PROC|Add1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector10~4_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|Add1~43_combout\,
	datad => \PROC|Selector10~6_combout\,
	combout => \PROC|Selector10~7_combout\);

-- Location: FF_X13_Y57_N25
\PROC|AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector10~7_combout\,
	ena => \PROC|AC[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(13));

-- Location: LCCOMB_X13_Y57_N30
\PROC|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~15_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(14)))) # (!\PROC|IR\(0) & (\PROC|AC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(13),
	datac => \PROC|AC\(14),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftRight0~15_combout\);

-- Location: LCCOMB_X13_Y57_N8
\PROC|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~30_combout\ = (\PROC|IR\(2) & (\PROC|AC\(15))) # (!\PROC|IR\(2) & ((\PROC|IR\(1) & (\PROC|AC\(15))) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~15_combout\,
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftRight0~30_combout\);

-- Location: LCCOMB_X13_Y57_N20
\PROC|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~13_combout\ = (\PROC|IR\(0) & (\PROC|AC\(6))) # (!\PROC|IR\(0) & ((\PROC|AC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(6),
	datad => \PROC|AC\(5),
	combout => \PROC|ShiftRight0~13_combout\);

-- Location: LCCOMB_X12_Y57_N0
\PROC|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~14_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~12_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~13_combout\,
	datad => \PROC|ShiftRight0~12_combout\,
	combout => \PROC|ShiftRight0~14_combout\);

-- Location: LCCOMB_X12_Y58_N10
\PROC|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~3_combout\ = (\PROC|AC[0]~8_combout\ & (!\PROC|AC[4]~7_combout\ & ((\PROC|ShiftRight0~14_combout\)))) # (!\PROC|AC[0]~8_combout\ & ((\PROC|AC[4]~7_combout\) # ((\PROC|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~8_combout\,
	datab => \PROC|AC[4]~7_combout\,
	datac => \PROC|ShiftRight0~30_combout\,
	datad => \PROC|ShiftRight0~14_combout\,
	combout => \PROC|Selector18~3_combout\);

-- Location: LCCOMB_X12_Y58_N0
\PROC|Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~4_combout\ = (\PROC|AC[4]~7_combout\ & ((\PROC|Selector18~3_combout\ & ((\PROC|AC\(15)))) # (!\PROC|Selector18~3_combout\ & (\PROC|ShiftRight0~19_combout\)))) # (!\PROC|AC[4]~7_combout\ & (((\PROC|Selector18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~19_combout\,
	datab => \PROC|AC[4]~7_combout\,
	datac => \PROC|AC\(15),
	datad => \PROC|Selector18~3_combout\,
	combout => \PROC|Selector18~4_combout\);

-- Location: LCCOMB_X14_Y59_N24
\PROC|Selector18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~5_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(5)) # ((\PROC|state.shr0~q\ & \PROC|Selector18~4_combout\)))) # (!\PROC|state.load1~q\ & (\PROC|state.shr0~q\ & (\PROC|Selector18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|Selector18~4_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(5),
	combout => \PROC|Selector18~5_combout\);

-- Location: LCCOMB_X14_Y59_N18
\PROC|Selector18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~8_combout\ = (\PROC|Selector18~7_combout\) # ((\PROC|Selector18~5_combout\) # ((\PROC|Selector18~2_combout\ & \PROC|ShiftLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~2_combout\,
	datab => \PROC|Selector18~7_combout\,
	datac => \PROC|ShiftLeft0~13_combout\,
	datad => \PROC|Selector18~5_combout\,
	combout => \PROC|Selector18~8_combout\);

-- Location: LCCOMB_X14_Y59_N8
\PROC|Selector18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~9_combout\ = (\PROC|Selector18~6_combout\) # ((\PROC|Selector18~8_combout\) # ((\IO_input[5]~input_o\ & \PROC|state.in1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[5]~input_o\,
	datab => \PROC|state.in1~q\,
	datac => \PROC|Selector18~6_combout\,
	datad => \PROC|Selector18~8_combout\,
	combout => \PROC|Selector18~9_combout\);

-- Location: FF_X14_Y59_N9
\PROC|AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector18~9_combout\,
	ena => \PROC|AC[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(5));

-- Location: LCCOMB_X16_Y58_N0
\PROC|RT[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|RT[12]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM|altsyncram_component|auto_generated|q_a\(12),
	combout => \PROC|RT[12]~feeder_combout\);

-- Location: FF_X16_Y58_N1
\PROC|RT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|RT[12]~feeder_combout\,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(12));

-- Location: LCCOMB_X16_Y58_N20
\PROC|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~39_combout\ = \PROC|RT\(12) $ (\PROC|state.add1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|RT\(12),
	datad => \PROC|state.add1~q\,
	combout => \PROC|Add1~39_combout\);

-- Location: LCCOMB_X16_Y57_N14
\PROC|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~5_combout\ = (\IO_input[4]~input_o\ & ((\PROC|state.in1~q\) # ((\PROC|state.load1~q\ & \MEM|altsyncram_component|auto_generated|q_a\(12))))) # (!\IO_input[4]~input_o\ & (((\PROC|state.load1~q\ & 
-- \MEM|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[4]~input_o\,
	datab => \PROC|state.in1~q\,
	datac => \PROC|state.load1~q\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(12),
	combout => \PROC|Selector11~5_combout\);

-- Location: LCCOMB_X17_Y57_N2
\PROC|Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~6_combout\ = (\PROC|Selector15~0_combout\) # (\PROC|Selector11~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector15~0_combout\,
	datad => \PROC|Selector11~5_combout\,
	combout => \PROC|Selector11~6_combout\);

-- Location: LCCOMB_X17_Y57_N28
\PROC|Selector11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector11~7_combout\ = (\PROC|Selector11~4_combout\) # ((\PROC|Selector11~6_combout\) # ((\PROC|Add1~40_combout\ & !\PROC|AC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector11~4_combout\,
	datab => \PROC|Add1~40_combout\,
	datac => \PROC|AC[0]~3_combout\,
	datad => \PROC|Selector11~6_combout\,
	combout => \PROC|Selector11~7_combout\);

-- Location: FF_X17_Y57_N29
\PROC|AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector11~7_combout\,
	ena => \PROC|AC[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(12));

-- Location: LCCOMB_X16_Y57_N12
\PROC|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~7_combout\ = (!\PROC|IR\(1) & ((\PROC|IR\(0) & (\PROC|AC\(13))) # (!\PROC|IR\(0) & ((\PROC|AC\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(13),
	datab => \PROC|IR\(1),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(12),
	combout => \PROC|ShiftRight0~7_combout\);

-- Location: LCCOMB_X16_Y59_N0
\PROC|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~29_combout\ = (\PROC|IR\(2) & (\PROC|AC\(15))) # (!\PROC|IR\(2) & (((\PROC|ShiftRight0~8_combout\) # (\PROC|ShiftRight0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|AC\(15),
	datac => \PROC|ShiftRight0~8_combout\,
	datad => \PROC|ShiftRight0~7_combout\,
	combout => \PROC|ShiftRight0~29_combout\);

-- Location: LCCOMB_X12_Y58_N30
\PROC|AC[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~8_combout\ = (!\PROC|IR\(3) & !\PROC|ShiftRight0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IR\(3),
	datad => \PROC|ShiftRight0~10_combout\,
	combout => \PROC|AC[0]~8_combout\);

-- Location: LCCOMB_X16_Y59_N14
\PROC|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~2_combout\ = (\PROC|AC[4]~7_combout\ & (((!\PROC|AC[0]~8_combout\)))) # (!\PROC|AC[4]~7_combout\ & ((\PROC|AC[0]~8_combout\ & (\PROC|ShiftRight0~2_combout\)) # (!\PROC|AC[0]~8_combout\ & ((\PROC|ShiftRight0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~2_combout\,
	datab => \PROC|ShiftRight0~29_combout\,
	datac => \PROC|AC[4]~7_combout\,
	datad => \PROC|AC[0]~8_combout\,
	combout => \PROC|Selector19~2_combout\);

-- Location: LCCOMB_X14_Y57_N24
\PROC|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~5_combout\ = (\PROC|IR\(0) & (\PROC|AC\(9))) # (!\PROC|IR\(0) & ((\PROC|AC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(9),
	datad => \PROC|AC\(8),
	combout => \PROC|ShiftRight0~5_combout\);

-- Location: LCCOMB_X16_Y59_N12
\PROC|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~6_combout\ = (\PROC|IR\(1) & (\PROC|ShiftRight0~4_combout\)) # (!\PROC|IR\(1) & ((\PROC|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|ShiftRight0~4_combout\,
	datad => \PROC|ShiftRight0~5_combout\,
	combout => \PROC|ShiftRight0~6_combout\);

-- Location: LCCOMB_X16_Y59_N4
\PROC|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~3_combout\ = (\PROC|Selector19~2_combout\ & ((\PROC|AC\(15)) # ((!\PROC|AC[4]~7_combout\)))) # (!\PROC|Selector19~2_combout\ & (((\PROC|AC[4]~7_combout\ & \PROC|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|Selector19~2_combout\,
	datac => \PROC|AC[4]~7_combout\,
	datad => \PROC|ShiftRight0~6_combout\,
	combout => \PROC|Selector19~3_combout\);

-- Location: LCCOMB_X16_Y59_N2
\PROC|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~4_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(4)) # ((\PROC|state.shr0~q\ & \PROC|Selector19~3_combout\)))) # (!\PROC|state.load1~q\ & (\PROC|state.shr0~q\ & (\PROC|Selector19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|Selector19~3_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(4),
	combout => \PROC|Selector19~4_combout\);

-- Location: LCCOMB_X16_Y59_N22
\PROC|Selector19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~7_combout\ = (\PROC|Selector19~6_combout\) # ((\PROC|Selector19~4_combout\) # ((\PROC|Selector18~2_combout\ & \PROC|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~2_combout\,
	datab => \PROC|ShiftLeft0~10_combout\,
	datac => \PROC|Selector19~6_combout\,
	datad => \PROC|Selector19~4_combout\,
	combout => \PROC|Selector19~7_combout\);

-- Location: LCCOMB_X14_Y59_N6
\PROC|Selector19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector19~8_combout\ = (\PROC|Selector19~5_combout\) # ((\PROC|Selector19~7_combout\) # ((\IO_input[4]~input_o\ & \PROC|state.in1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[4]~input_o\,
	datab => \PROC|state.in1~q\,
	datac => \PROC|Selector19~5_combout\,
	datad => \PROC|Selector19~7_combout\,
	combout => \PROC|Selector19~8_combout\);

-- Location: FF_X14_Y59_N7
\PROC|AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector19~8_combout\,
	ena => \PROC|AC[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(4));

-- Location: LCCOMB_X11_Y58_N30
\PROC|IR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IR[0]~0_combout\ = (\PROC|state.fetch1~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|state.fetch1~q\,
	datac => \reset~input_o\,
	combout => \PROC|IR[0]~0_combout\);

-- Location: FF_X10_Y58_N27
\PROC|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(5));

-- Location: LCCOMB_X10_Y58_N16
\PROC|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~10_combout\ = (\PROC|IR\(7)) # ((\PROC|IR\(6)) # ((\PROC|IR\(5)) # (\PROC|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(7),
	datab => \PROC|IR\(6),
	datac => \PROC|IR\(5),
	datad => \PROC|IR\(4),
	combout => \PROC|ShiftRight0~10_combout\);

-- Location: LCCOMB_X13_Y57_N0
\PROC|AC[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~2_combout\ = (\PROC|IR\(3)) # ((!\PROC|IR\(2) & \PROC|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datac => \PROC|IR\(2),
	datad => \PROC|IR\(1),
	combout => \PROC|AC[0]~2_combout\);

-- Location: LCCOMB_X13_Y57_N26
\PROC|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~2_combout\ = (!\PROC|IR\(3) & !\PROC|IR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IR\(3),
	datad => \PROC|IR\(2),
	combout => \PROC|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X12_Y57_N8
\PROC|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~0_combout\ = (\PROC|AC[0]~2_combout\ & (((!\PROC|ShiftLeft0~2_combout\)))) # (!\PROC|AC[0]~2_combout\ & ((\PROC|ShiftLeft0~2_combout\ & (\PROC|ShiftRight0~11_combout\)) # (!\PROC|ShiftLeft0~2_combout\ & 
-- ((\PROC|ShiftRight0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~11_combout\,
	datab => \PROC|AC[0]~2_combout\,
	datac => \PROC|ShiftRight0~26_combout\,
	datad => \PROC|ShiftLeft0~2_combout\,
	combout => \PROC|Selector20~0_combout\);

-- Location: LCCOMB_X12_Y57_N18
\PROC|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~1_combout\ = (\PROC|AC[0]~2_combout\ & ((\PROC|Selector20~0_combout\ & ((\PROC|ShiftRight0~28_combout\))) # (!\PROC|Selector20~0_combout\ & (\PROC|ShiftRight0~13_combout\)))) # (!\PROC|AC[0]~2_combout\ & (((\PROC|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~13_combout\,
	datab => \PROC|AC[0]~2_combout\,
	datac => \PROC|Selector20~0_combout\,
	datad => \PROC|ShiftRight0~28_combout\,
	combout => \PROC|Selector20~1_combout\);

-- Location: LCCOMB_X12_Y57_N4
\PROC|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~2_combout\ = (\PROC|state.shr0~q\ & ((\PROC|ShiftRight0~10_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.shr0~q\,
	datac => \PROC|ShiftRight0~10_combout\,
	datad => \PROC|Selector20~1_combout\,
	combout => \PROC|Selector20~2_combout\);

-- Location: LCCOMB_X14_Y59_N20
\PROC|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~3_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(3)) # ((\IO_input[3]~input_o\ & \PROC|state.in1~q\)))) # (!\PROC|state.load1~q\ & (\IO_input[3]~input_o\ & ((\PROC|state.in1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \IO_input[3]~input_o\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(3),
	datad => \PROC|state.in1~q\,
	combout => \PROC|Selector20~3_combout\);

-- Location: LCCOMB_X14_Y59_N2
\PROC|Selector20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~4_combout\ = (\PROC|Selector20~3_combout\) # ((\PROC|state.nand0~q\ & ((!\PROC|AC\(3)) # (!\PROC|RT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|RT\(3),
	datab => \PROC|AC\(3),
	datac => \PROC|state.nand0~q\,
	datad => \PROC|Selector20~3_combout\,
	combout => \PROC|Selector20~4_combout\);

-- Location: LCCOMB_X14_Y59_N0
\PROC|Selector20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~5_combout\ = (\PROC|Selector20~2_combout\) # ((\PROC|Selector20~4_combout\) # ((!\PROC|AC[0]~3_combout\ & \PROC|Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~3_combout\,
	datab => \PROC|Add1~13_combout\,
	datac => \PROC|Selector20~2_combout\,
	datad => \PROC|Selector20~4_combout\,
	combout => \PROC|Selector20~5_combout\);

-- Location: LCCOMB_X14_Y59_N4
\PROC|Selector20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector20~6_combout\ = (\PROC|Selector20~5_combout\) # ((\PROC|Selector18~2_combout\ & (\PROC|ShiftLeft0~7_combout\ & !\PROC|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~2_combout\,
	datab => \PROC|ShiftLeft0~7_combout\,
	datac => \PROC|IR\(2),
	datad => \PROC|Selector20~5_combout\,
	combout => \PROC|Selector20~6_combout\);

-- Location: FF_X14_Y59_N5
\PROC|AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector20~6_combout\,
	ena => \PROC|AC[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(3));

-- Location: FF_X13_Y57_N27
\PROC|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(3));

-- Location: LCCOMB_X16_Y57_N26
\PROC|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector18~2_combout\ = (!\PROC|ShiftRight0~10_combout\ & (\PROC|state.shl0~q\ & !\PROC|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datac => \PROC|state.shl0~q\,
	datad => \PROC|IR\(3),
	combout => \PROC|Selector18~2_combout\);

-- Location: LCCOMB_X14_Y57_N6
\PROC|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~36_combout\ = (\PROC|IR\(1) & (!\PROC|IR\(0) & ((\PROC|AC\(0))))) # (!\PROC|IR\(1) & (((\PROC|ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~5_combout\,
	datad => \PROC|AC\(0),
	combout => \PROC|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X16_Y57_N0
\PROC|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~3_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(3)))) # (!\PROC|IR\(0) & (\PROC|AC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(3),
	combout => \PROC|ShiftRight0~3_combout\);

-- Location: LCCOMB_X12_Y59_N24
\PROC|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~1_combout\ = (\PROC|IR\(0) & (\PROC|AC\(5))) # (!\PROC|IR\(0) & ((\PROC|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(5),
	datac => \PROC|AC\(4),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftRight0~1_combout\);

-- Location: LCCOMB_X12_Y58_N4
\PROC|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~0_combout\ = (\PROC|ShiftLeft0~2_combout\ & ((\PROC|AC[0]~2_combout\ & ((\PROC|ShiftRight0~1_combout\))) # (!\PROC|AC[0]~2_combout\ & (\PROC|ShiftRight0~3_combout\)))) # (!\PROC|ShiftLeft0~2_combout\ & (\PROC|AC[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~2_combout\,
	datab => \PROC|AC[0]~2_combout\,
	datac => \PROC|ShiftRight0~3_combout\,
	datad => \PROC|ShiftRight0~1_combout\,
	combout => \PROC|Selector21~0_combout\);

-- Location: LCCOMB_X14_Y57_N22
\PROC|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~0_combout\ = (\PROC|IR\(0) & (\PROC|AC\(7))) # (!\PROC|IR\(0) & ((\PROC|AC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(7),
	datad => \PROC|AC\(6),
	combout => \PROC|ShiftRight0~0_combout\);

-- Location: LCCOMB_X14_Y57_N16
\PROC|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~21_combout\ = (\PROC|IR\(1) & ((\PROC|ShiftRight0~5_combout\))) # (!\PROC|IR\(1) & (\PROC|ShiftRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftRight0~0_combout\,
	datad => \PROC|ShiftRight0~5_combout\,
	combout => \PROC|ShiftRight0~21_combout\);

-- Location: LCCOMB_X12_Y58_N24
\PROC|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~1_combout\ = (\PROC|ShiftLeft0~2_combout\ & (\PROC|Selector21~0_combout\)) # (!\PROC|ShiftLeft0~2_combout\ & ((\PROC|Selector21~0_combout\ & ((\PROC|ShiftRight0~25_combout\))) # (!\PROC|Selector21~0_combout\ & 
-- (\PROC|ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~2_combout\,
	datab => \PROC|Selector21~0_combout\,
	datac => \PROC|ShiftRight0~21_combout\,
	datad => \PROC|ShiftRight0~25_combout\,
	combout => \PROC|Selector21~1_combout\);

-- Location: LCCOMB_X12_Y58_N16
\PROC|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~2_combout\ = (\PROC|state.shr0~q\ & ((\PROC|ShiftRight0~10_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector21~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|Selector21~1_combout\,
	datac => \PROC|state.shr0~q\,
	datad => \PROC|ShiftRight0~10_combout\,
	combout => \PROC|Selector21~2_combout\);

-- Location: FF_X17_Y59_N1
\PROC|RT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(2));

-- Location: LCCOMB_X14_Y58_N10
\PROC|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~3_combout\ = (\IO_input[2]~input_o\ & ((\PROC|state.in1~q\) # ((\MEM|altsyncram_component|auto_generated|q_a\(2) & \PROC|state.load1~q\)))) # (!\IO_input[2]~input_o\ & (((\MEM|altsyncram_component|auto_generated|q_a\(2) & 
-- \PROC|state.load1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[2]~input_o\,
	datab => \PROC|state.in1~q\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(2),
	datad => \PROC|state.load1~q\,
	combout => \PROC|Selector21~3_combout\);

-- Location: LCCOMB_X14_Y58_N24
\PROC|Selector21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~4_combout\ = (\PROC|Selector21~3_combout\) # ((\PROC|state.nand0~q\ & ((!\PROC|RT\(2)) # (!\PROC|AC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|AC\(2),
	datac => \PROC|RT\(2),
	datad => \PROC|Selector21~3_combout\,
	combout => \PROC|Selector21~4_combout\);

-- Location: LCCOMB_X13_Y58_N18
\PROC|Selector21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~5_combout\ = (\PROC|Selector21~2_combout\) # ((\PROC|Selector21~4_combout\) # ((!\PROC|AC[0]~3_combout\ & \PROC|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~3_combout\,
	datab => \PROC|Add1~10_combout\,
	datac => \PROC|Selector21~2_combout\,
	datad => \PROC|Selector21~4_combout\,
	combout => \PROC|Selector21~5_combout\);

-- Location: LCCOMB_X13_Y58_N24
\PROC|Selector21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector21~6_combout\ = (\PROC|Selector21~5_combout\) # ((!\PROC|IR\(2) & (\PROC|Selector18~2_combout\ & \PROC|ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|Selector18~2_combout\,
	datac => \PROC|ShiftLeft0~36_combout\,
	datad => \PROC|Selector21~5_combout\,
	combout => \PROC|Selector21~6_combout\);

-- Location: FF_X13_Y58_N25
\PROC|AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector21~6_combout\,
	ena => \PROC|AC[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(2));

-- Location: FF_X16_Y58_N21
\PROC|IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(14));

-- Location: FF_X16_Y58_N5
\PROC|IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(12));

-- Location: FF_X16_Y58_N31
\PROC|IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(13));

-- Location: LCCOMB_X16_Y58_N14
\PROC|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~0_combout\ = (!\PROC|IR\(15) & (!\PROC|IR\(14) & (!\PROC|IR\(12) & !\PROC|IR\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(15),
	datab => \PROC|IR\(14),
	datac => \PROC|IR\(12),
	datad => \PROC|IR\(13),
	combout => \PROC|Selector24~0_combout\);

-- Location: LCCOMB_X12_Y58_N22
\PROC|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~30_combout\ = (\PROC|IR\(10) & (!\PROC|IR\(11) & (\PROC|state.decode~q\ & \PROC|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(10),
	datab => \PROC|IR\(11),
	datac => \PROC|state.decode~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|state~30_combout\);

-- Location: LCCOMB_X11_Y59_N22
\PROC|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~40_combout\ = (\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|state~30_combout\,
	combout => \PROC|state~40_combout\);

-- Location: FF_X11_Y59_N23
\PROC|state.nand1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.nand1~q\);

-- Location: FF_X11_Y59_N11
\PROC|state.nand0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.nand1~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.nand0~q\);

-- Location: FF_X16_Y58_N17
\PROC|RT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \PROC|RT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|RT\(15));

-- Location: LCCOMB_X12_Y58_N6
\PROC|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~0_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(15)) # (!\PROC|AC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.nand0~q\,
	datad => \PROC|RT\(15),
	combout => \PROC|Selector8~0_combout\);

-- Location: LCCOMB_X18_Y58_N2
\PROC|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~48_combout\ = \PROC|state.add1~q\ $ (\PROC|RT\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add1~q\,
	datac => \PROC|RT\(15),
	combout => \PROC|Add1~48_combout\);

-- Location: LCCOMB_X17_Y58_N16
\PROC|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Add1~49_combout\ = \PROC|AC\(15) $ (\PROC|Add1~47\ $ (\PROC|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datad => \PROC|Add1~48_combout\,
	cin => \PROC|Add1~47\,
	combout => \PROC|Add1~49_combout\);

-- Location: LCCOMB_X12_Y59_N22
\PROC|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~2_combout\ = (\PROC|state.shr0~q\) # ((\PROC|WideOr1~1_combout\) # ((\PROC|state.in1~q\ & !\PROC|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.in1~q\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|WideOr1~1_combout\,
	datad => \PROC|IR\(0),
	combout => \PROC|Selector8~2_combout\);

-- Location: LCCOMB_X13_Y59_N0
\PROC|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~3_combout\ = (\IO_input[7]~input_o\ & ((\PROC|Selector9~0_combout\) # ((\PROC|Selector8~2_combout\ & \PROC|AC\(15))))) # (!\IO_input[7]~input_o\ & (\PROC|Selector8~2_combout\ & (\PROC|AC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[7]~input_o\,
	datab => \PROC|Selector8~2_combout\,
	datac => \PROC|AC\(15),
	datad => \PROC|Selector9~0_combout\,
	combout => \PROC|Selector8~3_combout\);

-- Location: LCCOMB_X16_Y57_N6
\PROC|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~27_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(12)))) # (!\PROC|IR\(0) & (\PROC|AC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(13),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(12),
	combout => \PROC|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X13_Y57_N28
\PROC|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~33_combout\ = (!\PROC|IR\(1) & ((\PROC|IR\(0) & ((\PROC|AC\(14)))) # (!\PROC|IR\(0) & (\PROC|AC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|IR\(0),
	datac => \PROC|AC\(14),
	datad => \PROC|IR\(1),
	combout => \PROC|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X13_Y57_N10
\PROC|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~34_combout\ = (\PROC|ShiftLeft0~2_combout\ & ((\PROC|ShiftLeft0~33_combout\) # ((\PROC|IR\(1) & \PROC|ShiftLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~2_combout\,
	datab => \PROC|IR\(1),
	datac => \PROC|ShiftLeft0~27_combout\,
	datad => \PROC|ShiftLeft0~33_combout\,
	combout => \PROC|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X13_Y59_N8
\PROC|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~35_combout\ = (\PROC|ShiftLeft0~34_combout\) # ((\PROC|IR\(3) & (\PROC|IR\(2) & \PROC|ShiftLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftLeft0~7_combout\,
	datad => \PROC|ShiftLeft0~34_combout\,
	combout => \PROC|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X13_Y59_N10
\PROC|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftLeft0~32_combout\ = (\PROC|IR\(3) & (!\PROC|IR\(2) & (\PROC|ShiftLeft0~17_combout\))) # (!\PROC|IR\(3) & (\PROC|IR\(2) & ((\PROC|ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftLeft0~17_combout\,
	datad => \PROC|ShiftLeft0~25_combout\,
	combout => \PROC|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X13_Y59_N30
\PROC|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~1_combout\ = (!\PROC|ShiftRight0~10_combout\ & (\PROC|state.shl0~q\ & ((\PROC|ShiftLeft0~35_combout\) # (\PROC|ShiftLeft0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|state.shl0~q\,
	datac => \PROC|ShiftLeft0~35_combout\,
	datad => \PROC|ShiftLeft0~32_combout\,
	combout => \PROC|Selector8~1_combout\);

-- Location: LCCOMB_X13_Y59_N18
\PROC|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~4_combout\ = (\PROC|Selector8~3_combout\) # ((\PROC|Selector8~1_combout\) # ((\PROC|state.load1~q\ & \MEM|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|Selector8~3_combout\,
	datac => \PROC|Selector8~1_combout\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(15),
	combout => \PROC|Selector8~4_combout\);

-- Location: LCCOMB_X13_Y59_N14
\PROC|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector8~5_combout\ = (\PROC|Selector8~0_combout\) # ((\PROC|Selector8~4_combout\) # ((!\PROC|AC[0]~3_combout\ & \PROC|Add1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC[0]~3_combout\,
	datab => \PROC|Selector8~0_combout\,
	datac => \PROC|Add1~49_combout\,
	datad => \PROC|Selector8~4_combout\,
	combout => \PROC|Selector8~5_combout\);

-- Location: FF_X13_Y59_N15
\PROC|AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector8~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(15));

-- Location: LCCOMB_X13_Y57_N18
\PROC|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~11_combout\ = (\PROC|IR\(0) & (\PROC|AC\(4))) # (!\PROC|IR\(0) & ((\PROC|AC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(4),
	datac => \PROC|AC\(3),
	datad => \PROC|IR\(0),
	combout => \PROC|ShiftRight0~11_combout\);

-- Location: LCCOMB_X12_Y57_N14
\PROC|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~0_combout\ = (\PROC|ShiftLeft0~2_combout\ & (\PROC|AC\(2) & (!\PROC|AC[0]~2_combout\))) # (!\PROC|ShiftLeft0~2_combout\ & (((\PROC|AC[0]~2_combout\) # (\PROC|ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(2),
	datab => \PROC|ShiftLeft0~2_combout\,
	datac => \PROC|AC[0]~2_combout\,
	datad => \PROC|ShiftRight0~14_combout\,
	combout => \PROC|Selector22~0_combout\);

-- Location: LCCOMB_X13_Y57_N16
\PROC|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~1_combout\ = (\PROC|AC[0]~2_combout\ & ((\PROC|Selector22~0_combout\ & (\PROC|ShiftRight0~20_combout\)) # (!\PROC|Selector22~0_combout\ & ((\PROC|ShiftRight0~11_combout\))))) # (!\PROC|AC[0]~2_combout\ & (((\PROC|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~20_combout\,
	datab => \PROC|ShiftRight0~11_combout\,
	datac => \PROC|AC[0]~2_combout\,
	datad => \PROC|Selector22~0_combout\,
	combout => \PROC|Selector22~1_combout\);

-- Location: LCCOMB_X13_Y57_N14
\PROC|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~2_combout\ = (\PROC|state.shr0~q\ & ((\PROC|ShiftRight0~10_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector22~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~10_combout\,
	datab => \PROC|state.shr0~q\,
	datac => \PROC|AC\(15),
	datad => \PROC|Selector22~1_combout\,
	combout => \PROC|Selector22~2_combout\);

-- Location: LCCOMB_X16_Y57_N8
\PROC|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~3_combout\ = (\PROC|state.nand0~q\ & ((!\PROC|RT\(1)) # (!\PROC|AC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(1),
	datac => \PROC|RT\(1),
	datad => \PROC|state.nand0~q\,
	combout => \PROC|Selector22~3_combout\);

-- Location: LCCOMB_X16_Y57_N2
\PROC|Selector22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~4_combout\ = (\IO_input[1]~input_o\ & ((\PROC|state.in1~q\) # ((\PROC|state.load1~q\ & \MEM|altsyncram_component|auto_generated|q_a\(1))))) # (!\IO_input[1]~input_o\ & (\PROC|state.load1~q\ & 
-- (\MEM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_input[1]~input_o\,
	datab => \PROC|state.load1~q\,
	datac => \MEM|altsyncram_component|auto_generated|q_a\(1),
	datad => \PROC|state.in1~q\,
	combout => \PROC|Selector22~4_combout\);

-- Location: LCCOMB_X16_Y57_N28
\PROC|Selector22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~5_combout\ = (\PROC|Selector22~3_combout\) # ((\PROC|Selector22~4_combout\) # ((\PROC|Add1~7_combout\ & !\PROC|AC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~7_combout\,
	datab => \PROC|Selector22~3_combout\,
	datac => \PROC|AC[0]~3_combout\,
	datad => \PROC|Selector22~4_combout\,
	combout => \PROC|Selector22~5_combout\);

-- Location: LCCOMB_X16_Y57_N18
\PROC|Selector22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector22~7_combout\ = (\PROC|Selector22~2_combout\) # ((\PROC|Selector22~5_combout\) # ((\PROC|Selector18~2_combout\ & \PROC|Selector22~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~2_combout\,
	datab => \PROC|Selector22~6_combout\,
	datac => \PROC|Selector22~2_combout\,
	datad => \PROC|Selector22~5_combout\,
	combout => \PROC|Selector22~7_combout\);

-- Location: LCCOMB_X12_Y59_N14
\PROC|AC[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~6_combout\ = (\PROC|AC[2]~12_combout\ & ((!\PROC|AC[0]~4_combout\) # (!\PROC|AC[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC[0]~5_combout\,
	datac => \PROC|AC[0]~4_combout\,
	datad => \PROC|AC[2]~12_combout\,
	combout => \PROC|AC[0]~6_combout\);

-- Location: FF_X16_Y57_N19
\PROC|AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector22~7_combout\,
	ena => \PROC|AC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(1));

-- Location: FF_X10_Y58_N11
\PROC|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(7));

-- Location: LCCOMB_X10_Y58_N10
\PROC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector0~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~14_combout\) # ((\PROC|IR\(7) & !\PROC|Selector6~1_combout\)))) # (!\PROC|state.fetch1~q\ & (((\PROC|IR\(7) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Add0~14_combout\,
	datac => \PROC|IR\(7),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector0~0_combout\);

-- Location: LCCOMB_X10_Y58_N30
\PROC|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector0~1_combout\ = (\PROC|Selector0~0_combout\) # ((\PROC|PC\(7) & !\PROC|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector0~0_combout\,
	datac => \PROC|PC\(7),
	datad => \PROC|Selector6~3_combout\,
	combout => \PROC|Selector0~1_combout\);

-- Location: LCCOMB_X11_Y59_N20
\PROC|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~32_combout\ = (\PROC|state~24_combout\ & (!\PROC|IR\(8) & !\PROC|IR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state~24_combout\,
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	combout => \PROC|state~32_combout\);

-- Location: FF_X11_Y59_N21
\PROC|state.jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jzero~q\);

-- Location: LCCOMB_X12_Y58_N18
\PROC|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~31_combout\ = (\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|state~30_combout\,
	combout => \PROC|state~31_combout\);

-- Location: FF_X12_Y58_N19
\PROC|state.jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jpos~q\);

-- Location: LCCOMB_X11_Y58_N24
\PROC|PC[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|PC[0]~1_combout\ = (!\reset~input_o\ & ((\PROC|PC[0]~0_combout\) # ((\PROC|state.jzero~q\) # (\PROC|state.jpos~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC[0]~0_combout\,
	datab => \reset~input_o\,
	datac => \PROC|state.jzero~q\,
	datad => \PROC|state.jpos~q\,
	combout => \PROC|PC[0]~1_combout\);

-- Location: FF_X10_Y58_N31
\PROC|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector0~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(7));

-- Location: FF_X11_Y58_N7
\PROC|state.store1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|state.store0~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.store1~q\);

-- Location: LCCOMB_X11_Y58_N6
\PROC|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector32~0_combout\ = (\PROC|state.out1~q\) # (((\PROC|state.store1~q\) # (!\PROC|Selector6~3_combout\)) # (!\PROC|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.out1~q\,
	datab => \PROC|WideOr1~1_combout\,
	datac => \PROC|state.store1~q\,
	datad => \PROC|Selector6~3_combout\,
	combout => \PROC|Selector32~0_combout\);

-- Location: LCCOMB_X10_Y58_N22
\PROC|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector25~0_combout\ = (\PROC|IR\(7) & ((\PROC|Selector32~1_combout\) # ((\PROC|PC\(7) & \PROC|Selector32~0_combout\)))) # (!\PROC|IR\(7) & (\PROC|PC\(7) & ((\PROC|Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(7),
	datab => \PROC|PC\(7),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector25~0_combout\);

-- Location: FF_X10_Y58_N1
\PROC|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(6));

-- Location: LCCOMB_X10_Y58_N28
\PROC|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector26~0_combout\ = (\PROC|PC\(6) & ((\PROC|Selector32~0_combout\) # ((\PROC|IR\(6) & \PROC|Selector32~1_combout\)))) # (!\PROC|PC\(6) & (\PROC|IR\(6) & (\PROC|Selector32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(6),
	datab => \PROC|IR\(6),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector26~0_combout\);

-- Location: FF_X12_Y58_N7
\PROC|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(10));

-- Location: LCCOMB_X10_Y58_N14
\PROC|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~27_combout\ = (!\PROC|IR\(11) & (!\PROC|IR\(10) & (\PROC|state.decode~q\ & \PROC|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(11),
	datab => \PROC|IR\(10),
	datac => \PROC|state.decode~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|state~27_combout\);

-- Location: LCCOMB_X12_Y58_N8
\PROC|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~37_combout\ = (\PROC|IR\(8) & (!\PROC|IR\(9) & \PROC|state~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|state~27_combout\,
	combout => \PROC|state~37_combout\);

-- Location: FF_X12_Y58_N9
\PROC|state.store0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.store0~q\);

-- Location: LCCOMB_X11_Y59_N10
\PROC|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|WideOr2~0_combout\ = (!\PROC|state.add2~q\ & (!\PROC|state.sub1~q\ & (!\PROC|state.nand1~q\ & !\PROC|state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.add2~q\,
	datab => \PROC|state.sub1~q\,
	datac => \PROC|state.nand1~q\,
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|WideOr2~0_combout\);

-- Location: LCCOMB_X11_Y58_N8
\PROC|Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector32~1_combout\ = ((\PROC|state.decode~q\) # ((\PROC|state.store0~q\) # (!\PROC|WideOr2~0_combout\))) # (!\PROC|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~1_combout\,
	datab => \PROC|state.decode~q\,
	datac => \PROC|state.store0~q\,
	datad => \PROC|WideOr2~0_combout\,
	combout => \PROC|Selector32~1_combout\);

-- Location: LCCOMB_X10_Y58_N26
\PROC|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector2~0_combout\ = (\PROC|state.fetch1~q\ & ((\PROC|Add0~10_combout\) # ((\PROC|IR\(5) & !\PROC|Selector6~1_combout\)))) # (!\PROC|state.fetch1~q\ & (((\PROC|IR\(5) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.fetch1~q\,
	datab => \PROC|Add0~10_combout\,
	datac => \PROC|IR\(5),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y58_N30
\PROC|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector2~1_combout\ = (\PROC|Selector2~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datac => \PROC|PC\(5),
	datad => \PROC|Selector2~0_combout\,
	combout => \PROC|Selector2~1_combout\);

-- Location: FF_X9_Y58_N31
\PROC|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector2~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(5));

-- Location: LCCOMB_X11_Y58_N4
\PROC|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector27~0_combout\ = (\PROC|IR\(5) & ((\PROC|Selector32~1_combout\) # ((\PROC|PC\(5) & \PROC|Selector32~0_combout\)))) # (!\PROC|IR\(5) & (((\PROC|PC\(5) & \PROC|Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(5),
	datab => \PROC|Selector32~1_combout\,
	datac => \PROC|PC\(5),
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector27~0_combout\);

-- Location: FF_X10_Y58_N13
\PROC|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(4));

-- Location: LCCOMB_X10_Y58_N12
\PROC|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector3~0_combout\ = (\PROC|Add0~8_combout\ & ((\PROC|state.fetch1~q\) # ((!\PROC|Selector6~1_combout\ & \PROC|IR\(4))))) # (!\PROC|Add0~8_combout\ & (!\PROC|Selector6~1_combout\ & (\PROC|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add0~8_combout\,
	datab => \PROC|Selector6~1_combout\,
	datac => \PROC|IR\(4),
	datad => \PROC|state.fetch1~q\,
	combout => \PROC|Selector3~0_combout\);

-- Location: LCCOMB_X10_Y58_N18
\PROC|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector3~1_combout\ = (\PROC|Selector3~0_combout\) # ((\PROC|PC\(4) & !\PROC|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Selector3~0_combout\,
	datac => \PROC|PC\(4),
	datad => \PROC|Selector6~3_combout\,
	combout => \PROC|Selector3~1_combout\);

-- Location: FF_X10_Y58_N19
\PROC|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector3~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(4));

-- Location: LCCOMB_X10_Y58_N2
\PROC|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector28~0_combout\ = (\PROC|IR\(4) & ((\PROC|Selector32~1_combout\) # ((\PROC|PC\(4) & \PROC|Selector32~0_combout\)))) # (!\PROC|IR\(4) & (\PROC|PC\(4) & ((\PROC|Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(4),
	datab => \PROC|PC\(4),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector28~0_combout\);

-- Location: FF_X12_Y58_N13
\PROC|IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(8));

-- Location: LCCOMB_X11_Y59_N8
\PROC|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~33_combout\ = (!\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|state~30_combout\,
	combout => \PROC|state~33_combout\);

-- Location: FF_X11_Y59_N9
\PROC|state.jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jneg~q\);

-- Location: LCCOMB_X14_Y58_N28
\PROC|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~0_combout\ = (!\PROC|AC\(11) & (!\PROC|AC\(14) & (!\PROC|AC\(13) & !\PROC|AC\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(11),
	datab => \PROC|AC\(14),
	datac => \PROC|AC\(13),
	datad => \PROC|AC\(12),
	combout => \PROC|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y59_N30
\PROC|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~2_combout\ = (!\PROC|AC\(6) & (!\PROC|AC\(5) & (!\PROC|AC\(3) & !\PROC|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(6),
	datab => \PROC|AC\(5),
	datac => \PROC|AC\(3),
	datad => \PROC|AC\(4),
	combout => \PROC|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y58_N12
\PROC|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~3_combout\ = (!\PROC|AC\(2) & (!\PROC|AC\(1) & !\PROC|AC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|AC\(2),
	datac => \PROC|AC\(1),
	datad => \PROC|AC\(0),
	combout => \PROC|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y58_N14
\PROC|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Equal0~4_combout\ = (\PROC|Equal0~1_combout\ & (\PROC|Equal0~0_combout\ & (\PROC|Equal0~2_combout\ & \PROC|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Equal0~1_combout\,
	datab => \PROC|Equal0~0_combout\,
	datac => \PROC|Equal0~2_combout\,
	datad => \PROC|Equal0~3_combout\,
	combout => \PROC|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y58_N18
\PROC|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~2_combout\ = (\PROC|AC\(15) & (!\PROC|state.jpos~q\ & (!\PROC|state.jzero~q\))) # (!\PROC|AC\(15) & ((\PROC|Equal0~4_combout\ & (!\PROC|state.jpos~q\)) # (!\PROC|Equal0~4_combout\ & ((!\PROC|state.jzero~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.jpos~q\,
	datac => \PROC|state.jzero~q\,
	datad => \PROC|Equal0~4_combout\,
	combout => \PROC|Selector6~2_combout\);

-- Location: LCCOMB_X11_Y58_N28
\PROC|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~3_combout\ = (\PROC|Selector6~2_combout\ & ((\PROC|AC\(15)) # (!\PROC|state.jneg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datac => \PROC|state.jneg~q\,
	datad => \PROC|Selector6~2_combout\,
	combout => \PROC|Selector6~3_combout\);

-- Location: LCCOMB_X10_Y58_N4
\PROC|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector4~1_combout\ = (\PROC|Selector4~0_combout\) # ((\PROC|PC\(3) & !\PROC|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector4~0_combout\,
	datac => \PROC|PC\(3),
	datad => \PROC|Selector6~3_combout\,
	combout => \PROC|Selector4~1_combout\);

-- Location: FF_X10_Y58_N5
\PROC|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector4~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(3));

-- Location: LCCOMB_X10_Y58_N24
\PROC|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector29~0_combout\ = (\PROC|IR\(3) & ((\PROC|Selector32~1_combout\) # ((\PROC|PC\(3) & \PROC|Selector32~0_combout\)))) # (!\PROC|IR\(3) & (\PROC|PC\(3) & ((\PROC|Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(3),
	datab => \PROC|PC\(3),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector29~0_combout\);

-- Location: FF_X12_Y58_N27
\PROC|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(9));

-- Location: LCCOMB_X12_Y58_N28
\PROC|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~34_combout\ = (\PROC|IR\(8) & (\PROC|IR\(9) & \PROC|state~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(8),
	datac => \PROC|IR\(9),
	datad => \PROC|state~27_combout\,
	combout => \PROC|state~34_combout\);

-- Location: FF_X12_Y58_N29
\PROC|state.jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.jump~q\);

-- Location: LCCOMB_X11_Y58_N10
\PROC|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~0_combout\ = (\PROC|AC\(15)) # ((\PROC|Equal0~4_combout\ & ((!\PROC|state.jzero~q\))) # (!\PROC|Equal0~4_combout\ & (!\PROC|state.jpos~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.jpos~q\,
	datac => \PROC|state.jzero~q\,
	datad => \PROC|Equal0~4_combout\,
	combout => \PROC|Selector6~0_combout\);

-- Location: LCCOMB_X11_Y58_N12
\PROC|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~1_combout\ = (!\PROC|state.jump~q\ & (\PROC|Selector6~0_combout\ & ((!\PROC|state.jneg~q\) # (!\PROC|AC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.jump~q\,
	datac => \PROC|state.jneg~q\,
	datad => \PROC|Selector6~0_combout\,
	combout => \PROC|Selector6~1_combout\);

-- Location: LCCOMB_X9_Y58_N28
\PROC|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector5~0_combout\ = (\PROC|Add0~4_combout\ & ((\PROC|state.fetch1~q\) # ((\PROC|IR\(2) & !\PROC|Selector6~1_combout\)))) # (!\PROC|Add0~4_combout\ & (((\PROC|IR\(2) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add0~4_combout\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(2),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector5~0_combout\);

-- Location: LCCOMB_X9_Y58_N4
\PROC|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector5~1_combout\ = (\PROC|Selector5~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datab => \PROC|Selector5~0_combout\,
	datac => \PROC|PC\(2),
	combout => \PROC|Selector5~1_combout\);

-- Location: FF_X9_Y58_N5
\PROC|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector5~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(2));

-- Location: LCCOMB_X11_Y58_N14
\PROC|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector30~0_combout\ = (\PROC|IR\(2) & ((\PROC|Selector32~1_combout\) # ((\PROC|PC\(2) & \PROC|Selector32~0_combout\)))) # (!\PROC|IR\(2) & (\PROC|PC\(2) & ((\PROC|Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(2),
	datab => \PROC|PC\(2),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector30~0_combout\);

-- Location: FF_X16_Y57_N25
\PROC|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(1));

-- Location: LCCOMB_X11_Y58_N16
\PROC|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector31~0_combout\ = (\PROC|PC\(1) & ((\PROC|Selector32~0_combout\) # ((\PROC|IR\(1) & \PROC|Selector32~1_combout\)))) # (!\PROC|PC\(1) & (\PROC|IR\(1) & (\PROC|Selector32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|PC\(1),
	datab => \PROC|IR\(1),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector31~0_combout\);

-- Location: FF_X14_Y58_N5
\PROC|IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(11));

-- Location: LCCOMB_X12_Y58_N26
\PROC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Mux0~0_combout\ = (\PROC|IR\(10) & (\PROC|IR\(11) & ((\PROC|IR\(9)) # (\PROC|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(10),
	datab => \PROC|IR\(11),
	datac => \PROC|IR\(9),
	datad => \PROC|IR\(8),
	combout => \PROC|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y58_N14
\PROC|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector24~1_combout\ = (\PROC|WideOr2~1_combout\) # ((\PROC|state.decode~q\ & ((\PROC|Mux0~0_combout\) # (!\PROC|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|WideOr2~1_combout\,
	datab => \PROC|Mux0~0_combout\,
	datac => \PROC|state.decode~q\,
	datad => \PROC|Selector24~0_combout\,
	combout => \PROC|Selector24~1_combout\);

-- Location: FF_X12_Y58_N15
\PROC|state.fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector24~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.fetch1~q\);

-- Location: LCCOMB_X9_Y58_N24
\PROC|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector7~0_combout\ = (\PROC|IR\(0) & (((\PROC|state.fetch1~q\ & \PROC|Add0~0_combout\)) # (!\PROC|Selector6~1_combout\))) # (!\PROC|IR\(0) & (\PROC|state.fetch1~q\ & (\PROC|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|Add0~0_combout\,
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector7~0_combout\);

-- Location: LCCOMB_X9_Y58_N0
\PROC|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector7~1_combout\ = (\PROC|Selector7~0_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datab => \PROC|Selector7~0_combout\,
	datac => \PROC|PC\(0),
	combout => \PROC|Selector7~1_combout\);

-- Location: FF_X9_Y58_N1
\PROC|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector7~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(0));

-- Location: LCCOMB_X11_Y58_N22
\PROC|Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector32~2_combout\ = (\PROC|IR\(0) & ((\PROC|Selector32~1_combout\) # ((\PROC|PC\(0) & \PROC|Selector32~0_combout\)))) # (!\PROC|IR\(0) & (\PROC|PC\(0) & ((\PROC|Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|PC\(0),
	datac => \PROC|Selector32~1_combout\,
	datad => \PROC|Selector32~0_combout\,
	combout => \PROC|Selector32~2_combout\);

-- Location: FF_X13_Y57_N1
\PROC|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(2));

-- Location: LCCOMB_X12_Y57_N16
\PROC|AC[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|AC[0]~4_combout\ = (!\PROC|IR\(1) & (!\PROC|IR\(0) & !\PROC|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(1),
	datab => \PROC|IR\(0),
	datac => \PROC|IR\(2),
	combout => \PROC|AC[0]~4_combout\);

-- Location: LCCOMB_X16_Y57_N30
\PROC|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~0_combout\ = (\PROC|ShiftLeft0~2_combout\ & ((\PROC|AC[0]~2_combout\ & ((\PROC|ShiftRight0~3_combout\))) # (!\PROC|AC[0]~2_combout\ & (\PROC|AC\(1))))) # (!\PROC|ShiftLeft0~2_combout\ & (((\PROC|AC[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftLeft0~2_combout\,
	datab => \PROC|AC\(1),
	datac => \PROC|AC[0]~2_combout\,
	datad => \PROC|ShiftRight0~3_combout\,
	combout => \PROC|Selector23~0_combout\);

-- Location: LCCOMB_X16_Y59_N24
\PROC|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|ShiftRight0~9_combout\ = (\PROC|IR\(2) & ((\PROC|ShiftRight0~7_combout\) # ((\PROC|ShiftRight0~8_combout\)))) # (!\PROC|IR\(2) & (((\PROC|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~7_combout\,
	datab => \PROC|IR\(2),
	datac => \PROC|ShiftRight0~8_combout\,
	datad => \PROC|ShiftRight0~6_combout\,
	combout => \PROC|ShiftRight0~9_combout\);

-- Location: LCCOMB_X16_Y59_N30
\PROC|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~1_combout\ = (\PROC|ShiftLeft0~2_combout\ & (((\PROC|Selector23~0_combout\)))) # (!\PROC|ShiftLeft0~2_combout\ & ((\PROC|Selector23~0_combout\ & ((\PROC|ShiftRight0~9_combout\))) # (!\PROC|Selector23~0_combout\ & 
-- (\PROC|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ShiftRight0~2_combout\,
	datab => \PROC|ShiftLeft0~2_combout\,
	datac => \PROC|Selector23~0_combout\,
	datad => \PROC|ShiftRight0~9_combout\,
	combout => \PROC|Selector23~1_combout\);

-- Location: LCCOMB_X16_Y59_N8
\PROC|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~2_combout\ = (\PROC|state.shr0~q\ & ((\PROC|ShiftRight0~10_combout\ & (\PROC|AC\(15))) # (!\PROC|ShiftRight0~10_combout\ & ((\PROC|Selector23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(15),
	datab => \PROC|state.shr0~q\,
	datac => \PROC|Selector23~1_combout\,
	datad => \PROC|ShiftRight0~10_combout\,
	combout => \PROC|Selector23~2_combout\);

-- Location: LCCOMB_X16_Y59_N18
\PROC|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~3_combout\ = (\PROC|state.load1~q\ & ((\MEM|altsyncram_component|auto_generated|q_a\(0)) # ((\PROC|state.in1~q\ & \IO_input[0]~input_o\)))) # (!\PROC|state.load1~q\ & (\PROC|state.in1~q\ & (\IO_input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.load1~q\,
	datab => \PROC|state.in1~q\,
	datac => \IO_input[0]~input_o\,
	datad => \MEM|altsyncram_component|auto_generated|q_a\(0),
	combout => \PROC|Selector23~3_combout\);

-- Location: LCCOMB_X16_Y59_N20
\PROC|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~4_combout\ = (\PROC|Selector23~3_combout\) # ((\PROC|state.nand0~q\ & ((!\PROC|RT\(0)) # (!\PROC|AC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|state.nand0~q\,
	datab => \PROC|AC\(0),
	datac => \PROC|RT\(0),
	datad => \PROC|Selector23~3_combout\,
	combout => \PROC|Selector23~4_combout\);

-- Location: LCCOMB_X16_Y59_N6
\PROC|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~5_combout\ = (\PROC|Selector23~2_combout\) # ((\PROC|Selector23~4_combout\) # ((\PROC|Add1~4_combout\ & !\PROC|AC[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add1~4_combout\,
	datab => \PROC|AC[0]~3_combout\,
	datac => \PROC|Selector23~2_combout\,
	datad => \PROC|Selector23~4_combout\,
	combout => \PROC|Selector23~5_combout\);

-- Location: LCCOMB_X16_Y59_N16
\PROC|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector23~6_combout\ = (\PROC|Selector23~5_combout\) # ((\PROC|Selector18~2_combout\ & (\PROC|AC[0]~4_combout\ & \PROC|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector18~2_combout\,
	datab => \PROC|AC[0]~4_combout\,
	datac => \PROC|AC\(0),
	datad => \PROC|Selector23~5_combout\,
	combout => \PROC|Selector23~6_combout\);

-- Location: FF_X16_Y59_N17
\PROC|AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector23~6_combout\,
	ena => \PROC|AC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AC\(0));

-- Location: FF_X14_Y57_N9
\PROC|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(0));

-- Location: FF_X16_Y58_N27
\PROC|IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \MEM|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \PROC|IR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IR\(15));

-- Location: LCCOMB_X9_Y58_N2
\PROC|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~4_combout\ = (\PROC|Add0~2_combout\ & ((\PROC|state.fetch1~q\) # ((\PROC|IR\(1) & !\PROC|Selector6~1_combout\)))) # (!\PROC|Add0~2_combout\ & (((\PROC|IR\(1) & !\PROC|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Add0~2_combout\,
	datab => \PROC|state.fetch1~q\,
	datac => \PROC|IR\(1),
	datad => \PROC|Selector6~1_combout\,
	combout => \PROC|Selector6~4_combout\);

-- Location: LCCOMB_X9_Y58_N26
\PROC|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector6~5_combout\ = (\PROC|Selector6~4_combout\) # ((!\PROC|Selector6~3_combout\ & \PROC|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector6~3_combout\,
	datab => \PROC|Selector6~4_combout\,
	datac => \PROC|PC\(1),
	combout => \PROC|Selector6~5_combout\);

-- Location: FF_X9_Y58_N27
\PROC|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector6~5_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(1));

-- Location: LCCOMB_X10_Y58_N20
\PROC|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|Selector1~1_combout\ = (\PROC|Selector1~0_combout\) # ((\PROC|PC\(6) & !\PROC|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector1~0_combout\,
	datac => \PROC|PC\(6),
	datad => \PROC|Selector6~3_combout\,
	combout => \PROC|Selector1~1_combout\);

-- Location: FF_X10_Y58_N21
\PROC|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|Selector1~1_combout\,
	ena => \PROC|PC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|PC\(6));

-- Location: LCCOMB_X14_Y58_N2
\PROC|IO_output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~0_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(8)))) # (!\PROC|IR\(0) & (\PROC|AC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(0),
	datab => \PROC|AC\(8),
	datac => \PROC|IR\(0),
	combout => \PROC|IO_output~0_combout\);

-- Location: LCCOMB_X12_Y58_N12
\PROC|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~35_combout\ = (!\PROC|IR\(9) & (\PROC|IR\(11) & !\PROC|IR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(9),
	datab => \PROC|IR\(11),
	datac => \PROC|IR\(8),
	combout => \PROC|state~35_combout\);

-- Location: LCCOMB_X12_Y58_N20
\PROC|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|state~36_combout\ = (\PROC|Selector24~0_combout\ & (\PROC|IR\(10) & (\PROC|state.decode~q\ & \PROC|state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Selector24~0_combout\,
	datab => \PROC|IR\(10),
	datac => \PROC|state.decode~q\,
	datad => \PROC|state~35_combout\,
	combout => \PROC|state~36_combout\);

-- Location: FF_X12_Y58_N21
\PROC|state.out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|state~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|state.out1~q\);

-- Location: LCCOMB_X18_Y58_N4
\PROC|IO_output[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output[0]~1_combout\ = (!\reset~input_o\ & \PROC|state.out1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \PROC|state.out1~q\,
	combout => \PROC|IO_output[0]~1_combout\);

-- Location: FF_X14_Y58_N3
\PROC|IO_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~0_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(0));

-- Location: LCCOMB_X14_Y58_N16
\PROC|IO_output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~2_combout\ = (\PROC|IR\(0) & (\PROC|AC\(9))) # (!\PROC|IR\(0) & ((\PROC|AC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(9),
	datac => \PROC|AC\(1),
	datad => \PROC|IR\(0),
	combout => \PROC|IO_output~2_combout\);

-- Location: FF_X14_Y58_N17
\PROC|IO_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~2_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(1));

-- Location: LCCOMB_X14_Y58_N22
\PROC|IO_output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~3_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(10)))) # (!\PROC|IR\(0) & (\PROC|AC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(2),
	datad => \PROC|AC\(10),
	combout => \PROC|IO_output~3_combout\);

-- Location: FF_X14_Y58_N23
\PROC|IO_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~3_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(2));

-- Location: LCCOMB_X14_Y58_N0
\PROC|IO_output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~4_combout\ = (\PROC|IR\(0) & (\PROC|AC\(11))) # (!\PROC|IR\(0) & ((\PROC|AC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(11),
	datac => \PROC|IR\(0),
	datad => \PROC|AC\(3),
	combout => \PROC|IO_output~4_combout\);

-- Location: FF_X14_Y58_N1
\PROC|IO_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~4_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(3));

-- Location: LCCOMB_X18_Y58_N8
\PROC|IO_output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~5_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(12)))) # (!\PROC|IR\(0) & (\PROC|AC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datab => \PROC|AC\(4),
	datac => \PROC|AC\(12),
	combout => \PROC|IO_output~5_combout\);

-- Location: FF_X18_Y58_N9
\PROC|IO_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~5_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(4));

-- Location: LCCOMB_X14_Y58_N26
\PROC|IO_output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~6_combout\ = (\PROC|IR\(0) & (\PROC|AC\(13))) # (!\PROC|IR\(0) & ((\PROC|AC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(13),
	datab => \PROC|IR\(0),
	datad => \PROC|AC\(5),
	combout => \PROC|IO_output~6_combout\);

-- Location: FF_X14_Y58_N27
\PROC|IO_output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~6_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(5));

-- Location: LCCOMB_X18_Y58_N6
\PROC|IO_output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~7_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(14)))) # (!\PROC|IR\(0) & (\PROC|AC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IR\(0),
	datac => \PROC|AC\(6),
	datad => \PROC|AC\(14),
	combout => \PROC|IO_output~7_combout\);

-- Location: FF_X18_Y58_N7
\PROC|IO_output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \PROC|IO_output~7_combout\,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(6));

-- Location: LCCOMB_X17_Y58_N20
\PROC|IO_output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROC|IO_output~8_combout\ = (\PROC|IR\(0) & ((\PROC|AC\(15)))) # (!\PROC|IR\(0) & (\PROC|AC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AC\(7),
	datab => \PROC|IR\(0),
	datad => \PROC|AC\(15),
	combout => \PROC|IO_output~8_combout\);

-- Location: FF_X14_Y58_N9
\PROC|IO_output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \PROC|IO_output~8_combout\,
	sload => VCC,
	ena => \PROC|IO_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IO_output\(7));

ww_IR_out(0) <= \IR_out[0]~output_o\;

ww_IR_out(1) <= \IR_out[1]~output_o\;

ww_IR_out(2) <= \IR_out[2]~output_o\;

ww_IR_out(3) <= \IR_out[3]~output_o\;

ww_IR_out(4) <= \IR_out[4]~output_o\;

ww_IR_out(5) <= \IR_out[5]~output_o\;

ww_IR_out(6) <= \IR_out[6]~output_o\;

ww_IR_out(7) <= \IR_out[7]~output_o\;

ww_IR_out(8) <= \IR_out[8]~output_o\;

ww_IR_out(9) <= \IR_out[9]~output_o\;

ww_IR_out(10) <= \IR_out[10]~output_o\;

ww_IR_out(11) <= \IR_out[11]~output_o\;

ww_IR_out(12) <= \IR_out[12]~output_o\;

ww_IR_out(13) <= \IR_out[13]~output_o\;

ww_IR_out(14) <= \IR_out[14]~output_o\;

ww_IR_out(15) <= \IR_out[15]~output_o\;

ww_AC_out(0) <= \AC_out[0]~output_o\;

ww_AC_out(1) <= \AC_out[1]~output_o\;

ww_AC_out(2) <= \AC_out[2]~output_o\;

ww_AC_out(3) <= \AC_out[3]~output_o\;

ww_AC_out(4) <= \AC_out[4]~output_o\;

ww_AC_out(5) <= \AC_out[5]~output_o\;

ww_AC_out(6) <= \AC_out[6]~output_o\;

ww_AC_out(7) <= \AC_out[7]~output_o\;

ww_AC_out(8) <= \AC_out[8]~output_o\;

ww_AC_out(9) <= \AC_out[9]~output_o\;

ww_AC_out(10) <= \AC_out[10]~output_o\;

ww_AC_out(11) <= \AC_out[11]~output_o\;

ww_AC_out(12) <= \AC_out[12]~output_o\;

ww_AC_out(13) <= \AC_out[13]~output_o\;

ww_AC_out(14) <= \AC_out[14]~output_o\;

ww_AC_out(15) <= \AC_out[15]~output_o\;

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_IO_output(0) <= \IO_output[0]~output_o\;

ww_IO_output(1) <= \IO_output[1]~output_o\;

ww_IO_output(2) <= \IO_output[2]~output_o\;

ww_IO_output(3) <= \IO_output[3]~output_o\;

ww_IO_output(4) <= \IO_output[4]~output_o\;

ww_IO_output(5) <= \IO_output[5]~output_o\;

ww_IO_output(6) <= \IO_output[6]~output_o\;

ww_IO_output(7) <= \IO_output[7]~output_o\;
END structure;


