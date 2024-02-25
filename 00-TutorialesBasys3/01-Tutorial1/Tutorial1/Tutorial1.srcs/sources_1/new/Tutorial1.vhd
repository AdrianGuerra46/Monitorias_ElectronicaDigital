----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2024 12:44:24
-- Design Name: 
-- Module Name: Tutorial1 - Behavioral
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

entity Tutorial1 is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           Ao : out STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           Bo : out STD_LOGIC;
           C1 : in STD_LOGIC;
           Co : out STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           Do : out STD_LOGIC;
           E1 : in STD_LOGIC;
           E2 : in STD_LOGIC;
           Eo : out STD_LOGIC;
           F1 : in STD_LOGIC;
           F2 : in STD_LOGIC;
           Fo : out STD_LOGIC;
           G1 : in STD_LOGIC;
           G2 : in STD_LOGIC;
           Go : out STD_LOGIC);
end Tutorial1;

architecture Behavioral of Tutorial1 is

begin

    Ao <= A1 AND A2;
    Bo <= B1 OR B2;
    Co <= NOT(C1);
    Do <= D1 NAND D2;
    Eo <= E1 NOR E2;
    Fo <= F1 XOR F2;
    Go <= G1 XNOR G2;
   

end Behavioral;
