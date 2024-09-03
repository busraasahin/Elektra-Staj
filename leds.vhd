

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity leds is
generic(   
             timer_counter_max : integer :=100000000 --100 ms için
            
            );
Port (
         clk : in std_logic;    
         reset : in std_logic;
         counter : out std_logic_vector(7 downto 0)
        );
end leds;


architecture Behavioral of leds is

signal timer_counter : integer range 0 to (timer_counter_max-1):=0;

signal counter_signal : std_logic_vector(7 downto 0):=(others =>'0');

signal timer_flag:  std_logic;

begin 
   process (clk,reset)
   begin
   
    if(reset='1') then 
        counter_signal <= (others => '0');
        timer_counter  <=0;
        timer_flag<='0';
    elsif (rising_edge(clk)) then
        if(timer_counter >= timer_counter_max-2) then
            timer_counter<= 0;
            timer_flag<='1';
        else
            timer_counter <= timer_counter+1;
            timer_flag <='0';
        end if;
        if(timer_flag='1') then
            counter_signal<= counter_signal+1;
        end if;
    end if;
end process;

    counter <= counter_signal;
end Behavioral;
