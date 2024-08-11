----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.08.2024 14:04:21
-- Design Name: 
-- Module Name: Quiz1 - Behavioral
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

entity Quiz1 is
    Port ( B : in STD_LOGIC_VECTOR (1 downto 0); --Compuertas
           S : in STD_LOGIC_VECTOR (2 downto 0); --Sensores
           LED : out STD_LOGIC_VECTOR (1 downto 0); --Semaforo
           seg : out STD_LOGIC_VECTOR (6 downto 0)); --7 segmentos
end Quiz1;

architecture Behavioral of Quiz1 is
    
begin
    Process (B,S)
        begin
        Led <= "10"; --Semaforo en Verde
        Seg <= "1000000";
        if B = "11" then
            Led <= "01"; --Semaforo en Rojo
            case (S) is 
                when "100" => Seg <= "1111001";
                when "010" => Seg <= "1000000";
                when "001" => Seg <= "0100100";                     
                when others => Seg <= "1000000";
            end case;
         end if;
        end process;      
    
end Behavioral;
