

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity state_machine is
    Port ( Rst : in STD_LOGIC;
           Reloj : in STD_LOGIC;
           B : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC);
end state_machine;

architecture Behavioral of state_machine is
Type estado is (cero, uno, dos, tres, cuatro, cinco, seis);
signal actual : estado := cero;

begin

Maquina: 
    process (Reloj, Rst)
        begin 
            if (Rst = '1') then
                actual <= cero;
                
            elsif rising_edge (Reloj) then     --flanco ascendete 
                case (actual) is
                    when cero => if (B = "0000") then 
                                    actual <= cero;
                                 end if; 
                                 if (B = "1000") then 
                                    actual <= uno;
                                 end if;
                                 if (B = "0100") then 
                                    actual <= cuatro; 
                                 end if;
                                 if (B = "0010") then 
                                    actual <= cuatro; 
                                 end if;
                                 if (B = "0001") then 
                                    actual <= cuatro; 
                                 end if;
                    when uno => if (B = "0000") then 
                                    actual <= uno; 
                                end if; 
                                if (B = "0010") then 
                                    actual <= dos;
                                end if;
                                if (B = "1000") then 
                                    actual <= cinco; 
                                end if;
                                if (B = "0100") then 
                                    actual <= cinco; 
                                end if;
                                if (B = "0001") then 
                                    actual <= cinco; 
                                end if;
                    when dos => if (B = "0000") then 
                                    actual <= dos; 
                                end if; 

                    when tres => if (B = "0000") then 
                                    actual <= cero; 
                                 end if; 
                    when cuatro => if (B = "0000") then 
                                      actual <= cuatro; 
                                   end if;    
                    when cinco => if (B = "0000") then 
                                      actual <= cinco; 
                                   end if; 
                    when seis => if (B = "0000") then 
                                      actual <= cero; 
                                   end if;
                                                  
                end case; 
             end if;
          
          
end process Maquina;     

Salidas:

    process (actual) 
        begin
        case (actual) is  
            
        when cero => C <= '0';
                     LED <= "000000000";
                     
        when uno => C <= '0';
                     LED <= "000000000";

                     
        when dos => C <= '0';
                     LED <= "000000000";
                     
        when tres => C <= '0';
                     LED <= "000000000";  
                            
        when cuatro => C <= '0';
                     LED <= "000000000";
                     
        when cinco => C <= '0';
                     LED <= "000000000";
                    
        when seis => C <= '0';
                     LED <= "000000000";
        end case; 
 end process Salidas;
        
end Behavioral; 
