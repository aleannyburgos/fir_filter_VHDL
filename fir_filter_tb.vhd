library ieee;
use ieee.std_logic_1164.all;

entity fir_filter_tb is
end fir_filter_tb;

architecture tb of fir_filter_tb is

	 signal sigs  : std_logic_vector(7 downto 0) := (others => '0');
    signal clock : std_logic := '0';
    signal clear : std_logic := '0';
    signal y     : std_logic_vector(15 downto 0);

begin

    uut: entity work.fir_filter
        port map(
				sigs => sigs,
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
		
		sigs <= "00000001";
		wait until rising_edge(clock);

		sigs <= "00100001";
		wait until rising_edge(clock);

		sigs <= "00000101";
		wait until rising_edge(clock);

		sigs <= "00010001";
		wait until rising_edge(clock);
		
		sigs <= "00000000";
		wait until rising_edge(clock);

		wait;
	end process;
end tb;