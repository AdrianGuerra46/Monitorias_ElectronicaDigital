

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity TOP is
    Port ( reloj_i : in STD_LOGIC;
           M_100 : in STD_LOGIC;
           M_200 : in STD_LOGIC;
           Reinicio : in STD_LOGIC;
           E2 : out STD_LOGIC;
           E1 : out STD_LOGIC;
           E0 : out STD_LOGIC;
           Ticket : out STD_LOGIC;

           Dvuelta : out STD_LOGIC);
end TOP;

architecture Behavioral of TOP is
component Reloj is
    Port ( IR100 : in STD_LOGIC;
           OR1 : out STD_LOGIC);
end component; 

component state_machine is
    Port ( Rst : in STD_LOGIC;
           Reloj : in STD_LOGIC;
           B : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC);
end component;

signal aux1 : std_logic;
begin

    B1: reloj PORT MAP (reloj_i, aux1);
    B2: state_machine PORT MAP ();

end Behavioral; 
