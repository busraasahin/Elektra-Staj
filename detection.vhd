
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity detection is
Port (

clk : in std_logic;
reset : in std_logic;
datain : in std_logic;
dataout : out std_logic
 );
end detection;

architecture Behavioral of detection is
type durum is (s1, s2, s3, s4, s5, s6, s7, s8);
signal state : durum;
begin
process (clk,reset) 
begin 
if(reset='1')then
    state<= s1;
    dataout<='0';
elsif(rising_edge(clk)) then --1101011
     case state is
        when s1 => 
            dataout<= '0';
            if (datain='1') then            --1
                state <= s2;
            else                            --0
                state <= s1;
            end if;
                        
        when s2 => --1--     
            dataout<='0';
            if(datain='1') then            --11
                state<= s3;
            else                           --10 
                state<=s1;
            end if;
            
        
        when s3 =>--11-
            dataout <= '0';
            if(datain='0') then           --110
                state<= s4;
            else                          --111 
                state <= s3; 
            end if;
            
        when s4 => --110--
            dataout<='0';
            if (datain='1')then           --1101
                state <=s5;
            else                          --1100
                state <= s1;
            end if;
            
        when s5 => --1101--              
            dataout<='0';
            if(datain='0')then            --11010
                state<= s6;
            else                          --11011
                state<=s3;
            end if;
            
        when s6 => --11010--              
            dataout<='0';
            if(datain='1')then             --110101
                state <= s7; 
            else                           --110100
                state <= s1;
            end if;
            
        when s7 => --110101--              
            dataout<= '0';
            if(datain='1') then           --1101011
                state<=s8;
            else                          --1101010
                state<=s1;
            end if;
            
        when s8 => --1101011-   
             dataout<='1';
            if(datain='1')then
                state<=s3;
            else 
                state<=s1;
            end if;
        when others =>
                state <= s1;
     end case;
end if; 

end process;
end Behavioral;
