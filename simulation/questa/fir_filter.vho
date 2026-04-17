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

-- DATE "04/17/2026 10:59:43"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	fir_filter IS
    PORT (
	clock : IN std_logic;
	clear : IN std_logic;
	sigs : IN std_logic_vector(7 DOWNTO 0);
	y : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END fir_filter;

-- Design Ports Information
-- y[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sigs[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_filter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_sigs : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_mult_xn1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_mult_xn1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \y[12]~output_o\ : std_logic;
SIGNAL \y[13]~output_o\ : std_logic;
SIGNAL \y[14]~output_o\ : std_logic;
SIGNAL \y[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \sigs[0]~input_o\ : std_logic;
SIGNAL \fir_signal[0]~feeder_combout\ : std_logic;
SIGNAL \sigs[1]~input_o\ : std_logic;
SIGNAL \fir_signal[1]~feeder_combout\ : std_logic;
SIGNAL \sigs[2]~input_o\ : std_logic;
SIGNAL \fir_signal[2]~feeder_combout\ : std_logic;
SIGNAL \sigs[3]~input_o\ : std_logic;
SIGNAL \fir_signal[3]~feeder_combout\ : std_logic;
SIGNAL \sigs[4]~input_o\ : std_logic;
SIGNAL \fir_signal[4]~feeder_combout\ : std_logic;
SIGNAL \sigs[5]~input_o\ : std_logic;
SIGNAL \fir_signal[5]~feeder_combout\ : std_logic;
SIGNAL \sigs[6]~input_o\ : std_logic;
SIGNAL \fir_signal[6]~feeder_combout\ : std_logic;
SIGNAL \sigs[7]~input_o\ : std_logic;
SIGNAL \fir_signal[7]~feeder_combout\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_mult_xn|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_mult_xn1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[0]~16_combout\ : std_logic;
SIGNAL \fir_shift_0[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_0[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_0[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_mult_xn2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_shift_1[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_1[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_1[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_1[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_1[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \fir_shift_1[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_shift_1[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_mult_xn3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[0]~16_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[0]~16_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[0]~17\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[1]~18_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[0]~17\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[1]~18_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[0]~17\ : std_logic;
SIGNAL \fir_result_reg|dffs[1]~18_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[1]~19\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[2]~20_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[1]~19\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[2]~20_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[1]~19\ : std_logic;
SIGNAL \fir_result_reg|dffs[2]~20_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[2]~21\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[3]~22_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[2]~21\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[3]~22_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[2]~21\ : std_logic;
SIGNAL \fir_result_reg|dffs[3]~22_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[3]~23\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[4]~24_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[3]~23\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[4]~24_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[3]~23\ : std_logic;
SIGNAL \fir_result_reg|dffs[4]~24_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[4]~25\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[5]~26_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[4]~25\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[5]~26_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[4]~25\ : std_logic;
SIGNAL \fir_result_reg|dffs[5]~26_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[5]~27\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[6]~28_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[5]~27\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[6]~28_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[5]~27\ : std_logic;
SIGNAL \fir_result_reg|dffs[6]~28_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[6]~29\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[7]~30_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[6]~29\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[7]~30_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[6]~29\ : std_logic;
SIGNAL \fir_result_reg|dffs[7]~30_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[7]~31\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[8]~32_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[7]~31\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[8]~32_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[7]~31\ : std_logic;
SIGNAL \fir_result_reg|dffs[8]~32_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[8]~33\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[9]~34_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[8]~33\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[9]~34_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[8]~33\ : std_logic;
SIGNAL \fir_result_reg|dffs[9]~34_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[9]~35\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[10]~36_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[9]~35\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[10]~36_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[9]~35\ : std_logic;
SIGNAL \fir_result_reg|dffs[10]~36_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[10]~37\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[11]~38_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[10]~37\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[11]~38_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[10]~37\ : std_logic;
SIGNAL \fir_result_reg|dffs[11]~38_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[11]~39\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[12]~40_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[11]~39\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[12]~40_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[11]~39\ : std_logic;
SIGNAL \fir_result_reg|dffs[12]~40_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[12]~41\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[13]~42_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[12]~41\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[13]~42_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[12]~41\ : std_logic;
SIGNAL \fir_result_reg|dffs[13]~42_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[13]~43\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[14]~44_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[13]~43\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[14]~44_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[13]~43\ : std_logic;
SIGNAL \fir_result_reg|dffs[14]~44_combout\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[14]~45\ : std_logic;
SIGNAL \fir_adder_n32_reg|dffs[15]~46_combout\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[14]~45\ : std_logic;
SIGNAL \fir_adder_n10_reg|dffs[15]~46_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs[14]~45\ : std_logic;
SIGNAL \fir_result_reg|dffs[15]~46_combout\ : std_logic;
SIGNAL \fir_result_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_mult_xn_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_adder_n10_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_adder_n32_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_mult_xn1_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_mult_xn3_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fir_mult_xn2_reg|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL fir_signal : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_clear <= clear;
ww_sigs <= sigs;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fir_mult_xn1|auto_generated|mac_out2_DATAA_bus\ <= (\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT15\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT14\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT13\ & 
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT12\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT11\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT10\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT9\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT8\
& \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT7\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT6\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT5\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT4\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT3\
& \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT2\ & \fir_mult_xn1|auto_generated|mac_mult1~DATAOUT1\ & \fir_mult_xn1|auto_generated|mac_mult1~dataout\ & \fir_mult_xn1|auto_generated|mac_mult1~1\ & \fir_mult_xn1|auto_generated|mac_mult1~0\);

\fir_mult_xn1|auto_generated|mac_out2~0\ <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_mult_xn1|auto_generated|mac_out2~1\ <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_mult_xn1_reg|dffs\(0) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_mult_xn1_reg|dffs\(1) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_mult_xn1_reg|dffs\(2) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_mult_xn1_reg|dffs\(3) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_mult_xn1_reg|dffs\(4) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_mult_xn1_reg|dffs\(5) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_mult_xn1_reg|dffs\(6) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_mult_xn1_reg|dffs\(7) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_mult_xn1_reg|dffs\(8) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_mult_xn1_reg|dffs\(9) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_mult_xn1_reg|dffs\(10) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_mult_xn1_reg|dffs\(11) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_mult_xn1_reg|dffs\(12) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_mult_xn1_reg|dffs\(13) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_mult_xn1_reg|dffs\(14) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_mult_xn1_reg|dffs\(15) <= \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\(17);

\fir_mult_xn|auto_generated|mac_out2_DATAA_bus\ <= (\fir_mult_xn|auto_generated|mac_mult1~DATAOUT15\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT14\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT13\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT12\
& \fir_mult_xn|auto_generated|mac_mult1~DATAOUT11\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT10\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT9\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT8\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT7\ & 
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT6\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT5\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT4\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT3\ & \fir_mult_xn|auto_generated|mac_mult1~DATAOUT2\ & 
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT1\ & \fir_mult_xn|auto_generated|mac_mult1~dataout\ & \fir_mult_xn|auto_generated|mac_mult1~1\ & \fir_mult_xn|auto_generated|mac_mult1~0\);

\fir_mult_xn|auto_generated|mac_out2~0\ <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_mult_xn|auto_generated|mac_out2~1\ <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_mult_xn_reg|dffs\(0) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_mult_xn_reg|dffs\(1) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_mult_xn_reg|dffs\(2) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_mult_xn_reg|dffs\(3) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_mult_xn_reg|dffs\(4) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_mult_xn_reg|dffs\(5) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_mult_xn_reg|dffs\(6) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_mult_xn_reg|dffs\(7) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_mult_xn_reg|dffs\(8) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_mult_xn_reg|dffs\(9) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_mult_xn_reg|dffs\(10) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_mult_xn_reg|dffs\(11) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_mult_xn_reg|dffs\(12) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_mult_xn_reg|dffs\(13) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_mult_xn_reg|dffs\(14) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_mult_xn_reg|dffs\(15) <= \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\(17);

\fir_mult_xn3|auto_generated|mac_out2_DATAA_bus\ <= (\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT15\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT14\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT13\ & 
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT12\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT11\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT10\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT9\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT8\
& \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT7\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT6\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT5\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT4\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT3\
& \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT2\ & \fir_mult_xn3|auto_generated|mac_mult1~DATAOUT1\ & \fir_mult_xn3|auto_generated|mac_mult1~dataout\ & \fir_mult_xn3|auto_generated|mac_mult1~1\ & \fir_mult_xn3|auto_generated|mac_mult1~0\);

\fir_mult_xn3|auto_generated|mac_out2~0\ <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_mult_xn3|auto_generated|mac_out2~1\ <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_mult_xn3_reg|dffs\(0) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_mult_xn3_reg|dffs\(1) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_mult_xn3_reg|dffs\(2) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_mult_xn3_reg|dffs\(3) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_mult_xn3_reg|dffs\(4) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_mult_xn3_reg|dffs\(5) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_mult_xn3_reg|dffs\(6) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_mult_xn3_reg|dffs\(7) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_mult_xn3_reg|dffs\(8) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_mult_xn3_reg|dffs\(9) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_mult_xn3_reg|dffs\(10) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_mult_xn3_reg|dffs\(11) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_mult_xn3_reg|dffs\(12) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_mult_xn3_reg|dffs\(13) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_mult_xn3_reg|dffs\(14) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_mult_xn3_reg|dffs\(15) <= \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\(17);

\fir_mult_xn2|auto_generated|mac_out2_DATAA_bus\ <= (\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT15\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT14\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT13\ & 
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT12\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT11\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT10\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT9\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT8\
& \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT7\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT6\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT5\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT4\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT3\
& \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT2\ & \fir_mult_xn2|auto_generated|mac_mult1~DATAOUT1\ & \fir_mult_xn2|auto_generated|mac_mult1~dataout\ & \fir_mult_xn2|auto_generated|mac_mult1~1\ & \fir_mult_xn2|auto_generated|mac_mult1~0\);

\fir_mult_xn2|auto_generated|mac_out2~0\ <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_mult_xn2|auto_generated|mac_out2~1\ <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_mult_xn2_reg|dffs\(0) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_mult_xn2_reg|dffs\(1) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_mult_xn2_reg|dffs\(2) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_mult_xn2_reg|dffs\(3) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_mult_xn2_reg|dffs\(4) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_mult_xn2_reg|dffs\(5) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_mult_xn2_reg|dffs\(6) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_mult_xn2_reg|dffs\(7) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_mult_xn2_reg|dffs\(8) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_mult_xn2_reg|dffs\(9) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_mult_xn2_reg|dffs\(10) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_mult_xn2_reg|dffs\(11) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_mult_xn2_reg|dffs\(12) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_mult_xn2_reg|dffs\(13) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_mult_xn2_reg|dffs\(14) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_mult_xn2_reg|dffs\(15) <= \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\(17);

\fir_mult_xn1|auto_generated|mac_mult1_DATAA_bus\ <= (fir_signal(7) & fir_signal(6) & fir_signal(5) & fir_signal(4) & fir_signal(3) & fir_signal(2) & fir_signal(1) & fir_signal(0) & gnd);

\fir_mult_xn1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & gnd);

\fir_mult_xn1|auto_generated|mac_mult1~0\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_mult_xn1|auto_generated|mac_mult1~1\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_mult_xn1|auto_generated|mac_mult1~dataout\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT1\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT2\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT3\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT4\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT5\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT6\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT7\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT8\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT9\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT10\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT11\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT12\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT13\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT14\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_mult_xn1|auto_generated|mac_mult1~DATAOUT15\ <= \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\fir_mult_xn|auto_generated|mac_mult1_DATAA_bus\ <= (fir_signal(7) & fir_signal(6) & fir_signal(5) & fir_signal(4) & fir_signal(3) & fir_signal(2) & fir_signal(1) & fir_signal(0) & gnd);

\fir_mult_xn|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd);

\fir_mult_xn|auto_generated|mac_mult1~0\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_mult_xn|auto_generated|mac_mult1~1\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_mult_xn|auto_generated|mac_mult1~dataout\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT1\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT2\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT3\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT4\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT5\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT6\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT7\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT8\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT9\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT10\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT11\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT12\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT13\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT14\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_mult_xn|auto_generated|mac_mult1~DATAOUT15\ <= \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\(17);

\fir_mult_xn3|auto_generated|mac_mult1_DATAA_bus\ <= (\fir_shift_1[7]~_Duplicate_1_q\ & \fir_shift_1[6]~_Duplicate_1_q\ & \fir_shift_1[5]~_Duplicate_1_q\ & \fir_shift_1[4]~_Duplicate_1_q\ & \fir_shift_1[3]~_Duplicate_1_q\ & \fir_shift_1[2]~_Duplicate_1_q\
& \fir_shift_1[1]~_Duplicate_1_q\ & \fir_shift_1[0]~_Duplicate_1_q\ & gnd);

\fir_mult_xn3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd);

\fir_mult_xn3|auto_generated|mac_mult1~0\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_mult_xn3|auto_generated|mac_mult1~1\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_mult_xn3|auto_generated|mac_mult1~dataout\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT1\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT2\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT3\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT4\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT5\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT6\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT7\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT8\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT9\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT10\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT11\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT12\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT13\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT14\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_mult_xn3|auto_generated|mac_mult1~DATAOUT15\ <= \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\(17);

\fir_mult_xn2|auto_generated|mac_mult1_DATAA_bus\ <= (\fir_shift_0[7]~_Duplicate_1_q\ & \fir_shift_0[6]~_Duplicate_1_q\ & \fir_shift_0[5]~_Duplicate_1_q\ & \fir_shift_0[4]~_Duplicate_1_q\ & \fir_shift_0[3]~_Duplicate_1_q\ & \fir_shift_0[2]~_Duplicate_1_q\
& \fir_shift_0[1]~_Duplicate_1_q\ & \fir_shift_0[0]~_Duplicate_1_q\ & gnd);

\fir_mult_xn2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & gnd);

\fir_mult_xn2|auto_generated|mac_mult1~0\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_mult_xn2|auto_generated|mac_mult1~1\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_mult_xn2|auto_generated|mac_mult1~dataout\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT1\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT2\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT3\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT4\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT5\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT6\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT7\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT8\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT9\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT10\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT11\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT12\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT13\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT14\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_mult_xn2|auto_generated|mac_mult1~DATAOUT15\ <= \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N23
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(0),
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(1),
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(2),
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(3),
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(4),
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(5),
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(6),
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(7),
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(8),
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(9),
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(10),
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(11),
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(12),
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(13),
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(14),
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_result_reg|dffs\(15),
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G4
\clear~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y34_N22
\sigs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(0),
	o => \sigs[0]~input_o\);

-- Location: LCCOMB_X23_Y35_N20
\fir_signal[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[0]~feeder_combout\ = \sigs[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[0]~input_o\,
	combout => \fir_signal[0]~feeder_combout\);

-- Location: FF_X23_Y35_N21
\fir_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[0]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(0));

-- Location: IOIBUF_X0_Y35_N15
\sigs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(1),
	o => \sigs[1]~input_o\);

-- Location: LCCOMB_X23_Y35_N22
\fir_signal[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[1]~feeder_combout\ = \sigs[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[1]~input_o\,
	combout => \fir_signal[1]~feeder_combout\);

-- Location: FF_X23_Y35_N23
\fir_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[1]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(1));

-- Location: IOIBUF_X0_Y42_N1
\sigs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(2),
	o => \sigs[2]~input_o\);

-- Location: LCCOMB_X23_Y35_N16
\fir_signal[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[2]~feeder_combout\ = \sigs[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[2]~input_o\,
	combout => \fir_signal[2]~feeder_combout\);

-- Location: FF_X23_Y35_N17
\fir_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[2]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(2));

-- Location: IOIBUF_X0_Y35_N8
\sigs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(3),
	o => \sigs[3]~input_o\);

-- Location: LCCOMB_X23_Y35_N30
\fir_signal[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[3]~feeder_combout\ = \sigs[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[3]~input_o\,
	combout => \fir_signal[3]~feeder_combout\);

-- Location: FF_X23_Y35_N31
\fir_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[3]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(3));

-- Location: IOIBUF_X0_Y43_N15
\sigs[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(4),
	o => \sigs[4]~input_o\);

-- Location: LCCOMB_X23_Y35_N28
\fir_signal[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[4]~feeder_combout\ = \sigs[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[4]~input_o\,
	combout => \fir_signal[4]~feeder_combout\);

-- Location: FF_X23_Y35_N29
\fir_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[4]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(4));

-- Location: IOIBUF_X0_Y42_N8
\sigs[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(5),
	o => \sigs[5]~input_o\);

-- Location: LCCOMB_X23_Y35_N26
\fir_signal[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[5]~feeder_combout\ = \sigs[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[5]~input_o\,
	combout => \fir_signal[5]~feeder_combout\);

-- Location: FF_X23_Y35_N27
\fir_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[5]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(5));

-- Location: IOIBUF_X0_Y31_N15
\sigs[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(6),
	o => \sigs[6]~input_o\);

-- Location: LCCOMB_X23_Y35_N4
\fir_signal[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[6]~feeder_combout\ = \sigs[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[6]~input_o\,
	combout => \fir_signal[6]~feeder_combout\);

-- Location: FF_X23_Y35_N5
\fir_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[6]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(6));

-- Location: IOIBUF_X0_Y35_N1
\sigs[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sigs(7),
	o => \sigs[7]~input_o\);

-- Location: LCCOMB_X23_Y35_N14
\fir_signal[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_signal[7]~feeder_combout\ = \sigs[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sigs[7]~input_o\,
	combout => \fir_signal[7]~feeder_combout\);

-- Location: FF_X23_Y35_N15
\fir_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_signal[7]~feeder_combout\,
	ena => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fir_signal(7));

-- Location: DSPMULT_X22_Y35_N1
\fir_mult_xn|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \fir_mult_xn|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_mult_xn|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y35_N3
\fir_mult_xn|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X22_Y35_N0
\fir_mult_xn1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_mult_xn1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y35_N2
\fir_mult_xn1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y35_N0
\fir_adder_n10_reg|dffs[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[0]~16_combout\ = (\fir_mult_xn_reg|dffs\(0) & (\fir_mult_xn1_reg|dffs\(0) $ (VCC))) # (!\fir_mult_xn_reg|dffs\(0) & (\fir_mult_xn1_reg|dffs\(0) & VCC))
-- \fir_adder_n10_reg|dffs[0]~17\ = CARRY((\fir_mult_xn_reg|dffs\(0) & \fir_mult_xn1_reg|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn_reg|dffs\(0),
	datab => \fir_mult_xn1_reg|dffs\(0),
	datad => VCC,
	combout => \fir_adder_n10_reg|dffs[0]~16_combout\,
	cout => \fir_adder_n10_reg|dffs[0]~17\);

-- Location: FF_X21_Y35_N1
\fir_adder_n10_reg|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[0]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(0));

-- Location: LCCOMB_X23_Y33_N4
\fir_shift_0[0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[0]~_Duplicate_1feeder_combout\ = fir_signal(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fir_signal(0),
	combout => \fir_shift_0[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N5
\fir_shift_0[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N18
\fir_shift_0[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[1]~_Duplicate_1feeder_combout\ = fir_signal(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fir_signal(1),
	combout => \fir_shift_0[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N19
\fir_shift_0[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N0
\fir_shift_0[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[2]~_Duplicate_1feeder_combout\ = fir_signal(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fir_signal(2),
	combout => \fir_shift_0[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N1
\fir_shift_0[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N2
\fir_shift_0[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[3]~_Duplicate_1feeder_combout\ = fir_signal(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fir_signal(3),
	combout => \fir_shift_0[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N3
\fir_shift_0[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N16
\fir_shift_0[4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[4]~_Duplicate_1feeder_combout\ = fir_signal(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fir_signal(4),
	combout => \fir_shift_0[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N17
\fir_shift_0[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N14
\fir_shift_0[5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[5]~_Duplicate_1feeder_combout\ = fir_signal(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fir_signal(5),
	combout => \fir_shift_0[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N15
\fir_shift_0[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N20
\fir_shift_0[6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[6]~_Duplicate_1feeder_combout\ = fir_signal(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fir_signal(6),
	combout => \fir_shift_0[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N21
\fir_shift_0[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N26
\fir_shift_0[7]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_0[7]~_Duplicate_1feeder_combout\ = fir_signal(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fir_signal(7),
	combout => \fir_shift_0[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N27
\fir_shift_0[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_0[7]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_0[7]~_Duplicate_1_q\);

-- Location: DSPMULT_X22_Y33_N1
\fir_mult_xn2|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_mult_xn2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y33_N3
\fir_mult_xn2|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X23_Y33_N29
\fir_shift_1[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \fir_shift_0[0]~_Duplicate_1_q\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N22
\fir_shift_1[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_1[1]~_Duplicate_1feeder_combout\ = \fir_shift_0[1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_shift_0[1]~_Duplicate_1_q\,
	combout => \fir_shift_1[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N23
\fir_shift_1[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_1[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N8
\fir_shift_1[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_1[2]~_Duplicate_1feeder_combout\ = \fir_shift_0[2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_shift_0[2]~_Duplicate_1_q\,
	combout => \fir_shift_1[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N9
\fir_shift_1[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_1[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N6
\fir_shift_1[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_1[3]~_Duplicate_1feeder_combout\ = \fir_shift_0[3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_shift_0[3]~_Duplicate_1_q\,
	combout => \fir_shift_1[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N7
\fir_shift_1[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_1[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N12
\fir_shift_1[4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_1[4]~_Duplicate_1feeder_combout\ = \fir_shift_0[4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_shift_0[4]~_Duplicate_1_q\,
	combout => \fir_shift_1[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N13
\fir_shift_1[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_1[4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[4]~_Duplicate_1_q\);

-- Location: FF_X23_Y33_N31
\fir_shift_1[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \fir_shift_0[5]~_Duplicate_1_q\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y33_N24
\fir_shift_1[6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_shift_1[6]~_Duplicate_1feeder_combout\ = \fir_shift_0[6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_shift_0[6]~_Duplicate_1_q\,
	combout => \fir_shift_1[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y33_N25
\fir_shift_1[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_shift_1[6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[6]~_Duplicate_1_q\);

-- Location: FF_X23_Y33_N11
\fir_shift_1[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \fir_shift_0[7]~_Duplicate_1_q\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_shift_1[7]~_Duplicate_1_q\);

-- Location: DSPMULT_X22_Y33_N0
\fir_mult_xn3|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_mult_xn3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y33_N2
\fir_mult_xn3|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	aclr => \clear~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_mult_xn3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_mult_xn3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y33_N0
\fir_adder_n32_reg|dffs[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[0]~16_combout\ = (\fir_mult_xn2_reg|dffs\(0) & (\fir_mult_xn3_reg|dffs\(0) $ (VCC))) # (!\fir_mult_xn2_reg|dffs\(0) & (\fir_mult_xn3_reg|dffs\(0) & VCC))
-- \fir_adder_n32_reg|dffs[0]~17\ = CARRY((\fir_mult_xn2_reg|dffs\(0) & \fir_mult_xn3_reg|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn2_reg|dffs\(0),
	datab => \fir_mult_xn3_reg|dffs\(0),
	datad => VCC,
	combout => \fir_adder_n32_reg|dffs[0]~16_combout\,
	cout => \fir_adder_n32_reg|dffs[0]~17\);

-- Location: FF_X21_Y33_N1
\fir_adder_n32_reg|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[0]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(0));

-- Location: LCCOMB_X20_Y33_N0
\fir_result_reg|dffs[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[0]~16_combout\ = (\fir_adder_n10_reg|dffs\(0) & (\fir_adder_n32_reg|dffs\(0) $ (VCC))) # (!\fir_adder_n10_reg|dffs\(0) & (\fir_adder_n32_reg|dffs\(0) & VCC))
-- \fir_result_reg|dffs[0]~17\ = CARRY((\fir_adder_n10_reg|dffs\(0) & \fir_adder_n32_reg|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n10_reg|dffs\(0),
	datab => \fir_adder_n32_reg|dffs\(0),
	datad => VCC,
	combout => \fir_result_reg|dffs[0]~16_combout\,
	cout => \fir_result_reg|dffs[0]~17\);

-- Location: FF_X20_Y33_N1
\fir_result_reg|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[0]~16_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(0));

-- Location: LCCOMB_X21_Y33_N2
\fir_adder_n32_reg|dffs[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[1]~18_combout\ = (\fir_mult_xn2_reg|dffs\(1) & ((\fir_mult_xn3_reg|dffs\(1) & (\fir_adder_n32_reg|dffs[0]~17\ & VCC)) # (!\fir_mult_xn3_reg|dffs\(1) & (!\fir_adder_n32_reg|dffs[0]~17\)))) # (!\fir_mult_xn2_reg|dffs\(1) & 
-- ((\fir_mult_xn3_reg|dffs\(1) & (!\fir_adder_n32_reg|dffs[0]~17\)) # (!\fir_mult_xn3_reg|dffs\(1) & ((\fir_adder_n32_reg|dffs[0]~17\) # (GND)))))
-- \fir_adder_n32_reg|dffs[1]~19\ = CARRY((\fir_mult_xn2_reg|dffs\(1) & (!\fir_mult_xn3_reg|dffs\(1) & !\fir_adder_n32_reg|dffs[0]~17\)) # (!\fir_mult_xn2_reg|dffs\(1) & ((!\fir_adder_n32_reg|dffs[0]~17\) # (!\fir_mult_xn3_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn2_reg|dffs\(1),
	datab => \fir_mult_xn3_reg|dffs\(1),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[0]~17\,
	combout => \fir_adder_n32_reg|dffs[1]~18_combout\,
	cout => \fir_adder_n32_reg|dffs[1]~19\);

-- Location: FF_X21_Y33_N3
\fir_adder_n32_reg|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[1]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(1));

-- Location: LCCOMB_X21_Y35_N2
\fir_adder_n10_reg|dffs[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[1]~18_combout\ = (\fir_mult_xn_reg|dffs\(1) & ((\fir_mult_xn1_reg|dffs\(1) & (\fir_adder_n10_reg|dffs[0]~17\ & VCC)) # (!\fir_mult_xn1_reg|dffs\(1) & (!\fir_adder_n10_reg|dffs[0]~17\)))) # (!\fir_mult_xn_reg|dffs\(1) & 
-- ((\fir_mult_xn1_reg|dffs\(1) & (!\fir_adder_n10_reg|dffs[0]~17\)) # (!\fir_mult_xn1_reg|dffs\(1) & ((\fir_adder_n10_reg|dffs[0]~17\) # (GND)))))
-- \fir_adder_n10_reg|dffs[1]~19\ = CARRY((\fir_mult_xn_reg|dffs\(1) & (!\fir_mult_xn1_reg|dffs\(1) & !\fir_adder_n10_reg|dffs[0]~17\)) # (!\fir_mult_xn_reg|dffs\(1) & ((!\fir_adder_n10_reg|dffs[0]~17\) # (!\fir_mult_xn1_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn_reg|dffs\(1),
	datab => \fir_mult_xn1_reg|dffs\(1),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[0]~17\,
	combout => \fir_adder_n10_reg|dffs[1]~18_combout\,
	cout => \fir_adder_n10_reg|dffs[1]~19\);

-- Location: FF_X21_Y35_N3
\fir_adder_n10_reg|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[1]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(1));

-- Location: LCCOMB_X20_Y33_N2
\fir_result_reg|dffs[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[1]~18_combout\ = (\fir_adder_n32_reg|dffs\(1) & ((\fir_adder_n10_reg|dffs\(1) & (\fir_result_reg|dffs[0]~17\ & VCC)) # (!\fir_adder_n10_reg|dffs\(1) & (!\fir_result_reg|dffs[0]~17\)))) # (!\fir_adder_n32_reg|dffs\(1) & 
-- ((\fir_adder_n10_reg|dffs\(1) & (!\fir_result_reg|dffs[0]~17\)) # (!\fir_adder_n10_reg|dffs\(1) & ((\fir_result_reg|dffs[0]~17\) # (GND)))))
-- \fir_result_reg|dffs[1]~19\ = CARRY((\fir_adder_n32_reg|dffs\(1) & (!\fir_adder_n10_reg|dffs\(1) & !\fir_result_reg|dffs[0]~17\)) # (!\fir_adder_n32_reg|dffs\(1) & ((!\fir_result_reg|dffs[0]~17\) # (!\fir_adder_n10_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(1),
	datab => \fir_adder_n10_reg|dffs\(1),
	datad => VCC,
	cin => \fir_result_reg|dffs[0]~17\,
	combout => \fir_result_reg|dffs[1]~18_combout\,
	cout => \fir_result_reg|dffs[1]~19\);

-- Location: FF_X20_Y33_N3
\fir_result_reg|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[1]~18_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(1));

-- Location: LCCOMB_X21_Y33_N4
\fir_adder_n32_reg|dffs[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[2]~20_combout\ = ((\fir_mult_xn3_reg|dffs\(2) $ (\fir_mult_xn2_reg|dffs\(2) $ (!\fir_adder_n32_reg|dffs[1]~19\)))) # (GND)
-- \fir_adder_n32_reg|dffs[2]~21\ = CARRY((\fir_mult_xn3_reg|dffs\(2) & ((\fir_mult_xn2_reg|dffs\(2)) # (!\fir_adder_n32_reg|dffs[1]~19\))) # (!\fir_mult_xn3_reg|dffs\(2) & (\fir_mult_xn2_reg|dffs\(2) & !\fir_adder_n32_reg|dffs[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(2),
	datab => \fir_mult_xn2_reg|dffs\(2),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[1]~19\,
	combout => \fir_adder_n32_reg|dffs[2]~20_combout\,
	cout => \fir_adder_n32_reg|dffs[2]~21\);

-- Location: FF_X21_Y33_N5
\fir_adder_n32_reg|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[2]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(2));

-- Location: LCCOMB_X21_Y35_N4
\fir_adder_n10_reg|dffs[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[2]~20_combout\ = ((\fir_mult_xn1_reg|dffs\(2) $ (\fir_mult_xn_reg|dffs\(2) $ (!\fir_adder_n10_reg|dffs[1]~19\)))) # (GND)
-- \fir_adder_n10_reg|dffs[2]~21\ = CARRY((\fir_mult_xn1_reg|dffs\(2) & ((\fir_mult_xn_reg|dffs\(2)) # (!\fir_adder_n10_reg|dffs[1]~19\))) # (!\fir_mult_xn1_reg|dffs\(2) & (\fir_mult_xn_reg|dffs\(2) & !\fir_adder_n10_reg|dffs[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(2),
	datab => \fir_mult_xn_reg|dffs\(2),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[1]~19\,
	combout => \fir_adder_n10_reg|dffs[2]~20_combout\,
	cout => \fir_adder_n10_reg|dffs[2]~21\);

-- Location: FF_X21_Y35_N5
\fir_adder_n10_reg|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[2]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(2));

-- Location: LCCOMB_X20_Y33_N4
\fir_result_reg|dffs[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[2]~20_combout\ = ((\fir_adder_n32_reg|dffs\(2) $ (\fir_adder_n10_reg|dffs\(2) $ (!\fir_result_reg|dffs[1]~19\)))) # (GND)
-- \fir_result_reg|dffs[2]~21\ = CARRY((\fir_adder_n32_reg|dffs\(2) & ((\fir_adder_n10_reg|dffs\(2)) # (!\fir_result_reg|dffs[1]~19\))) # (!\fir_adder_n32_reg|dffs\(2) & (\fir_adder_n10_reg|dffs\(2) & !\fir_result_reg|dffs[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(2),
	datab => \fir_adder_n10_reg|dffs\(2),
	datad => VCC,
	cin => \fir_result_reg|dffs[1]~19\,
	combout => \fir_result_reg|dffs[2]~20_combout\,
	cout => \fir_result_reg|dffs[2]~21\);

-- Location: FF_X20_Y33_N5
\fir_result_reg|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[2]~20_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(2));

-- Location: LCCOMB_X21_Y33_N6
\fir_adder_n32_reg|dffs[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[3]~22_combout\ = (\fir_mult_xn2_reg|dffs\(3) & ((\fir_mult_xn3_reg|dffs\(3) & (\fir_adder_n32_reg|dffs[2]~21\ & VCC)) # (!\fir_mult_xn3_reg|dffs\(3) & (!\fir_adder_n32_reg|dffs[2]~21\)))) # (!\fir_mult_xn2_reg|dffs\(3) & 
-- ((\fir_mult_xn3_reg|dffs\(3) & (!\fir_adder_n32_reg|dffs[2]~21\)) # (!\fir_mult_xn3_reg|dffs\(3) & ((\fir_adder_n32_reg|dffs[2]~21\) # (GND)))))
-- \fir_adder_n32_reg|dffs[3]~23\ = CARRY((\fir_mult_xn2_reg|dffs\(3) & (!\fir_mult_xn3_reg|dffs\(3) & !\fir_adder_n32_reg|dffs[2]~21\)) # (!\fir_mult_xn2_reg|dffs\(3) & ((!\fir_adder_n32_reg|dffs[2]~21\) # (!\fir_mult_xn3_reg|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn2_reg|dffs\(3),
	datab => \fir_mult_xn3_reg|dffs\(3),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[2]~21\,
	combout => \fir_adder_n32_reg|dffs[3]~22_combout\,
	cout => \fir_adder_n32_reg|dffs[3]~23\);

-- Location: FF_X21_Y33_N7
\fir_adder_n32_reg|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[3]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(3));

-- Location: LCCOMB_X21_Y35_N6
\fir_adder_n10_reg|dffs[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[3]~22_combout\ = (\fir_mult_xn1_reg|dffs\(3) & ((\fir_mult_xn_reg|dffs\(3) & (\fir_adder_n10_reg|dffs[2]~21\ & VCC)) # (!\fir_mult_xn_reg|dffs\(3) & (!\fir_adder_n10_reg|dffs[2]~21\)))) # (!\fir_mult_xn1_reg|dffs\(3) & 
-- ((\fir_mult_xn_reg|dffs\(3) & (!\fir_adder_n10_reg|dffs[2]~21\)) # (!\fir_mult_xn_reg|dffs\(3) & ((\fir_adder_n10_reg|dffs[2]~21\) # (GND)))))
-- \fir_adder_n10_reg|dffs[3]~23\ = CARRY((\fir_mult_xn1_reg|dffs\(3) & (!\fir_mult_xn_reg|dffs\(3) & !\fir_adder_n10_reg|dffs[2]~21\)) # (!\fir_mult_xn1_reg|dffs\(3) & ((!\fir_adder_n10_reg|dffs[2]~21\) # (!\fir_mult_xn_reg|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(3),
	datab => \fir_mult_xn_reg|dffs\(3),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[2]~21\,
	combout => \fir_adder_n10_reg|dffs[3]~22_combout\,
	cout => \fir_adder_n10_reg|dffs[3]~23\);

-- Location: FF_X21_Y35_N7
\fir_adder_n10_reg|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[3]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(3));

-- Location: LCCOMB_X20_Y33_N6
\fir_result_reg|dffs[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[3]~22_combout\ = (\fir_adder_n32_reg|dffs\(3) & ((\fir_adder_n10_reg|dffs\(3) & (\fir_result_reg|dffs[2]~21\ & VCC)) # (!\fir_adder_n10_reg|dffs\(3) & (!\fir_result_reg|dffs[2]~21\)))) # (!\fir_adder_n32_reg|dffs\(3) & 
-- ((\fir_adder_n10_reg|dffs\(3) & (!\fir_result_reg|dffs[2]~21\)) # (!\fir_adder_n10_reg|dffs\(3) & ((\fir_result_reg|dffs[2]~21\) # (GND)))))
-- \fir_result_reg|dffs[3]~23\ = CARRY((\fir_adder_n32_reg|dffs\(3) & (!\fir_adder_n10_reg|dffs\(3) & !\fir_result_reg|dffs[2]~21\)) # (!\fir_adder_n32_reg|dffs\(3) & ((!\fir_result_reg|dffs[2]~21\) # (!\fir_adder_n10_reg|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(3),
	datab => \fir_adder_n10_reg|dffs\(3),
	datad => VCC,
	cin => \fir_result_reg|dffs[2]~21\,
	combout => \fir_result_reg|dffs[3]~22_combout\,
	cout => \fir_result_reg|dffs[3]~23\);

-- Location: FF_X20_Y33_N7
\fir_result_reg|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[3]~22_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(3));

-- Location: LCCOMB_X21_Y33_N8
\fir_adder_n32_reg|dffs[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[4]~24_combout\ = ((\fir_mult_xn2_reg|dffs\(4) $ (\fir_mult_xn3_reg|dffs\(4) $ (!\fir_adder_n32_reg|dffs[3]~23\)))) # (GND)
-- \fir_adder_n32_reg|dffs[4]~25\ = CARRY((\fir_mult_xn2_reg|dffs\(4) & ((\fir_mult_xn3_reg|dffs\(4)) # (!\fir_adder_n32_reg|dffs[3]~23\))) # (!\fir_mult_xn2_reg|dffs\(4) & (\fir_mult_xn3_reg|dffs\(4) & !\fir_adder_n32_reg|dffs[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn2_reg|dffs\(4),
	datab => \fir_mult_xn3_reg|dffs\(4),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[3]~23\,
	combout => \fir_adder_n32_reg|dffs[4]~24_combout\,
	cout => \fir_adder_n32_reg|dffs[4]~25\);

-- Location: FF_X21_Y33_N9
\fir_adder_n32_reg|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[4]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(4));

-- Location: LCCOMB_X21_Y35_N8
\fir_adder_n10_reg|dffs[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[4]~24_combout\ = ((\fir_mult_xn_reg|dffs\(4) $ (\fir_mult_xn1_reg|dffs\(4) $ (!\fir_adder_n10_reg|dffs[3]~23\)))) # (GND)
-- \fir_adder_n10_reg|dffs[4]~25\ = CARRY((\fir_mult_xn_reg|dffs\(4) & ((\fir_mult_xn1_reg|dffs\(4)) # (!\fir_adder_n10_reg|dffs[3]~23\))) # (!\fir_mult_xn_reg|dffs\(4) & (\fir_mult_xn1_reg|dffs\(4) & !\fir_adder_n10_reg|dffs[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn_reg|dffs\(4),
	datab => \fir_mult_xn1_reg|dffs\(4),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[3]~23\,
	combout => \fir_adder_n10_reg|dffs[4]~24_combout\,
	cout => \fir_adder_n10_reg|dffs[4]~25\);

-- Location: FF_X21_Y35_N9
\fir_adder_n10_reg|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[4]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(4));

-- Location: LCCOMB_X20_Y33_N8
\fir_result_reg|dffs[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[4]~24_combout\ = ((\fir_adder_n32_reg|dffs\(4) $ (\fir_adder_n10_reg|dffs\(4) $ (!\fir_result_reg|dffs[3]~23\)))) # (GND)
-- \fir_result_reg|dffs[4]~25\ = CARRY((\fir_adder_n32_reg|dffs\(4) & ((\fir_adder_n10_reg|dffs\(4)) # (!\fir_result_reg|dffs[3]~23\))) # (!\fir_adder_n32_reg|dffs\(4) & (\fir_adder_n10_reg|dffs\(4) & !\fir_result_reg|dffs[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(4),
	datab => \fir_adder_n10_reg|dffs\(4),
	datad => VCC,
	cin => \fir_result_reg|dffs[3]~23\,
	combout => \fir_result_reg|dffs[4]~24_combout\,
	cout => \fir_result_reg|dffs[4]~25\);

-- Location: FF_X20_Y33_N9
\fir_result_reg|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[4]~24_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(4));

-- Location: LCCOMB_X21_Y35_N10
\fir_adder_n10_reg|dffs[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[5]~26_combout\ = (\fir_mult_xn_reg|dffs\(5) & ((\fir_mult_xn1_reg|dffs\(5) & (\fir_adder_n10_reg|dffs[4]~25\ & VCC)) # (!\fir_mult_xn1_reg|dffs\(5) & (!\fir_adder_n10_reg|dffs[4]~25\)))) # (!\fir_mult_xn_reg|dffs\(5) & 
-- ((\fir_mult_xn1_reg|dffs\(5) & (!\fir_adder_n10_reg|dffs[4]~25\)) # (!\fir_mult_xn1_reg|dffs\(5) & ((\fir_adder_n10_reg|dffs[4]~25\) # (GND)))))
-- \fir_adder_n10_reg|dffs[5]~27\ = CARRY((\fir_mult_xn_reg|dffs\(5) & (!\fir_mult_xn1_reg|dffs\(5) & !\fir_adder_n10_reg|dffs[4]~25\)) # (!\fir_mult_xn_reg|dffs\(5) & ((!\fir_adder_n10_reg|dffs[4]~25\) # (!\fir_mult_xn1_reg|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn_reg|dffs\(5),
	datab => \fir_mult_xn1_reg|dffs\(5),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[4]~25\,
	combout => \fir_adder_n10_reg|dffs[5]~26_combout\,
	cout => \fir_adder_n10_reg|dffs[5]~27\);

-- Location: FF_X21_Y35_N11
\fir_adder_n10_reg|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[5]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(5));

-- Location: LCCOMB_X21_Y33_N10
\fir_adder_n32_reg|dffs[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[5]~26_combout\ = (\fir_mult_xn3_reg|dffs\(5) & ((\fir_mult_xn2_reg|dffs\(5) & (\fir_adder_n32_reg|dffs[4]~25\ & VCC)) # (!\fir_mult_xn2_reg|dffs\(5) & (!\fir_adder_n32_reg|dffs[4]~25\)))) # (!\fir_mult_xn3_reg|dffs\(5) & 
-- ((\fir_mult_xn2_reg|dffs\(5) & (!\fir_adder_n32_reg|dffs[4]~25\)) # (!\fir_mult_xn2_reg|dffs\(5) & ((\fir_adder_n32_reg|dffs[4]~25\) # (GND)))))
-- \fir_adder_n32_reg|dffs[5]~27\ = CARRY((\fir_mult_xn3_reg|dffs\(5) & (!\fir_mult_xn2_reg|dffs\(5) & !\fir_adder_n32_reg|dffs[4]~25\)) # (!\fir_mult_xn3_reg|dffs\(5) & ((!\fir_adder_n32_reg|dffs[4]~25\) # (!\fir_mult_xn2_reg|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(5),
	datab => \fir_mult_xn2_reg|dffs\(5),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[4]~25\,
	combout => \fir_adder_n32_reg|dffs[5]~26_combout\,
	cout => \fir_adder_n32_reg|dffs[5]~27\);

-- Location: FF_X21_Y33_N11
\fir_adder_n32_reg|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[5]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(5));

-- Location: LCCOMB_X20_Y33_N10
\fir_result_reg|dffs[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[5]~26_combout\ = (\fir_adder_n10_reg|dffs\(5) & ((\fir_adder_n32_reg|dffs\(5) & (\fir_result_reg|dffs[4]~25\ & VCC)) # (!\fir_adder_n32_reg|dffs\(5) & (!\fir_result_reg|dffs[4]~25\)))) # (!\fir_adder_n10_reg|dffs\(5) & 
-- ((\fir_adder_n32_reg|dffs\(5) & (!\fir_result_reg|dffs[4]~25\)) # (!\fir_adder_n32_reg|dffs\(5) & ((\fir_result_reg|dffs[4]~25\) # (GND)))))
-- \fir_result_reg|dffs[5]~27\ = CARRY((\fir_adder_n10_reg|dffs\(5) & (!\fir_adder_n32_reg|dffs\(5) & !\fir_result_reg|dffs[4]~25\)) # (!\fir_adder_n10_reg|dffs\(5) & ((!\fir_result_reg|dffs[4]~25\) # (!\fir_adder_n32_reg|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n10_reg|dffs\(5),
	datab => \fir_adder_n32_reg|dffs\(5),
	datad => VCC,
	cin => \fir_result_reg|dffs[4]~25\,
	combout => \fir_result_reg|dffs[5]~26_combout\,
	cout => \fir_result_reg|dffs[5]~27\);

-- Location: FF_X20_Y33_N11
\fir_result_reg|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[5]~26_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(5));

-- Location: LCCOMB_X21_Y35_N12
\fir_adder_n10_reg|dffs[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[6]~28_combout\ = ((\fir_mult_xn1_reg|dffs\(6) $ (\fir_mult_xn_reg|dffs\(6) $ (!\fir_adder_n10_reg|dffs[5]~27\)))) # (GND)
-- \fir_adder_n10_reg|dffs[6]~29\ = CARRY((\fir_mult_xn1_reg|dffs\(6) & ((\fir_mult_xn_reg|dffs\(6)) # (!\fir_adder_n10_reg|dffs[5]~27\))) # (!\fir_mult_xn1_reg|dffs\(6) & (\fir_mult_xn_reg|dffs\(6) & !\fir_adder_n10_reg|dffs[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(6),
	datab => \fir_mult_xn_reg|dffs\(6),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[5]~27\,
	combout => \fir_adder_n10_reg|dffs[6]~28_combout\,
	cout => \fir_adder_n10_reg|dffs[6]~29\);

-- Location: FF_X21_Y35_N13
\fir_adder_n10_reg|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[6]~28_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(6));

-- Location: LCCOMB_X21_Y33_N12
\fir_adder_n32_reg|dffs[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[6]~28_combout\ = ((\fir_mult_xn2_reg|dffs\(6) $ (\fir_mult_xn3_reg|dffs\(6) $ (!\fir_adder_n32_reg|dffs[5]~27\)))) # (GND)
-- \fir_adder_n32_reg|dffs[6]~29\ = CARRY((\fir_mult_xn2_reg|dffs\(6) & ((\fir_mult_xn3_reg|dffs\(6)) # (!\fir_adder_n32_reg|dffs[5]~27\))) # (!\fir_mult_xn2_reg|dffs\(6) & (\fir_mult_xn3_reg|dffs\(6) & !\fir_adder_n32_reg|dffs[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn2_reg|dffs\(6),
	datab => \fir_mult_xn3_reg|dffs\(6),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[5]~27\,
	combout => \fir_adder_n32_reg|dffs[6]~28_combout\,
	cout => \fir_adder_n32_reg|dffs[6]~29\);

-- Location: FF_X21_Y33_N13
\fir_adder_n32_reg|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[6]~28_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(6));

-- Location: LCCOMB_X20_Y33_N12
\fir_result_reg|dffs[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[6]~28_combout\ = ((\fir_adder_n10_reg|dffs\(6) $ (\fir_adder_n32_reg|dffs\(6) $ (!\fir_result_reg|dffs[5]~27\)))) # (GND)
-- \fir_result_reg|dffs[6]~29\ = CARRY((\fir_adder_n10_reg|dffs\(6) & ((\fir_adder_n32_reg|dffs\(6)) # (!\fir_result_reg|dffs[5]~27\))) # (!\fir_adder_n10_reg|dffs\(6) & (\fir_adder_n32_reg|dffs\(6) & !\fir_result_reg|dffs[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n10_reg|dffs\(6),
	datab => \fir_adder_n32_reg|dffs\(6),
	datad => VCC,
	cin => \fir_result_reg|dffs[5]~27\,
	combout => \fir_result_reg|dffs[6]~28_combout\,
	cout => \fir_result_reg|dffs[6]~29\);

-- Location: FF_X20_Y33_N13
\fir_result_reg|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[6]~28_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(6));

-- Location: LCCOMB_X21_Y33_N14
\fir_adder_n32_reg|dffs[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[7]~30_combout\ = (\fir_mult_xn3_reg|dffs\(7) & ((\fir_mult_xn2_reg|dffs\(7) & (\fir_adder_n32_reg|dffs[6]~29\ & VCC)) # (!\fir_mult_xn2_reg|dffs\(7) & (!\fir_adder_n32_reg|dffs[6]~29\)))) # (!\fir_mult_xn3_reg|dffs\(7) & 
-- ((\fir_mult_xn2_reg|dffs\(7) & (!\fir_adder_n32_reg|dffs[6]~29\)) # (!\fir_mult_xn2_reg|dffs\(7) & ((\fir_adder_n32_reg|dffs[6]~29\) # (GND)))))
-- \fir_adder_n32_reg|dffs[7]~31\ = CARRY((\fir_mult_xn3_reg|dffs\(7) & (!\fir_mult_xn2_reg|dffs\(7) & !\fir_adder_n32_reg|dffs[6]~29\)) # (!\fir_mult_xn3_reg|dffs\(7) & ((!\fir_adder_n32_reg|dffs[6]~29\) # (!\fir_mult_xn2_reg|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(7),
	datab => \fir_mult_xn2_reg|dffs\(7),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[6]~29\,
	combout => \fir_adder_n32_reg|dffs[7]~30_combout\,
	cout => \fir_adder_n32_reg|dffs[7]~31\);

-- Location: FF_X21_Y33_N15
\fir_adder_n32_reg|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[7]~30_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(7));

-- Location: LCCOMB_X21_Y35_N14
\fir_adder_n10_reg|dffs[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[7]~30_combout\ = (\fir_mult_xn1_reg|dffs\(7) & ((\fir_mult_xn_reg|dffs\(7) & (\fir_adder_n10_reg|dffs[6]~29\ & VCC)) # (!\fir_mult_xn_reg|dffs\(7) & (!\fir_adder_n10_reg|dffs[6]~29\)))) # (!\fir_mult_xn1_reg|dffs\(7) & 
-- ((\fir_mult_xn_reg|dffs\(7) & (!\fir_adder_n10_reg|dffs[6]~29\)) # (!\fir_mult_xn_reg|dffs\(7) & ((\fir_adder_n10_reg|dffs[6]~29\) # (GND)))))
-- \fir_adder_n10_reg|dffs[7]~31\ = CARRY((\fir_mult_xn1_reg|dffs\(7) & (!\fir_mult_xn_reg|dffs\(7) & !\fir_adder_n10_reg|dffs[6]~29\)) # (!\fir_mult_xn1_reg|dffs\(7) & ((!\fir_adder_n10_reg|dffs[6]~29\) # (!\fir_mult_xn_reg|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(7),
	datab => \fir_mult_xn_reg|dffs\(7),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[6]~29\,
	combout => \fir_adder_n10_reg|dffs[7]~30_combout\,
	cout => \fir_adder_n10_reg|dffs[7]~31\);

-- Location: FF_X21_Y35_N15
\fir_adder_n10_reg|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[7]~30_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(7));

-- Location: LCCOMB_X20_Y33_N14
\fir_result_reg|dffs[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[7]~30_combout\ = (\fir_adder_n32_reg|dffs\(7) & ((\fir_adder_n10_reg|dffs\(7) & (\fir_result_reg|dffs[6]~29\ & VCC)) # (!\fir_adder_n10_reg|dffs\(7) & (!\fir_result_reg|dffs[6]~29\)))) # (!\fir_adder_n32_reg|dffs\(7) & 
-- ((\fir_adder_n10_reg|dffs\(7) & (!\fir_result_reg|dffs[6]~29\)) # (!\fir_adder_n10_reg|dffs\(7) & ((\fir_result_reg|dffs[6]~29\) # (GND)))))
-- \fir_result_reg|dffs[7]~31\ = CARRY((\fir_adder_n32_reg|dffs\(7) & (!\fir_adder_n10_reg|dffs\(7) & !\fir_result_reg|dffs[6]~29\)) # (!\fir_adder_n32_reg|dffs\(7) & ((!\fir_result_reg|dffs[6]~29\) # (!\fir_adder_n10_reg|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(7),
	datab => \fir_adder_n10_reg|dffs\(7),
	datad => VCC,
	cin => \fir_result_reg|dffs[6]~29\,
	combout => \fir_result_reg|dffs[7]~30_combout\,
	cout => \fir_result_reg|dffs[7]~31\);

-- Location: FF_X20_Y33_N15
\fir_result_reg|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[7]~30_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(7));

-- Location: LCCOMB_X21_Y33_N16
\fir_adder_n32_reg|dffs[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[8]~32_combout\ = ((\fir_mult_xn3_reg|dffs\(8) $ (\fir_mult_xn2_reg|dffs\(8) $ (!\fir_adder_n32_reg|dffs[7]~31\)))) # (GND)
-- \fir_adder_n32_reg|dffs[8]~33\ = CARRY((\fir_mult_xn3_reg|dffs\(8) & ((\fir_mult_xn2_reg|dffs\(8)) # (!\fir_adder_n32_reg|dffs[7]~31\))) # (!\fir_mult_xn3_reg|dffs\(8) & (\fir_mult_xn2_reg|dffs\(8) & !\fir_adder_n32_reg|dffs[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(8),
	datab => \fir_mult_xn2_reg|dffs\(8),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[7]~31\,
	combout => \fir_adder_n32_reg|dffs[8]~32_combout\,
	cout => \fir_adder_n32_reg|dffs[8]~33\);

-- Location: FF_X21_Y33_N17
\fir_adder_n32_reg|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[8]~32_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(8));

-- Location: LCCOMB_X21_Y35_N16
\fir_adder_n10_reg|dffs[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[8]~32_combout\ = ((\fir_mult_xn1_reg|dffs\(8) $ (\fir_mult_xn_reg|dffs\(8) $ (!\fir_adder_n10_reg|dffs[7]~31\)))) # (GND)
-- \fir_adder_n10_reg|dffs[8]~33\ = CARRY((\fir_mult_xn1_reg|dffs\(8) & ((\fir_mult_xn_reg|dffs\(8)) # (!\fir_adder_n10_reg|dffs[7]~31\))) # (!\fir_mult_xn1_reg|dffs\(8) & (\fir_mult_xn_reg|dffs\(8) & !\fir_adder_n10_reg|dffs[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(8),
	datab => \fir_mult_xn_reg|dffs\(8),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[7]~31\,
	combout => \fir_adder_n10_reg|dffs[8]~32_combout\,
	cout => \fir_adder_n10_reg|dffs[8]~33\);

-- Location: FF_X21_Y35_N17
\fir_adder_n10_reg|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[8]~32_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(8));

-- Location: LCCOMB_X20_Y33_N16
\fir_result_reg|dffs[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[8]~32_combout\ = ((\fir_adder_n32_reg|dffs\(8) $ (\fir_adder_n10_reg|dffs\(8) $ (!\fir_result_reg|dffs[7]~31\)))) # (GND)
-- \fir_result_reg|dffs[8]~33\ = CARRY((\fir_adder_n32_reg|dffs\(8) & ((\fir_adder_n10_reg|dffs\(8)) # (!\fir_result_reg|dffs[7]~31\))) # (!\fir_adder_n32_reg|dffs\(8) & (\fir_adder_n10_reg|dffs\(8) & !\fir_result_reg|dffs[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(8),
	datab => \fir_adder_n10_reg|dffs\(8),
	datad => VCC,
	cin => \fir_result_reg|dffs[7]~31\,
	combout => \fir_result_reg|dffs[8]~32_combout\,
	cout => \fir_result_reg|dffs[8]~33\);

-- Location: FF_X20_Y33_N17
\fir_result_reg|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[8]~32_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(8));

-- Location: LCCOMB_X21_Y35_N18
\fir_adder_n10_reg|dffs[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[9]~34_combout\ = (\fir_mult_xn1_reg|dffs\(9) & ((\fir_mult_xn_reg|dffs\(9) & (\fir_adder_n10_reg|dffs[8]~33\ & VCC)) # (!\fir_mult_xn_reg|dffs\(9) & (!\fir_adder_n10_reg|dffs[8]~33\)))) # (!\fir_mult_xn1_reg|dffs\(9) & 
-- ((\fir_mult_xn_reg|dffs\(9) & (!\fir_adder_n10_reg|dffs[8]~33\)) # (!\fir_mult_xn_reg|dffs\(9) & ((\fir_adder_n10_reg|dffs[8]~33\) # (GND)))))
-- \fir_adder_n10_reg|dffs[9]~35\ = CARRY((\fir_mult_xn1_reg|dffs\(9) & (!\fir_mult_xn_reg|dffs\(9) & !\fir_adder_n10_reg|dffs[8]~33\)) # (!\fir_mult_xn1_reg|dffs\(9) & ((!\fir_adder_n10_reg|dffs[8]~33\) # (!\fir_mult_xn_reg|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(9),
	datab => \fir_mult_xn_reg|dffs\(9),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[8]~33\,
	combout => \fir_adder_n10_reg|dffs[9]~34_combout\,
	cout => \fir_adder_n10_reg|dffs[9]~35\);

-- Location: FF_X21_Y35_N19
\fir_adder_n10_reg|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[9]~34_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(9));

-- Location: LCCOMB_X21_Y33_N18
\fir_adder_n32_reg|dffs[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[9]~34_combout\ = (\fir_mult_xn3_reg|dffs\(9) & ((\fir_mult_xn2_reg|dffs\(9) & (\fir_adder_n32_reg|dffs[8]~33\ & VCC)) # (!\fir_mult_xn2_reg|dffs\(9) & (!\fir_adder_n32_reg|dffs[8]~33\)))) # (!\fir_mult_xn3_reg|dffs\(9) & 
-- ((\fir_mult_xn2_reg|dffs\(9) & (!\fir_adder_n32_reg|dffs[8]~33\)) # (!\fir_mult_xn2_reg|dffs\(9) & ((\fir_adder_n32_reg|dffs[8]~33\) # (GND)))))
-- \fir_adder_n32_reg|dffs[9]~35\ = CARRY((\fir_mult_xn3_reg|dffs\(9) & (!\fir_mult_xn2_reg|dffs\(9) & !\fir_adder_n32_reg|dffs[8]~33\)) # (!\fir_mult_xn3_reg|dffs\(9) & ((!\fir_adder_n32_reg|dffs[8]~33\) # (!\fir_mult_xn2_reg|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(9),
	datab => \fir_mult_xn2_reg|dffs\(9),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[8]~33\,
	combout => \fir_adder_n32_reg|dffs[9]~34_combout\,
	cout => \fir_adder_n32_reg|dffs[9]~35\);

-- Location: FF_X21_Y33_N19
\fir_adder_n32_reg|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[9]~34_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(9));

-- Location: LCCOMB_X20_Y33_N18
\fir_result_reg|dffs[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[9]~34_combout\ = (\fir_adder_n10_reg|dffs\(9) & ((\fir_adder_n32_reg|dffs\(9) & (\fir_result_reg|dffs[8]~33\ & VCC)) # (!\fir_adder_n32_reg|dffs\(9) & (!\fir_result_reg|dffs[8]~33\)))) # (!\fir_adder_n10_reg|dffs\(9) & 
-- ((\fir_adder_n32_reg|dffs\(9) & (!\fir_result_reg|dffs[8]~33\)) # (!\fir_adder_n32_reg|dffs\(9) & ((\fir_result_reg|dffs[8]~33\) # (GND)))))
-- \fir_result_reg|dffs[9]~35\ = CARRY((\fir_adder_n10_reg|dffs\(9) & (!\fir_adder_n32_reg|dffs\(9) & !\fir_result_reg|dffs[8]~33\)) # (!\fir_adder_n10_reg|dffs\(9) & ((!\fir_result_reg|dffs[8]~33\) # (!\fir_adder_n32_reg|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n10_reg|dffs\(9),
	datab => \fir_adder_n32_reg|dffs\(9),
	datad => VCC,
	cin => \fir_result_reg|dffs[8]~33\,
	combout => \fir_result_reg|dffs[9]~34_combout\,
	cout => \fir_result_reg|dffs[9]~35\);

-- Location: FF_X20_Y33_N19
\fir_result_reg|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[9]~34_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(9));

-- Location: LCCOMB_X21_Y33_N20
\fir_adder_n32_reg|dffs[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[10]~36_combout\ = ((\fir_mult_xn3_reg|dffs\(10) $ (\fir_mult_xn2_reg|dffs\(10) $ (!\fir_adder_n32_reg|dffs[9]~35\)))) # (GND)
-- \fir_adder_n32_reg|dffs[10]~37\ = CARRY((\fir_mult_xn3_reg|dffs\(10) & ((\fir_mult_xn2_reg|dffs\(10)) # (!\fir_adder_n32_reg|dffs[9]~35\))) # (!\fir_mult_xn3_reg|dffs\(10) & (\fir_mult_xn2_reg|dffs\(10) & !\fir_adder_n32_reg|dffs[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(10),
	datab => \fir_mult_xn2_reg|dffs\(10),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[9]~35\,
	combout => \fir_adder_n32_reg|dffs[10]~36_combout\,
	cout => \fir_adder_n32_reg|dffs[10]~37\);

-- Location: FF_X21_Y33_N21
\fir_adder_n32_reg|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[10]~36_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(10));

-- Location: LCCOMB_X21_Y35_N20
\fir_adder_n10_reg|dffs[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[10]~36_combout\ = ((\fir_mult_xn1_reg|dffs\(10) $ (\fir_mult_xn_reg|dffs\(10) $ (!\fir_adder_n10_reg|dffs[9]~35\)))) # (GND)
-- \fir_adder_n10_reg|dffs[10]~37\ = CARRY((\fir_mult_xn1_reg|dffs\(10) & ((\fir_mult_xn_reg|dffs\(10)) # (!\fir_adder_n10_reg|dffs[9]~35\))) # (!\fir_mult_xn1_reg|dffs\(10) & (\fir_mult_xn_reg|dffs\(10) & !\fir_adder_n10_reg|dffs[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(10),
	datab => \fir_mult_xn_reg|dffs\(10),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[9]~35\,
	combout => \fir_adder_n10_reg|dffs[10]~36_combout\,
	cout => \fir_adder_n10_reg|dffs[10]~37\);

-- Location: FF_X21_Y35_N21
\fir_adder_n10_reg|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[10]~36_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(10));

-- Location: LCCOMB_X20_Y33_N20
\fir_result_reg|dffs[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[10]~36_combout\ = ((\fir_adder_n32_reg|dffs\(10) $ (\fir_adder_n10_reg|dffs\(10) $ (!\fir_result_reg|dffs[9]~35\)))) # (GND)
-- \fir_result_reg|dffs[10]~37\ = CARRY((\fir_adder_n32_reg|dffs\(10) & ((\fir_adder_n10_reg|dffs\(10)) # (!\fir_result_reg|dffs[9]~35\))) # (!\fir_adder_n32_reg|dffs\(10) & (\fir_adder_n10_reg|dffs\(10) & !\fir_result_reg|dffs[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(10),
	datab => \fir_adder_n10_reg|dffs\(10),
	datad => VCC,
	cin => \fir_result_reg|dffs[9]~35\,
	combout => \fir_result_reg|dffs[10]~36_combout\,
	cout => \fir_result_reg|dffs[10]~37\);

-- Location: FF_X20_Y33_N21
\fir_result_reg|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[10]~36_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(10));

-- Location: LCCOMB_X21_Y33_N22
\fir_adder_n32_reg|dffs[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[11]~38_combout\ = (\fir_mult_xn3_reg|dffs\(11) & ((\fir_mult_xn2_reg|dffs\(11) & (\fir_adder_n32_reg|dffs[10]~37\ & VCC)) # (!\fir_mult_xn2_reg|dffs\(11) & (!\fir_adder_n32_reg|dffs[10]~37\)))) # (!\fir_mult_xn3_reg|dffs\(11) & 
-- ((\fir_mult_xn2_reg|dffs\(11) & (!\fir_adder_n32_reg|dffs[10]~37\)) # (!\fir_mult_xn2_reg|dffs\(11) & ((\fir_adder_n32_reg|dffs[10]~37\) # (GND)))))
-- \fir_adder_n32_reg|dffs[11]~39\ = CARRY((\fir_mult_xn3_reg|dffs\(11) & (!\fir_mult_xn2_reg|dffs\(11) & !\fir_adder_n32_reg|dffs[10]~37\)) # (!\fir_mult_xn3_reg|dffs\(11) & ((!\fir_adder_n32_reg|dffs[10]~37\) # (!\fir_mult_xn2_reg|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(11),
	datab => \fir_mult_xn2_reg|dffs\(11),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[10]~37\,
	combout => \fir_adder_n32_reg|dffs[11]~38_combout\,
	cout => \fir_adder_n32_reg|dffs[11]~39\);

-- Location: FF_X21_Y33_N23
\fir_adder_n32_reg|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[11]~38_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(11));

-- Location: LCCOMB_X21_Y35_N22
\fir_adder_n10_reg|dffs[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[11]~38_combout\ = (\fir_mult_xn1_reg|dffs\(11) & ((\fir_mult_xn_reg|dffs\(11) & (\fir_adder_n10_reg|dffs[10]~37\ & VCC)) # (!\fir_mult_xn_reg|dffs\(11) & (!\fir_adder_n10_reg|dffs[10]~37\)))) # (!\fir_mult_xn1_reg|dffs\(11) & 
-- ((\fir_mult_xn_reg|dffs\(11) & (!\fir_adder_n10_reg|dffs[10]~37\)) # (!\fir_mult_xn_reg|dffs\(11) & ((\fir_adder_n10_reg|dffs[10]~37\) # (GND)))))
-- \fir_adder_n10_reg|dffs[11]~39\ = CARRY((\fir_mult_xn1_reg|dffs\(11) & (!\fir_mult_xn_reg|dffs\(11) & !\fir_adder_n10_reg|dffs[10]~37\)) # (!\fir_mult_xn1_reg|dffs\(11) & ((!\fir_adder_n10_reg|dffs[10]~37\) # (!\fir_mult_xn_reg|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(11),
	datab => \fir_mult_xn_reg|dffs\(11),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[10]~37\,
	combout => \fir_adder_n10_reg|dffs[11]~38_combout\,
	cout => \fir_adder_n10_reg|dffs[11]~39\);

-- Location: FF_X21_Y35_N23
\fir_adder_n10_reg|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[11]~38_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(11));

-- Location: LCCOMB_X20_Y33_N22
\fir_result_reg|dffs[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[11]~38_combout\ = (\fir_adder_n32_reg|dffs\(11) & ((\fir_adder_n10_reg|dffs\(11) & (\fir_result_reg|dffs[10]~37\ & VCC)) # (!\fir_adder_n10_reg|dffs\(11) & (!\fir_result_reg|dffs[10]~37\)))) # (!\fir_adder_n32_reg|dffs\(11) & 
-- ((\fir_adder_n10_reg|dffs\(11) & (!\fir_result_reg|dffs[10]~37\)) # (!\fir_adder_n10_reg|dffs\(11) & ((\fir_result_reg|dffs[10]~37\) # (GND)))))
-- \fir_result_reg|dffs[11]~39\ = CARRY((\fir_adder_n32_reg|dffs\(11) & (!\fir_adder_n10_reg|dffs\(11) & !\fir_result_reg|dffs[10]~37\)) # (!\fir_adder_n32_reg|dffs\(11) & ((!\fir_result_reg|dffs[10]~37\) # (!\fir_adder_n10_reg|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(11),
	datab => \fir_adder_n10_reg|dffs\(11),
	datad => VCC,
	cin => \fir_result_reg|dffs[10]~37\,
	combout => \fir_result_reg|dffs[11]~38_combout\,
	cout => \fir_result_reg|dffs[11]~39\);

-- Location: FF_X20_Y33_N23
\fir_result_reg|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[11]~38_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(11));

-- Location: LCCOMB_X21_Y35_N24
\fir_adder_n10_reg|dffs[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[12]~40_combout\ = ((\fir_mult_xn1_reg|dffs\(12) $ (\fir_mult_xn_reg|dffs\(12) $ (!\fir_adder_n10_reg|dffs[11]~39\)))) # (GND)
-- \fir_adder_n10_reg|dffs[12]~41\ = CARRY((\fir_mult_xn1_reg|dffs\(12) & ((\fir_mult_xn_reg|dffs\(12)) # (!\fir_adder_n10_reg|dffs[11]~39\))) # (!\fir_mult_xn1_reg|dffs\(12) & (\fir_mult_xn_reg|dffs\(12) & !\fir_adder_n10_reg|dffs[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn1_reg|dffs\(12),
	datab => \fir_mult_xn_reg|dffs\(12),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[11]~39\,
	combout => \fir_adder_n10_reg|dffs[12]~40_combout\,
	cout => \fir_adder_n10_reg|dffs[12]~41\);

-- Location: FF_X21_Y35_N25
\fir_adder_n10_reg|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[12]~40_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(12));

-- Location: LCCOMB_X21_Y33_N24
\fir_adder_n32_reg|dffs[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[12]~40_combout\ = ((\fir_mult_xn3_reg|dffs\(12) $ (\fir_mult_xn2_reg|dffs\(12) $ (!\fir_adder_n32_reg|dffs[11]~39\)))) # (GND)
-- \fir_adder_n32_reg|dffs[12]~41\ = CARRY((\fir_mult_xn3_reg|dffs\(12) & ((\fir_mult_xn2_reg|dffs\(12)) # (!\fir_adder_n32_reg|dffs[11]~39\))) # (!\fir_mult_xn3_reg|dffs\(12) & (\fir_mult_xn2_reg|dffs\(12) & !\fir_adder_n32_reg|dffs[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(12),
	datab => \fir_mult_xn2_reg|dffs\(12),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[11]~39\,
	combout => \fir_adder_n32_reg|dffs[12]~40_combout\,
	cout => \fir_adder_n32_reg|dffs[12]~41\);

-- Location: FF_X21_Y33_N25
\fir_adder_n32_reg|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[12]~40_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(12));

-- Location: LCCOMB_X20_Y33_N24
\fir_result_reg|dffs[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[12]~40_combout\ = ((\fir_adder_n10_reg|dffs\(12) $ (\fir_adder_n32_reg|dffs\(12) $ (!\fir_result_reg|dffs[11]~39\)))) # (GND)
-- \fir_result_reg|dffs[12]~41\ = CARRY((\fir_adder_n10_reg|dffs\(12) & ((\fir_adder_n32_reg|dffs\(12)) # (!\fir_result_reg|dffs[11]~39\))) # (!\fir_adder_n10_reg|dffs\(12) & (\fir_adder_n32_reg|dffs\(12) & !\fir_result_reg|dffs[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n10_reg|dffs\(12),
	datab => \fir_adder_n32_reg|dffs\(12),
	datad => VCC,
	cin => \fir_result_reg|dffs[11]~39\,
	combout => \fir_result_reg|dffs[12]~40_combout\,
	cout => \fir_result_reg|dffs[12]~41\);

-- Location: FF_X20_Y33_N25
\fir_result_reg|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[12]~40_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(12));

-- Location: LCCOMB_X21_Y33_N26
\fir_adder_n32_reg|dffs[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[13]~42_combout\ = (\fir_mult_xn2_reg|dffs\(13) & ((\fir_mult_xn3_reg|dffs\(13) & (\fir_adder_n32_reg|dffs[12]~41\ & VCC)) # (!\fir_mult_xn3_reg|dffs\(13) & (!\fir_adder_n32_reg|dffs[12]~41\)))) # (!\fir_mult_xn2_reg|dffs\(13) & 
-- ((\fir_mult_xn3_reg|dffs\(13) & (!\fir_adder_n32_reg|dffs[12]~41\)) # (!\fir_mult_xn3_reg|dffs\(13) & ((\fir_adder_n32_reg|dffs[12]~41\) # (GND)))))
-- \fir_adder_n32_reg|dffs[13]~43\ = CARRY((\fir_mult_xn2_reg|dffs\(13) & (!\fir_mult_xn3_reg|dffs\(13) & !\fir_adder_n32_reg|dffs[12]~41\)) # (!\fir_mult_xn2_reg|dffs\(13) & ((!\fir_adder_n32_reg|dffs[12]~41\) # (!\fir_mult_xn3_reg|dffs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn2_reg|dffs\(13),
	datab => \fir_mult_xn3_reg|dffs\(13),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[12]~41\,
	combout => \fir_adder_n32_reg|dffs[13]~42_combout\,
	cout => \fir_adder_n32_reg|dffs[13]~43\);

-- Location: FF_X21_Y33_N27
\fir_adder_n32_reg|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[13]~42_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(13));

-- Location: LCCOMB_X21_Y35_N26
\fir_adder_n10_reg|dffs[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[13]~42_combout\ = (\fir_mult_xn_reg|dffs\(13) & ((\fir_mult_xn1_reg|dffs\(13) & (\fir_adder_n10_reg|dffs[12]~41\ & VCC)) # (!\fir_mult_xn1_reg|dffs\(13) & (!\fir_adder_n10_reg|dffs[12]~41\)))) # (!\fir_mult_xn_reg|dffs\(13) & 
-- ((\fir_mult_xn1_reg|dffs\(13) & (!\fir_adder_n10_reg|dffs[12]~41\)) # (!\fir_mult_xn1_reg|dffs\(13) & ((\fir_adder_n10_reg|dffs[12]~41\) # (GND)))))
-- \fir_adder_n10_reg|dffs[13]~43\ = CARRY((\fir_mult_xn_reg|dffs\(13) & (!\fir_mult_xn1_reg|dffs\(13) & !\fir_adder_n10_reg|dffs[12]~41\)) # (!\fir_mult_xn_reg|dffs\(13) & ((!\fir_adder_n10_reg|dffs[12]~41\) # (!\fir_mult_xn1_reg|dffs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn_reg|dffs\(13),
	datab => \fir_mult_xn1_reg|dffs\(13),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[12]~41\,
	combout => \fir_adder_n10_reg|dffs[13]~42_combout\,
	cout => \fir_adder_n10_reg|dffs[13]~43\);

-- Location: FF_X21_Y35_N27
\fir_adder_n10_reg|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[13]~42_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(13));

-- Location: LCCOMB_X20_Y33_N26
\fir_result_reg|dffs[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[13]~42_combout\ = (\fir_adder_n32_reg|dffs\(13) & ((\fir_adder_n10_reg|dffs\(13) & (\fir_result_reg|dffs[12]~41\ & VCC)) # (!\fir_adder_n10_reg|dffs\(13) & (!\fir_result_reg|dffs[12]~41\)))) # (!\fir_adder_n32_reg|dffs\(13) & 
-- ((\fir_adder_n10_reg|dffs\(13) & (!\fir_result_reg|dffs[12]~41\)) # (!\fir_adder_n10_reg|dffs\(13) & ((\fir_result_reg|dffs[12]~41\) # (GND)))))
-- \fir_result_reg|dffs[13]~43\ = CARRY((\fir_adder_n32_reg|dffs\(13) & (!\fir_adder_n10_reg|dffs\(13) & !\fir_result_reg|dffs[12]~41\)) # (!\fir_adder_n32_reg|dffs\(13) & ((!\fir_result_reg|dffs[12]~41\) # (!\fir_adder_n10_reg|dffs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(13),
	datab => \fir_adder_n10_reg|dffs\(13),
	datad => VCC,
	cin => \fir_result_reg|dffs[12]~41\,
	combout => \fir_result_reg|dffs[13]~42_combout\,
	cout => \fir_result_reg|dffs[13]~43\);

-- Location: FF_X20_Y33_N27
\fir_result_reg|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[13]~42_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(13));

-- Location: LCCOMB_X21_Y33_N28
\fir_adder_n32_reg|dffs[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[14]~44_combout\ = ((\fir_mult_xn3_reg|dffs\(14) $ (\fir_mult_xn2_reg|dffs\(14) $ (!\fir_adder_n32_reg|dffs[13]~43\)))) # (GND)
-- \fir_adder_n32_reg|dffs[14]~45\ = CARRY((\fir_mult_xn3_reg|dffs\(14) & ((\fir_mult_xn2_reg|dffs\(14)) # (!\fir_adder_n32_reg|dffs[13]~43\))) # (!\fir_mult_xn3_reg|dffs\(14) & (\fir_mult_xn2_reg|dffs\(14) & !\fir_adder_n32_reg|dffs[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(14),
	datab => \fir_mult_xn2_reg|dffs\(14),
	datad => VCC,
	cin => \fir_adder_n32_reg|dffs[13]~43\,
	combout => \fir_adder_n32_reg|dffs[14]~44_combout\,
	cout => \fir_adder_n32_reg|dffs[14]~45\);

-- Location: FF_X21_Y33_N29
\fir_adder_n32_reg|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[14]~44_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(14));

-- Location: LCCOMB_X21_Y35_N28
\fir_adder_n10_reg|dffs[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[14]~44_combout\ = ((\fir_mult_xn_reg|dffs\(14) $ (\fir_mult_xn1_reg|dffs\(14) $ (!\fir_adder_n10_reg|dffs[13]~43\)))) # (GND)
-- \fir_adder_n10_reg|dffs[14]~45\ = CARRY((\fir_mult_xn_reg|dffs\(14) & ((\fir_mult_xn1_reg|dffs\(14)) # (!\fir_adder_n10_reg|dffs[13]~43\))) # (!\fir_mult_xn_reg|dffs\(14) & (\fir_mult_xn1_reg|dffs\(14) & !\fir_adder_n10_reg|dffs[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn_reg|dffs\(14),
	datab => \fir_mult_xn1_reg|dffs\(14),
	datad => VCC,
	cin => \fir_adder_n10_reg|dffs[13]~43\,
	combout => \fir_adder_n10_reg|dffs[14]~44_combout\,
	cout => \fir_adder_n10_reg|dffs[14]~45\);

-- Location: FF_X21_Y35_N29
\fir_adder_n10_reg|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[14]~44_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(14));

-- Location: LCCOMB_X20_Y33_N28
\fir_result_reg|dffs[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[14]~44_combout\ = ((\fir_adder_n32_reg|dffs\(14) $ (\fir_adder_n10_reg|dffs\(14) $ (!\fir_result_reg|dffs[13]~43\)))) # (GND)
-- \fir_result_reg|dffs[14]~45\ = CARRY((\fir_adder_n32_reg|dffs\(14) & ((\fir_adder_n10_reg|dffs\(14)) # (!\fir_result_reg|dffs[13]~43\))) # (!\fir_adder_n32_reg|dffs\(14) & (\fir_adder_n10_reg|dffs\(14) & !\fir_result_reg|dffs[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(14),
	datab => \fir_adder_n10_reg|dffs\(14),
	datad => VCC,
	cin => \fir_result_reg|dffs[13]~43\,
	combout => \fir_result_reg|dffs[14]~44_combout\,
	cout => \fir_result_reg|dffs[14]~45\);

-- Location: FF_X20_Y33_N29
\fir_result_reg|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[14]~44_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(14));

-- Location: LCCOMB_X21_Y33_N30
\fir_adder_n32_reg|dffs[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n32_reg|dffs[15]~46_combout\ = \fir_mult_xn3_reg|dffs\(15) $ (\fir_adder_n32_reg|dffs[14]~45\ $ (\fir_mult_xn2_reg|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_mult_xn3_reg|dffs\(15),
	datad => \fir_mult_xn2_reg|dffs\(15),
	cin => \fir_adder_n32_reg|dffs[14]~45\,
	combout => \fir_adder_n32_reg|dffs[15]~46_combout\);

-- Location: FF_X21_Y33_N31
\fir_adder_n32_reg|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n32_reg|dffs[15]~46_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n32_reg|dffs\(15));

-- Location: LCCOMB_X21_Y35_N30
\fir_adder_n10_reg|dffs[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_adder_n10_reg|dffs[15]~46_combout\ = \fir_mult_xn_reg|dffs\(15) $ (\fir_adder_n10_reg|dffs[14]~45\ $ (\fir_mult_xn1_reg|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_mult_xn_reg|dffs\(15),
	datad => \fir_mult_xn1_reg|dffs\(15),
	cin => \fir_adder_n10_reg|dffs[14]~45\,
	combout => \fir_adder_n10_reg|dffs[15]~46_combout\);

-- Location: FF_X21_Y35_N31
\fir_adder_n10_reg|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_adder_n10_reg|dffs[15]~46_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_adder_n10_reg|dffs\(15));

-- Location: LCCOMB_X20_Y33_N30
\fir_result_reg|dffs[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_result_reg|dffs[15]~46_combout\ = \fir_adder_n32_reg|dffs\(15) $ (\fir_result_reg|dffs[14]~45\ $ (\fir_adder_n10_reg|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_adder_n32_reg|dffs\(15),
	datad => \fir_adder_n10_reg|dffs\(15),
	cin => \fir_result_reg|dffs[14]~45\,
	combout => \fir_result_reg|dffs[15]~46_combout\);

-- Location: FF_X20_Y33_N31
\fir_result_reg|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fir_result_reg|dffs[15]~46_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_result_reg|dffs\(15));

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(11) <= \y[11]~output_o\;

ww_y(12) <= \y[12]~output_o\;

ww_y(13) <= \y[13]~output_o\;

ww_y(14) <= \y[14]~output_o\;

ww_y(15) <= \y[15]~output_o\;
END structure;


