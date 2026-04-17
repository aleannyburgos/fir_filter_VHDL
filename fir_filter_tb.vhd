library ieee;
use ieee.std_logic_1164.all;

entity fir_filter_tb is
end fir_filter_tb;

architecture tb of fir_filter_tb is

    signal clock : std_logic := '0';
    signal clear : std_logic := '0';
    signal y     : std_logic_vector(15 downto 0);

begin

    uut: entity work.fir_filter
        port map(
            clock   => clock,
            clear => clear,
            y     => y
        );

    -- 10 ns clock period
    clk_process : process
    begin
        while true loop
            clock <= '0';
            wait for 5 ns;
            clock <= '1';
            wait for 5 ns;
        end loop;
    end process;

    stim_process : process
    begin
		clear <= '1';
		wait until rising_edge(clock);		
		clear <= '0';
		wait for 300 ns;
		
		wait;
	end process;
end tb;