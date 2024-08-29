
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity compleA2_4bits is
    Port ( I : in STD_LOGIC_VECTOR (0 to 3);
           O : out STD_LOGIC_VECTOR (0 to 3));
end compleA2_4bits;
    
architecture Behavioral of compleA2_4bits is
    signal n_inver : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(I)
        begin
            -- Invertir todos los bits del número de entrada
            n_inver <= not I;
            
    end process;
O <= std_logic_vector(unsigned(n_inver) + 1);
end Behavioral;
