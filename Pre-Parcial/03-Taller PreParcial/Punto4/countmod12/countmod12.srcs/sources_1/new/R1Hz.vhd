----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.08.2024 19:49:54
-- Design Name: 
-- Module Name: R1Hz - Behavioral
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

entity R1Hz is
    Port ( RBasys : in STD_LOGIC;
           R1Hz : out STD_LOGIC);
end R1Hz;

architecture Behavioral of R1Hz is
signal x: std_logic;
signal t: integer range 0 to 100000000;
begin
process (RBasys)
    begin
        if rising_edge (RBasys) then
            t<=t+1;
            if (t=49999999)then
            t<=0;
            x<=not(x);
           end if;
           end if;
           end process;
R1Hz<=x;

end Behavioral;