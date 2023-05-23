-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/21/2023 13:14:21"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exp7 IS
    PORT (
	out_num : OUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	pc_clr : IN std_logic;
	M : IN std_logic_vector(1 DOWNTO 0)
	);
END exp7;

-- Design Ports Information
-- out_num[15]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[14]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[13]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[12]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[11]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[9]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[5]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_num[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_clr	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exp7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out_num : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_pc_clr : std_logic;
SIGNAL ww_M : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_num[15]~output_o\ : std_logic;
SIGNAL \out_num[14]~output_o\ : std_logic;
SIGNAL \out_num[13]~output_o\ : std_logic;
SIGNAL \out_num[12]~output_o\ : std_logic;
SIGNAL \out_num[11]~output_o\ : std_logic;
SIGNAL \out_num[10]~output_o\ : std_logic;
SIGNAL \out_num[9]~output_o\ : std_logic;
SIGNAL \out_num[8]~output_o\ : std_logic;
SIGNAL \out_num[7]~output_o\ : std_logic;
SIGNAL \out_num[6]~output_o\ : std_logic;
SIGNAL \out_num[5]~output_o\ : std_logic;
SIGNAL \out_num[4]~output_o\ : std_logic;
SIGNAL \out_num[3]~output_o\ : std_logic;
SIGNAL \out_num[2]~output_o\ : std_logic;
SIGNAL \out_num[1]~output_o\ : std_logic;
SIGNAL \out_num[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|PC[0]~8_combout\ : std_logic;
SIGNAL \pc_clr~input_o\ : std_logic;
SIGNAL \pc_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \inst1|cs|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~9_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~33\ : std_logic;
SIGNAL \inst1|cs|Add0~34_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~35\ : std_logic;
SIGNAL \inst1|cs|Add0~36_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~37\ : std_logic;
SIGNAL \inst1|cs|Add0~38_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~39\ : std_logic;
SIGNAL \inst1|cs|Add0~40_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~41\ : std_logic;
SIGNAL \inst1|cs|Add0~42_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~43\ : std_logic;
SIGNAL \inst1|cs|Add0~44_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~45\ : std_logic;
SIGNAL \inst1|cs|Add0~46_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~47\ : std_logic;
SIGNAL \inst1|cs|Add0~48_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~49\ : std_logic;
SIGNAL \inst1|cs|Add0~50_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~51\ : std_logic;
SIGNAL \inst1|cs|Add0~52_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~53\ : std_logic;
SIGNAL \inst1|cs|Add0~54_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~55\ : std_logic;
SIGNAL \inst1|cs|Add0~56_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~57\ : std_logic;
SIGNAL \inst1|cs|Add0~58_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~59\ : std_logic;
SIGNAL \inst1|cs|Add0~60_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~61\ : std_logic;
SIGNAL \inst1|cs|Add0~62_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|cs|Equal0~10_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~6_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~1\ : std_logic;
SIGNAL \inst1|cs|Add0~2_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~3\ : std_logic;
SIGNAL \inst1|cs|Add0~4_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~5\ : std_logic;
SIGNAL \inst1|cs|Add0~6_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~7\ : std_logic;
SIGNAL \inst1|cs|Add0~8_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~9\ : std_logic;
SIGNAL \inst1|cs|Add0~10_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~0_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~11\ : std_logic;
SIGNAL \inst1|cs|Add0~12_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~13\ : std_logic;
SIGNAL \inst1|cs|Add0~14_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~1_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~15\ : std_logic;
SIGNAL \inst1|cs|Add0~16_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~17\ : std_logic;
SIGNAL \inst1|cs|Add0~18_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~2_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~19\ : std_logic;
SIGNAL \inst1|cs|Add0~20_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~3_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~21\ : std_logic;
SIGNAL \inst1|cs|Add0~22_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~23\ : std_logic;
SIGNAL \inst1|cs|Add0~24_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~25\ : std_logic;
SIGNAL \inst1|cs|Add0~26_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~27\ : std_logic;
SIGNAL \inst1|cs|Add0~28_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~29\ : std_logic;
SIGNAL \inst1|cs|Add0~30_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~4_combout\ : std_logic;
SIGNAL \inst1|cs|Add0~31\ : std_logic;
SIGNAL \inst1|cs|Add0~32_combout\ : std_logic;
SIGNAL \inst1|cs|second_counter~5_combout\ : std_logic;
SIGNAL \inst1|WideNor0~0_combout\ : std_logic;
SIGNAL \inst1|WideNor0~combout\ : std_logic;
SIGNAL \inst1|PC[0]~10_combout\ : std_logic;
SIGNAL \inst1|PC[0]~9\ : std_logic;
SIGNAL \inst1|PC[1]~11_combout\ : std_logic;
SIGNAL \inst1|PC[1]~12\ : std_logic;
SIGNAL \inst1|PC[2]~13_combout\ : std_logic;
SIGNAL \inst1|PC[2]~14\ : std_logic;
SIGNAL \inst1|PC[3]~15_combout\ : std_logic;
SIGNAL \inst1|PC[3]~16\ : std_logic;
SIGNAL \inst1|PC[4]~17_combout\ : std_logic;
SIGNAL \inst1|PC[4]~18\ : std_logic;
SIGNAL \inst1|PC[5]~19_combout\ : std_logic;
SIGNAL \inst1|PC[5]~20\ : std_logic;
SIGNAL \inst1|PC[6]~21_combout\ : std_logic;
SIGNAL \inst1|PC[6]~22\ : std_logic;
SIGNAL \inst1|PC[7]~23_combout\ : std_logic;
SIGNAL \inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cs|second_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

out_num <= ww_out_num;
ww_clk <= clk;
ww_pc_clr <= pc_clr;
ww_M <= M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|PC\(7) & \inst1|PC\(6) & \inst1|PC\(5) & \inst1|PC\(4) & \inst1|PC\(3) & \inst1|PC\(2) & \inst1|PC\(1) & \inst1|PC\(0));

\inst|srom|rom_block|auto_generated|q_a\(0) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|srom|rom_block|auto_generated|q_a\(1) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|srom|rom_block|auto_generated|q_a\(2) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|srom|rom_block|auto_generated|q_a\(3) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|srom|rom_block|auto_generated|q_a\(4) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|srom|rom_block|auto_generated|q_a\(5) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|srom|rom_block|auto_generated|q_a\(6) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|srom|rom_block|auto_generated|q_a\(7) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|srom|rom_block|auto_generated|q_a\(8) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|srom|rom_block|auto_generated|q_a\(9) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|srom|rom_block|auto_generated|q_a\(10) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|srom|rom_block|auto_generated|q_a\(11) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|srom|rom_block|auto_generated|q_a\(12) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|srom|rom_block|auto_generated|q_a\(13) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|srom|rom_block|auto_generated|q_a\(14) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|srom|rom_block|auto_generated|q_a\(15) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\pc_clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pc_clr~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: IOOBUF_X43_Y0_N9
\out_num[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \out_num[15]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\out_num[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \out_num[14]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\out_num[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \out_num[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\out_num[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \out_num[12]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\out_num[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \out_num[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\out_num[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \out_num[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\out_num[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \out_num[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\out_num[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \out_num[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\out_num[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \out_num[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\out_num[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \out_num[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\out_num[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \out_num[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\out_num[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \out_num[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\out_num[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \out_num[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\out_num[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \out_num[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\out_num[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \out_num[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\out_num[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \out_num[0]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X48_Y12_N12
\inst1|PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[0]~8_combout\ = \inst1|PC\(0) $ (VCC)
-- \inst1|PC[0]~9\ = CARRY(\inst1|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC\(0),
	datad => VCC,
	combout => \inst1|PC[0]~8_combout\,
	cout => \inst1|PC[0]~9\);

-- Location: IOIBUF_X0_Y21_N8
\pc_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_clr,
	o => \pc_clr~input_o\);

-- Location: CLKCTRL_G2
\pc_clr~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pc_clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pc_clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X48_Y0_N1
\M[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: IOIBUF_X67_Y12_N8
\M[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: LCCOMB_X49_Y13_N0
\inst1|cs|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~0_combout\ = \inst1|cs|second_counter\(0) $ (VCC)
-- \inst1|cs|Add0~1\ = CARRY(\inst1|cs|second_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(0),
	datad => VCC,
	combout => \inst1|cs|Add0~0_combout\,
	cout => \inst1|cs|Add0~1\);

-- Location: LCCOMB_X48_Y13_N22
\inst1|cs|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~9_combout\ = (\inst1|cs|second_counter\(10) & (\inst1|cs|second_counter\(5) & (\inst1|cs|second_counter\(7) & \inst1|cs|second_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(10),
	datab => \inst1|cs|second_counter\(5),
	datac => \inst1|cs|second_counter\(7),
	datad => \inst1|cs|second_counter\(9),
	combout => \inst1|cs|Equal0~9_combout\);

-- Location: LCCOMB_X49_Y12_N0
\inst1|cs|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~32_combout\ = (\inst1|cs|second_counter\(16) & (\inst1|cs|Add0~31\ $ (GND))) # (!\inst1|cs|second_counter\(16) & (!\inst1|cs|Add0~31\ & VCC))
-- \inst1|cs|Add0~33\ = CARRY((\inst1|cs|second_counter\(16) & !\inst1|cs|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(16),
	datad => VCC,
	cin => \inst1|cs|Add0~31\,
	combout => \inst1|cs|Add0~32_combout\,
	cout => \inst1|cs|Add0~33\);

-- Location: LCCOMB_X49_Y12_N2
\inst1|cs|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~34_combout\ = (\inst1|cs|second_counter\(17) & (!\inst1|cs|Add0~33\)) # (!\inst1|cs|second_counter\(17) & ((\inst1|cs|Add0~33\) # (GND)))
-- \inst1|cs|Add0~35\ = CARRY((!\inst1|cs|Add0~33\) # (!\inst1|cs|second_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(17),
	datad => VCC,
	cin => \inst1|cs|Add0~33\,
	combout => \inst1|cs|Add0~34_combout\,
	cout => \inst1|cs|Add0~35\);

-- Location: FF_X49_Y12_N3
\inst1|cs|second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(17));

-- Location: LCCOMB_X49_Y12_N4
\inst1|cs|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~36_combout\ = (\inst1|cs|second_counter\(18) & (\inst1|cs|Add0~35\ $ (GND))) # (!\inst1|cs|second_counter\(18) & (!\inst1|cs|Add0~35\ & VCC))
-- \inst1|cs|Add0~37\ = CARRY((\inst1|cs|second_counter\(18) & !\inst1|cs|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(18),
	datad => VCC,
	cin => \inst1|cs|Add0~35\,
	combout => \inst1|cs|Add0~36_combout\,
	cout => \inst1|cs|Add0~37\);

-- Location: FF_X49_Y12_N5
\inst1|cs|second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(18));

-- Location: LCCOMB_X49_Y12_N6
\inst1|cs|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~38_combout\ = (\inst1|cs|second_counter\(19) & (!\inst1|cs|Add0~37\)) # (!\inst1|cs|second_counter\(19) & ((\inst1|cs|Add0~37\) # (GND)))
-- \inst1|cs|Add0~39\ = CARRY((!\inst1|cs|Add0~37\) # (!\inst1|cs|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(19),
	datad => VCC,
	cin => \inst1|cs|Add0~37\,
	combout => \inst1|cs|Add0~38_combout\,
	cout => \inst1|cs|Add0~39\);

-- Location: FF_X49_Y12_N7
\inst1|cs|second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(19));

-- Location: LCCOMB_X49_Y12_N8
\inst1|cs|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~40_combout\ = (\inst1|cs|second_counter\(20) & (\inst1|cs|Add0~39\ $ (GND))) # (!\inst1|cs|second_counter\(20) & (!\inst1|cs|Add0~39\ & VCC))
-- \inst1|cs|Add0~41\ = CARRY((\inst1|cs|second_counter\(20) & !\inst1|cs|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(20),
	datad => VCC,
	cin => \inst1|cs|Add0~39\,
	combout => \inst1|cs|Add0~40_combout\,
	cout => \inst1|cs|Add0~41\);

-- Location: FF_X49_Y12_N9
\inst1|cs|second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(20));

-- Location: LCCOMB_X49_Y12_N10
\inst1|cs|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~42_combout\ = (\inst1|cs|second_counter\(21) & (!\inst1|cs|Add0~41\)) # (!\inst1|cs|second_counter\(21) & ((\inst1|cs|Add0~41\) # (GND)))
-- \inst1|cs|Add0~43\ = CARRY((!\inst1|cs|Add0~41\) # (!\inst1|cs|second_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(21),
	datad => VCC,
	cin => \inst1|cs|Add0~41\,
	combout => \inst1|cs|Add0~42_combout\,
	cout => \inst1|cs|Add0~43\);

-- Location: FF_X49_Y12_N11
\inst1|cs|second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(21));

-- Location: LCCOMB_X49_Y12_N12
\inst1|cs|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~44_combout\ = (\inst1|cs|second_counter\(22) & (\inst1|cs|Add0~43\ $ (GND))) # (!\inst1|cs|second_counter\(22) & (!\inst1|cs|Add0~43\ & VCC))
-- \inst1|cs|Add0~45\ = CARRY((\inst1|cs|second_counter\(22) & !\inst1|cs|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(22),
	datad => VCC,
	cin => \inst1|cs|Add0~43\,
	combout => \inst1|cs|Add0~44_combout\,
	cout => \inst1|cs|Add0~45\);

-- Location: FF_X49_Y12_N13
\inst1|cs|second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(22));

-- Location: LCCOMB_X49_Y12_N14
\inst1|cs|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~46_combout\ = (\inst1|cs|second_counter\(23) & (!\inst1|cs|Add0~45\)) # (!\inst1|cs|second_counter\(23) & ((\inst1|cs|Add0~45\) # (GND)))
-- \inst1|cs|Add0~47\ = CARRY((!\inst1|cs|Add0~45\) # (!\inst1|cs|second_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(23),
	datad => VCC,
	cin => \inst1|cs|Add0~45\,
	combout => \inst1|cs|Add0~46_combout\,
	cout => \inst1|cs|Add0~47\);

-- Location: FF_X49_Y12_N15
\inst1|cs|second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(23));

-- Location: LCCOMB_X49_Y12_N16
\inst1|cs|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~48_combout\ = (\inst1|cs|second_counter\(24) & (\inst1|cs|Add0~47\ $ (GND))) # (!\inst1|cs|second_counter\(24) & (!\inst1|cs|Add0~47\ & VCC))
-- \inst1|cs|Add0~49\ = CARRY((\inst1|cs|second_counter\(24) & !\inst1|cs|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(24),
	datad => VCC,
	cin => \inst1|cs|Add0~47\,
	combout => \inst1|cs|Add0~48_combout\,
	cout => \inst1|cs|Add0~49\);

-- Location: FF_X49_Y12_N17
\inst1|cs|second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(24));

-- Location: LCCOMB_X49_Y12_N18
\inst1|cs|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~50_combout\ = (\inst1|cs|second_counter\(25) & (!\inst1|cs|Add0~49\)) # (!\inst1|cs|second_counter\(25) & ((\inst1|cs|Add0~49\) # (GND)))
-- \inst1|cs|Add0~51\ = CARRY((!\inst1|cs|Add0~49\) # (!\inst1|cs|second_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(25),
	datad => VCC,
	cin => \inst1|cs|Add0~49\,
	combout => \inst1|cs|Add0~50_combout\,
	cout => \inst1|cs|Add0~51\);

-- Location: FF_X49_Y12_N19
\inst1|cs|second_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(25));

-- Location: LCCOMB_X50_Y12_N20
\inst1|cs|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~5_combout\ = (!\inst1|cs|second_counter\(23) & (!\inst1|cs|second_counter\(25) & (!\inst1|cs|second_counter\(24) & !\inst1|cs|second_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(23),
	datab => \inst1|cs|second_counter\(25),
	datac => \inst1|cs|second_counter\(24),
	datad => \inst1|cs|second_counter\(22),
	combout => \inst1|cs|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y12_N20
\inst1|cs|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~52_combout\ = (\inst1|cs|second_counter\(26) & (\inst1|cs|Add0~51\ $ (GND))) # (!\inst1|cs|second_counter\(26) & (!\inst1|cs|Add0~51\ & VCC))
-- \inst1|cs|Add0~53\ = CARRY((\inst1|cs|second_counter\(26) & !\inst1|cs|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(26),
	datad => VCC,
	cin => \inst1|cs|Add0~51\,
	combout => \inst1|cs|Add0~52_combout\,
	cout => \inst1|cs|Add0~53\);

-- Location: FF_X49_Y12_N21
\inst1|cs|second_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(26));

-- Location: LCCOMB_X49_Y12_N22
\inst1|cs|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~54_combout\ = (\inst1|cs|second_counter\(27) & (!\inst1|cs|Add0~53\)) # (!\inst1|cs|second_counter\(27) & ((\inst1|cs|Add0~53\) # (GND)))
-- \inst1|cs|Add0~55\ = CARRY((!\inst1|cs|Add0~53\) # (!\inst1|cs|second_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(27),
	datad => VCC,
	cin => \inst1|cs|Add0~53\,
	combout => \inst1|cs|Add0~54_combout\,
	cout => \inst1|cs|Add0~55\);

-- Location: FF_X49_Y12_N23
\inst1|cs|second_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(27));

-- Location: LCCOMB_X49_Y12_N24
\inst1|cs|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~56_combout\ = (\inst1|cs|second_counter\(28) & (\inst1|cs|Add0~55\ $ (GND))) # (!\inst1|cs|second_counter\(28) & (!\inst1|cs|Add0~55\ & VCC))
-- \inst1|cs|Add0~57\ = CARRY((\inst1|cs|second_counter\(28) & !\inst1|cs|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(28),
	datad => VCC,
	cin => \inst1|cs|Add0~55\,
	combout => \inst1|cs|Add0~56_combout\,
	cout => \inst1|cs|Add0~57\);

-- Location: FF_X49_Y12_N25
\inst1|cs|second_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(28));

-- Location: LCCOMB_X49_Y12_N26
\inst1|cs|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~58_combout\ = (\inst1|cs|second_counter\(29) & (!\inst1|cs|Add0~57\)) # (!\inst1|cs|second_counter\(29) & ((\inst1|cs|Add0~57\) # (GND)))
-- \inst1|cs|Add0~59\ = CARRY((!\inst1|cs|Add0~57\) # (!\inst1|cs|second_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(29),
	datad => VCC,
	cin => \inst1|cs|Add0~57\,
	combout => \inst1|cs|Add0~58_combout\,
	cout => \inst1|cs|Add0~59\);

-- Location: FF_X49_Y12_N27
\inst1|cs|second_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(29));

-- Location: LCCOMB_X49_Y12_N28
\inst1|cs|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~60_combout\ = (\inst1|cs|second_counter\(30) & (\inst1|cs|Add0~59\ $ (GND))) # (!\inst1|cs|second_counter\(30) & (!\inst1|cs|Add0~59\ & VCC))
-- \inst1|cs|Add0~61\ = CARRY((\inst1|cs|second_counter\(30) & !\inst1|cs|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(30),
	datad => VCC,
	cin => \inst1|cs|Add0~59\,
	combout => \inst1|cs|Add0~60_combout\,
	cout => \inst1|cs|Add0~61\);

-- Location: FF_X49_Y12_N29
\inst1|cs|second_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(30));

-- Location: LCCOMB_X49_Y12_N30
\inst1|cs|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~62_combout\ = \inst1|cs|Add0~61\ $ (\inst1|cs|second_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cs|second_counter\(31),
	cin => \inst1|cs|Add0~61\,
	combout => \inst1|cs|Add0~62_combout\);

-- Location: FF_X49_Y12_N31
\inst1|cs|second_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(31));

-- Location: LCCOMB_X48_Y12_N8
\inst1|cs|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~7_combout\ = (!\inst1|cs|second_counter\(31) & !\inst1|cs|second_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(31),
	datad => \inst1|cs|second_counter\(30),
	combout => \inst1|cs|Equal0~7_combout\);

-- Location: LCCOMB_X50_Y12_N18
\inst1|cs|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~6_combout\ = (!\inst1|cs|second_counter\(29) & (!\inst1|cs|second_counter\(26) & (!\inst1|cs|second_counter\(28) & !\inst1|cs|second_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(29),
	datab => \inst1|cs|second_counter\(26),
	datac => \inst1|cs|second_counter\(28),
	datad => \inst1|cs|second_counter\(27),
	combout => \inst1|cs|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y12_N30
\inst1|cs|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~2_combout\ = (!\inst1|cs|second_counter\(17) & (!\inst1|cs|second_counter\(14) & (!\inst1|cs|second_counter\(13) & !\inst1|cs|second_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(17),
	datab => \inst1|cs|second_counter\(14),
	datac => \inst1|cs|second_counter\(13),
	datad => \inst1|cs|second_counter\(12),
	combout => \inst1|cs|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y12_N28
\inst1|cs|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~3_combout\ = (!\inst1|cs|second_counter\(19) & (!\inst1|cs|second_counter\(20) & (!\inst1|cs|second_counter\(18) & !\inst1|cs|second_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(19),
	datab => \inst1|cs|second_counter\(20),
	datac => \inst1|cs|second_counter\(18),
	datad => \inst1|cs|second_counter\(21),
	combout => \inst1|cs|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y12_N4
\inst1|cs|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~0_combout\ = (!\inst1|cs|second_counter\(2) & (!\inst1|cs|second_counter\(4) & (!\inst1|cs|second_counter\(1) & !\inst1|cs|second_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(2),
	datab => \inst1|cs|second_counter\(4),
	datac => \inst1|cs|second_counter\(1),
	datad => \inst1|cs|second_counter\(3),
	combout => \inst1|cs|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y13_N28
\inst1|cs|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~1_combout\ = (!\inst1|cs|second_counter\(0) & (!\inst1|cs|second_counter\(8) & (!\inst1|cs|second_counter\(6) & !\inst1|cs|second_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(0),
	datab => \inst1|cs|second_counter\(8),
	datac => \inst1|cs|second_counter\(6),
	datad => \inst1|cs|second_counter\(11),
	combout => \inst1|cs|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y12_N10
\inst1|cs|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~4_combout\ = (\inst1|cs|Equal0~2_combout\ & (\inst1|cs|Equal0~3_combout\ & (\inst1|cs|Equal0~0_combout\ & \inst1|cs|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|Equal0~2_combout\,
	datab => \inst1|cs|Equal0~3_combout\,
	datac => \inst1|cs|Equal0~0_combout\,
	datad => \inst1|cs|Equal0~1_combout\,
	combout => \inst1|cs|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y12_N6
\inst1|cs|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~8_combout\ = (\inst1|cs|Equal0~5_combout\ & (\inst1|cs|Equal0~7_combout\ & (\inst1|cs|Equal0~6_combout\ & \inst1|cs|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|Equal0~5_combout\,
	datab => \inst1|cs|Equal0~7_combout\,
	datac => \inst1|cs|Equal0~6_combout\,
	datad => \inst1|cs|Equal0~4_combout\,
	combout => \inst1|cs|Equal0~8_combout\);

-- Location: LCCOMB_X48_Y13_N12
\inst1|cs|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Equal0~10_combout\ = (\inst1|cs|second_counter\(15) & (\inst1|cs|second_counter\(16) & (\inst1|cs|Equal0~9_combout\ & \inst1|cs|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(15),
	datab => \inst1|cs|second_counter\(16),
	datac => \inst1|cs|Equal0~9_combout\,
	datad => \inst1|cs|Equal0~8_combout\,
	combout => \inst1|cs|Equal0~10_combout\);

-- Location: LCCOMB_X48_Y13_N6
\inst1|cs|second_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~6_combout\ = (\inst1|cs|Add0~0_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cs|Add0~0_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~6_combout\);

-- Location: FF_X48_Y13_N7
\inst1|cs|second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(0));

-- Location: LCCOMB_X49_Y13_N2
\inst1|cs|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~2_combout\ = (\inst1|cs|second_counter\(1) & (!\inst1|cs|Add0~1\)) # (!\inst1|cs|second_counter\(1) & ((\inst1|cs|Add0~1\) # (GND)))
-- \inst1|cs|Add0~3\ = CARRY((!\inst1|cs|Add0~1\) # (!\inst1|cs|second_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(1),
	datad => VCC,
	cin => \inst1|cs|Add0~1\,
	combout => \inst1|cs|Add0~2_combout\,
	cout => \inst1|cs|Add0~3\);

-- Location: FF_X49_Y13_N3
\inst1|cs|second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(1));

-- Location: LCCOMB_X49_Y13_N4
\inst1|cs|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~4_combout\ = (\inst1|cs|second_counter\(2) & (\inst1|cs|Add0~3\ $ (GND))) # (!\inst1|cs|second_counter\(2) & (!\inst1|cs|Add0~3\ & VCC))
-- \inst1|cs|Add0~5\ = CARRY((\inst1|cs|second_counter\(2) & !\inst1|cs|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(2),
	datad => VCC,
	cin => \inst1|cs|Add0~3\,
	combout => \inst1|cs|Add0~4_combout\,
	cout => \inst1|cs|Add0~5\);

-- Location: FF_X49_Y13_N5
\inst1|cs|second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(2));

-- Location: LCCOMB_X49_Y13_N6
\inst1|cs|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~6_combout\ = (\inst1|cs|second_counter\(3) & (!\inst1|cs|Add0~5\)) # (!\inst1|cs|second_counter\(3) & ((\inst1|cs|Add0~5\) # (GND)))
-- \inst1|cs|Add0~7\ = CARRY((!\inst1|cs|Add0~5\) # (!\inst1|cs|second_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(3),
	datad => VCC,
	cin => \inst1|cs|Add0~5\,
	combout => \inst1|cs|Add0~6_combout\,
	cout => \inst1|cs|Add0~7\);

-- Location: FF_X49_Y13_N7
\inst1|cs|second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(3));

-- Location: LCCOMB_X49_Y13_N8
\inst1|cs|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~8_combout\ = (\inst1|cs|second_counter\(4) & (\inst1|cs|Add0~7\ $ (GND))) # (!\inst1|cs|second_counter\(4) & (!\inst1|cs|Add0~7\ & VCC))
-- \inst1|cs|Add0~9\ = CARRY((\inst1|cs|second_counter\(4) & !\inst1|cs|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(4),
	datad => VCC,
	cin => \inst1|cs|Add0~7\,
	combout => \inst1|cs|Add0~8_combout\,
	cout => \inst1|cs|Add0~9\);

-- Location: FF_X49_Y13_N9
\inst1|cs|second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(4));

-- Location: LCCOMB_X49_Y13_N10
\inst1|cs|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~10_combout\ = (\inst1|cs|second_counter\(5) & (!\inst1|cs|Add0~9\)) # (!\inst1|cs|second_counter\(5) & ((\inst1|cs|Add0~9\) # (GND)))
-- \inst1|cs|Add0~11\ = CARRY((!\inst1|cs|Add0~9\) # (!\inst1|cs|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(5),
	datad => VCC,
	cin => \inst1|cs|Add0~9\,
	combout => \inst1|cs|Add0~10_combout\,
	cout => \inst1|cs|Add0~11\);

-- Location: LCCOMB_X48_Y13_N0
\inst1|cs|second_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~0_combout\ = (\inst1|cs|Add0~10_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cs|Add0~10_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~0_combout\);

-- Location: FF_X48_Y13_N1
\inst1|cs|second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(5));

-- Location: LCCOMB_X49_Y13_N12
\inst1|cs|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~12_combout\ = (\inst1|cs|second_counter\(6) & (\inst1|cs|Add0~11\ $ (GND))) # (!\inst1|cs|second_counter\(6) & (!\inst1|cs|Add0~11\ & VCC))
-- \inst1|cs|Add0~13\ = CARRY((\inst1|cs|second_counter\(6) & !\inst1|cs|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(6),
	datad => VCC,
	cin => \inst1|cs|Add0~11\,
	combout => \inst1|cs|Add0~12_combout\,
	cout => \inst1|cs|Add0~13\);

-- Location: FF_X49_Y13_N13
\inst1|cs|second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(6));

-- Location: LCCOMB_X49_Y13_N14
\inst1|cs|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~14_combout\ = (\inst1|cs|second_counter\(7) & (!\inst1|cs|Add0~13\)) # (!\inst1|cs|second_counter\(7) & ((\inst1|cs|Add0~13\) # (GND)))
-- \inst1|cs|Add0~15\ = CARRY((!\inst1|cs|Add0~13\) # (!\inst1|cs|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(7),
	datad => VCC,
	cin => \inst1|cs|Add0~13\,
	combout => \inst1|cs|Add0~14_combout\,
	cout => \inst1|cs|Add0~15\);

-- Location: LCCOMB_X48_Y13_N14
\inst1|cs|second_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~1_combout\ = (\inst1|cs|Add0~14_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cs|Add0~14_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~1_combout\);

-- Location: FF_X48_Y13_N15
\inst1|cs|second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(7));

-- Location: LCCOMB_X49_Y13_N16
\inst1|cs|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~16_combout\ = (\inst1|cs|second_counter\(8) & (\inst1|cs|Add0~15\ $ (GND))) # (!\inst1|cs|second_counter\(8) & (!\inst1|cs|Add0~15\ & VCC))
-- \inst1|cs|Add0~17\ = CARRY((\inst1|cs|second_counter\(8) & !\inst1|cs|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(8),
	datad => VCC,
	cin => \inst1|cs|Add0~15\,
	combout => \inst1|cs|Add0~16_combout\,
	cout => \inst1|cs|Add0~17\);

-- Location: FF_X49_Y13_N17
\inst1|cs|second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(8));

-- Location: LCCOMB_X49_Y13_N18
\inst1|cs|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~18_combout\ = (\inst1|cs|second_counter\(9) & (!\inst1|cs|Add0~17\)) # (!\inst1|cs|second_counter\(9) & ((\inst1|cs|Add0~17\) # (GND)))
-- \inst1|cs|Add0~19\ = CARRY((!\inst1|cs|Add0~17\) # (!\inst1|cs|second_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(9),
	datad => VCC,
	cin => \inst1|cs|Add0~17\,
	combout => \inst1|cs|Add0~18_combout\,
	cout => \inst1|cs|Add0~19\);

-- Location: LCCOMB_X48_Y13_N16
\inst1|cs|second_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~2_combout\ = (\inst1|cs|Add0~18_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|Add0~18_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~2_combout\);

-- Location: FF_X48_Y13_N17
\inst1|cs|second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(9));

-- Location: LCCOMB_X49_Y13_N20
\inst1|cs|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~20_combout\ = (\inst1|cs|second_counter\(10) & (\inst1|cs|Add0~19\ $ (GND))) # (!\inst1|cs|second_counter\(10) & (!\inst1|cs|Add0~19\ & VCC))
-- \inst1|cs|Add0~21\ = CARRY((\inst1|cs|second_counter\(10) & !\inst1|cs|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(10),
	datad => VCC,
	cin => \inst1|cs|Add0~19\,
	combout => \inst1|cs|Add0~20_combout\,
	cout => \inst1|cs|Add0~21\);

-- Location: LCCOMB_X48_Y13_N26
\inst1|cs|second_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~3_combout\ = (\inst1|cs|Add0~20_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cs|Add0~20_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~3_combout\);

-- Location: FF_X48_Y13_N27
\inst1|cs|second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(10));

-- Location: LCCOMB_X49_Y13_N22
\inst1|cs|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~22_combout\ = (\inst1|cs|second_counter\(11) & (!\inst1|cs|Add0~21\)) # (!\inst1|cs|second_counter\(11) & ((\inst1|cs|Add0~21\) # (GND)))
-- \inst1|cs|Add0~23\ = CARRY((!\inst1|cs|Add0~21\) # (!\inst1|cs|second_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(11),
	datad => VCC,
	cin => \inst1|cs|Add0~21\,
	combout => \inst1|cs|Add0~22_combout\,
	cout => \inst1|cs|Add0~23\);

-- Location: FF_X49_Y13_N23
\inst1|cs|second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(11));

-- Location: LCCOMB_X49_Y13_N24
\inst1|cs|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~24_combout\ = (\inst1|cs|second_counter\(12) & (\inst1|cs|Add0~23\ $ (GND))) # (!\inst1|cs|second_counter\(12) & (!\inst1|cs|Add0~23\ & VCC))
-- \inst1|cs|Add0~25\ = CARRY((\inst1|cs|second_counter\(12) & !\inst1|cs|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(12),
	datad => VCC,
	cin => \inst1|cs|Add0~23\,
	combout => \inst1|cs|Add0~24_combout\,
	cout => \inst1|cs|Add0~25\);

-- Location: FF_X49_Y13_N25
\inst1|cs|second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(12));

-- Location: LCCOMB_X49_Y13_N26
\inst1|cs|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~26_combout\ = (\inst1|cs|second_counter\(13) & (!\inst1|cs|Add0~25\)) # (!\inst1|cs|second_counter\(13) & ((\inst1|cs|Add0~25\) # (GND)))
-- \inst1|cs|Add0~27\ = CARRY((!\inst1|cs|Add0~25\) # (!\inst1|cs|second_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(13),
	datad => VCC,
	cin => \inst1|cs|Add0~25\,
	combout => \inst1|cs|Add0~26_combout\,
	cout => \inst1|cs|Add0~27\);

-- Location: FF_X49_Y13_N27
\inst1|cs|second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(13));

-- Location: LCCOMB_X49_Y13_N28
\inst1|cs|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~28_combout\ = (\inst1|cs|second_counter\(14) & (\inst1|cs|Add0~27\ $ (GND))) # (!\inst1|cs|second_counter\(14) & (!\inst1|cs|Add0~27\ & VCC))
-- \inst1|cs|Add0~29\ = CARRY((\inst1|cs|second_counter\(14) & !\inst1|cs|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(14),
	datad => VCC,
	cin => \inst1|cs|Add0~27\,
	combout => \inst1|cs|Add0~28_combout\,
	cout => \inst1|cs|Add0~29\);

-- Location: FF_X49_Y13_N29
\inst1|cs|second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(14));

-- Location: LCCOMB_X49_Y13_N30
\inst1|cs|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|Add0~30_combout\ = (\inst1|cs|second_counter\(15) & (!\inst1|cs|Add0~29\)) # (!\inst1|cs|second_counter\(15) & ((\inst1|cs|Add0~29\) # (GND)))
-- \inst1|cs|Add0~31\ = CARRY((!\inst1|cs|Add0~29\) # (!\inst1|cs|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cs|second_counter\(15),
	datad => VCC,
	cin => \inst1|cs|Add0~29\,
	combout => \inst1|cs|Add0~30_combout\,
	cout => \inst1|cs|Add0~31\);

-- Location: LCCOMB_X48_Y13_N30
\inst1|cs|second_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~4_combout\ = (\inst1|cs|Add0~30_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cs|Add0~30_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~4_combout\);

-- Location: FF_X48_Y13_N31
\inst1|cs|second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(15));

-- Location: LCCOMB_X48_Y13_N20
\inst1|cs|second_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|cs|second_counter~5_combout\ = (\inst1|cs|Add0~32_combout\ & !\inst1|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cs|Add0~32_combout\,
	datad => \inst1|cs|Equal0~10_combout\,
	combout => \inst1|cs|second_counter~5_combout\);

-- Location: FF_X48_Y13_N21
\inst1|cs|second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cs|second_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cs|second_counter\(16));

-- Location: LCCOMB_X48_Y13_N24
\inst1|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~0_combout\ = (\inst1|cs|second_counter\(10)) # ((\inst1|cs|second_counter\(5)) # ((\inst1|cs|second_counter\(7)) # (\inst1|cs|second_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(10),
	datab => \inst1|cs|second_counter\(5),
	datac => \inst1|cs|second_counter\(7),
	datad => \inst1|cs|second_counter\(9),
	combout => \inst1|WideNor0~0_combout\);

-- Location: LCCOMB_X48_Y12_N0
\inst1|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~combout\ = (\inst1|cs|second_counter\(16)) # ((\inst1|WideNor0~0_combout\) # ((\inst1|cs|second_counter\(15)) # (!\inst1|cs|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cs|second_counter\(16),
	datab => \inst1|WideNor0~0_combout\,
	datac => \inst1|cs|second_counter\(15),
	datad => \inst1|cs|Equal0~8_combout\,
	combout => \inst1|WideNor0~combout\);

-- Location: LCCOMB_X48_Y12_N2
\inst1|PC[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[0]~10_combout\ = (\M[1]~input_o\ & (\M[0]~input_o\)) # (!\M[1]~input_o\ & ((!\inst1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datac => \M[1]~input_o\,
	datad => \inst1|WideNor0~combout\,
	combout => \inst1|PC[0]~10_combout\);

-- Location: FF_X48_Y12_N13
\inst1|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[0]~8_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(0));

-- Location: LCCOMB_X48_Y12_N14
\inst1|PC[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[1]~11_combout\ = (\M[0]~input_o\ & ((\inst1|PC\(1) & (\inst1|PC[0]~9\ & VCC)) # (!\inst1|PC\(1) & (!\inst1|PC[0]~9\)))) # (!\M[0]~input_o\ & ((\inst1|PC\(1) & (!\inst1|PC[0]~9\)) # (!\inst1|PC\(1) & ((\inst1|PC[0]~9\) # (GND)))))
-- \inst1|PC[1]~12\ = CARRY((\M[0]~input_o\ & (!\inst1|PC\(1) & !\inst1|PC[0]~9\)) # (!\M[0]~input_o\ & ((!\inst1|PC[0]~9\) # (!\inst1|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|PC\(1),
	datad => VCC,
	cin => \inst1|PC[0]~9\,
	combout => \inst1|PC[1]~11_combout\,
	cout => \inst1|PC[1]~12\);

-- Location: FF_X48_Y12_N15
\inst1|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[1]~11_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(1));

-- Location: LCCOMB_X48_Y12_N16
\inst1|PC[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[2]~13_combout\ = ((\M[0]~input_o\ $ (\inst1|PC\(2) $ (!\inst1|PC[1]~12\)))) # (GND)
-- \inst1|PC[2]~14\ = CARRY((\M[0]~input_o\ & ((\inst1|PC\(2)) # (!\inst1|PC[1]~12\))) # (!\M[0]~input_o\ & (\inst1|PC\(2) & !\inst1|PC[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|PC\(2),
	datad => VCC,
	cin => \inst1|PC[1]~12\,
	combout => \inst1|PC[2]~13_combout\,
	cout => \inst1|PC[2]~14\);

-- Location: FF_X48_Y12_N17
\inst1|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[2]~13_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(2));

-- Location: LCCOMB_X48_Y12_N18
\inst1|PC[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[3]~15_combout\ = (\M[0]~input_o\ & ((\inst1|PC\(3) & (\inst1|PC[2]~14\ & VCC)) # (!\inst1|PC\(3) & (!\inst1|PC[2]~14\)))) # (!\M[0]~input_o\ & ((\inst1|PC\(3) & (!\inst1|PC[2]~14\)) # (!\inst1|PC\(3) & ((\inst1|PC[2]~14\) # (GND)))))
-- \inst1|PC[3]~16\ = CARRY((\M[0]~input_o\ & (!\inst1|PC\(3) & !\inst1|PC[2]~14\)) # (!\M[0]~input_o\ & ((!\inst1|PC[2]~14\) # (!\inst1|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|PC\(3),
	datad => VCC,
	cin => \inst1|PC[2]~14\,
	combout => \inst1|PC[3]~15_combout\,
	cout => \inst1|PC[3]~16\);

-- Location: FF_X48_Y12_N19
\inst1|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[3]~15_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(3));

-- Location: LCCOMB_X48_Y12_N20
\inst1|PC[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[4]~17_combout\ = ((\M[0]~input_o\ $ (\inst1|PC\(4) $ (!\inst1|PC[3]~16\)))) # (GND)
-- \inst1|PC[4]~18\ = CARRY((\M[0]~input_o\ & ((\inst1|PC\(4)) # (!\inst1|PC[3]~16\))) # (!\M[0]~input_o\ & (\inst1|PC\(4) & !\inst1|PC[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|PC\(4),
	datad => VCC,
	cin => \inst1|PC[3]~16\,
	combout => \inst1|PC[4]~17_combout\,
	cout => \inst1|PC[4]~18\);

-- Location: FF_X48_Y12_N21
\inst1|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[4]~17_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(4));

-- Location: LCCOMB_X48_Y12_N22
\inst1|PC[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[5]~19_combout\ = (\inst1|PC\(5) & ((\M[0]~input_o\ & (\inst1|PC[4]~18\ & VCC)) # (!\M[0]~input_o\ & (!\inst1|PC[4]~18\)))) # (!\inst1|PC\(5) & ((\M[0]~input_o\ & (!\inst1|PC[4]~18\)) # (!\M[0]~input_o\ & ((\inst1|PC[4]~18\) # (GND)))))
-- \inst1|PC[5]~20\ = CARRY((\inst1|PC\(5) & (!\M[0]~input_o\ & !\inst1|PC[4]~18\)) # (!\inst1|PC\(5) & ((!\inst1|PC[4]~18\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC\(5),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst1|PC[4]~18\,
	combout => \inst1|PC[5]~19_combout\,
	cout => \inst1|PC[5]~20\);

-- Location: FF_X48_Y12_N23
\inst1|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[5]~19_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(5));

-- Location: LCCOMB_X48_Y12_N24
\inst1|PC[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[6]~21_combout\ = ((\M[0]~input_o\ $ (\inst1|PC\(6) $ (!\inst1|PC[5]~20\)))) # (GND)
-- \inst1|PC[6]~22\ = CARRY((\M[0]~input_o\ & ((\inst1|PC\(6)) # (!\inst1|PC[5]~20\))) # (!\M[0]~input_o\ & (\inst1|PC\(6) & !\inst1|PC[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|PC\(6),
	datad => VCC,
	cin => \inst1|PC[5]~20\,
	combout => \inst1|PC[6]~21_combout\,
	cout => \inst1|PC[6]~22\);

-- Location: FF_X48_Y12_N25
\inst1|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[6]~21_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(6));

-- Location: LCCOMB_X48_Y12_N26
\inst1|PC[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PC[7]~23_combout\ = \inst1|PC\(7) $ (\inst1|PC[6]~22\ $ (\M[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PC\(7),
	datad => \M[0]~input_o\,
	cin => \inst1|PC[6]~22\,
	combout => \inst1|PC[7]~23_combout\);

-- Location: FF_X48_Y12_N27
\inst1|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|PC[7]~23_combout\,
	clrn => \pc_clr~inputclkctrl_outclk\,
	sclr => \M[1]~input_o\,
	ena => \inst1|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PC\(7));

-- Location: M9K_X40_Y12_N0
\inst|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"053B414D80530C14AE052641484051BC145A0511414300506C140604FC413DC04F1C13B204E74138804DCC135E04D24133404C7C130A04BD412E004B2C12B604",
	mem_init1 => X"A84128C049DC12620493412380488C120E047E411E40473C11BA046941190045EC116604544113C0449C1112043F410E80434C10BE042A41094041FC106A041541040040AC1016040040FEC03F5C0FC203EB40F9803E0C0F6E03D640F4403CBC0F1A03C140EF003B6C0EC603AC40E9C03A1C0E72039740E48038CC0E1E038240DF40377C0DCA036D40DA00362C0D76035840D4C034DC0D22034340CF80338C0CCE032E40CA40323C0C7A031940C50030EC0C26030440BFC02F9C0BD202EF40BA802E4C0B7E02DA40B5402CFC0B2A02C540B0002BAC0AD602B040AAC02A5C0A82029B40A580290C0A2E028640A04027BC09DA0271409B00266C0986025C4095C0",
	mem_init0 => X"251C0932024740908023CC08DE0232408B40227C088A021D408600212C083602084080C01FDC07E201F3407B801E8C078E01DE4076401D3C073A01C94071001BEC06E601B4406BC01A9C0692019F406680194C063E018A40614017FC05EA0175405C0016AC059601604056C0155C0542014B405180140C04EE0136404C4012BC049A0121404700116C0446010C4041C0101C03F200F7403C800ECC039E00E24037400D7C034A00CD4032000C2C02F600B8402CC00ADC02A200A3402780098C024E008E402240083C01FA0079401D0006EC01A600644017C0059C0152004F401280044C00FE003A400D4002FC00AA002540080001AC005600104002C0005C0002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_luv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
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
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_out_num(15) <= \out_num[15]~output_o\;

ww_out_num(14) <= \out_num[14]~output_o\;

ww_out_num(13) <= \out_num[13]~output_o\;

ww_out_num(12) <= \out_num[12]~output_o\;

ww_out_num(11) <= \out_num[11]~output_o\;

ww_out_num(10) <= \out_num[10]~output_o\;

ww_out_num(9) <= \out_num[9]~output_o\;

ww_out_num(8) <= \out_num[8]~output_o\;

ww_out_num(7) <= \out_num[7]~output_o\;

ww_out_num(6) <= \out_num[6]~output_o\;

ww_out_num(5) <= \out_num[5]~output_o\;

ww_out_num(4) <= \out_num[4]~output_o\;

ww_out_num(3) <= \out_num[3]~output_o\;

ww_out_num(2) <= \out_num[2]~output_o\;

ww_out_num(1) <= \out_num[1]~output_o\;

ww_out_num(0) <= \out_num[0]~output_o\;
END structure;


