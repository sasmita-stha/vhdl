library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exor_gate_tb is
end exor_gate_tb;

architecture Behavioral of exor_gate_tb is
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;
begin
    uut: entity work.exor_gate
        port map (
            A => A,
            B => B,
            Y => Y
        );

    process
    begin
        
        A <= '0'; B <= '0';  
        wait for 10 ns;
        A <= '0'; B <= '1';  
        wait for 10 ns;
        A <= '1'; B <= '0';  
        wait for 10 ns;
        A <= '1'; B <= '1';  
        wait for 10 ns;
        wait;
    end process;
end Behavioral;
