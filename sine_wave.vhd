
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity sine_wave is
generic(
        deger_sayisi : integer :=32;
        max_genlik   : integer :=255
        );
Port (  
        clk: in std_logic;
        dataout : out integer range 0 to max_genlik
            );
end sine_wave;

architecture Behavioral of sine_wave is
signal i : integer range 0 to deger_sayisi :=0;
type hafiza is array (0 to deger_sayisi-1) of integer range 0 to max_genlik;
signal sinus : hafiza :=
(128,152,176,198,218,234,245,253,      
    255,253,245,234,218,198,176,152,   
    128,103,79,57,37,21,10,2,          
    0,2,10,21,37,57,79,103);
begin
process(clk)
begin
if(rising_edge(clk)) then
dataout<= sinus(i);
i<= i+1;
if(i=deger_sayisi-1) then
    i<=0;
end if;
end if;
end process;
end Behavioral;
