
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CountMod10 is
    Port ( R1 : in STD_LOGIC;
           U : in STD_LOGIC;
           D : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (3 downto 0));
end CountMod10;

architecture Behavioral of CountMod10 is
signal count:std_logic_vector(3 downto 0):= "0000";

begin
    Process(R1,D,U)
        begin 
            if ((rising_edge (R1)) AND (U = '1')) then
                count <= count+1;
                if (count = "1010") then
                    count <= "0000";
                end if;
            end if;
            if ((rising_edge (R1)) AND (D = '1')) then
                count <= count-1;
                if (count = "1111") then
                    count <= "0000";
                end if;
            end if;
 
    end process; 
O <= count;

end Behavioral;
