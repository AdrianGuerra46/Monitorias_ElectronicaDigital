

library IEEE; -- Libreria Standar IEEE
use IEEE.STD_LOGIC_1164.ALL; -- Prmite usar "stg_logic" y "stg_logic_vector"
use IEEE.NUMERIC_STD.ALL; -- Tipos de datos signed y unsigned 
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- Operaciones aritmeticas con vectores lógicos

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP is
    Port ( R100 : in STD_LOGIC;
           Button : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (15 downto 0));
end TOP;

architecture Behavioral of TOP is

component Relojes is
    Port ( RBasys : in STD_LOGIC;
           OR1 : out STD_LOGIC;
           OR2 : out STD_LOGIC);
end component;

component Aleatorio is
    Port ( B : in STD_LOGIC;
           Rel: in STD_LOGIC;
           O2 : out STD_LOGIC_VECTOR (1 downto 0);
           O4 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Count4Bits is
    Port ( UP : in STD_LOGIC;
           X : in STD_LOGIC;
           I2: in STD_LOGIC_VECTOR (1 downto 0);
           I4: in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Deco4_16 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Q2 : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal a1 :std_logic_vector (1 downto 0); --Primer Aleatorio (2bits)
signal a2 :std_logic_vector (3 downto 0); --Segundo Aleatorio (4bits)
signal a3 :std_logic_vector (3 downto 0); --Salida Count4Bits
signal ro1 :std_logic; -- Reloj 10KHz
signal ro2 : std_logic; -- Reloj 20 Hz

begin

B1: relojes PORT MAP(R100,ro1,ro2);
B2: Aleatorio PORT MAP(Button, ro1, a1,a2);
B3: Count4Bits PORT MAP(ro2,Button, a1, a2, a3);
B4: Deco4_16 PORT MAP(a3,LED);
end Behavioral;
