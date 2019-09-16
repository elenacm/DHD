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

-- DATE "05/15/2019 09:58:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	control : IN std_logic_vector(1 DOWNTO 0);
	A_input : IN std_logic_vector(3 DOWNTO 0);
	B_input : IN std_logic_vector(3 DOWNTO 0);
	ALU_output : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ALU_output[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[1]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_control : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALU_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \ALU_output[0]~output_o\ : std_logic;
SIGNAL \ALU_output[1]~output_o\ : std_logic;
SIGNAL \ALU_output[2]~output_o\ : std_logic;
SIGNAL \ALU_output[3]~output_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \B_input[0]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \A_input[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ALU_output~0_combout\ : std_logic;
SIGNAL \A_input[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \B_input[1]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ALU_output~1_combout\ : std_logic;
SIGNAL \B_input[2]~input_o\ : std_logic;
SIGNAL \A_input[2]~input_o\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ALU_output~2_combout\ : std_logic;
SIGNAL \ALU_output~3_combout\ : std_logic;
SIGNAL \B_input[3]~input_o\ : std_logic;
SIGNAL \A_input[3]~input_o\ : std_logic;
SIGNAL \ALU_output~4_combout\ : std_logic;
SIGNAL \ALU_output~5_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \ALU_output~6_combout\ : std_logic;

BEGIN

ww_control <= control;
ww_A_input <= A_input;
ww_B_input <= B_input;
ALU_output <= ww_ALU_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X2_Y28_N4
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \B_input[2]~input_o\ $ (\control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[2]~input_o\,
	datad => \control[0]~input_o\,
	combout => \Add0~9_combout\);

-- Location: IOOBUF_X0_Y29_N16
\ALU_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~0_combout\,
	devoe => ww_devoe,
	o => \ALU_output[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\ALU_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~1_combout\,
	devoe => ww_devoe,
	o => \ALU_output[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\ALU_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~3_combout\,
	devoe => ww_devoe,
	o => \ALU_output[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ALU_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_output~6_combout\,
	devoe => ww_devoe,
	o => \ALU_output[3]~output_o\);

-- Location: IOIBUF_X0_Y30_N8
\control[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\control[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\B_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(0),
	o => \B_input[0]~input_o\);

-- Location: LCCOMB_X2_Y28_N0
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \B_input[0]~input_o\ $ (\control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_input[0]~input_o\,
	datad => \control[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y28_N20
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(\control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X1_Y28_N22
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\A_input[0]~input_o\ & ((\Add0~1_combout\ & (\Add0~3_cout\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~3_cout\)))) # (!\A_input[0]~input_o\ & ((\Add0~1_combout\ & (!\Add0~3_cout\)) # (!\Add0~1_combout\ & ((\Add0~3_cout\) # (GND)))))
-- \Add0~5\ = CARRY((\A_input[0]~input_o\ & (!\Add0~1_combout\ & !\Add0~3_cout\)) # (!\A_input[0]~input_o\ & ((!\Add0~3_cout\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[0]~input_o\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X0_Y26_N15
\A_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(0),
	o => \A_input[0]~input_o\);

-- Location: LCCOMB_X1_Y28_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\control[1]~input_o\ & ((\control[0]~input_o\ & ((\B_input[0]~input_o\) # (\A_input[0]~input_o\))) # (!\control[0]~input_o\ & (\B_input[0]~input_o\ & \A_input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \B_input[0]~input_o\,
	datac => \control[1]~input_o\,
	datad => \A_input[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y28_N10
\ALU_output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~0_combout\ = (!\control[0]~input_o\ & ((\Mux3~0_combout\) # ((!\control[1]~input_o\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \control[0]~input_o\,
	datac => \Add0~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \ALU_output~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(1),
	o => \A_input[1]~input_o\);

-- Location: LCCOMB_X1_Y28_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\control[1]~input_o\ & ((\B_input[1]~input_o\ & ((\control[0]~input_o\) # (\A_input[1]~input_o\))) # (!\B_input[1]~input_o\ & (\control[0]~input_o\ & \A_input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[1]~input_o\,
	datab => \control[0]~input_o\,
	datac => \control[1]~input_o\,
	datad => \A_input[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\B_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(1),
	o => \B_input[1]~input_o\);

-- Location: LCCOMB_X2_Y28_N2
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \B_input[1]~input_o\ $ (\control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_input[1]~input_o\,
	datad => \control[0]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X1_Y28_N24
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\A_input[1]~input_o\ $ (\Add0~6_combout\ $ (!\Add0~5\)))) # (GND)
-- \Add0~8\ = CARRY((\A_input[1]~input_o\ & ((\Add0~6_combout\) # (!\Add0~5\))) # (!\A_input[1]~input_o\ & (\Add0~6_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[1]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X1_Y28_N14
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((!\control[1]~input_o\ & \Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \control[1]~input_o\,
	datad => \Add0~7_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X1_Y28_N8
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\control[1]~input_o\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datac => \Add0~4_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X1_Y28_N2
\ALU_output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~1_combout\ = (\control[0]~input_o\ & (((\Mux3~1_combout\) # (\Mux3~0_combout\)))) # (!\control[0]~input_o\ & (\Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \Mux2~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \ALU_output~1_combout\);

-- Location: IOIBUF_X0_Y27_N15
\B_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(2),
	o => \B_input[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(2),
	o => \A_input[2]~input_o\);

-- Location: LCCOMB_X1_Y28_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9_combout\ & ((\A_input[2]~input_o\ & (\Add0~8\ & VCC)) # (!\A_input[2]~input_o\ & (!\Add0~8\)))) # (!\Add0~9_combout\ & ((\A_input[2]~input_o\ & (!\Add0~8\)) # (!\A_input[2]~input_o\ & ((\Add0~8\) # (GND)))))
-- \Add0~11\ = CARRY((\Add0~9_combout\ & (!\A_input[2]~input_o\ & !\Add0~8\)) # (!\Add0~9_combout\ & ((!\Add0~8\) # (!\A_input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \A_input[2]~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X1_Y28_N12
\ALU_output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~2_combout\ = (\control[1]~input_o\ & (\B_input[2]~input_o\ & ((\A_input[2]~input_o\)))) # (!\control[1]~input_o\ & (((\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \B_input[2]~input_o\,
	datac => \Add0~10_combout\,
	datad => \A_input[2]~input_o\,
	combout => \ALU_output~2_combout\);

-- Location: LCCOMB_X1_Y28_N30
\ALU_output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~3_combout\ = (\control[0]~input_o\ & (\Mux2~1_combout\)) # (!\control[0]~input_o\ & ((\ALU_output~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \ALU_output~2_combout\,
	combout => \ALU_output~3_combout\);

-- Location: IOIBUF_X0_Y28_N22
\B_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(3),
	o => \B_input[3]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\A_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(3),
	o => \A_input[3]~input_o\);

-- Location: LCCOMB_X1_Y28_N16
\ALU_output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~4_combout\ = (\control[0]~input_o\ & ((\A_input[2]~input_o\) # ((\B_input[2]~input_o\)))) # (!\control[0]~input_o\ & (((\A_input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \A_input[2]~input_o\,
	datac => \B_input[2]~input_o\,
	datad => \A_input[3]~input_o\,
	combout => \ALU_output~4_combout\);

-- Location: LCCOMB_X1_Y28_N18
\ALU_output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~5_combout\ = (\control[1]~input_o\ & (\ALU_output~4_combout\ & ((\control[0]~input_o\) # (\B_input[3]~input_o\)))) # (!\control[1]~input_o\ & (\control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \B_input[3]~input_o\,
	datac => \control[1]~input_o\,
	datad => \ALU_output~4_combout\,
	combout => \ALU_output~5_combout\);

-- Location: LCCOMB_X2_Y28_N6
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \B_input[3]~input_o\ $ (\control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[3]~input_o\,
	datad => \control[0]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X1_Y28_N28
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \A_input[3]~input_o\ $ (\Add0~11\ $ (!\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[3]~input_o\,
	datad => \Add0~12_combout\,
	cin => \Add0~11\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X1_Y28_N6
\ALU_output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_output~6_combout\ = (\control[1]~input_o\ & (\ALU_output~5_combout\)) # (!\control[1]~input_o\ & ((\ALU_output~5_combout\ & (\Add0~10_combout\)) # (!\ALU_output~5_combout\ & ((\Add0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \ALU_output~5_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~13_combout\,
	combout => \ALU_output~6_combout\);

ww_ALU_output(0) <= \ALU_output[0]~output_o\;

ww_ALU_output(1) <= \ALU_output[1]~output_o\;

ww_ALU_output(2) <= \ALU_output[2]~output_o\;

ww_ALU_output(3) <= \ALU_output[3]~output_o\;
END structure;


