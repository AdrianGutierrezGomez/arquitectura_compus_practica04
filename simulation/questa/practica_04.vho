-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "10/19/2026 00:44:27"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica_04 IS
    PORT (
	reloj : OUT std_logic;
	boton : IN std_logic;
	reloj_in : IN std_logic;
	div_clk : OUT std_logic;
	LED_ESTADO : OUT std_logic_vector(3 DOWNTO 0);
	RESET : IN std_logic;
	Qx : IN std_logic;
	X : IN std_logic;
	Y_flag : IN std_logic;
	INT : IN std_logic;
	salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica_04;

-- Design Ports Information
-- reloj	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_clk	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_ESTADO[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_ESTADO[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_ESTADO[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_ESTADO[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[3]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[2]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[1]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salidas[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- boton	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reloj_in	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y_flag	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Qx	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INT	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF practica_04 IS
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
SIGNAL ww_boton : std_logic;
SIGNAL ww_reloj_in : std_logic;
SIGNAL ww_div_clk : std_logic;
SIGNAL ww_LED_ESTADO : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Qx : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y_flag : std_logic;
SIGNAL ww_INT : std_logic;
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_divisor|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~output_o\ : std_logic;
SIGNAL \div_clk~output_o\ : std_logic;
SIGNAL \LED_ESTADO[3]~output_o\ : std_logic;
SIGNAL \LED_ESTADO[2]~output_o\ : std_logic;
SIGNAL \LED_ESTADO[1]~output_o\ : std_logic;
SIGNAL \LED_ESTADO[0]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \reloj_in~input_o\ : std_logic;
SIGNAL \reloj_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \inst_sensa_boton|esiguiente~0_combout\ : std_logic;
SIGNAL \inst_sensa_boton|esiguiente~q\ : std_logic;
SIGNAL \inst_sensa_boton|reloj~0_combout\ : std_logic;
SIGNAL \inst_sensa_boton|reloj~q\ : std_logic;
SIGNAL \inst_divisor|Equal0~0_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~2_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~3_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~1_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~4_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~51\ : std_logic;
SIGNAL \inst_divisor|Add0~52_combout\ : std_logic;
SIGNAL \inst_divisor|cuenta~1_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~53\ : std_logic;
SIGNAL \inst_divisor|Add0~54_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~7_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~5_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~6_combout\ : std_logic;
SIGNAL \inst_divisor|Equal0~8_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~0_combout\ : std_logic;
SIGNAL \inst_divisor|cuenta~0_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~1\ : std_logic;
SIGNAL \inst_divisor|Add0~2_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~3\ : std_logic;
SIGNAL \inst_divisor|Add0~4_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~5\ : std_logic;
SIGNAL \inst_divisor|Add0~6_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~7\ : std_logic;
SIGNAL \inst_divisor|Add0~8_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~9\ : std_logic;
SIGNAL \inst_divisor|Add0~10_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~11\ : std_logic;
SIGNAL \inst_divisor|Add0~12_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~13\ : std_logic;
SIGNAL \inst_divisor|Add0~14_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~15\ : std_logic;
SIGNAL \inst_divisor|Add0~16_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~17\ : std_logic;
SIGNAL \inst_divisor|Add0~18_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~19\ : std_logic;
SIGNAL \inst_divisor|Add0~20_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~21\ : std_logic;
SIGNAL \inst_divisor|Add0~22_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~23\ : std_logic;
SIGNAL \inst_divisor|Add0~24_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~25\ : std_logic;
SIGNAL \inst_divisor|Add0~26_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~27\ : std_logic;
SIGNAL \inst_divisor|Add0~28_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~29\ : std_logic;
SIGNAL \inst_divisor|Add0~30_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~31\ : std_logic;
SIGNAL \inst_divisor|Add0~32_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~33\ : std_logic;
SIGNAL \inst_divisor|Add0~34_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~35\ : std_logic;
SIGNAL \inst_divisor|Add0~36_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~37\ : std_logic;
SIGNAL \inst_divisor|Add0~38_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~39\ : std_logic;
SIGNAL \inst_divisor|Add0~40_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~41\ : std_logic;
SIGNAL \inst_divisor|Add0~42_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~43\ : std_logic;
SIGNAL \inst_divisor|Add0~44_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~45\ : std_logic;
SIGNAL \inst_divisor|Add0~46_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~47\ : std_logic;
SIGNAL \inst_divisor|Add0~48_combout\ : std_logic;
SIGNAL \inst_divisor|Add0~49\ : std_logic;
SIGNAL \inst_divisor|Add0~50_combout\ : std_logic;
SIGNAL \inst_divisor|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[0]~1\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[1]~2_combout\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[1]~3\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[2]~4_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \INT~input_o\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux7~0_combout\ : std_logic;
SIGNAL \Qx~input_o\ : std_logic;
SIGNAL \Y_flag~input_o\ : std_logic;
SIGNAL \inst_logica_seleccion|Mux0~0_combout\ : std_logic;
SIGNAL \inst_logica_seleccion|Mux0~1_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[2]~1_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux1~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|LOG_INT|Mux0~1_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[2]~2_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[2]~3_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux6~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|LOG_INT|Mux0~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux2~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[1]~4_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[1]~5_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux4~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux3~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[0]~6_combout\ : std_logic;
SIGNAL \inst_secuenciador|REG_uPC|Q[0]~1_combout\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[0]~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux5~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux0~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|MUX_12|output[3]~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|REG_uPC|Q[3]~0_combout\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[2]~5\ : std_logic;
SIGNAL \inst_secuenciador|INC_12|output_val[3]~6_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux8~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux9~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux10~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|Mux11~0_combout\ : std_logic;
SIGNAL \inst_memoria_microprograma|reg_pipeline\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst_secuenciador|REG_uPC|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_divisor|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

reloj <= ww_reloj;
ww_boton <= boton;
ww_reloj_in <= reloj_in;
div_clk <= ww_div_clk;
LED_ESTADO <= ww_LED_ESTADO;
ww_RESET <= RESET;
ww_Qx <= Qx;
ww_X <= X;
ww_Y_flag <= Y_flag;
ww_INT <= INT;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_divisor|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_divisor|cuenta\(25));

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\reloj_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj_in~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y16_N9
\reloj~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sensa_boton|reloj~q\,
	devoe => ww_devoe,
	o => \reloj~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\div_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_divisor|cuenta\(25),
	devoe => ww_devoe,
	o => \div_clk~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED_ESTADO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_secuenciador|REG_uPC|Q\(3),
	devoe => ww_devoe,
	o => \LED_ESTADO[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED_ESTADO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_secuenciador|REG_uPC|Q\(2),
	devoe => ww_devoe,
	o => \LED_ESTADO[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED_ESTADO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_secuenciador|REG_uPC|Q\(1),
	devoe => ww_devoe,
	o => \LED_ESTADO[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED_ESTADO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_secuenciador|REG_uPC|Q\(0),
	devoe => ww_devoe,
	o => \LED_ESTADO[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\salidas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_memoria_microprograma|reg_pipeline\(3),
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\salidas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_memoria_microprograma|reg_pipeline\(2),
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\salidas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_memoria_microprograma|reg_pipeline\(1),
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\salidas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_memoria_microprograma|reg_pipeline\(0),
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\reloj_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj_in,
	o => \reloj_in~input_o\);

-- Location: CLKCTRL_G18
\reloj_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N1
\boton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: LCCOMB_X52_Y17_N18
\inst_sensa_boton|esiguiente~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sensa_boton|esiguiente~0_combout\ = !\boton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~input_o\,
	combout => \inst_sensa_boton|esiguiente~0_combout\);

-- Location: FF_X52_Y17_N19
\inst_sensa_boton|esiguiente\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_sensa_boton|esiguiente~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sensa_boton|esiguiente~q\);

-- Location: LCCOMB_X52_Y17_N8
\inst_sensa_boton|reloj~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sensa_boton|reloj~0_combout\ = (\boton~input_o\ & \inst_sensa_boton|esiguiente~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	datad => \inst_sensa_boton|esiguiente~q\,
	combout => \inst_sensa_boton|reloj~0_combout\);

-- Location: FF_X52_Y17_N9
\inst_sensa_boton|reloj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_sensa_boton|reloj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sensa_boton|reloj~q\);

-- Location: LCCOMB_X21_Y7_N12
\inst_divisor|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~0_combout\ = (!\inst_divisor|cuenta\(3) & (!\inst_divisor|cuenta\(1) & (!\inst_divisor|cuenta\(0) & !\inst_divisor|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(3),
	datab => \inst_divisor|cuenta\(1),
	datac => \inst_divisor|cuenta\(0),
	datad => \inst_divisor|cuenta\(2),
	combout => \inst_divisor|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y7_N8
\inst_divisor|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~2_combout\ = (!\inst_divisor|cuenta\(11) & (!\inst_divisor|cuenta\(9) & (!\inst_divisor|cuenta\(8) & !\inst_divisor|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(11),
	datab => \inst_divisor|cuenta\(9),
	datac => \inst_divisor|cuenta\(8),
	datad => \inst_divisor|cuenta\(10),
	combout => \inst_divisor|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst_divisor|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~3_combout\ = (!\inst_divisor|cuenta\(15) & (!\inst_divisor|cuenta\(13) & (!\inst_divisor|cuenta\(14) & !\inst_divisor|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(15),
	datab => \inst_divisor|cuenta\(13),
	datac => \inst_divisor|cuenta\(14),
	datad => \inst_divisor|cuenta\(12),
	combout => \inst_divisor|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y7_N18
\inst_divisor|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~1_combout\ = (!\inst_divisor|cuenta\(4) & (!\inst_divisor|cuenta\(7) & (!\inst_divisor|cuenta\(6) & !\inst_divisor|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(4),
	datab => \inst_divisor|cuenta\(7),
	datac => \inst_divisor|cuenta\(6),
	datad => \inst_divisor|cuenta\(5),
	combout => \inst_divisor|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst_divisor|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~4_combout\ = (\inst_divisor|Equal0~0_combout\ & (\inst_divisor|Equal0~2_combout\ & (\inst_divisor|Equal0~3_combout\ & \inst_divisor|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|Equal0~0_combout\,
	datab => \inst_divisor|Equal0~2_combout\,
	datac => \inst_divisor|Equal0~3_combout\,
	datad => \inst_divisor|Equal0~1_combout\,
	combout => \inst_divisor|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y6_N22
\inst_divisor|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~50_combout\ = (\inst_divisor|cuenta\(25) & (!\inst_divisor|Add0~49\)) # (!\inst_divisor|cuenta\(25) & ((\inst_divisor|Add0~49\) # (GND)))
-- \inst_divisor|Add0~51\ = CARRY((!\inst_divisor|Add0~49\) # (!\inst_divisor|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(25),
	datad => VCC,
	cin => \inst_divisor|Add0~49\,
	combout => \inst_divisor|Add0~50_combout\,
	cout => \inst_divisor|Add0~51\);

-- Location: LCCOMB_X20_Y6_N24
\inst_divisor|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~52_combout\ = (\inst_divisor|cuenta\(26) & (\inst_divisor|Add0~51\ $ (GND))) # (!\inst_divisor|cuenta\(26) & (!\inst_divisor|Add0~51\ & VCC))
-- \inst_divisor|Add0~53\ = CARRY((\inst_divisor|cuenta\(26) & !\inst_divisor|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(26),
	datad => VCC,
	cin => \inst_divisor|Add0~51\,
	combout => \inst_divisor|Add0~52_combout\,
	cout => \inst_divisor|Add0~53\);

-- Location: LCCOMB_X20_Y6_N28
\inst_divisor|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|cuenta~1_combout\ = (\inst_divisor|Add0~52_combout\ & ((!\inst_divisor|Equal0~4_combout\) # (!\inst_divisor|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|Equal0~8_combout\,
	datac => \inst_divisor|Equal0~4_combout\,
	datad => \inst_divisor|Add0~52_combout\,
	combout => \inst_divisor|cuenta~1_combout\);

-- Location: FF_X20_Y6_N29
\inst_divisor|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(26));

-- Location: LCCOMB_X20_Y6_N26
\inst_divisor|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~54_combout\ = \inst_divisor|cuenta\(27) $ (\inst_divisor|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(27),
	cin => \inst_divisor|Add0~53\,
	combout => \inst_divisor|Add0~54_combout\);

-- Location: FF_X20_Y6_N27
\inst_divisor|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(27));

-- Location: LCCOMB_X20_Y6_N30
\inst_divisor|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~7_combout\ = (!\inst_divisor|cuenta\(25) & (\inst_divisor|cuenta\(26) & (!\inst_divisor|cuenta\(27) & !\inst_divisor|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(25),
	datab => \inst_divisor|cuenta\(26),
	datac => \inst_divisor|cuenta\(27),
	datad => \inst_divisor|cuenta\(24),
	combout => \inst_divisor|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y6_N24
\inst_divisor|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~5_combout\ = (!\inst_divisor|cuenta\(17) & (!\inst_divisor|cuenta\(19) & (!\inst_divisor|cuenta\(18) & !\inst_divisor|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(17),
	datab => \inst_divisor|cuenta\(19),
	datac => \inst_divisor|cuenta\(18),
	datad => \inst_divisor|cuenta\(16),
	combout => \inst_divisor|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y6_N14
\inst_divisor|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~6_combout\ = (!\inst_divisor|cuenta\(23) & (!\inst_divisor|cuenta\(21) & (!\inst_divisor|cuenta\(20) & !\inst_divisor|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(23),
	datab => \inst_divisor|cuenta\(21),
	datac => \inst_divisor|cuenta\(20),
	datad => \inst_divisor|cuenta\(22),
	combout => \inst_divisor|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y7_N2
\inst_divisor|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Equal0~8_combout\ = (\inst_divisor|Equal0~7_combout\ & (\inst_divisor|Equal0~5_combout\ & \inst_divisor|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|Equal0~7_combout\,
	datac => \inst_divisor|Equal0~5_combout\,
	datad => \inst_divisor|Equal0~6_combout\,
	combout => \inst_divisor|Equal0~8_combout\);

-- Location: LCCOMB_X20_Y7_N4
\inst_divisor|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~0_combout\ = \inst_divisor|cuenta\(0) $ (VCC)
-- \inst_divisor|Add0~1\ = CARRY(\inst_divisor|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(0),
	datad => VCC,
	combout => \inst_divisor|Add0~0_combout\,
	cout => \inst_divisor|Add0~1\);

-- Location: LCCOMB_X20_Y7_N0
\inst_divisor|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|cuenta~0_combout\ = (\inst_divisor|Add0~0_combout\ & ((!\inst_divisor|Equal0~4_combout\) # (!\inst_divisor|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|Equal0~8_combout\,
	datac => \inst_divisor|Add0~0_combout\,
	datad => \inst_divisor|Equal0~4_combout\,
	combout => \inst_divisor|cuenta~0_combout\);

-- Location: FF_X20_Y7_N1
\inst_divisor|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(0));

-- Location: LCCOMB_X20_Y7_N6
\inst_divisor|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~2_combout\ = (\inst_divisor|cuenta\(1) & (!\inst_divisor|Add0~1\)) # (!\inst_divisor|cuenta\(1) & ((\inst_divisor|Add0~1\) # (GND)))
-- \inst_divisor|Add0~3\ = CARRY((!\inst_divisor|Add0~1\) # (!\inst_divisor|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(1),
	datad => VCC,
	cin => \inst_divisor|Add0~1\,
	combout => \inst_divisor|Add0~2_combout\,
	cout => \inst_divisor|Add0~3\);

-- Location: FF_X20_Y7_N7
\inst_divisor|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(1));

-- Location: LCCOMB_X20_Y7_N8
\inst_divisor|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~4_combout\ = (\inst_divisor|cuenta\(2) & (\inst_divisor|Add0~3\ $ (GND))) # (!\inst_divisor|cuenta\(2) & (!\inst_divisor|Add0~3\ & VCC))
-- \inst_divisor|Add0~5\ = CARRY((\inst_divisor|cuenta\(2) & !\inst_divisor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(2),
	datad => VCC,
	cin => \inst_divisor|Add0~3\,
	combout => \inst_divisor|Add0~4_combout\,
	cout => \inst_divisor|Add0~5\);

-- Location: FF_X20_Y7_N9
\inst_divisor|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(2));

-- Location: LCCOMB_X20_Y7_N10
\inst_divisor|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~6_combout\ = (\inst_divisor|cuenta\(3) & (!\inst_divisor|Add0~5\)) # (!\inst_divisor|cuenta\(3) & ((\inst_divisor|Add0~5\) # (GND)))
-- \inst_divisor|Add0~7\ = CARRY((!\inst_divisor|Add0~5\) # (!\inst_divisor|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(3),
	datad => VCC,
	cin => \inst_divisor|Add0~5\,
	combout => \inst_divisor|Add0~6_combout\,
	cout => \inst_divisor|Add0~7\);

-- Location: FF_X20_Y7_N11
\inst_divisor|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(3));

-- Location: LCCOMB_X20_Y7_N12
\inst_divisor|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~8_combout\ = (\inst_divisor|cuenta\(4) & (\inst_divisor|Add0~7\ $ (GND))) # (!\inst_divisor|cuenta\(4) & (!\inst_divisor|Add0~7\ & VCC))
-- \inst_divisor|Add0~9\ = CARRY((\inst_divisor|cuenta\(4) & !\inst_divisor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(4),
	datad => VCC,
	cin => \inst_divisor|Add0~7\,
	combout => \inst_divisor|Add0~8_combout\,
	cout => \inst_divisor|Add0~9\);

-- Location: FF_X20_Y7_N13
\inst_divisor|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(4));

-- Location: LCCOMB_X20_Y7_N14
\inst_divisor|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~10_combout\ = (\inst_divisor|cuenta\(5) & (!\inst_divisor|Add0~9\)) # (!\inst_divisor|cuenta\(5) & ((\inst_divisor|Add0~9\) # (GND)))
-- \inst_divisor|Add0~11\ = CARRY((!\inst_divisor|Add0~9\) # (!\inst_divisor|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(5),
	datad => VCC,
	cin => \inst_divisor|Add0~9\,
	combout => \inst_divisor|Add0~10_combout\,
	cout => \inst_divisor|Add0~11\);

-- Location: FF_X20_Y7_N15
\inst_divisor|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(5));

-- Location: LCCOMB_X20_Y7_N16
\inst_divisor|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~12_combout\ = (\inst_divisor|cuenta\(6) & (\inst_divisor|Add0~11\ $ (GND))) # (!\inst_divisor|cuenta\(6) & (!\inst_divisor|Add0~11\ & VCC))
-- \inst_divisor|Add0~13\ = CARRY((\inst_divisor|cuenta\(6) & !\inst_divisor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(6),
	datad => VCC,
	cin => \inst_divisor|Add0~11\,
	combout => \inst_divisor|Add0~12_combout\,
	cout => \inst_divisor|Add0~13\);

-- Location: FF_X20_Y7_N17
\inst_divisor|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(6));

-- Location: LCCOMB_X20_Y7_N18
\inst_divisor|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~14_combout\ = (\inst_divisor|cuenta\(7) & (!\inst_divisor|Add0~13\)) # (!\inst_divisor|cuenta\(7) & ((\inst_divisor|Add0~13\) # (GND)))
-- \inst_divisor|Add0~15\ = CARRY((!\inst_divisor|Add0~13\) # (!\inst_divisor|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(7),
	datad => VCC,
	cin => \inst_divisor|Add0~13\,
	combout => \inst_divisor|Add0~14_combout\,
	cout => \inst_divisor|Add0~15\);

-- Location: FF_X20_Y7_N19
\inst_divisor|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(7));

-- Location: LCCOMB_X20_Y7_N20
\inst_divisor|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~16_combout\ = (\inst_divisor|cuenta\(8) & (\inst_divisor|Add0~15\ $ (GND))) # (!\inst_divisor|cuenta\(8) & (!\inst_divisor|Add0~15\ & VCC))
-- \inst_divisor|Add0~17\ = CARRY((\inst_divisor|cuenta\(8) & !\inst_divisor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(8),
	datad => VCC,
	cin => \inst_divisor|Add0~15\,
	combout => \inst_divisor|Add0~16_combout\,
	cout => \inst_divisor|Add0~17\);

-- Location: FF_X20_Y7_N21
\inst_divisor|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(8));

-- Location: LCCOMB_X20_Y7_N22
\inst_divisor|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~18_combout\ = (\inst_divisor|cuenta\(9) & (!\inst_divisor|Add0~17\)) # (!\inst_divisor|cuenta\(9) & ((\inst_divisor|Add0~17\) # (GND)))
-- \inst_divisor|Add0~19\ = CARRY((!\inst_divisor|Add0~17\) # (!\inst_divisor|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(9),
	datad => VCC,
	cin => \inst_divisor|Add0~17\,
	combout => \inst_divisor|Add0~18_combout\,
	cout => \inst_divisor|Add0~19\);

-- Location: FF_X20_Y7_N23
\inst_divisor|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(9));

-- Location: LCCOMB_X20_Y7_N24
\inst_divisor|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~20_combout\ = (\inst_divisor|cuenta\(10) & (\inst_divisor|Add0~19\ $ (GND))) # (!\inst_divisor|cuenta\(10) & (!\inst_divisor|Add0~19\ & VCC))
-- \inst_divisor|Add0~21\ = CARRY((\inst_divisor|cuenta\(10) & !\inst_divisor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(10),
	datad => VCC,
	cin => \inst_divisor|Add0~19\,
	combout => \inst_divisor|Add0~20_combout\,
	cout => \inst_divisor|Add0~21\);

-- Location: FF_X20_Y7_N25
\inst_divisor|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(10));

-- Location: LCCOMB_X20_Y7_N26
\inst_divisor|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~22_combout\ = (\inst_divisor|cuenta\(11) & (!\inst_divisor|Add0~21\)) # (!\inst_divisor|cuenta\(11) & ((\inst_divisor|Add0~21\) # (GND)))
-- \inst_divisor|Add0~23\ = CARRY((!\inst_divisor|Add0~21\) # (!\inst_divisor|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(11),
	datad => VCC,
	cin => \inst_divisor|Add0~21\,
	combout => \inst_divisor|Add0~22_combout\,
	cout => \inst_divisor|Add0~23\);

-- Location: FF_X20_Y7_N27
\inst_divisor|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(11));

-- Location: LCCOMB_X20_Y7_N28
\inst_divisor|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~24_combout\ = (\inst_divisor|cuenta\(12) & (\inst_divisor|Add0~23\ $ (GND))) # (!\inst_divisor|cuenta\(12) & (!\inst_divisor|Add0~23\ & VCC))
-- \inst_divisor|Add0~25\ = CARRY((\inst_divisor|cuenta\(12) & !\inst_divisor|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(12),
	datad => VCC,
	cin => \inst_divisor|Add0~23\,
	combout => \inst_divisor|Add0~24_combout\,
	cout => \inst_divisor|Add0~25\);

-- Location: FF_X20_Y7_N29
\inst_divisor|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(12));

-- Location: LCCOMB_X20_Y7_N30
\inst_divisor|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~26_combout\ = (\inst_divisor|cuenta\(13) & (!\inst_divisor|Add0~25\)) # (!\inst_divisor|cuenta\(13) & ((\inst_divisor|Add0~25\) # (GND)))
-- \inst_divisor|Add0~27\ = CARRY((!\inst_divisor|Add0~25\) # (!\inst_divisor|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(13),
	datad => VCC,
	cin => \inst_divisor|Add0~25\,
	combout => \inst_divisor|Add0~26_combout\,
	cout => \inst_divisor|Add0~27\);

-- Location: FF_X20_Y7_N31
\inst_divisor|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(13));

-- Location: LCCOMB_X20_Y6_N0
\inst_divisor|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~28_combout\ = (\inst_divisor|cuenta\(14) & (\inst_divisor|Add0~27\ $ (GND))) # (!\inst_divisor|cuenta\(14) & (!\inst_divisor|Add0~27\ & VCC))
-- \inst_divisor|Add0~29\ = CARRY((\inst_divisor|cuenta\(14) & !\inst_divisor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(14),
	datad => VCC,
	cin => \inst_divisor|Add0~27\,
	combout => \inst_divisor|Add0~28_combout\,
	cout => \inst_divisor|Add0~29\);

-- Location: FF_X20_Y6_N1
\inst_divisor|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(14));

-- Location: LCCOMB_X20_Y6_N2
\inst_divisor|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~30_combout\ = (\inst_divisor|cuenta\(15) & (!\inst_divisor|Add0~29\)) # (!\inst_divisor|cuenta\(15) & ((\inst_divisor|Add0~29\) # (GND)))
-- \inst_divisor|Add0~31\ = CARRY((!\inst_divisor|Add0~29\) # (!\inst_divisor|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(15),
	datad => VCC,
	cin => \inst_divisor|Add0~29\,
	combout => \inst_divisor|Add0~30_combout\,
	cout => \inst_divisor|Add0~31\);

-- Location: FF_X20_Y6_N3
\inst_divisor|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(15));

-- Location: LCCOMB_X20_Y6_N4
\inst_divisor|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~32_combout\ = (\inst_divisor|cuenta\(16) & (\inst_divisor|Add0~31\ $ (GND))) # (!\inst_divisor|cuenta\(16) & (!\inst_divisor|Add0~31\ & VCC))
-- \inst_divisor|Add0~33\ = CARRY((\inst_divisor|cuenta\(16) & !\inst_divisor|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(16),
	datad => VCC,
	cin => \inst_divisor|Add0~31\,
	combout => \inst_divisor|Add0~32_combout\,
	cout => \inst_divisor|Add0~33\);

-- Location: FF_X20_Y6_N5
\inst_divisor|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(16));

-- Location: LCCOMB_X20_Y6_N6
\inst_divisor|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~34_combout\ = (\inst_divisor|cuenta\(17) & (!\inst_divisor|Add0~33\)) # (!\inst_divisor|cuenta\(17) & ((\inst_divisor|Add0~33\) # (GND)))
-- \inst_divisor|Add0~35\ = CARRY((!\inst_divisor|Add0~33\) # (!\inst_divisor|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(17),
	datad => VCC,
	cin => \inst_divisor|Add0~33\,
	combout => \inst_divisor|Add0~34_combout\,
	cout => \inst_divisor|Add0~35\);

-- Location: FF_X20_Y6_N7
\inst_divisor|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(17));

-- Location: LCCOMB_X20_Y6_N8
\inst_divisor|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~36_combout\ = (\inst_divisor|cuenta\(18) & (\inst_divisor|Add0~35\ $ (GND))) # (!\inst_divisor|cuenta\(18) & (!\inst_divisor|Add0~35\ & VCC))
-- \inst_divisor|Add0~37\ = CARRY((\inst_divisor|cuenta\(18) & !\inst_divisor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(18),
	datad => VCC,
	cin => \inst_divisor|Add0~35\,
	combout => \inst_divisor|Add0~36_combout\,
	cout => \inst_divisor|Add0~37\);

-- Location: FF_X20_Y6_N9
\inst_divisor|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(18));

-- Location: LCCOMB_X20_Y6_N10
\inst_divisor|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~38_combout\ = (\inst_divisor|cuenta\(19) & (!\inst_divisor|Add0~37\)) # (!\inst_divisor|cuenta\(19) & ((\inst_divisor|Add0~37\) # (GND)))
-- \inst_divisor|Add0~39\ = CARRY((!\inst_divisor|Add0~37\) # (!\inst_divisor|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(19),
	datad => VCC,
	cin => \inst_divisor|Add0~37\,
	combout => \inst_divisor|Add0~38_combout\,
	cout => \inst_divisor|Add0~39\);

-- Location: FF_X20_Y6_N11
\inst_divisor|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(19));

-- Location: LCCOMB_X20_Y6_N12
\inst_divisor|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~40_combout\ = (\inst_divisor|cuenta\(20) & (\inst_divisor|Add0~39\ $ (GND))) # (!\inst_divisor|cuenta\(20) & (!\inst_divisor|Add0~39\ & VCC))
-- \inst_divisor|Add0~41\ = CARRY((\inst_divisor|cuenta\(20) & !\inst_divisor|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_divisor|cuenta\(20),
	datad => VCC,
	cin => \inst_divisor|Add0~39\,
	combout => \inst_divisor|Add0~40_combout\,
	cout => \inst_divisor|Add0~41\);

-- Location: FF_X20_Y6_N13
\inst_divisor|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(20));

-- Location: LCCOMB_X20_Y6_N14
\inst_divisor|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~42_combout\ = (\inst_divisor|cuenta\(21) & (!\inst_divisor|Add0~41\)) # (!\inst_divisor|cuenta\(21) & ((\inst_divisor|Add0~41\) # (GND)))
-- \inst_divisor|Add0~43\ = CARRY((!\inst_divisor|Add0~41\) # (!\inst_divisor|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(21),
	datad => VCC,
	cin => \inst_divisor|Add0~41\,
	combout => \inst_divisor|Add0~42_combout\,
	cout => \inst_divisor|Add0~43\);

-- Location: FF_X20_Y6_N15
\inst_divisor|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(21));

-- Location: LCCOMB_X20_Y6_N16
\inst_divisor|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~44_combout\ = (\inst_divisor|cuenta\(22) & (\inst_divisor|Add0~43\ $ (GND))) # (!\inst_divisor|cuenta\(22) & (!\inst_divisor|Add0~43\ & VCC))
-- \inst_divisor|Add0~45\ = CARRY((\inst_divisor|cuenta\(22) & !\inst_divisor|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(22),
	datad => VCC,
	cin => \inst_divisor|Add0~43\,
	combout => \inst_divisor|Add0~44_combout\,
	cout => \inst_divisor|Add0~45\);

-- Location: FF_X20_Y6_N17
\inst_divisor|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(22));

-- Location: LCCOMB_X20_Y6_N18
\inst_divisor|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~46_combout\ = (\inst_divisor|cuenta\(23) & (!\inst_divisor|Add0~45\)) # (!\inst_divisor|cuenta\(23) & ((\inst_divisor|Add0~45\) # (GND)))
-- \inst_divisor|Add0~47\ = CARRY((!\inst_divisor|Add0~45\) # (!\inst_divisor|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(23),
	datad => VCC,
	cin => \inst_divisor|Add0~45\,
	combout => \inst_divisor|Add0~46_combout\,
	cout => \inst_divisor|Add0~47\);

-- Location: FF_X20_Y6_N19
\inst_divisor|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(23));

-- Location: LCCOMB_X20_Y6_N20
\inst_divisor|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_divisor|Add0~48_combout\ = (\inst_divisor|cuenta\(24) & (\inst_divisor|Add0~47\ $ (GND))) # (!\inst_divisor|cuenta\(24) & (!\inst_divisor|Add0~47\ & VCC))
-- \inst_divisor|Add0~49\ = CARRY((\inst_divisor|cuenta\(24) & !\inst_divisor|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_divisor|cuenta\(24),
	datad => VCC,
	cin => \inst_divisor|Add0~47\,
	combout => \inst_divisor|Add0~48_combout\,
	cout => \inst_divisor|Add0~49\);

-- Location: FF_X20_Y6_N21
\inst_divisor|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(24));

-- Location: FF_X20_Y6_N23
\inst_divisor|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_in~inputclkctrl_outclk\,
	d => \inst_divisor|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_divisor|cuenta\(25));

-- Location: CLKCTRL_G19
\inst_divisor|cuenta[25]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_divisor|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_divisor|cuenta[25]~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y26_N8
\inst_secuenciador|INC_12|output_val[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|INC_12|output_val[0]~0_combout\ = \inst_secuenciador|REG_uPC|Q\(0) $ (VCC)
-- \inst_secuenciador|INC_12|output_val[0]~1\ = CARRY(\inst_secuenciador|REG_uPC|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_secuenciador|REG_uPC|Q\(0),
	datad => VCC,
	combout => \inst_secuenciador|INC_12|output_val[0]~0_combout\,
	cout => \inst_secuenciador|INC_12|output_val[0]~1\);

-- Location: LCCOMB_X29_Y26_N10
\inst_secuenciador|INC_12|output_val[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|INC_12|output_val[1]~2_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & (!\inst_secuenciador|INC_12|output_val[0]~1\)) # (!\inst_secuenciador|REG_uPC|Q\(1) & ((\inst_secuenciador|INC_12|output_val[0]~1\) # (GND)))
-- \inst_secuenciador|INC_12|output_val[1]~3\ = CARRY((!\inst_secuenciador|INC_12|output_val[0]~1\) # (!\inst_secuenciador|REG_uPC|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_secuenciador|REG_uPC|Q\(1),
	datad => VCC,
	cin => \inst_secuenciador|INC_12|output_val[0]~1\,
	combout => \inst_secuenciador|INC_12|output_val[1]~2_combout\,
	cout => \inst_secuenciador|INC_12|output_val[1]~3\);

-- Location: LCCOMB_X29_Y26_N12
\inst_secuenciador|INC_12|output_val[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|INC_12|output_val[2]~4_combout\ = (\inst_secuenciador|REG_uPC|Q\(2) & (\inst_secuenciador|INC_12|output_val[1]~3\ $ (GND))) # (!\inst_secuenciador|REG_uPC|Q\(2) & (!\inst_secuenciador|INC_12|output_val[1]~3\ & VCC))
-- \inst_secuenciador|INC_12|output_val[2]~5\ = CARRY((\inst_secuenciador|REG_uPC|Q\(2) & !\inst_secuenciador|INC_12|output_val[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_secuenciador|REG_uPC|Q\(2),
	datad => VCC,
	cin => \inst_secuenciador|INC_12|output_val[1]~3\,
	combout => \inst_secuenciador|INC_12|output_val[2]~4_combout\,
	cout => \inst_secuenciador|INC_12|output_val[2]~5\);

-- Location: IOIBUF_X27_Y0_N15
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\INT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT,
	o => \INT~input_o\);

-- Location: LCCOMB_X28_Y26_N4
\inst_memoria_microprograma|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux7~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(2) & (!\inst_secuenciador|REG_uPC|Q\(1) & (!\inst_secuenciador|REG_uPC|Q\(3) & !\inst_secuenciador|REG_uPC|Q\(0)))) # (!\inst_secuenciador|REG_uPC|Q\(2) & 
-- (\inst_secuenciador|REG_uPC|Q\(0) & (\inst_secuenciador|REG_uPC|Q\(1) $ (\inst_secuenciador|REG_uPC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux7~0_combout\);

-- Location: FF_X28_Y26_N5
\inst_memoria_microprograma|reg_pipeline[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(5));

-- Location: IOIBUF_X0_Y16_N22
\Qx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Qx,
	o => \Qx~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\Y_flag~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y_flag,
	o => \Y_flag~input_o\);

-- Location: LCCOMB_X28_Y26_N18
\inst_logica_seleccion|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_logica_seleccion|Mux0~0_combout\ = (\inst_memoria_microprograma|reg_pipeline\(5) & (((\inst_memoria_microprograma|reg_pipeline\(4))))) # (!\inst_memoria_microprograma|reg_pipeline\(5) & ((\inst_memoria_microprograma|reg_pipeline\(4) & 
-- ((\Y_flag~input_o\))) # (!\inst_memoria_microprograma|reg_pipeline\(4) & (\Qx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qx~input_o\,
	datab => \Y_flag~input_o\,
	datac => \inst_memoria_microprograma|reg_pipeline\(5),
	datad => \inst_memoria_microprograma|reg_pipeline\(4),
	combout => \inst_logica_seleccion|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y26_N12
\inst_logica_seleccion|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_logica_seleccion|Mux0~1_combout\ = (\inst_memoria_microprograma|reg_pipeline\(5) & ((\inst_logica_seleccion|Mux0~0_combout\ & ((\INT~input_o\))) # (!\inst_logica_seleccion|Mux0~0_combout\ & (\X~input_o\)))) # 
-- (!\inst_memoria_microprograma|reg_pipeline\(5) & (((\inst_logica_seleccion|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \INT~input_o\,
	datac => \inst_memoria_microprograma|reg_pipeline\(5),
	datad => \inst_logica_seleccion|Mux0~0_combout\,
	combout => \inst_logica_seleccion|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y26_N30
\inst_secuenciador|MUX_12|output[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[2]~1_combout\ = (\inst_memoria_microprograma|reg_pipeline\(7) & (\inst_memoria_microprograma|reg_pipeline\(8) & (\inst_memoria_microprograma|reg_pipeline\(4) $ (!\inst_logica_seleccion|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(7),
	datab => \inst_memoria_microprograma|reg_pipeline\(8),
	datac => \inst_memoria_microprograma|reg_pipeline\(4),
	datad => \inst_logica_seleccion|Mux0~1_combout\,
	combout => \inst_secuenciador|MUX_12|output[2]~1_combout\);

-- Location: LCCOMB_X29_Y26_N22
\inst_memoria_microprograma|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux1~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(0) & (\inst_secuenciador|REG_uPC|Q\(3) & (!\inst_secuenciador|REG_uPC|Q\(1) & \inst_secuenciador|REG_uPC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(0),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(1),
	datad => \inst_secuenciador|REG_uPC|Q\(2),
	combout => \inst_memoria_microprograma|Mux1~0_combout\);

-- Location: FF_X29_Y26_N23
\inst_memoria_microprograma|reg_pipeline[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(11));

-- Location: LCCOMB_X29_Y26_N24
\inst_secuenciador|LOG_INT|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|LOG_INT|Mux0~1_combout\ = (\inst_memoria_microprograma|reg_pipeline\(7) & (\inst_memoria_microprograma|reg_pipeline\(4) $ (!\inst_logica_seleccion|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_memoria_microprograma|reg_pipeline\(4),
	datac => \inst_memoria_microprograma|reg_pipeline\(7),
	datad => \inst_logica_seleccion|Mux0~1_combout\,
	combout => \inst_secuenciador|LOG_INT|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y26_N0
\inst_secuenciador|MUX_12|output[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[2]~2_combout\ = (\inst_memoria_microprograma|reg_pipeline\(11) & (!\inst_memoria_microprograma|reg_pipeline\(8) & \inst_secuenciador|LOG_INT|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(11),
	datac => \inst_memoria_microprograma|reg_pipeline\(8),
	datad => \inst_secuenciador|LOG_INT|Mux0~1_combout\,
	combout => \inst_secuenciador|MUX_12|output[2]~2_combout\);

-- Location: LCCOMB_X29_Y26_N16
\inst_secuenciador|MUX_12|output[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[2]~3_combout\ = (\inst_secuenciador|MUX_12|output[2]~1_combout\) # ((\inst_secuenciador|MUX_12|output[2]~2_combout\) # ((\inst_secuenciador|INC_12|output_val[2]~4_combout\ & \inst_secuenciador|LOG_INT|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|INC_12|output_val[2]~4_combout\,
	datab => \inst_secuenciador|LOG_INT|Mux0~0_combout\,
	datac => \inst_secuenciador|MUX_12|output[2]~1_combout\,
	datad => \inst_secuenciador|MUX_12|output[2]~2_combout\,
	combout => \inst_secuenciador|MUX_12|output[2]~3_combout\);

-- Location: IOIBUF_X0_Y16_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G2
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X29_Y26_N17
\inst_secuenciador|REG_uPC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_secuenciador|MUX_12|output[2]~3_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_secuenciador|REG_uPC|Q\(2));

-- Location: LCCOMB_X28_Y26_N6
\inst_memoria_microprograma|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux6~0_combout\ = (!\inst_secuenciador|REG_uPC|Q\(1) & ((\inst_secuenciador|REG_uPC|Q\(3) & ((\inst_secuenciador|REG_uPC|Q\(0)))) # (!\inst_secuenciador|REG_uPC|Q\(3) & (\inst_secuenciador|REG_uPC|Q\(2) & 
-- !\inst_secuenciador|REG_uPC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux6~0_combout\);

-- Location: FF_X28_Y26_N7
\inst_memoria_microprograma|reg_pipeline[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(4));

-- Location: LCCOMB_X29_Y26_N20
\inst_secuenciador|LOG_INT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|LOG_INT|Mux0~0_combout\ = (\inst_memoria_microprograma|reg_pipeline\(7) & (\inst_memoria_microprograma|reg_pipeline\(4) $ (((\inst_logica_seleccion|Mux0~1_combout\))))) # (!\inst_memoria_microprograma|reg_pipeline\(7) & 
-- (((!\inst_memoria_microprograma|reg_pipeline\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(7),
	datab => \inst_memoria_microprograma|reg_pipeline\(4),
	datac => \inst_memoria_microprograma|reg_pipeline\(8),
	datad => \inst_logica_seleccion|Mux0~1_combout\,
	combout => \inst_secuenciador|LOG_INT|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst_memoria_microprograma|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux2~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & (!\inst_secuenciador|REG_uPC|Q\(3) & (!\inst_secuenciador|REG_uPC|Q\(2) & \inst_secuenciador|REG_uPC|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux2~0_combout\);

-- Location: FF_X28_Y26_N29
\inst_memoria_microprograma|reg_pipeline[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(10));

-- Location: LCCOMB_X29_Y26_N6
\inst_secuenciador|MUX_12|output[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[1]~4_combout\ = (!\inst_memoria_microprograma|reg_pipeline\(8) & (\inst_memoria_microprograma|reg_pipeline\(10) & \inst_secuenciador|LOG_INT|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_memoria_microprograma|reg_pipeline\(8),
	datac => \inst_memoria_microprograma|reg_pipeline\(10),
	datad => \inst_secuenciador|LOG_INT|Mux0~1_combout\,
	combout => \inst_secuenciador|MUX_12|output[1]~4_combout\);

-- Location: LCCOMB_X29_Y26_N2
\inst_secuenciador|MUX_12|output[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[1]~5_combout\ = (\inst_secuenciador|MUX_12|output[2]~1_combout\) # ((\inst_secuenciador|MUX_12|output[1]~4_combout\) # ((\inst_secuenciador|INC_12|output_val[1]~2_combout\ & \inst_secuenciador|LOG_INT|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|INC_12|output_val[1]~2_combout\,
	datab => \inst_secuenciador|LOG_INT|Mux0~0_combout\,
	datac => \inst_secuenciador|MUX_12|output[2]~1_combout\,
	datad => \inst_secuenciador|MUX_12|output[1]~4_combout\,
	combout => \inst_secuenciador|MUX_12|output[1]~5_combout\);

-- Location: FF_X29_Y26_N3
\inst_secuenciador|REG_uPC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_secuenciador|MUX_12|output[1]~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_secuenciador|REG_uPC|Q\(1));

-- Location: LCCOMB_X29_Y26_N4
\inst_memoria_microprograma|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux4~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(0) & (\inst_secuenciador|REG_uPC|Q\(3) & (!\inst_secuenciador|REG_uPC|Q\(1) & !\inst_secuenciador|REG_uPC|Q\(2)))) # (!\inst_secuenciador|REG_uPC|Q\(0) & 
-- (!\inst_secuenciador|REG_uPC|Q\(3) & (\inst_secuenciador|REG_uPC|Q\(1) $ (\inst_secuenciador|REG_uPC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(0),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(1),
	datad => \inst_secuenciador|REG_uPC|Q\(2),
	combout => \inst_memoria_microprograma|Mux4~0_combout\);

-- Location: FF_X29_Y26_N5
\inst_memoria_microprograma|reg_pipeline[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(8));

-- Location: LCCOMB_X28_Y26_N2
\inst_memoria_microprograma|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux3~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & ((\inst_secuenciador|REG_uPC|Q\(3) & ((!\inst_secuenciador|REG_uPC|Q\(0)))) # (!\inst_secuenciador|REG_uPC|Q\(3) & (!\inst_secuenciador|REG_uPC|Q\(2) & 
-- \inst_secuenciador|REG_uPC|Q\(0))))) # (!\inst_secuenciador|REG_uPC|Q\(1) & (((\inst_secuenciador|REG_uPC|Q\(2) & \inst_secuenciador|REG_uPC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux3~0_combout\);

-- Location: FF_X28_Y26_N3
\inst_memoria_microprograma|reg_pipeline[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(9));

-- Location: LCCOMB_X28_Y26_N8
\inst_secuenciador|MUX_12|output[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[0]~6_combout\ = (!\inst_memoria_microprograma|reg_pipeline\(8) & (\inst_memoria_microprograma|reg_pipeline\(9) & (\inst_memoria_microprograma|reg_pipeline\(4) $ (!\inst_logica_seleccion|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(8),
	datab => \inst_memoria_microprograma|reg_pipeline\(9),
	datac => \inst_memoria_microprograma|reg_pipeline\(4),
	datad => \inst_logica_seleccion|Mux0~1_combout\,
	combout => \inst_secuenciador|MUX_12|output[0]~6_combout\);

-- Location: LCCOMB_X29_Y26_N18
\inst_secuenciador|REG_uPC|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|REG_uPC|Q[0]~1_combout\ = (\inst_memoria_microprograma|reg_pipeline\(7) & ((\inst_secuenciador|MUX_12|output[0]~6_combout\))) # (!\inst_memoria_microprograma|reg_pipeline\(7) & (\inst_memoria_microprograma|reg_pipeline\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(7),
	datab => \inst_memoria_microprograma|reg_pipeline\(8),
	datad => \inst_secuenciador|MUX_12|output[0]~6_combout\,
	combout => \inst_secuenciador|REG_uPC|Q[0]~1_combout\);

-- Location: FF_X29_Y26_N19
\inst_secuenciador|REG_uPC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_secuenciador|REG_uPC|Q[0]~1_combout\,
	asdata => \inst_secuenciador|INC_12|output_val[0]~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \inst_secuenciador|LOG_INT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_secuenciador|REG_uPC|Q\(0));

-- Location: LCCOMB_X29_Y26_N26
\inst_memoria_microprograma|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux5~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & (\inst_secuenciador|REG_uPC|Q\(0) $ ((\inst_secuenciador|REG_uPC|Q\(3))))) # (!\inst_secuenciador|REG_uPC|Q\(1) & ((\inst_secuenciador|REG_uPC|Q\(2)) # 
-- ((\inst_secuenciador|REG_uPC|Q\(0) & \inst_secuenciador|REG_uPC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(0),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(1),
	datad => \inst_secuenciador|REG_uPC|Q\(2),
	combout => \inst_memoria_microprograma|Mux5~0_combout\);

-- Location: FF_X29_Y26_N27
\inst_memoria_microprograma|reg_pipeline[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(7));

-- Location: LCCOMB_X28_Y26_N16
\inst_memoria_microprograma|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux0~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(3) & (\inst_secuenciador|REG_uPC|Q\(2) & (\inst_secuenciador|REG_uPC|Q\(1) $ (\inst_secuenciador|REG_uPC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux0~0_combout\);

-- Location: FF_X28_Y26_N17
\inst_memoria_microprograma|reg_pipeline[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(12));

-- Location: LCCOMB_X28_Y26_N14
\inst_secuenciador|MUX_12|output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|MUX_12|output[3]~0_combout\ = (!\inst_memoria_microprograma|reg_pipeline\(8) & (\inst_memoria_microprograma|reg_pipeline\(12) & (\inst_memoria_microprograma|reg_pipeline\(4) $ (!\inst_logica_seleccion|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(8),
	datab => \inst_memoria_microprograma|reg_pipeline\(12),
	datac => \inst_memoria_microprograma|reg_pipeline\(4),
	datad => \inst_logica_seleccion|Mux0~1_combout\,
	combout => \inst_secuenciador|MUX_12|output[3]~0_combout\);

-- Location: LCCOMB_X29_Y26_N28
\inst_secuenciador|REG_uPC|Q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|REG_uPC|Q[3]~0_combout\ = (\inst_memoria_microprograma|reg_pipeline\(7) & ((\inst_secuenciador|MUX_12|output[3]~0_combout\))) # (!\inst_memoria_microprograma|reg_pipeline\(7) & (\inst_memoria_microprograma|reg_pipeline\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_memoria_microprograma|reg_pipeline\(7),
	datab => \inst_memoria_microprograma|reg_pipeline\(8),
	datad => \inst_secuenciador|MUX_12|output[3]~0_combout\,
	combout => \inst_secuenciador|REG_uPC|Q[3]~0_combout\);

-- Location: LCCOMB_X29_Y26_N14
\inst_secuenciador|INC_12|output_val[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_secuenciador|INC_12|output_val[3]~6_combout\ = \inst_secuenciador|INC_12|output_val[2]~5\ $ (\inst_secuenciador|REG_uPC|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_secuenciador|REG_uPC|Q\(3),
	cin => \inst_secuenciador|INC_12|output_val[2]~5\,
	combout => \inst_secuenciador|INC_12|output_val[3]~6_combout\);

-- Location: FF_X29_Y26_N29
\inst_secuenciador|REG_uPC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_secuenciador|REG_uPC|Q[3]~0_combout\,
	asdata => \inst_secuenciador|INC_12|output_val[3]~6_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \inst_secuenciador|LOG_INT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_secuenciador|REG_uPC|Q\(3));

-- Location: LCCOMB_X28_Y26_N20
\inst_memoria_microprograma|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux8~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(3) & (((!\inst_secuenciador|REG_uPC|Q\(2) & !\inst_secuenciador|REG_uPC|Q\(0))))) # (!\inst_secuenciador|REG_uPC|Q\(3) & (!\inst_secuenciador|REG_uPC|Q\(1) & 
-- ((\inst_secuenciador|REG_uPC|Q\(2)) # (!\inst_secuenciador|REG_uPC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux8~0_combout\);

-- Location: FF_X28_Y26_N21
\inst_memoria_microprograma|reg_pipeline[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(3));

-- Location: LCCOMB_X28_Y26_N22
\inst_memoria_microprograma|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux9~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & (\inst_secuenciador|REG_uPC|Q\(3) & (!\inst_secuenciador|REG_uPC|Q\(2)))) # (!\inst_secuenciador|REG_uPC|Q\(1) & (!\inst_secuenciador|REG_uPC|Q\(3) & 
-- ((\inst_secuenciador|REG_uPC|Q\(0)) # (!\inst_secuenciador|REG_uPC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux9~0_combout\);

-- Location: FF_X28_Y26_N23
\inst_memoria_microprograma|reg_pipeline[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(2));

-- Location: LCCOMB_X28_Y26_N24
\inst_memoria_microprograma|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux10~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & (!\inst_secuenciador|REG_uPC|Q\(3) & (\inst_secuenciador|REG_uPC|Q\(2) $ (\inst_secuenciador|REG_uPC|Q\(0))))) # (!\inst_secuenciador|REG_uPC|Q\(1) & 
-- (\inst_secuenciador|REG_uPC|Q\(0) & (\inst_secuenciador|REG_uPC|Q\(3) $ (!\inst_secuenciador|REG_uPC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux10~0_combout\);

-- Location: FF_X28_Y26_N25
\inst_memoria_microprograma|reg_pipeline[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(1));

-- Location: LCCOMB_X28_Y26_N30
\inst_memoria_microprograma|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_memoria_microprograma|Mux11~0_combout\ = (\inst_secuenciador|REG_uPC|Q\(1) & (\inst_secuenciador|REG_uPC|Q\(3) $ (((\inst_secuenciador|REG_uPC|Q\(2)) # (!\inst_secuenciador|REG_uPC|Q\(0)))))) # (!\inst_secuenciador|REG_uPC|Q\(1) & 
-- (\inst_secuenciador|REG_uPC|Q\(3) & (\inst_secuenciador|REG_uPC|Q\(2) & !\inst_secuenciador|REG_uPC|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_secuenciador|REG_uPC|Q\(1),
	datab => \inst_secuenciador|REG_uPC|Q\(3),
	datac => \inst_secuenciador|REG_uPC|Q\(2),
	datad => \inst_secuenciador|REG_uPC|Q\(0),
	combout => \inst_memoria_microprograma|Mux11~0_combout\);

-- Location: FF_X28_Y26_N31
\inst_memoria_microprograma|reg_pipeline[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_divisor|cuenta[25]~clkctrl_outclk\,
	d => \inst_memoria_microprograma|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_memoria_microprograma|reg_pipeline\(0));

ww_reloj <= \reloj~output_o\;

ww_div_clk <= \div_clk~output_o\;

ww_LED_ESTADO(3) <= \LED_ESTADO[3]~output_o\;

ww_LED_ESTADO(2) <= \LED_ESTADO[2]~output_o\;

ww_LED_ESTADO(1) <= \LED_ESTADO[1]~output_o\;

ww_LED_ESTADO(0) <= \LED_ESTADO[0]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


