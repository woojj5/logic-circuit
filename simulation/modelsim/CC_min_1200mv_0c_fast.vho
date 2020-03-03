-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "06/05/2018 20:00:44"

-- 
-- Device: Altera EP4CE30F23C8 Package FBGA484
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

ENTITY 	CC IS
    PORT (
	R : IN std_logic;
	C : IN std_logic;
	SEG7 : OUT std_logic_vector(0 TO 6);
	SEL : OUT std_logic_vector(0 TO 2);
	SEG_COM : OUT std_logic_vector(7 DOWNTO 0)
	);
END CC;

-- Design Ports Information
-- SEG7[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_COM[7]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_SEG7 : std_logic_vector(0 TO 6);
SIGNAL ww_SEL : std_logic_vector(0 TO 2);
SIGNAL ww_SEG_COM : std_logic_vector(7 DOWNTO 0);
SIGNAL \C~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7[6]~output_o\ : std_logic;
SIGNAL \SEG7[5]~output_o\ : std_logic;
SIGNAL \SEG7[4]~output_o\ : std_logic;
SIGNAL \SEG7[3]~output_o\ : std_logic;
SIGNAL \SEG7[2]~output_o\ : std_logic;
SIGNAL \SEG7[1]~output_o\ : std_logic;
SIGNAL \SEG7[0]~output_o\ : std_logic;
SIGNAL \SEL[2]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \SEG_COM[0]~output_o\ : std_logic;
SIGNAL \SEG_COM[1]~output_o\ : std_logic;
SIGNAL \SEG_COM[2]~output_o\ : std_logic;
SIGNAL \SEG_COM[3]~output_o\ : std_logic;
SIGNAL \SEG_COM[4]~output_o\ : std_logic;
SIGNAL \SEG_COM[5]~output_o\ : std_logic;
SIGNAL \SEG_COM[6]~output_o\ : std_logic;
SIGNAL \SEG_COM[7]~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \C~inputclkctrl_outclk\ : std_logic;
SIGNAL \SEL[2]~2_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \SEL[2]~reg0_q\ : std_logic;
SIGNAL \SEL[1]~0_combout\ : std_logic;
SIGNAL \SEL[1]~reg0_q\ : std_logic;
SIGNAL \SEL[0]~1_combout\ : std_logic;
SIGNAL \SEL[0]~reg0_q\ : std_logic;
SIGNAL \DATA_C~3_combout\ : std_logic;
SIGNAL \DATA_A~1_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \DATA_A~3_combout\ : std_logic;
SIGNAL \DATA_A~0_combout\ : std_logic;
SIGNAL \DATA_A~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \DATA_B~1_combout\ : std_logic;
SIGNAL \DATA_B[0]~0_combout\ : std_logic;
SIGNAL \DATA_B~3_combout\ : std_logic;
SIGNAL \DATA_B~4_combout\ : std_logic;
SIGNAL \DATA_B~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \DATA_C[0]~1_combout\ : std_logic;
SIGNAL \DATA_C~4_combout\ : std_logic;
SIGNAL \DATA_C~2_combout\ : std_logic;
SIGNAL \DATA_C~0_combout\ : std_logic;
SIGNAL \WideOr20~0_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \DATA_D~4_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \DATA_D[0]~0_combout\ : std_logic;
SIGNAL \DATA_D~3_combout\ : std_logic;
SIGNAL \DATA_D~1_combout\ : std_logic;
SIGNAL \DATA_D~2_combout\ : std_logic;
SIGNAL \WideOr27~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \DATA_G~3_combout\ : std_logic;
SIGNAL \DATA_F~3_combout\ : std_logic;
SIGNAL \DATA_E~2_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \DATA_E[0]~1_combout\ : std_logic;
SIGNAL \DATA_E~3_combout\ : std_logic;
SIGNAL \DATA_E~0_combout\ : std_logic;
SIGNAL \DATA_E~4_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \DATA_F[0]~1_combout\ : std_logic;
SIGNAL \DATA_F~0_combout\ : std_logic;
SIGNAL \DATA_F~2_combout\ : std_logic;
SIGNAL \DATA_F~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \DATA_G[0]~1_combout\ : std_logic;
SIGNAL \DATA_G~4_combout\ : std_logic;
SIGNAL \DATA_G~2_combout\ : std_logic;
SIGNAL \DATA_G~0_combout\ : std_logic;
SIGNAL \WideOr48~0_combout\ : std_logic;
SIGNAL \WideOr41~0_combout\ : std_logic;
SIGNAL \WideOr34~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \DATA_H~0_combout\ : std_logic;
SIGNAL \DATA_H[0]~1_combout\ : std_logic;
SIGNAL \DATA_H[0]~2_combout\ : std_logic;
SIGNAL \DATA_H[0]~3_combout\ : std_logic;
SIGNAL \DATA_H~5_combout\ : std_logic;
SIGNAL \DATA_H~6_combout\ : std_logic;
SIGNAL \DATA_H~4_combout\ : std_logic;
SIGNAL \WideOr55~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr19~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \WideOr26~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \WideOr33~0_combout\ : std_logic;
SIGNAL \WideOr40~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \WideOr47~0_combout\ : std_logic;
SIGNAL \WideOr54~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \WideOr53~0_combout\ : std_logic;
SIGNAL \WideOr39~0_combout\ : std_logic;
SIGNAL \WideOr32~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \WideOr46~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \WideOr25~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr24~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \WideOr52~0_combout\ : std_logic;
SIGNAL \WideOr38~0_combout\ : std_logic;
SIGNAL \WideOr31~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \WideOr45~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \WideOr23~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \WideOr37~0_combout\ : std_logic;
SIGNAL \WideOr30~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \WideOr44~0_combout\ : std_logic;
SIGNAL \WideOr51~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \WideOr22~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \WideOr36~0_combout\ : std_logic;
SIGNAL \WideOr29~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \WideOr50~0_combout\ : std_logic;
SIGNAL \WideOr43~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \WideOr35~0_combout\ : std_logic;
SIGNAL \WideOr28~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \WideOr49~0_combout\ : std_logic;
SIGNAL \WideOr42~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \WideOr21~0_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL DATA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_F : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_E : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_H : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_C : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_A : std_logic_vector(3 DOWNTO 0);
SIGNAL DATA_D : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_C~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_R~input_o\ : std_logic;
SIGNAL \ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;

BEGIN

ww_R <= R;
ww_C <= C;
SEG7 <= ww_SEG7;
SEL <= ww_SEL;
SEG_COM <= ww_SEG_COM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C~input_o\);
\ALT_INV_C~inputclkctrl_outclk\ <= NOT \C~inputclkctrl_outclk\;
\ALT_INV_R~input_o\ <= NOT \R~input_o\;
\ALT_INV_Decoder0~7_combout\ <= NOT \Decoder0~7_combout\;
\ALT_INV_Decoder0~6_combout\ <= NOT \Decoder0~6_combout\;
\ALT_INV_Decoder0~5_combout\ <= NOT \Decoder0~5_combout\;
\ALT_INV_Decoder0~4_combout\ <= NOT \Decoder0~4_combout\;
\ALT_INV_Decoder0~3_combout\ <= NOT \Decoder0~3_combout\;
\ALT_INV_Decoder0~2_combout\ <= NOT \Decoder0~2_combout\;
\ALT_INV_Decoder0~1_combout\ <= NOT \Decoder0~1_combout\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;

-- Location: IOOBUF_X0_Y37_N23
\SEG7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[6]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\SEG7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\SEG7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[4]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\SEG7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[3]~output_o\);

