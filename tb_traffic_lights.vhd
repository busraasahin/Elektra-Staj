
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity tb_traffic_lights is
end tb_traffic_lights;

architecture Behavioral of tb_traffic_lights is
component traffic_lights
generic(        
            timeGR : integer :=10000000;
            timeYR : integer := 1000000;
            timeRG : integer :=7000000;
            timeRY : integer := 1000000
           
            );
  Port (
        clk : in std_logic;
        reset: in std_logic;
        leds_1: out std_logic_vector(2 downto 0);
        leds_2: out std_logic_vector(2 downto 0);
        counter : out integer range 0 to 10000000
   );
end component;
signal clk: std_logic;
signal reset: std_logic; 
signal leds_1: std_logic_vector(2 downto 0);
signal leds_2: std_logic_vector(2 downto 0);
signal counter : integer range 0 to 10000000;
begin
DUT: traffic_lights
generic map(
            timeGR => 10000000,
            timeYR => 1000000,
            timeRG => 7000000,
            timeRY => 1000000
            )
port map(
          clk=> clk,
          reset=>reset,
          leds_1=>leds_1,
          leds_2=>leds_2,
          counter=>counter
            );
clock_process: process
begin
            clk <= '0';
            wait for 20 ns;
            clk <= '1';
            wait for 20 ns;
end process;
stim_process: process
begin 
            reset <= '1';
            wait for 5 ns;
            reset <= '0';
            wait ;
end process;

end Behavioral;
