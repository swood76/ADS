-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/14/2022 18:58:44"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE10_Standard IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END DE10_Standard;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE10_Standard IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ff2|q~q\ : std_logic;
SIGNAL \ff3|q~q\ : std_logic;
SIGNAL \Y_D[4]~1_combout\ : std_logic;
SIGNAL \ff4|q~q\ : std_logic;
SIGNAL \Y_D[5]~2_combout\ : std_logic;
SIGNAL \ff5|q~q\ : std_logic;
SIGNAL \ff6|q~q\ : std_logic;
SIGNAL \ff7|q~q\ : std_logic;
SIGNAL \Y_D[8]~3_combout\ : std_logic;
SIGNAL \ff8|q~q\ : std_logic;
SIGNAL \Y_D[1]~0_combout\ : std_logic;
SIGNAL \ff1|q~q\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL Y_D : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LEDR~0_combout\ : std_logic;
SIGNAL \ff8|ALT_INV_q~q\ : std_logic;
SIGNAL \ff7|ALT_INV_q~q\ : std_logic;
SIGNAL \ff6|ALT_INV_q~q\ : std_logic;
SIGNAL \ff5|ALT_INV_q~q\ : std_logic;
SIGNAL \ff4|ALT_INV_q~q\ : std_logic;
SIGNAL \ff3|ALT_INV_q~q\ : std_logic;
SIGNAL \ff2|ALT_INV_q~q\ : std_logic;
SIGNAL \ff1|ALT_INV_q~q\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_LEDR~0_combout\ <= NOT \LEDR~0_combout\;
\ff8|ALT_INV_q~q\ <= NOT \ff8|q~q\;
\ff7|ALT_INV_q~q\ <= NOT \ff7|q~q\;
\ff6|ALT_INV_q~q\ <= NOT \ff6|q~q\;
\ff5|ALT_INV_q~q\ <= NOT \ff5|q~q\;
\ff4|ALT_INV_q~q\ <= NOT \ff4|q~q\;
\ff3|ALT_INV_q~q\ <= NOT \ff3|q~q\;
\ff2|ALT_INV_q~q\ <= NOT \ff2|q~q\;
\ff1|ALT_INV_q~q\ <= NOT \ff1|q~q\;

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X89_Y9_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff1|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X86_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff2|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X88_Y0_N37
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff3|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X78_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff4|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X86_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff5|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X88_Y0_N54
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff6|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X74_Y0_N59
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff7|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y9_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ff8|q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X86_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X22_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X88_Y1_N39
\Y_D[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y_D(2) = ( \ff1|q~q\ & ( \SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ff1|ALT_INV_q~q\,
	combout => Y_D(2));

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X88_Y1_N41
\ff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => Y_D(2),
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|q~q\);

-- Location: LABCELL_X88_Y1_N33
\Y_D[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y_D(3) = ( \ff2|q~q\ & ( \SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	dataf => \ff2|ALT_INV_q~q\,
	combout => Y_D(3));

-- Location: FF_X88_Y1_N35
\ff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => Y_D(3),
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|q~q\);

-- Location: LABCELL_X88_Y1_N42
\Y_D[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y_D[4]~1_combout\ = ( \ff4|q~q\ & ( \ff3|q~q\ & ( \SW[1]~input_o\ ) ) ) # ( !\ff4|q~q\ & ( \ff3|q~q\ & ( \SW[1]~input_o\ ) ) ) # ( \ff4|q~q\ & ( !\ff3|q~q\ & ( \SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ff4|ALT_INV_q~q\,
	dataf => \ff3|ALT_INV_q~q\,
	combout => \Y_D[4]~1_combout\);

-- Location: FF_X88_Y1_N44
\ff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Y_D[4]~1_combout\,
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff4|q~q\);

-- Location: LABCELL_X88_Y1_N36
\Y_D[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y_D[5]~2_combout\ = ( \ff2|q~q\ & ( !\SW[1]~input_o\ ) ) # ( !\ff2|q~q\ & ( (!\SW[1]~input_o\ & (((\ff3|q~q\) # (\ff4|q~q\)) # (\ff1|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ff1|ALT_INV_q~q\,
	datab => \ff4|ALT_INV_q~q\,
	datac => \ff3|ALT_INV_q~q\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ff2|ALT_INV_q~q\,
	combout => \Y_D[5]~2_combout\);

-- Location: FF_X88_Y1_N38
\ff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Y_D[5]~2_combout\,
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff5|q~q\);

-- Location: LABCELL_X88_Y1_N51
\Y_D[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y_D(6) = ( \ff5|q~q\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ff5|ALT_INV_q~q\,
	combout => Y_D(6));

-- Location: FF_X88_Y1_N53
\ff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => Y_D(6),
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff6|q~q\);

-- Location: LABCELL_X88_Y1_N54
\Y_D[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y_D(7) = ( !\SW[1]~input_o\ & ( \ff6|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ff6|ALT_INV_q~q\,
	combout => Y_D(7));

-- Location: FF_X88_Y1_N56
\ff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => Y_D(7),
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff7|q~q\);

-- Location: LABCELL_X88_Y1_N15
\Y_D[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y_D[8]~3_combout\ = ( \ff8|q~q\ & ( \ff7|q~q\ & ( !\SW[1]~input_o\ ) ) ) # ( !\ff8|q~q\ & ( \ff7|q~q\ & ( !\SW[1]~input_o\ ) ) ) # ( \ff8|q~q\ & ( !\ff7|q~q\ & ( !\SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datae => \ff8|ALT_INV_q~q\,
	dataf => \ff7|ALT_INV_q~q\,
	combout => \Y_D[8]~3_combout\);

-- Location: FF_X88_Y1_N17
\ff8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Y_D[8]~3_combout\,
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff8|q~q\);

-- Location: LABCELL_X88_Y1_N48
\Y_D[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y_D[1]~0_combout\ = ( \ff6|q~q\ & ( \SW[1]~input_o\ ) ) # ( !\ff6|q~q\ & ( (\SW[1]~input_o\ & (((\ff7|q~q\) # (\ff8|q~q\)) # (\ff5|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ff5|ALT_INV_q~q\,
	datab => \ff8|ALT_INV_q~q\,
	datac => \ff7|ALT_INV_q~q\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ff6|ALT_INV_q~q\,
	combout => \Y_D[1]~0_combout\);

-- Location: FF_X88_Y1_N50
\ff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Y_D[1]~0_combout\,
	sclr => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|q~q\);

-- Location: LABCELL_X88_Y1_N30
\LEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\ff4|q~q\) # (\ff8|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ff8|ALT_INV_q~q\,
	datad => \ff4|ALT_INV_q~q\,
	combout => \LEDR~0_combout\);

-- Location: IOIBUF_X22_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X47_Y60_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;