-- Location: IOOBUF_X0_Y41_N23
\SEG7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[2]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\SEG7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[1]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\SEG7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \SEG7[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL[2]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\SEG_COM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[0]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\SEG_COM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\SEG_COM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\SEG_COM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[3]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\SEG_COM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~4_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\SEG_COM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~5_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[5]~output_o\);

-- Location: IOOBUF_X0_Y40_N9
\SEG_COM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~6_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\SEG_COM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~7_combout\,
	devoe => ww_devoe,
	o => \SEG_COM[7]~output_o\);

-- Location: IOIBUF_X36_Y0_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: CLKCTRL_G19
\C~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y32_N18
\SEL[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEL[2]~2_combout\ = !\SEL[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL[2]~reg0_q\,
	combout => \SEL[2]~2_combout\);

-- Location: IOIBUF_X0_Y28_N8
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: FF_X4_Y32_N19
\SEL[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \SEL[2]~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEL[2]~reg0_q\);

-- Location: LCCOMB_X4_Y32_N28
\SEL[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEL[1]~0_combout\ = \SEL[1]~reg0_q\ $ (\SEL[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \SEL[1]~0_combout\);

-- Location: FF_X4_Y32_N29
\SEL[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \SEL[1]~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEL[1]~reg0_q\);

-- Location: LCCOMB_X4_Y32_N12
\SEL[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEL[0]~1_combout\ = \SEL[0]~reg0_q\ $ (((\SEL[1]~reg0_q\ & \SEL[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[0]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \SEL[0]~1_combout\);

-- Location: FF_X4_Y32_N13
\SEL[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \SEL[0]~1_combout\,
	clrn => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEL[0]~reg0_q\);

-- Location: LCCOMB_X3_Y32_N12
\DATA_C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_C~3_combout\ = (!DATA_C(3) & (DATA_C(2) $ (((DATA_C(1) & DATA_C(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(1),
	datab => DATA_C(3),
	datac => DATA_C(2),
	datad => DATA_C(0),
	combout => \DATA_C~3_combout\);

-- Location: LCCOMB_X3_Y32_N10
\DATA_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_A~1_combout\ = (!DATA_A(3) & (DATA_A(1) $ (DATA_A(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(3),
	datac => DATA_A(1),
	datad => DATA_A(0),
	combout => \DATA_A~1_combout\);

-- Location: LCCOMB_X4_Y32_N16
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\SEL[0]~reg0_q\ & (\SEL[1]~reg0_q\ & !\SEL[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~reg0_q\,
	datab => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X2_Y32_N9
\DATA_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	asdata => \DATA_A~1_combout\,
	clrn => \ALT_INV_R~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_A(1));

-- Location: LCCOMB_X2_Y32_N12
\DATA_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_A~3_combout\ = (DATA_A(0) & (DATA_A(1) & (!DATA_A(3) & DATA_A(2)))) # (!DATA_A(0) & (!DATA_A(1) & (DATA_A(3) & !DATA_A(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \DATA_A~3_combout\);

-- Location: FF_X2_Y32_N13
\DATA_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_A~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_A(3));

-- Location: LCCOMB_X2_Y32_N14
\DATA_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_A~0_combout\ = (!DATA_A(0) & (((!DATA_A(1) & !DATA_A(2))) # (!DATA_A(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(3),
	datab => DATA_A(1),
	datac => DATA_A(0),
	datad => DATA_A(2),
	combout => \DATA_A~0_combout\);

-- Location: FF_X2_Y32_N15
\DATA_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_A~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_A(0));

-- Location: LCCOMB_X2_Y32_N6
\DATA_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_A~2_combout\ = (!DATA_A(3) & (DATA_A(2) $ (((DATA_A(0) & DATA_A(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(2),
	datad => DATA_A(3),
	combout => \DATA_A~2_combout\);

-- Location: FF_X2_Y32_N7
\DATA_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_A~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_A(2));

-- Location: LCCOMB_X2_Y32_N26
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (DATA_A(3) & ((DATA_A(2) & ((!DATA_A(0)) # (!DATA_A(1)))) # (!DATA_A(2) & ((DATA_A(1)) # (DATA_A(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(2),
	datab => DATA_A(1),
	datac => DATA_A(0),
	datad => DATA_A(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X5_Y32_N18
\DATA_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_B~1_combout\ = (!DATA_B(0) & (((!DATA_B(2) & !DATA_B(1))) # (!DATA_B(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(3),
	datac => DATA_B(0),
	datad => DATA_B(1),
	combout => \DATA_B~1_combout\);

-- Location: LCCOMB_X4_Y32_N10
\DATA_B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_B[0]~0_combout\ = (\SEL[0]~reg0_q\ & (\SEL[1]~reg0_q\ & (!\SEL[2]~reg0_q\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~reg0_q\,
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[2]~reg0_q\,
	datad => \LessThan1~0_combout\,
	combout => \DATA_B[0]~0_combout\);

-- Location: FF_X5_Y32_N19
\DATA_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_B~1_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_B(0));

-- Location: LCCOMB_X5_Y32_N22
\DATA_B~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_B~3_combout\ = (!DATA_B(3) & (DATA_B(2) $ (((DATA_B(0) & DATA_B(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(0),
	datab => DATA_B(3),
	datac => DATA_B(2),
	datad => DATA_B(1),
	combout => \DATA_B~3_combout\);

-- Location: FF_X5_Y32_N23
\DATA_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_B~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_B(2));

-- Location: LCCOMB_X5_Y32_N8
\DATA_B~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_B~4_combout\ = (DATA_B(2) & (DATA_B(1) & (!DATA_B(3) & DATA_B(0)))) # (!DATA_B(2) & (!DATA_B(1) & (DATA_B(3) & !DATA_B(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(1),
	datac => DATA_B(3),
	datad => DATA_B(0),
	combout => \DATA_B~4_combout\);

-- Location: FF_X5_Y32_N9
\DATA_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_B~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_B(3));

-- Location: LCCOMB_X5_Y32_N20
\DATA_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_B~2_combout\ = (!DATA_B(3) & (DATA_B(1) $ (DATA_B(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DATA_B(3),
	datac => DATA_B(1),
	datad => DATA_B(0),
	combout => \DATA_B~2_combout\);

-- Location: FF_X5_Y32_N21
\DATA_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_B~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_B(1));

-- Location: LCCOMB_X4_Y32_N8
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (DATA_B(3) & ((DATA_B(1) & ((!DATA_B(2)) # (!DATA_B(0)))) # (!DATA_B(1) & ((DATA_B(0)) # (DATA_B(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(1),
	datab => DATA_B(0),
	datac => DATA_B(3),
	datad => DATA_B(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X3_Y32_N4
\DATA_C[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_C[0]~1_combout\ = (\LessThan1~0_combout\ & (\LessThan2~0_combout\ & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Decoder0~6_combout\,
	combout => \DATA_C[0]~1_combout\);

-- Location: FF_X3_Y32_N13
\DATA_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_C~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_C[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_C(2));

-- Location: LCCOMB_X3_Y32_N18
\DATA_C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_C~4_combout\ = (DATA_C(1) & (DATA_C(2) & (!DATA_C(3) & DATA_C(0)))) # (!DATA_C(1) & (!DATA_C(2) & (DATA_C(3) & !DATA_C(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(1),
	datab => DATA_C(2),
	datac => DATA_C(3),
	datad => DATA_C(0),
	combout => \DATA_C~4_combout\);

-- Location: FF_X3_Y32_N19
\DATA_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_C~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_C[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_C(3));

-- Location: LCCOMB_X3_Y32_N22
\DATA_C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_C~2_combout\ = (!DATA_C(3) & (DATA_C(1) $ (DATA_C(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(3),
	datac => DATA_C(1),
	datad => DATA_C(0),
	combout => \DATA_C~2_combout\);

-- Location: FF_X3_Y32_N23
\DATA_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_C~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_C[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_C(1));

-- Location: LCCOMB_X3_Y32_N0
\DATA_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_C~0_combout\ = (!DATA_C(0) & (((!DATA_C(1) & !DATA_C(2))) # (!DATA_C(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(1),
	datab => DATA_C(2),
	datac => DATA_C(0),
	datad => DATA_C(3),
	combout => \DATA_C~0_combout\);

-- Location: FF_X3_Y32_N1
\DATA_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_C~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_C[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_C(0));

-- Location: LCCOMB_X3_Y32_N20
\WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr20~0_combout\ = (DATA_C(2) & (!DATA_C(3) & ((!DATA_C(1)) # (!DATA_C(0))))) # (!DATA_C(2) & ((DATA_C(1) $ (DATA_C(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(0),
	datab => DATA_C(2),
	datac => DATA_C(1),
	datad => DATA_C(3),
	combout => \WideOr20~0_combout\);

-- Location: LCCOMB_X5_Y32_N14
\WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (DATA_B(2) & (!DATA_B(3) & ((!DATA_B(1)) # (!DATA_B(0))))) # (!DATA_B(2) & (DATA_B(3) $ (((DATA_B(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(3),
	datac => DATA_B(0),
	datad => DATA_B(1),
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X2_Y32_N18
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (DATA_A(1) & (!DATA_A(3) & ((!DATA_A(2)) # (!DATA_A(0))))) # (!DATA_A(1) & ((DATA_A(3) $ (DATA_A(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X2_Y32_N4
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)))) # (!\SEL[1]~reg0_q\ & ((\SEL[2]~reg0_q\ & (\WideOr13~0_combout\)) # (!\SEL[2]~reg0_q\ & ((\WideOr6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datab => \WideOr6~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X5_Y32_N2
\DATA_D~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_D~4_combout\ = (DATA_D(1) & (DATA_D(2) & (!DATA_D(3) & DATA_D(0)))) # (!DATA_D(1) & (!DATA_D(2) & (DATA_D(3) & !DATA_D(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(2),
	datac => DATA_D(3),
	datad => DATA_D(0),
	combout => \DATA_D~4_combout\);

-- Location: LCCOMB_X3_Y32_N2
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (DATA_C(3) & ((DATA_C(2) & ((!DATA_C(1)) # (!DATA_C(0)))) # (!DATA_C(2) & ((DATA_C(0)) # (DATA_C(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(2),
	datab => DATA_C(0),
	datac => DATA_C(1),
	datad => DATA_C(3),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X4_Y32_N14
\DATA_D[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_D[0]~0_combout\ = (\LessThan3~0_combout\ & (\Decoder0~6_combout\ & (\LessThan2~0_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \Decoder0~6_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \DATA_D[0]~0_combout\);

-- Location: FF_X5_Y32_N3
\DATA_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_D~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_D(3));

-- Location: LCCOMB_X5_Y32_N24
\DATA_D~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_D~3_combout\ = (!DATA_D(3) & (DATA_D(2) $ (((DATA_D(1) & DATA_D(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(0),
	datac => DATA_D(2),
	datad => DATA_D(3),
	combout => \DATA_D~3_combout\);

-- Location: FF_X5_Y32_N25
\DATA_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_D~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_D(2));

-- Location: LCCOMB_X5_Y32_N28
\DATA_D~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_D~1_combout\ = (!DATA_D(0) & (((!DATA_D(1) & !DATA_D(2))) # (!DATA_D(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(2),
	datac => DATA_D(0),
	datad => DATA_D(3),
	combout => \DATA_D~1_combout\);

-- Location: FF_X5_Y32_N29
\DATA_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_D~1_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_D(0));

-- Location: LCCOMB_X5_Y32_N10
\DATA_D~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_D~2_combout\ = (!DATA_D(3) & (DATA_D(0) $ (DATA_D(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DATA_D(0),
	datac => DATA_D(1),
	datad => DATA_D(3),
	combout => \DATA_D~2_combout\);

-- Location: FF_X5_Y32_N11
\DATA_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_D~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_D(1));

-- Location: LCCOMB_X6_Y32_N24
\WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr27~0_combout\ = (DATA_D(1) & (!DATA_D(3) & ((!DATA_D(0)) # (!DATA_D(2))))) # (!DATA_D(1) & (DATA_D(2) $ (((DATA_D(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(2),
	datac => DATA_D(0),
	datad => DATA_D(3),
	combout => \WideOr27~0_combout\);

-- Location: LCCOMB_X2_Y32_N10
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\WideOr27~0_combout\) # (!\SEL[1]~reg0_q\)))) # (!\Mux6~2_combout\ & (\WideOr20~0_combout\ & (\SEL[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr20~0_combout\,
	datab => \Mux6~2_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \WideOr27~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X5_Y32_N30
\DATA_G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_G~3_combout\ = (!DATA_G(3) & (DATA_G(2) $ (((DATA_G(0) & DATA_G(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(0),
	datab => DATA_G(2),
	datac => DATA_G(3),
	datad => DATA_G(1),
	combout => \DATA_G~3_combout\);

-- Location: LCCOMB_X3_Y33_N20
\DATA_F~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_F~3_combout\ = (!DATA_F(3) & (DATA_F(2) $ (((DATA_F(1) & DATA_F(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(1),
	datac => DATA_F(2),
	datad => DATA_F(0),
	combout => \DATA_F~3_combout\);

-- Location: LCCOMB_X1_Y32_N18
\DATA_E~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_E~2_combout\ = (!DATA_E(3) & (DATA_E(0) $ (DATA_E(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(0),
	datac => DATA_E(1),
	combout => \DATA_E~2_combout\);

-- Location: LCCOMB_X4_Y32_N2
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (DATA_D(3) & ((DATA_D(0) & ((!DATA_D(2)) # (!DATA_D(1)))) # (!DATA_D(0) & ((DATA_D(1)) # (DATA_D(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(3),
	datab => DATA_D(0),
	datac => DATA_D(1),
	datad => DATA_D(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X4_Y32_N20
\DATA_E[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_E[0]~1_combout\ = (\LessThan3~0_combout\ & (\LessThan4~0_combout\ & (\LessThan2~0_combout\ & \DATA_B[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \DATA_B[0]~0_combout\,
	combout => \DATA_E[0]~1_combout\);

-- Location: FF_X1_Y32_N19
\DATA_E[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_E~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_E[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_E(1));

-- Location: LCCOMB_X1_Y32_N24
\DATA_E~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_E~3_combout\ = (!DATA_E(3) & (DATA_E(2) $ (((DATA_E(0) & DATA_E(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(0),
	datac => DATA_E(2),
	datad => DATA_E(1),
	combout => \DATA_E~3_combout\);

-- Location: FF_X1_Y32_N25
\DATA_E[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_E~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_E[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_E(2));

-- Location: LCCOMB_X1_Y32_N8
\DATA_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_E~0_combout\ = (!DATA_E(0) & (((!DATA_E(1) & !DATA_E(2))) # (!DATA_E(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \DATA_E~0_combout\);

-- Location: FF_X1_Y32_N9
\DATA_E[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_E~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_E[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_E(0));

-- Location: LCCOMB_X1_Y32_N10
\DATA_E~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_E~4_combout\ = (DATA_E(0) & (DATA_E(2) & (!DATA_E(3) & DATA_E(1)))) # (!DATA_E(0) & (!DATA_E(2) & (DATA_E(3) & !DATA_E(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(0),
	datab => DATA_E(2),
	datac => DATA_E(3),
	datad => DATA_E(1),
	combout => \DATA_E~4_combout\);

-- Location: FF_X1_Y32_N11
\DATA_E[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_E~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_E[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_E(3));

-- Location: LCCOMB_X1_Y32_N26
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (DATA_E(3) & ((DATA_E(2) & ((!DATA_E(1)) # (!DATA_E(0)))) # (!DATA_E(2) & ((DATA_E(0)) # (DATA_E(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(2),
	datac => DATA_E(0),
	datad => DATA_E(1),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X3_Y33_N14
\DATA_F[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_F[0]~1_combout\ = (\LessThan5~0_combout\ & (\LessThan4~0_combout\ & \DATA_D[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datac => \LessThan4~0_combout\,
	datad => \DATA_D[0]~0_combout\,
	combout => \DATA_F[0]~1_combout\);

-- Location: FF_X3_Y33_N21
\DATA_F[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_F~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_F[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_F(2));

-- Location: LCCOMB_X3_Y33_N12
\DATA_F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_F~0_combout\ = (!DATA_F(0) & (((!DATA_F(2) & !DATA_F(1))) # (!DATA_F(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(0),
	datad => DATA_F(1),
	combout => \DATA_F~0_combout\);

-- Location: FF_X3_Y33_N13
\DATA_F[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_F~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_F[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_F(0));

-- Location: LCCOMB_X3_Y33_N30
\DATA_F~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_F~2_combout\ = (!DATA_F(3) & (DATA_F(1) $ (DATA_F(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \DATA_F~2_combout\);

-- Location: FF_X3_Y33_N31
\DATA_F[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_F~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_F[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_F(1));

-- Location: LCCOMB_X3_Y33_N26
\DATA_F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_F~4_combout\ = (DATA_F(1) & (DATA_F(2) & (!DATA_F(3) & DATA_F(0)))) # (!DATA_F(1) & (!DATA_F(2) & (DATA_F(3) & !DATA_F(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(1),
	datab => DATA_F(2),
	datac => DATA_F(3),
	datad => DATA_F(0),
	combout => \DATA_F~4_combout\);

-- Location: FF_X3_Y33_N27
\DATA_F[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_F~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_F[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_F(3));

-- Location: LCCOMB_X3_Y33_N28
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (DATA_F(3) & ((DATA_F(2) & ((!DATA_F(0)) # (!DATA_F(1)))) # (!DATA_F(2) & ((DATA_F(1)) # (DATA_F(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X4_Y32_N24
\DATA_G[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_G[0]~1_combout\ = (\LessThan6~0_combout\ & (\LessThan5~0_combout\ & (\DATA_D[0]~0_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \LessThan5~0_combout\,
	datac => \DATA_D[0]~0_combout\,
	datad => \LessThan4~0_combout\,
	combout => \DATA_G[0]~1_combout\);

-- Location: FF_X4_Y32_N5
\DATA_G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	asdata => \DATA_G~3_combout\,
	clrn => \ALT_INV_R~input_o\,
	sload => VCC,
	ena => \DATA_G[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_G(2));

-- Location: LCCOMB_X4_Y32_N4
\DATA_G~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_G~4_combout\ = (DATA_G(1) & (DATA_G(0) & (DATA_G(2) & !DATA_G(3)))) # (!DATA_G(1) & (!DATA_G(0) & (!DATA_G(2) & DATA_G(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(1),
	datab => DATA_G(0),
	datac => DATA_G(2),
	datad => DATA_G(3),
	combout => \DATA_G~4_combout\);

-- Location: FF_X4_Y32_N7
\DATA_G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	asdata => \DATA_G~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	sload => VCC,
	ena => \DATA_G[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_G(3));

-- Location: LCCOMB_X5_Y32_N12
\DATA_G~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_G~2_combout\ = (!DATA_G(3) & (DATA_G(0) $ (DATA_G(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DATA_G(3),
	datac => DATA_G(0),
	datad => DATA_G(1),
	combout => \DATA_G~2_combout\);

-- Location: FF_X4_Y32_N23
\DATA_G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	asdata => \DATA_G~2_combout\,
	clrn => \ALT_INV_R~input_o\,
	sload => VCC,
	ena => \DATA_G[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_G(1));

-- Location: LCCOMB_X4_Y32_N0
\DATA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_G~0_combout\ = (!DATA_G(0) & (((!DATA_G(1) & !DATA_G(2))) # (!DATA_G(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(1),
	datab => DATA_G(2),
	datac => DATA_G(0),
	datad => DATA_G(3),
	combout => \DATA_G~0_combout\);

-- Location: FF_X4_Y32_N1
\DATA_G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_G~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_G[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_G(0));

-- Location: LCCOMB_X5_Y32_N4
\WideOr48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr48~0_combout\ = (DATA_G(2) & (!DATA_G(3) & ((!DATA_G(1)) # (!DATA_G(0))))) # (!DATA_G(2) & ((DATA_G(3) $ (DATA_G(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(0),
	datab => DATA_G(2),
	datac => DATA_G(3),
	datad => DATA_G(1),
	combout => \WideOr48~0_combout\);

-- Location: LCCOMB_X3_Y33_N24
\WideOr41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr41~0_combout\ = (DATA_F(2) & (!DATA_F(3) & ((!DATA_F(0)) # (!DATA_F(1))))) # (!DATA_F(2) & (DATA_F(3) $ ((DATA_F(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr41~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr34~0_combout\ = (DATA_E(1) & (!DATA_E(3) & ((!DATA_E(2)) # (!DATA_E(0))))) # (!DATA_E(1) & (DATA_E(3) $ (((DATA_E(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr34~0_combout\);

-- Location: LCCOMB_X2_Y32_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)))) # (!\SEL[1]~reg0_q\ & ((\SEL[2]~reg0_q\ & (\WideOr41~0_combout\)) # (!\SEL[2]~reg0_q\ & ((\WideOr34~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr41~0_combout\,
	datab => \WideOr34~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X3_Y32_N8
\DATA_H~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H~0_combout\ = (!DATA_H(0) & (((!DATA_H(1) & !DATA_H(2))) # (!DATA_H(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(3),
	datac => DATA_H(0),
	datad => DATA_H(2),
	combout => \DATA_H~0_combout\);

-- Location: LCCOMB_X4_Y32_N30
\DATA_H[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H[0]~1_combout\ = (DATA_G(3) & ((DATA_G(2) & ((!DATA_G(0)) # (!DATA_G(1)))) # (!DATA_G(2) & ((DATA_G(1)) # (DATA_G(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(3),
	datab => DATA_G(2),
	datac => DATA_G(1),
	datad => DATA_G(0),
	combout => \DATA_H[0]~1_combout\);

-- Location: LCCOMB_X3_Y32_N24
\DATA_H[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H[0]~2_combout\ = (\DATA_H[0]~1_combout\ & (\LessThan5~0_combout\ & (\LessThan2~0_combout\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_H[0]~1_combout\,
	datab => \LessThan5~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan4~0_combout\,
	combout => \DATA_H[0]~2_combout\);

-- Location: LCCOMB_X3_Y32_N6
\DATA_H[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H[0]~3_combout\ = (\LessThan6~0_combout\ & (\LessThan3~0_combout\ & (\DATA_B[0]~0_combout\ & \DATA_H[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \LessThan3~0_combout\,
	datac => \DATA_B[0]~0_combout\,
	datad => \DATA_H[0]~2_combout\,
	combout => \DATA_H[0]~3_combout\);

-- Location: FF_X3_Y32_N9
\DATA_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_H~0_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_H[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_H(0));

-- Location: LCCOMB_X3_Y32_N16
\DATA_H~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H~5_combout\ = (!DATA_H(3) & (DATA_H(2) $ (((DATA_H(1) & DATA_H(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(3),
	datac => DATA_H(2),
	datad => DATA_H(0),
	combout => \DATA_H~5_combout\);

-- Location: FF_X3_Y32_N17
\DATA_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_H~5_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_H[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_H(2));

-- Location: LCCOMB_X3_Y32_N14
\DATA_H~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H~6_combout\ = (DATA_H(1) & (DATA_H(2) & (!DATA_H(3) & DATA_H(0)))) # (!DATA_H(1) & (!DATA_H(2) & (DATA_H(3) & !DATA_H(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(2),
	datac => DATA_H(3),
	datad => DATA_H(0),
	combout => \DATA_H~6_combout\);

-- Location: FF_X3_Y32_N15
\DATA_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_H~6_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_H[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_H(3));

-- Location: LCCOMB_X3_Y32_N26
\DATA_H~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_H~4_combout\ = (!DATA_H(3) & (DATA_H(1) $ (DATA_H(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DATA_H(3),
	datac => DATA_H(1),
	datad => DATA_H(0),
	combout => \DATA_H~4_combout\);

-- Location: FF_X3_Y32_N27
\DATA_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \DATA_H~4_combout\,
	clrn => \ALT_INV_R~input_o\,
	ena => \DATA_H[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_H(1));

-- Location: LCCOMB_X4_Y33_N8
\WideOr55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr55~0_combout\ = (DATA_H(1) & (!DATA_H(3) & ((!DATA_H(2)) # (!DATA_H(0))))) # (!DATA_H(1) & ((DATA_H(2) $ (DATA_H(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr55~0_combout\);

-- Location: LCCOMB_X1_Y32_N6
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\SEL[1]~reg0_q\ & ((\Mux6~0_combout\ & ((\WideOr55~0_combout\))) # (!\Mux6~0_combout\ & (\WideOr48~0_combout\)))) # (!\SEL[1]~reg0_q\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr48~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \Mux6~0_combout\,
	datad => \WideOr55~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X1_Y32_N0
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\SEL[0]~reg0_q\ & ((\Mux6~1_combout\))) # (!\SEL[0]~reg0_q\ & (\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~reg0_q\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X2_Y32_N20
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (DATA_A(0) & ((DATA_A(1)) # (DATA_A(3) $ (!DATA_A(2))))) # (!DATA_A(0) & ((DATA_A(2) & ((DATA_A(3)))) # (!DATA_A(2) & (DATA_A(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X3_Y32_N30
\WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr19~0_combout\ = (DATA_C(0) & ((DATA_C(1)) # (DATA_C(2) $ (!DATA_C(3))))) # (!DATA_C(0) & ((DATA_C(2) & ((DATA_C(3)))) # (!DATA_C(2) & (DATA_C(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(0),
	datab => DATA_C(2),
	datac => DATA_C(1),
	datad => DATA_C(3),
	combout => \WideOr19~0_combout\);

-- Location: LCCOMB_X2_Y32_N22
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\) # (!\WideOr19~0_combout\)))) # (!\SEL[1]~reg0_q\ & (!\WideOr5~0_combout\ & ((!\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~reg0_q\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr19~0_combout\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X6_Y32_N4
\WideOr26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr26~0_combout\ = (DATA_D(2) & ((DATA_D(3)) # ((DATA_D(1) & DATA_D(0))))) # (!DATA_D(2) & ((DATA_D(1)) # ((DATA_D(0) & !DATA_D(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(2),
	datac => DATA_D(0),
	datad => DATA_D(3),
	combout => \WideOr26~0_combout\);

-- Location: LCCOMB_X6_Y32_N18
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (DATA_B(0) & ((DATA_B(1)) # (DATA_B(3) $ (!DATA_B(2))))) # (!DATA_B(0) & ((DATA_B(2) & (DATA_B(3))) # (!DATA_B(2) & ((DATA_B(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(3),
	datab => DATA_B(1),
	datac => DATA_B(0),
	datad => DATA_B(2),
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X6_Y32_N14
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\SEL[2]~reg0_q\ & ((\Mux5~2_combout\ & (!\WideOr26~0_combout\)) # (!\Mux5~2_combout\ & ((!\WideOr12~0_combout\))))) # (!\SEL[2]~reg0_q\ & (\Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~reg0_q\,
	datab => \Mux5~2_combout\,
	datac => \WideOr26~0_combout\,
	datad => \WideOr12~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X1_Y32_N2
\WideOr33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr33~0_combout\ = (DATA_E(0) & ((DATA_E(1)) # (DATA_E(3) $ (!DATA_E(2))))) # (!DATA_E(0) & ((DATA_E(2) & (DATA_E(3))) # (!DATA_E(2) & ((DATA_E(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr33~0_combout\);

-- Location: LCCOMB_X3_Y33_N22
\WideOr40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr40~0_combout\ = (DATA_F(2) & ((DATA_F(3)) # ((DATA_F(1) & DATA_F(0))))) # (!DATA_F(2) & ((DATA_F(1)) # ((!DATA_F(3) & DATA_F(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr40~0_combout\);

-- Location: LCCOMB_X4_Y33_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)))) # (!\SEL[1]~reg0_q\ & ((\SEL[2]~reg0_q\ & ((!\WideOr40~0_combout\))) # (!\SEL[2]~reg0_q\ & (!\WideOr33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr33~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[2]~reg0_q\,
	datad => \WideOr40~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X5_Y33_N8
\WideOr47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr47~0_combout\ = (DATA_G(0) & ((DATA_G(1)) # (DATA_G(3) $ (!DATA_G(2))))) # (!DATA_G(0) & ((DATA_G(2) & (DATA_G(3))) # (!DATA_G(2) & ((DATA_G(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(3),
	datab => DATA_G(0),
	datac => DATA_G(1),
	datad => DATA_G(2),
	combout => \WideOr47~0_combout\);

-- Location: LCCOMB_X4_Y33_N20
\WideOr54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr54~0_combout\ = (DATA_H(0) & ((DATA_H(1)) # (DATA_H(2) $ (!DATA_H(3))))) # (!DATA_H(0) & ((DATA_H(2) & ((DATA_H(3)))) # (!DATA_H(2) & (DATA_H(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr54~0_combout\);

-- Location: LCCOMB_X4_Y33_N18
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((!\WideOr54~0_combout\)) # (!\SEL[1]~reg0_q\))) # (!\Mux5~0_combout\ & (\SEL[1]~reg0_q\ & (!\WideOr47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \WideOr47~0_combout\,
	datad => \WideOr54~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X5_Y33_N30
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\SEL[0]~reg0_q\ & ((\Mux5~1_combout\))) # (!\SEL[0]~reg0_q\ & (\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux5~1_combout\,
	datad => \SEL[0]~reg0_q\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X4_Y33_N6
\WideOr53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr53~0_combout\ = (DATA_H(0)) # ((DATA_H(1) & ((DATA_H(3)))) # (!DATA_H(1) & (DATA_H(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr53~0_combout\);

-- Location: LCCOMB_X3_Y33_N16
\WideOr39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr39~0_combout\ = (DATA_F(0)) # ((DATA_F(1) & (DATA_F(3))) # (!DATA_F(1) & ((DATA_F(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr39~0_combout\);

-- Location: LCCOMB_X1_Y32_N4
\WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr32~0_combout\ = (DATA_E(0)) # ((DATA_E(1) & (DATA_E(3))) # (!DATA_E(1) & ((DATA_E(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr32~0_combout\);

-- Location: LCCOMB_X4_Y33_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)))) # (!\SEL[1]~reg0_q\ & ((\SEL[2]~reg0_q\ & (!\WideOr39~0_combout\)) # (!\SEL[2]~reg0_q\ & ((!\WideOr32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr39~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[2]~reg0_q\,
	datad => \WideOr32~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X4_Y32_N6
\WideOr46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr46~0_combout\ = (DATA_G(0)) # ((DATA_G(1) & ((DATA_G(3)))) # (!DATA_G(1) & (DATA_G(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(1),
	datab => DATA_G(2),
	datac => DATA_G(3),
	datad => DATA_G(0),
	combout => \WideOr46~0_combout\);

-- Location: LCCOMB_X4_Y33_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((!\SEL[1]~reg0_q\)) # (!\WideOr53~0_combout\))) # (!\Mux4~0_combout\ & (((!\WideOr46~0_combout\ & \SEL[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr53~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \WideOr46~0_combout\,
	datad => \SEL[1]~reg0_q\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X5_Y32_N0
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (DATA_B(0)) # ((DATA_B(1) & ((DATA_B(3)))) # (!DATA_B(1) & (DATA_B(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(3),
	datac => DATA_B(0),
	datad => DATA_B(1),
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X2_Y32_N24
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (DATA_A(0)) # ((DATA_A(1) & (DATA_A(3))) # (!DATA_A(1) & ((DATA_A(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X2_Y33_N4
\WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (DATA_C(0)) # ((DATA_C(1) & (DATA_C(3))) # (!DATA_C(1) & ((DATA_C(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(3),
	datab => DATA_C(1),
	datac => DATA_C(0),
	datad => DATA_C(2),
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X2_Y33_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\) # (!\WideOr18~0_combout\)))) # (!\SEL[1]~reg0_q\ & (!\WideOr4~0_combout\ & ((!\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \WideOr18~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X5_Y33_N20
\WideOr25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr25~0_combout\ = (DATA_D(0)) # ((DATA_D(1) & (DATA_D(3))) # (!DATA_D(1) & ((DATA_D(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(0),
	datac => DATA_D(3),
	datad => DATA_D(2),
	combout => \WideOr25~0_combout\);

-- Location: LCCOMB_X5_Y33_N18
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\SEL[2]~reg0_q\ & ((\Mux4~2_combout\ & ((!\WideOr25~0_combout\))) # (!\Mux4~2_combout\ & (!\WideOr11~0_combout\)))) # (!\SEL[2]~reg0_q\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~reg0_q\,
	datab => \WideOr11~0_combout\,
	datac => \Mux4~2_combout\,
	datad => \WideOr25~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X4_Y33_N30
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\SEL[0]~reg0_q\ & (\Mux4~1_combout\)) # (!\SEL[0]~reg0_q\ & ((\Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~reg0_q\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X5_Y32_N6
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (DATA_B(2) & ((DATA_B(3)) # (DATA_B(0) $ (!DATA_B(1))))) # (!DATA_B(2) & ((DATA_B(1) & (DATA_B(3))) # (!DATA_B(1) & ((DATA_B(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(3),
	datac => DATA_B(0),
	datad => DATA_B(1),
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X3_Y33_N8
\WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr24~0_combout\ = (DATA_D(2) & ((DATA_D(3)) # (DATA_D(1) $ (!DATA_D(0))))) # (!DATA_D(2) & ((DATA_D(1) & (DATA_D(3))) # (!DATA_D(1) & ((DATA_D(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(2),
	datab => DATA_D(3),
	datac => DATA_D(1),
	datad => DATA_D(0),
	combout => \WideOr24~0_combout\);

-- Location: LCCOMB_X2_Y32_N2
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (DATA_A(0) & ((DATA_A(3)) # (DATA_A(1) $ (!DATA_A(2))))) # (!DATA_A(0) & ((DATA_A(1) & (DATA_A(3))) # (!DATA_A(1) & ((DATA_A(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X2_Y33_N16
\WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (DATA_C(0) & ((DATA_C(3)) # (DATA_C(1) $ (!DATA_C(2))))) # (!DATA_C(0) & ((DATA_C(1) & (DATA_C(3))) # (!DATA_C(1) & ((DATA_C(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(3),
	datab => DATA_C(1),
	datac => DATA_C(0),
	datad => DATA_C(2),
	combout => \WideOr17~0_combout\);

-- Location: LCCOMB_X2_Y33_N22
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\) # (!\WideOr17~0_combout\)))) # (!\SEL[1]~reg0_q\ & (!\WideOr3~0_combout\ & ((!\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => \WideOr17~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X2_Y33_N20
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((!\SEL[2]~reg0_q\) # (!\WideOr24~0_combout\)))) # (!\Mux3~2_combout\ & (!\WideOr10~0_combout\ & ((\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \WideOr24~0_combout\,
	datac => \Mux3~2_combout\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X4_Y33_N28
\WideOr52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr52~0_combout\ = (DATA_H(0) & ((DATA_H(3)) # (DATA_H(1) $ (!DATA_H(2))))) # (!DATA_H(0) & ((DATA_H(1) & ((DATA_H(3)))) # (!DATA_H(1) & (DATA_H(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr52~0_combout\);

-- Location: LCCOMB_X3_Y33_N18
\WideOr38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr38~0_combout\ = (DATA_F(2) & ((DATA_F(3)) # (DATA_F(1) $ (!DATA_F(0))))) # (!DATA_F(2) & ((DATA_F(1) & (DATA_F(3))) # (!DATA_F(1) & ((DATA_F(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr38~0_combout\);

-- Location: LCCOMB_X1_Y32_N22
\WideOr31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr31~0_combout\ = (DATA_E(0) & ((DATA_E(3)) # (DATA_E(1) $ (!DATA_E(2))))) # (!DATA_E(0) & ((DATA_E(1) & (DATA_E(3))) # (!DATA_E(1) & ((DATA_E(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr31~0_combout\);

-- Location: LCCOMB_X2_Y33_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)))) # (!\SEL[1]~reg0_q\ & ((\SEL[2]~reg0_q\ & (!\WideOr38~0_combout\)) # (!\SEL[2]~reg0_q\ & ((!\WideOr31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr38~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \WideOr31~0_combout\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X5_Y33_N24
\WideOr45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr45~0_combout\ = (DATA_G(0) & ((DATA_G(3)) # (DATA_G(1) $ (!DATA_G(2))))) # (!DATA_G(0) & ((DATA_G(1) & (DATA_G(3))) # (!DATA_G(1) & ((DATA_G(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(3),
	datab => DATA_G(0),
	datac => DATA_G(1),
	datad => DATA_G(2),
	combout => \WideOr45~0_combout\);

-- Location: LCCOMB_X2_Y33_N18
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\SEL[1]~reg0_q\ & ((\Mux3~0_combout\ & (!\WideOr52~0_combout\)) # (!\Mux3~0_combout\ & ((!\WideOr45~0_combout\))))) # (!\SEL[1]~reg0_q\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr52~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \Mux3~0_combout\,
	datad => \WideOr45~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X2_Y33_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\SEL[0]~reg0_q\ & ((\Mux3~1_combout\))) # (!\SEL[0]~reg0_q\ & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~3_combout\,
	datac => \SEL[0]~reg0_q\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X5_Y32_N16
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (DATA_B(2) & (DATA_B(3))) # (!DATA_B(2) & (DATA_B(1) & ((DATA_B(3)) # (!DATA_B(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(3),
	datac => DATA_B(0),
	datad => DATA_B(1),
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X2_Y32_N28
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (DATA_A(2) & (((DATA_A(3))))) # (!DATA_A(2) & (DATA_A(1) & ((DATA_A(3)) # (!DATA_A(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X2_Y33_N24
\WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (DATA_C(2) & (DATA_C(3))) # (!DATA_C(2) & (DATA_C(1) & ((DATA_C(3)) # (!DATA_C(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(3),
	datab => DATA_C(1),
	datac => DATA_C(0),
	datad => DATA_C(2),
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X2_Y33_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\) # (!\WideOr16~0_combout\)))) # (!\SEL[1]~reg0_q\ & (!\WideOr2~0_combout\ & ((!\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr16~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X5_Y33_N10
\WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr23~0_combout\ = (DATA_D(2) & (((DATA_D(3))))) # (!DATA_D(2) & (DATA_D(1) & ((DATA_D(3)) # (!DATA_D(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(0),
	datac => DATA_D(3),
	datad => DATA_D(2),
	combout => \WideOr23~0_combout\);

-- Location: LCCOMB_X5_Y33_N12
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((!\WideOr23~0_combout\) # (!\SEL[2]~reg0_q\)))) # (!\Mux2~2_combout\ & (!\WideOr9~0_combout\ & (\SEL[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~0_combout\,
	datab => \Mux2~2_combout\,
	datac => \SEL[2]~reg0_q\,
	datad => \WideOr23~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X3_Y33_N10
\WideOr37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr37~0_combout\ = (DATA_F(2) & (DATA_F(3))) # (!DATA_F(2) & (DATA_F(1) & ((DATA_F(3)) # (!DATA_F(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr37~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr30~0_combout\ = (DATA_E(2) & (DATA_E(3))) # (!DATA_E(2) & (DATA_E(1) & ((DATA_E(3)) # (!DATA_E(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr30~0_combout\);

-- Location: LCCOMB_X4_Y32_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)))) # (!\SEL[1]~reg0_q\ & ((\SEL[2]~reg0_q\ & (!\WideOr37~0_combout\)) # (!\SEL[2]~reg0_q\ & ((!\WideOr30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr37~0_combout\,
	datab => \SEL[1]~reg0_q\,
	datac => \WideOr30~0_combout\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X5_Y33_N22
\WideOr44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr44~0_combout\ = (DATA_G(2) & (DATA_G(3))) # (!DATA_G(2) & (DATA_G(1) & ((DATA_G(3)) # (!DATA_G(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(3),
	datab => DATA_G(0),
	datac => DATA_G(1),
	datad => DATA_G(2),
	combout => \WideOr44~0_combout\);

-- Location: LCCOMB_X4_Y33_N14
\WideOr51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr51~0_combout\ = (DATA_H(2) & (((DATA_H(3))))) # (!DATA_H(2) & (DATA_H(1) & ((DATA_H(3)) # (!DATA_H(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr51~0_combout\);

-- Location: LCCOMB_X5_Y33_N28
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\SEL[1]~reg0_q\ & ((\Mux2~0_combout\ & ((!\WideOr51~0_combout\))) # (!\Mux2~0_combout\ & (!\WideOr44~0_combout\)))) # (!\SEL[1]~reg0_q\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~reg0_q\,
	datab => \Mux2~0_combout\,
	datac => \WideOr44~0_combout\,
	datad => \WideOr51~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X5_Y33_N2
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\SEL[0]~reg0_q\ & ((\Mux2~1_combout\))) # (!\SEL[0]~reg0_q\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \SEL[0]~reg0_q\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X5_Y32_N26
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (DATA_B(2) & ((DATA_B(3)) # (DATA_B(0) $ (DATA_B(1))))) # (!DATA_B(2) & (DATA_B(3) & ((DATA_B(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(2),
	datab => DATA_B(3),
	datac => DATA_B(0),
	datad => DATA_B(1),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X2_Y33_N12
\WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (DATA_C(3) & ((DATA_C(1)) # ((DATA_C(2))))) # (!DATA_C(3) & (DATA_C(2) & (DATA_C(1) $ (DATA_C(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(3),
	datab => DATA_C(1),
	datac => DATA_C(0),
	datad => DATA_C(2),
	combout => \WideOr15~0_combout\);

-- Location: LCCOMB_X2_Y32_N8
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (DATA_A(3) & (((DATA_A(1)) # (DATA_A(2))))) # (!DATA_A(3) & (DATA_A(2) & (DATA_A(0) $ (DATA_A(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(3),
	datac => DATA_A(1),
	datad => DATA_A(2),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X2_Y33_N14
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)) # (!\WideOr15~0_combout\))) # (!\SEL[1]~reg0_q\ & (((!\WideOr1~0_combout\ & !\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr15~0_combout\,
	datab => \WideOr1~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X5_Y33_N0
\WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr22~0_combout\ = (DATA_D(3) & ((DATA_D(1)) # ((DATA_D(2))))) # (!DATA_D(3) & (DATA_D(2) & (DATA_D(1) $ (DATA_D(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(0),
	datac => DATA_D(3),
	datad => DATA_D(2),
	combout => \WideOr22~0_combout\);

-- Location: LCCOMB_X5_Y33_N14
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\SEL[2]~reg0_q\ & ((\Mux1~2_combout\ & ((!\WideOr22~0_combout\))) # (!\Mux1~2_combout\ & (!\WideOr8~0_combout\)))) # (!\SEL[2]~reg0_q\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~reg0_q\,
	datab => \WideOr8~0_combout\,
	datac => \Mux1~2_combout\,
	datad => \WideOr22~0_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X3_Y33_N4
\WideOr36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr36~0_combout\ = (DATA_F(3) & ((DATA_F(2)) # ((DATA_F(1))))) # (!DATA_F(3) & (DATA_F(2) & (DATA_F(1) $ (DATA_F(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr36~0_combout\);

-- Location: LCCOMB_X1_Y32_N30
\WideOr29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr29~0_combout\ = (DATA_E(3) & ((DATA_E(1)) # ((DATA_E(2))))) # (!DATA_E(3) & (DATA_E(2) & (DATA_E(1) $ (DATA_E(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr29~0_combout\);

-- Location: LCCOMB_X4_Y33_N12
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SEL[2]~reg0_q\ & (((\SEL[1]~reg0_q\)) # (!\WideOr36~0_combout\))) # (!\SEL[2]~reg0_q\ & (((!\WideOr29~0_combout\ & !\SEL[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~reg0_q\,
	datab => \WideOr36~0_combout\,
	datac => \WideOr29~0_combout\,
	datad => \SEL[1]~reg0_q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X4_Y33_N22
\WideOr50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr50~0_combout\ = (DATA_H(2) & ((DATA_H(3)) # (DATA_H(1) $ (DATA_H(0))))) # (!DATA_H(2) & (DATA_H(1) & ((DATA_H(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr50~0_combout\);

-- Location: LCCOMB_X5_Y33_N16
\WideOr43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr43~0_combout\ = (DATA_G(3) & (((DATA_G(1)) # (DATA_G(2))))) # (!DATA_G(3) & (DATA_G(2) & (DATA_G(0) $ (DATA_G(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(3),
	datab => DATA_G(0),
	datac => DATA_G(1),
	datad => DATA_G(2),
	combout => \WideOr43~0_combout\);

-- Location: LCCOMB_X5_Y33_N26
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((!\SEL[1]~reg0_q\)) # (!\WideOr50~0_combout\))) # (!\Mux1~0_combout\ & (((\SEL[1]~reg0_q\ & !\WideOr43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \WideOr50~0_combout\,
	datac => \SEL[1]~reg0_q\,
	datad => \WideOr43~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X4_Y33_N24
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\SEL[0]~reg0_q\ & ((\Mux1~1_combout\))) # (!\SEL[0]~reg0_q\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~reg0_q\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X3_Y33_N6
\WideOr35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr35~0_combout\ = (DATA_F(1) & (DATA_F(3))) # (!DATA_F(1) & (DATA_F(2) $ (((!DATA_F(3) & DATA_F(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_F(3),
	datab => DATA_F(2),
	datac => DATA_F(1),
	datad => DATA_F(0),
	combout => \WideOr35~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\WideOr28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr28~0_combout\ = (DATA_E(1) & (DATA_E(3))) # (!DATA_E(1) & (DATA_E(2) $ (((!DATA_E(3) & DATA_E(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_E(3),
	datab => DATA_E(1),
	datac => DATA_E(0),
	datad => DATA_E(2),
	combout => \WideOr28~0_combout\);

-- Location: LCCOMB_X4_Y33_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SEL[2]~reg0_q\ & (((\SEL[1]~reg0_q\)) # (!\WideOr35~0_combout\))) # (!\SEL[2]~reg0_q\ & (((!\WideOr28~0_combout\ & !\SEL[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~reg0_q\,
	datab => \WideOr35~0_combout\,
	datac => \WideOr28~0_combout\,
	datad => \SEL[1]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X4_Y33_N16
\WideOr49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr49~0_combout\ = (DATA_H(1) & (((DATA_H(3))))) # (!DATA_H(1) & (DATA_H(2) $ (((DATA_H(0) & !DATA_H(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_H(1),
	datab => DATA_H(0),
	datac => DATA_H(2),
	datad => DATA_H(3),
	combout => \WideOr49~0_combout\);

-- Location: LCCOMB_X5_Y33_N4
\WideOr42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr42~0_combout\ = (DATA_G(1) & (DATA_G(3))) # (!DATA_G(1) & (DATA_G(2) $ (((!DATA_G(3) & DATA_G(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_G(3),
	datab => DATA_G(0),
	datac => DATA_G(1),
	datad => DATA_G(2),
	combout => \WideOr42~0_combout\);

-- Location: LCCOMB_X4_Y33_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((!\SEL[1]~reg0_q\)) # (!\WideOr49~0_combout\))) # (!\Mux0~0_combout\ & (((!\WideOr42~0_combout\ & \SEL[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \WideOr49~0_combout\,
	datac => \WideOr42~0_combout\,
	datad => \SEL[1]~reg0_q\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X6_Y32_N28
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (DATA_B(1) & (DATA_B(3))) # (!DATA_B(1) & (DATA_B(2) $ (((!DATA_B(3) & DATA_B(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_B(3),
	datab => DATA_B(1),
	datac => DATA_B(0),
	datad => DATA_B(2),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X3_Y32_N28
\WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (DATA_C(1) & (((DATA_C(3))))) # (!DATA_C(1) & (DATA_C(2) $ (((DATA_C(0) & !DATA_C(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_C(0),
	datab => DATA_C(2),
	datac => DATA_C(1),
	datad => DATA_C(3),
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X2_Y32_N30
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (DATA_A(1) & (((DATA_A(3))))) # (!DATA_A(1) & (DATA_A(2) $ (((DATA_A(0) & !DATA_A(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_A(0),
	datab => DATA_A(1),
	datac => DATA_A(3),
	datad => DATA_A(2),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y32_N16
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\SEL[1]~reg0_q\ & (((\SEL[2]~reg0_q\)) # (!\WideOr14~0_combout\))) # (!\SEL[1]~reg0_q\ & (((!\WideOr0~0_combout\ & !\SEL[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~reg0_q\,
	datab => \WideOr14~0_combout\,
	datac => \WideOr0~0_combout\,
	datad => \SEL[2]~reg0_q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X6_Y32_N10
\WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr21~0_combout\ = (DATA_D(1) & (((DATA_D(3))))) # (!DATA_D(1) & (DATA_D(2) $ (((DATA_D(0) & !DATA_D(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA_D(1),
	datab => DATA_D(2),
	datac => DATA_D(0),
	datad => DATA_D(3),
	combout => \WideOr21~0_combout\);

-- Location: LCCOMB_X6_Y32_N0
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\SEL[2]~reg0_q\ & ((\Mux0~2_combout\ & ((!\WideOr21~0_combout\))) # (!\Mux0~2_combout\ & (!\WideOr7~0_combout\)))) # (!\SEL[2]~reg0_q\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[2]~reg0_q\,
	datab => \WideOr7~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \WideOr21~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X5_Y33_N6
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\SEL[0]~reg0_q\ & (\Mux0~1_combout\)) # (!\SEL[0]~reg0_q\ & ((\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \SEL[0]~reg0_q\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X4_Y32_N22
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\SEL[0]~reg0_q\ & (!\SEL[1]~reg0_q\ & !\SEL[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~reg0_q\,
	datab => \SEL[1]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X2_Y33_N28
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\SEL[1]~reg0_q\ & (!\SEL[0]~reg0_q\ & \SEL[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[0]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X1_Y32_N14
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\SEL[1]~reg0_q\ & (!\SEL[2]~reg0_q\ & !\SEL[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[2]~reg0_q\,
	datad => \SEL[0]~reg0_q\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X1_Y32_N16
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\SEL[1]~reg0_q\ & (\SEL[2]~reg0_q\ & !\SEL[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[2]~reg0_q\,
	datad => \SEL[0]~reg0_q\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X2_Y33_N2
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\SEL[1]~reg0_q\ & (\SEL[0]~reg0_q\ & !\SEL[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[0]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X2_Y33_N0
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\SEL[1]~reg0_q\ & (\SEL[0]~reg0_q\ & \SEL[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[0]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X2_Y33_N10
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\SEL[1]~reg0_q\ & (\SEL[0]~reg0_q\ & \SEL[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~reg0_q\,
	datac => \SEL[0]~reg0_q\,
	datad => \SEL[2]~reg0_q\,
	combout => \Decoder0~7_combout\);

ww_SEG7(6) <= \SEG7[6]~output_o\;

ww_SEG7(5) <= \SEG7[5]~output_o\;

ww_SEG7(4) <= \SEG7[4]~output_o\;

ww_SEG7(3) <= \SEG7[3]~output_o\;

ww_SEG7(2) <= \SEG7[2]~output_o\;

ww_SEG7(1) <= \SEG7[1]~output_o\;

ww_SEG7(0) <= \SEG7[0]~output_o\;

ww_SEL(2) <= \SEL[2]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;

ww_SEG_COM(0) <= \SEG_COM[0]~output_o\;

ww_SEG_COM(1) <= \SEG_COM[1]~output_o\;

ww_SEG_COM(2) <= \SEG_COM[2]~output_o\;

ww_SEG_COM(3) <= \SEG_COM[3]~output_o\;

ww_SEG_COM(4) <= \SEG_COM[4]~output_o\;

ww_SEG_COM(5) <= \SEG_COM[5]~output_o\;

ww_SEG_COM(6) <= \SEG_COM[6]~output_o\;

ww_SEG_COM(7) <= \SEG_COM[7]~output_o\;
END structure;


