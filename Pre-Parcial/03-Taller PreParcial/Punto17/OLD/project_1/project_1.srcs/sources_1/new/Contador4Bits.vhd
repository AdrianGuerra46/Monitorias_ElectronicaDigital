----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2023 21:00:02
-- Design Name: 
-- Module Name: Contador4Bits - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contador4Bits is
    Port ( UP : in STD_LOGIC;
           A : in std_logic_vector (7 downto 0);
           Q1 : out STD_LOGIC_VECTOR (3 downto 0));
end Contador4Bits;

architecture Behavioral of Contador4Bits is
signal cont1 : std_logic_vector (3 downto 0);
begin
     process (UP)
        begin
        
            if (rising_edge (UP) and A /= "00000000") then
                cont1 <= cont1 + 1;
            
            end if;
    end process;
Q1 <= cont1;


end Behavioral;
