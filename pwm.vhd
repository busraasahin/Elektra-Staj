
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
entity pwm is
Port (      
            clk  : in std_logic;
            reset: in std_logic;
            pwm_out : out std_logic
            );
end pwm;

architecture Behavioral of pwm is
signal counter : std_logic_vector(7 downto 0);
begin
process(clk,reset)
begin
    if(reset='1')then
        counter<=(others => '0'); 
    elsif (rising_edge(clk)) then
        if(counter<99) then
            counter<=counter+1;
        else 
            counter<=(others=>'0');
        end if;
    end if;
end process;
pwm_out<='1' when counter<20 else '0';
end Behavioral;
