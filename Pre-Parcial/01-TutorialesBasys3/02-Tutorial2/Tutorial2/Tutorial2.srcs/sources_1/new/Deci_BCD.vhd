----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2024 12:53:14
-- Design Name: 
-- Module Name: Deci_BCD - Behavioral
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

entity Deci_BCD is
    Port ( I : in STD_LOGIC_VECTOR (8 downto 0);
           P : out STD_LOGIC_VECTOR (3 downto 0));
end Deci_BCD;

architecture Behavioral of Deci_BCD is
    signal al : std_logic_vector (3 downto 0);

begin
    Process (I)
        begin
            Case (I) is 
                when "000000000" => al <= "0000";
                when "000000001" => al <= "0001";
                when "000000010" => al <= "0010";
                when "000000100" => al <= "0011";
                when "000001000" => al <= "0100";
                when "000010000" => al <= "0101";
                when "000100000" => al <= "0110";
                when "001000000" => al <= "0111";
                when "010000000" => al <= "0111";
                when "100000000" => al <= "0111";
                when others => al <= "1111";
            end case;
        end process;          

P <= al; 
end Behavioral;
