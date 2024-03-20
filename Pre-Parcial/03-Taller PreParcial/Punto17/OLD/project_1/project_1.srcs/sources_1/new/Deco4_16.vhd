
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Deco4_16 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Q2 : out STD_LOGIC_VECTOR (15 downto 0));
end Deco4_16;

architecture Behavioral of Deco4_16 is

begin
process (I)
        begin
            case (I) is
                when "0000" => Q2 <= "0000000000000001";
                when "0001" => Q2 <= "0000000000000010";
                when "0010" => Q2 <= "0000000000000100";
                when "0011" => Q2 <= "0000000000001000";
                when "0100" => Q2 <= "0000000000010000";
                when "0101" => Q2 <= "0000000000100000";
                when "0110" => Q2 <= "0000000001000000";
                when "0111" => Q2 <= "0000000010000000";
                when "1000" => Q2 <= "0000000100000000";
                when "1001" => Q2 <= "0000001000000000";
                when "1010" => Q2 <= "0000010000000000";
                when "1011" => Q2 <= "0000100000000000";
                when "1100" => Q2 <= "0001000000000000";
                when "1101" => Q2 <= "0010000000000000";
                when "1110" => Q2 <= "0100000000000000";
                when "1111" => Q2 <= "1000000000000000";
                
            end case;    
        end process;

end Behavioral;
