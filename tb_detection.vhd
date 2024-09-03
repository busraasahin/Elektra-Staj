
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.ALL;

entity tb_detection is
end tb_detection;

architecture Behavioral of tb_detection is
component detection
    port(
            clk : in std_logic;
            rst : in std_logic;
            datain : in std_logic;
            dataout : out std_logic
    );
end component;
signal clk : std_logic   :='0';
signal rst : std_logic   :='0';
signal datain: std_logic :='0';
signal dataout:std_logic;
begin
UUT: detection 
    port map(   
                clk => clk,
                rst => rst,
                datain => datain,
                dataout =>dataout
                );
                
clk_process: process 
begin
    clk<='0';
    wait for 5 ns;
    clk<='1';
    wait for 5 ns; 
end process;

stim_process: process
begin 
    rst <= '1';
    wait for 10 ns;
    rst <= '0';
    
    datain<='1';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
   
   
       datain<='1';
    wait for 10 ns;    datain<='1';
    wait for 10 ns;    datain<='1';
    wait for 10 ns;    datain<='1';
    wait for 10 ns;    datain<='1';
    wait for 10 ns;    datain<='1';
    wait for 10 ns; 
    datain<='0';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='0';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='0';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='0';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='0';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
    
    datain<='1';
    wait for 10 ns;
 wait;
end process;
end Behavioral;
