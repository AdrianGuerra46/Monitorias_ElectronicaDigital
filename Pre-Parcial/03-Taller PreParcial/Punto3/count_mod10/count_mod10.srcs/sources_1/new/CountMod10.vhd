
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CountMod10 is
    Port ( R1 : in STD_LOGIC;
           U  : in STD_LOGIC;
           D  : in STD_LOGIC;
           O  : out STD_LOGIC_VECTOR (3 downto 0));
end CountMod10;

architecture Behavioral of CountMod10 is
    signal count: integer range 0 to 15 := 0;
begin
    process(R1)
    begin 
        if rising_edge(R1) then
            if U = '1' then 
                if count = 9 then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            elsif D = '1' then
                if count = 0 then
                    count <= 9;
                else
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;

    O <= std_logic_vector(to_unsigned(count, O'length));
end Behavioral;

