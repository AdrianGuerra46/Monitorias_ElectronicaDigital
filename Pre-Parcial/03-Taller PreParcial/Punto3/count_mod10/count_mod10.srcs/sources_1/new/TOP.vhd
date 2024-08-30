
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity TOP is
    Port ( RBasys : in STD_LOGIC;
           Up : in STD_LOGIC;
           Down : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0));
end TOP;


architecture Behavioral of TOP is

component Reloj_1Hz is
    Port ( RBasys : in STD_LOGIC;
           R1Hz : out STD_LOGIC);
end component;

component CountMod10 is
    Port ( R1 : in STD_LOGIC;
           U : in STD_LOGIC;
           D : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal aux :std_logic; --auxiliar

begin 

B1: Reloj_1Hz PORT MAP(RBasys,aux);
B2: CountMod10 PORT MAP(aux, Up, Down,LED);

end Behavioral;
