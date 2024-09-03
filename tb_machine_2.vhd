
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_machine is
end tb_machine;

architecture Behavioral of tb_machine is
component machine is
Port ( 
        clk : in std_logic;
        rst : in std_logic;
        para_in: in std_logic;
        para : in std_logic_vector(4 downto 0); 
        urun_hazir: out std_logic;
        para_ustu_out: out std_logic
         );
end component;
signal clk         : std_logic;
signal rst          : std_logic;
signal para_in      : std_logic;
signal para         : std_logic_vector(4 downto 0); 
signal urun_hazir   : std_logic;
signal para_ustu_out: std_logic;
begin
clock_process: process 
begin
clk<='0';
wait for 10 ns;
clk<='1';
wait for 10 ns;
end process;
uut: machine 
port map(
         clk                    =>    clk,
         rst                    =>    rst,
         para_in                =>    para_in ,     
         para                   =>    para,         
         urun_hazir             =>    urun_hazir,   
         para_ustu_out          =>    para_ustu_out
        );
stim_process: process
    begin 
    rst<='1';
    para_in<='0';
    para <=(others=>'0');
    wait for 100 ns;
    rst<='0';
    wait for 20 ns;
    
    para_in<='1';
    para<="00001";
    wait for 20 ns;
    
    para<="00101";
    wait for 20 ns;
    para<="01010";
    wait for 20 ns;
    para_in<='0';
    wait for 20 ns;
    wait;
end process;
end Behavioral;
