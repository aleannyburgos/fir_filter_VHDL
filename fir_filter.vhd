library ieee;
use ieee.std_logic_1164.all;

library lpm;
use lpm.lpm_components.all;


entity fir_filter is
port( clock, clear : in std_logic;
		y : out std_logic_vector(15 downto 0)
	);
end fir_filter;


architecture structural of fir_filter is 

signal fir_counter_out :std_logic_vector(2 downto 0);
signal fir_signal, fir_shift_0, fir_shift_1, fir_shift_2 : std_logic_vector(7 downto 0) := (others => '0'); --change to foor loop
signal fir_signal_reg_out, fir_shift_0_reg_out, fir_shift_1_reg_out, fir_shift_2_reg_out: std_logic_vector(7 downto 0); --change to foor loop
signal fir_mult_xn3_out, fir_mult_xn2_out, fir_mult_xn1_out, fir_mult_xn0_out : std_logic_vector(15 downto 0);
signal fir_mult_xn3_reg_out, fir_mult_xn2_reg_out, fir_mult_xn1_reg_out, fir_mult_xn0_reg_out, fir_adder_n32_reg_out, fir_adder_n10_reg_out : std_logic_vector(15 downto 0);
signal fir_adder_n32_out, fir_adder_n10_out, fir_adder_out : std_logic_vector(15 downto 0);


constant h0 : std_logic_vector(7 downto 0) := "00000001";
constant h1 : std_logic_vector(7 downto 0) := "00000010";
constant h2 : std_logic_vector(7 downto 0) := "00000010";
constant h3 : std_logic_vector(7 downto 0) := "00000001";

begin
--RAM STUFF
fir_counter : lpm_counter
	generic map(LPM_WIDTH=>3)
	port map(clock=>clock, aclr=>clear, q=>fir_counter_out);
	
	
fir_rom : lpm_rom
	generic map(LPM_WIDTH=>8, LPM_FILE=>"fir_filter.mif", LPM_WIDTHAD=>3)
	port map(address=>fir_counter_out, q=>fir_signal, inclock=>clock, outclock=>clock);


process(clock, clear)
begin
	if clear = '1' then
		fir_shift_0 <= (others => '0');
		fir_shift_1 <= (others => '0');
		fir_shift_2 <= (others => '0');
	elsif rising_edge(clock) then
		fir_shift_0 <= fir_signal;
		fir_shift_1 <= fir_shift_0;
		fir_shift_2 <= fir_shift_1;

	end if;
end process;

fir_signal_reg : lpm_ff
	generic map(LPM_WIDTH=>8)
	port map(q=>fir_signal_reg_out, data=>fir_signal, aclr=>clear, clock=>clock);
fir_shift_0_reg : lpm_ff
	generic map(LPM_WIDTH=>8)
	port map(q=>fir_shift_0_reg_out, data=>fir_shift_0, aclr=>clear, clock=>clock);
fir_shift_1_reg : lpm_ff
	generic map(LPM_WIDTH=>8)
	port map(q=>fir_shift_1_reg_out, data=>fir_shift_1, aclr=>clear, clock=>clock);
fir_shift_2_reg : lpm_ff
	generic map(LPM_WIDTH=>8)
	port map(q=>fir_shift_2_reg_out, data=>fir_shift_2, aclr=>clear, clock=>clock);
	
fir_mult_xn : lpm_mult
	generic map(LPM_WIDTHA=>8,LPM_WIDTHB=>8,LPM_WIDTHP=>16)
	port map(dataa=>fir_signal, datab=>h0, result=> fir_mult_xn0_out);
fir_mult_xn1 : lpm_mult
	generic map(LPM_WIDTHA=>8,LPM_WIDTHB=>8,LPM_WIDTHP=>16)
	port map(dataa=>fir_shift_0, datab=>h1, result=> fir_mult_xn1_out);
fir_mult_xn2 : lpm_mult
	generic map(LPM_WIDTHA=>8,LPM_WIDTHB=>8,LPM_WIDTHP=>16)
	port map(dataa=>fir_shift_1, datab=>h2, result=> fir_mult_xn2_out);
fir_mult_xn3 : lpm_mult
	generic map(LPM_WIDTHA=>8,LPM_WIDTHB=>8,LPM_WIDTHP=>16)
	port map(dataa=>fir_shift_2, datab=>h3, result=> fir_mult_xn3_out);
	
	
fir_mult_xn_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>fir_mult_xn0_reg_out, data=>fir_mult_xn0_out, aclr=>clear, clock=>clock);
fir_mult_xn1_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>fir_mult_xn1_reg_out, data=>fir_mult_xn1_out, aclr=>clear, clock=>clock);
fir_mult_xn2_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>fir_mult_xn2_reg_out, data=>fir_mult_xn2_out, aclr=>clear, clock=>clock);
fir_mult_xn3_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>fir_mult_xn3_reg_out, data=>fir_mult_xn3_out, aclr=>clear, clock=>clock);
	

fir_adder_n32 : lpm_add_sub
	generic map(LPM_WIDTH=>16)
	port map( result=>fir_adder_n32_out, dataa=>fir_mult_xn3_reg_out, datab=>fir_mult_xn2_reg_out);
fir_adder_n10 : lpm_add_sub
	generic map(LPM_WIDTH=>16)
	port map( result=>fir_adder_n10_out, dataa=>fir_mult_xn1_reg_out, datab=>fir_mult_xn0_reg_out);
	
	
fir_adder_n32_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>fir_adder_n32_reg_out, data=>fir_adder_n32_out, aclr=>clear, clock=>clock);
fir_adder_n10_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>fir_adder_n10_reg_out, data=>fir_adder_n10_out, aclr=>clear, clock=>clock);
	

fir_adder : lpm_add_sub
	generic map(LPM_WIDTH=>16)
	port map(result=>fir_adder_out, dataa=>fir_adder_n32_reg_out, datab=>fir_adder_n10_reg_out);
	
	
fir_result_reg : lpm_ff
	generic map(LPM_WIDTH=>16)
	port map(q=>y, data=>fir_adder_out, aclr=>clear, clock=>clock);
	
end structural;
	