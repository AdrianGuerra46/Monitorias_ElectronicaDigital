

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Aleatorio is
    Port ( B : in STD_LOGIC;
           Rel: in STD_LOGIC;
           O2 : out STD_LOGIC_VECTOR (1 downto 0);
           O4 : out STD_LOGIC_VECTOR (3 downto 0));
end Aleatorio;

architecture Behavioral of Aleatorio is
signal Ale2: STD_LOGIC_VECTOR (1 downto 0) := "00";
signal Ale4: STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
    process(Rel, B)
        begin 
            if ((rising_edge (Rel)) AND (B = '1')) then 
                Ale2 <= Ale2 + 1; 
                Ale4 <= Ale4 + 1;
            end if; 
     end process;
     
O2 <= Ale2;   
O4 <= Ale4; 

end Behavioral;
