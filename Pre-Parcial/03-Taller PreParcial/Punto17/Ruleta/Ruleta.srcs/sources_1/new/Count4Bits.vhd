library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Eliminamos STD_LOGIC_UNSIGNED

entity Count4Bits is
    Port (
        UP : in STD_LOGIC;
        X  : in STD_LOGIC;
        I2 : in STD_LOGIC_VECTOR (1 downto 0);
        I4 : in STD_LOGIC_VECTOR (3 downto 0);
        O  : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Count4Bits;

architecture Behavioral of Count4Bits is
    signal count : std_logic_vector(3 downto 0) := "0000";
    signal aux   : std_logic;
    signal vueltas : std_logic_vector(1 downto 0) := "00";
begin
    process(UP, X)
    begin 
        if falling_edge(X) then
            aux <= '1';   
        end if;
        
        if rising_edge(UP) and (aux = '1') then 
            count <= std_logic_vector(unsigned(count) + 1); -- Usando 'unsigned' para la suma
            if unsigned(count) = 15 then  -- Convertimos 'count' a unsigned para la comparación
                vueltas <= std_logic_vector(unsigned(vueltas) + 1); 
            end if;
            
            if (count = I4) and (vueltas = I2) then 
                aux <= '0';
            end if;
        end if; 
    end process;
        
    O <= count;      

end Behavioral;
