

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity debounce is
generic(
    clkfreq: integer := 100_000_000;
    debouncetime:integer :=1000;
    initval : integer :=0
       );
port(  
clk : in std_logic;
signal_i : in std_logic;
signal_o : out std_logic
       );
end debounce;

architecture Behavioral of debounce is
constant timerlim : integer := clkfreq/debouncetime;
signal timer : integer range 0 to timerlim :=0;
signal timer_enable : std_logic:='0';
signal timer_flag : std_logic:='0';
type states is (IDLE, ZERO, ZEROTOONE, ONE, ONETOZERO);
signal durum : states :=IDLE;
begin
process(clk)begin
if(rising_edge(clk))then
 case durum is
 when IDLE=> 
    if(initval=0)then 
        durum<=ZERO;
    else 
        durum<=ONE;
    end if;
 when ZERO=>
    signal_o<='0';
    if(signal_i='1')then 
        durum<= ZEROTOONE;
    end if;
 when ZEROTOONE=>
    signal_o<='0';
    timer_enable <='1';
    if(timer_flag='1')then
        durum <=ONE;
        timer_enable<='0';
    end if;
    if(signal_i='0')then
        durum<= ZERO;
        timer_enable<='0';
    end if;
 when ONE=>
    signal_o<='1';
    if(signal_i='0')then
        durum<= ONETOZERO; 
    end if;
 when ONETOZERO=>
    signal_o<='1';
    timer_enable<= '1';
    if(timer_flag='1')then 
        durum<=ZERO;
        timer_enable<='0';
    end if;
    if(signal_i='1')then
        durum<= ONE;
        timer_enable<='0'; 
    end if;
 end case; 
end if;
end process;
timer_process : process(clk)
begin
if(rising_edge(clk))then
    if(timer_enable='1')then
        if(timer=timerlim-1)then
         timer_flag<='1';
         timer <=0;
        else
        timer_flag<='0';
        timer<=timer+1;
        end if;
    else
        timer<=0;
        timer_flag<='0';
    end if;
end if;
end process;
end Behavioral;
