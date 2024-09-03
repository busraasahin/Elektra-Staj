

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_carpma_8_bit is
end tb_carpma_8_bit;

architecture Behavioral of tb_carpma_8_bit is
component carpma_8bit
port (
        clk    : in std_logic;
        reset  : in std_logic;
        start  : in std_logic;
   
        a_in   : in std_logic_vector(7 downto 0);
        b_in   : in std_logic_vector(7 downto 0);
        product: out std_logic_vector(15 downto 0)
        );
end component;
signal clk    : std_logic;
signal start  : std_logic;
signal a_in   : std_logic_vector(7 downto 0);
signal b_in   : std_logic_vector(7 downto 0);
signal product: std_logic_vector(15 downto 0);
signal reset: std_logic;

begin
dut : carpma_8bit
port map(       
            clk      =>  clk,   
            start    =>  start, 
            a_in     =>  a_in,
            b_in     =>  b_in,
            product  =>  product,
            reset   =>  reset
        
            );
clk_process: process
begin
clk<='0';
wait for 2 ns;
clk<='1';
wait for 2 ns;
end process;
stim_process: process
begin
   
--        start <= '0';
--        a_in <= (others => '0');
--        b_in <= (others => '0');
--        wait for 20 ns;
        
        start <= '1';
        a_in <= "11010111";
        b_in <= "11111111";
        wait for 20 ns;
     
        start <= '1';
        a_in <= "10110100";
        b_in <= "10111111";
        wait for 20 ns;
        
        start <= '1';
        a_in <= "11111111";
        b_in <= "11111111";
        wait for 20 ns;
        
        
        

end process;
end Behavioral;

