----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2024 13:02:27
-- Design Name: 
-- Module Name: BCD_7seg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_7seg is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (6 downto 0));
end BCD_7seg;

architecture Behavioral of BCD_7seg is
    signal a2 : STD_LOGIC_VECTOR (6 downto 0);

begin
    Process (A)
        begin 
            case (A) is 
                when "0000" => a2 <= "1000000";
                when "0001" => a2 <= "1111001";
                when "0010" => a2 <= "0100100";
                when "0011" => a2 <= "0110000";
                when "0100" => a2 <= "0011001";
                when "0101" => a2 <= "0010010";
                when "0110" => a2 <= "0000010";
                when "0111" => a2 <= "1111000";
                when "1000" => a2 <= "0000000";
                when "1001" => a2 <= "0011000";
                when others => a2 <= "1111111";
            end case; 
        end process;
Y <= a2;
               
end Behavioral;
