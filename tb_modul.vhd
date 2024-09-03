
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tb_modul is
end tb_modul;

architecture Behavioral of tb_modul is
component modul
Port (
    clk        : in std_logic;
    data_in    : in std_logic_vector(7 downto 0);
    load       : in std_logic;
    data_out   : out std_logic
     );
end component;
signal clk : std_logic;
signal data_in : std_logic_vector(7 downto 0);
signal load : std_logic;
signal data_out  : std_logic;
begin
clock_process: process
begin
clk<='0';
wait for 10 ns;
clk<='1';
wait for 10 ns;
end process;
uut: modul 
port map(
            clk     => clk,      
            data_in => data_in,          
            load    => load,     
            data_out=> data_out 
            );
            
stim_process: process
begin

data_in <= "10101010";
load <= '1';

wait for 350 ns;

data_in <= "11110000";
load <= '1';
wait for 350 ns;

end process;            
end Behavioral;
