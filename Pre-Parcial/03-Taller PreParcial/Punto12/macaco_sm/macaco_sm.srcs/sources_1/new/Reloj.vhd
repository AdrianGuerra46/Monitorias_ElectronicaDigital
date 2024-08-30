

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity Reloj is
    Port ( IR100 : in STD_LOGIC;
           OR1 : out STD_LOGIC);
end Reloj;

architecture Behavioral of Reloj is

signal aux : integer range 0 to 100000000 := 0; 
signal x : std_logic;
begin
process (IR100)
    begin 
        if rising_edge (IR100) then 
            aux <= aux +1; 
            
            if (aux = 49999999) then 
            x <= NOT x;
            aux <= 0;
            end if; 
            
         end if; 
end process;
OR1 <= x;

end Behavioral;
