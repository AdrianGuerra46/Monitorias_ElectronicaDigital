----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2023 19:28:04
-- Design Name: 
-- Module Name: contador8bits - Behavioral
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

entity contador8bits is
    Port ( UP : in STD_LOGIC;
           re: in std_logic;
           DOWN : in std_logic;
           O : out STD_LOGIC_VECTOR (7 downto 0));
end contador8bits;

architecture Behavioral of contador8bits is

signal cont: std_logic_vector (7 downto 0) := "00000000";
begin

    process (re)
        begin
        
            if (rising_edge (re) and UP = '1' and DOWN = '0') then
                cont <= cont + 1;
            end if;
            if ( DOWN = '1' and cont /= "00000000" and UP = '0') then
                cont <= cont - 1;
            end if;
        
    end process;
    
O <= cont;

end Behavioral;
