
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity tb_leds is
end tb_leds;

architecture Behavioral of tb_leds is


component leds 
generic(   
             timer_counter_max : integer :=2500000 --100 ms için
            
            );
Port (
         clk : in std_logic;    
         reset : in std_logic;
         counter : out std_logic_vector(7 downto 0)
        );
end component;
signal clk : std_logic:='0';
signal reset: std_logic:='0';
signal counter : std_logic_vector(7 downto 0);


begin
dut: leds 
generic map(
        timer_counter_max => 2500000
            )
port map(
          
            clk => clk,
            reset=> reset,
            counter=>counter
            );

clock_process: process
begin
    clk<='0';
    wait for 20 ns;
    clk<='1';
    wait for 20 ns;
end process;
reset_process: process
begin
    reset <='1';
    wait for 5 ns;
    reset <='0';
    wait ;
end process;


end Behavioral;
