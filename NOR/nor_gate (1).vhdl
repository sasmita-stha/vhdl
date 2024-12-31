library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end nor_gate;

architecture Behavioral of nor_gate is
begin
    Y <= not (A or B); 
end Behavioral;