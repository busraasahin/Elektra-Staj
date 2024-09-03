

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;
entity pwm_duty is
 Port (
        clk: in std_logic;
        duty : in std_logic_vector(3 downto 0);
        pwm_out : out std_logic
        
  );
end pwm_duty;

architecture Behavioral of pwm_duty is
signal counter : std_logic_vector(3 downto 0):="0000";
signal duty_cycle : integer range 0 to 15 ;
begin
process(clk)
begin
if(rising_edge(clk)) then
     duty_cycle<=to_integer(unsigned(duty))*100/15;
     if(counter<"1111")then
        counter<=counter+1;
     else 
        counter<="0000";
     end if;
     if(unsigned(counter)< duty_cycle)then 
        pwm_out<='1';
     else 
        pwm_out<='0';
     end if;
end if;
end process;

end Behavioral;
