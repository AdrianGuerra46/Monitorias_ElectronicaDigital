----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2023 21:17:36
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity TOP is
    Port (
        button : in std_logic;
        reloj : in std_logic;
        LED : out std_logic_vector (15 downto 0)        
     );
end TOP;

architecture Behavioral of TOP is

component relojes is
    Port ( IR100 : in STD_LOGIC;
           OR1 : out STD_LOGIC;
           OR2 : out STD_LOGIC);
end component;

component contador8bits is
    Port ( UP : in STD_LOGIC;
           re: in std_logic;
           DOWN : in std_logic;          
           O : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Contador4Bits is
    Port ( UP : in STD_LOGIC;
           A : in std_logic_vector (7 downto 0);
           Q1 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Deco4_16 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Q2 : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal r_1,r_2 : std_logic;
signal b8: std_logic_vector (7 downto 0);
signal b4: std_logic_vector (3 downto 0);

begin

r: relojes PORT MAP (reloj,r_1,r_2);
c8: contador8bits PORT MAP (button,r_1,r_2,b8);
c4: Contador4Bits PORT MAP (r_2,b8,b4);
deco: Deco4_16 PORT MAP (b4,LED);

end Behavioral;
