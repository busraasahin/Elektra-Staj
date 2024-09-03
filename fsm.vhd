

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity fsm is
Port (
        a_in : in std_logic;
        b_in : in std_logic;
        d_in : in std_logic;
        clk  : in std_logic;
        reset  : in std_logic;
        x_out: out std_logic;
        led_out: out std_logic_vector(5 downto 0)
             );
end fsm;

architecture Behavioral of fsm is
type durum is (A_state, B_State);
signal state : durum;

begin
process (clk, reset)
begin
        if(reset='1') then 
            state<=A_state;
        elsif (rising_edge(clk)) then    
            case state is
            when A_state =>
               led_out(0)<='1';
               led_out(1)<='0';
               led_out(2)<='0';
               led_out(3)<='0';
               led_out(4)<='0';
               led_out(5)<='0';
               x_out <= a_in;
               if(a_in='1')then
               led_out(0)<='0';
               led_out(1)<='0';
               led_out(2)<='1';
               led_out(3)<='0';
               led_out(4)<='0';
               led_out(5)<='0';
               end if;
                if(d_in='1')then 
                 led_out(0)<='0';
                 led_out(1)<='0';
                 led_out(2)<='0';
                 led_out(3)<='0';
                 led_out(4)<='1';
                 led_out(5)<='0';
                 state<=B_state;
                else
                 led_out(0)<='0';
                 led_out(1)<='0';
                 led_out(2)<='0';
                 led_out(3)<='0';
                 led_out(4)<='0';
                 led_out(5)<='1';
                    state<=A_state;
                end if;
            when B_state => 
                 led_out(0)<='0';
                 led_out(1)<='1';
                 led_out(2)<='0';
                 led_out(3)<='0';
                 led_out(4)<='0';
                 led_out(5)<='0';
                 x_out <=b_in;
               if(b_in='1')then 
                 led_out(0)<='0';
                 led_out(1)<='0';
                 led_out(2)<='0';
                 led_out(3)<='1';
                 led_out(4)<='0';
                 led_out(5)<='0';
               end if;
                if(d_in='1') then
                 led_out(0)<='0';
                 led_out(1)<='0';
                 led_out(2)<='0';
                 led_out(3)<='0';
                 led_out(4)<='1';
                 led_out(5)<='0';
                 state<=A_state;
                else 
                 led_out(0)<='0';
                 led_out(1)<='0';
                 led_out(2)<='0';
                 led_out(3)<='0';
                 led_out(4)<='0';
                 led_out(5)<='1';
                 state<=B_state;
                end if;
            end case;
        else 
        end if;
    
end process;

end Behavioral;
