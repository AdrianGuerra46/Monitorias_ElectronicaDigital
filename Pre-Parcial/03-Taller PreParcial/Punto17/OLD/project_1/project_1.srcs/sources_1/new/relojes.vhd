
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity relojes is
    Port ( IR100 : in STD_LOGIC;
           OR1 : out STD_LOGIC;
           OR2 : out STD_LOGIC);
end relojes;

architecture Behavioral of relojes is

signal out1, out2 : integer range 0 to 100000000 := 0;
signal re1,re2: std_logic;

begin
    process (IR100)
        begin 
            if rising_edge (IR100) then 
                out1 <= out1+1;
                out2 <= out2+1;
                
                -- formula maestra = relojBasys/(frecuencia deseada *2)  -1
                
                if (out1 = 49999) then 
                    re1 <= not re1;
                    out1 <= 0;
                end if;
                
                if (out2 = 2499999) then
                    re2 <= not re2;
                    out2 <= 0;
                end if;
            end if;  
    end process;
 OR1 <= re1;
 OR2 <= re2;   

end Behavioral;
