

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity traffic_lights is
generic(        
            timeGR : integer :=10000000;
            timeYR : integer :=1000000;
            timeRG : integer :=7000000;
            timeRY : integer :=1000000
           
            );
  Port (
        clk : in std_logic;
        reset: in std_logic;
        leds_1: out std_logic_vector(2 downto 0);
        leds_2: out std_logic_vector(2 downto 0);
        counter : out integer range 0 to 10000000
        
   );
end traffic_lights;

architecture Behavioral of traffic_lights is
signal counter_signal : integer range 0 to 10000000;
signal leds_signal_1 : std_logic_vector(2 downto 0):=(others=>'0');
signal leds_signal_2 : std_logic_vector(2 downto 0):=(others=>'0');

type durum is (GR,YR,RG,RY);
signal state : durum; 
signal flag_1: std_logic;
signal flag_2: std_logic;
signal flag_3: std_logic;
signal flag_4: std_logic;
begin
process(clk,reset)
begin
    if(reset='1')then
        state<=GR;
        leds_signal_1<=(others => '0');
        leds_signal_2<=(others => '0');
    elsif(rising_edge(clk)) then
        case state is 
            when GR=>
              if(counter_signal>=timeGR) then
              counter_signal<=0;
              flag_1<='1';
              state<=YR;
              else 
                counter_signal<= counter_signal+1;
                flag_1<='0';
              end if;  
              if(flag_1='1') then
                leds_signal_1<="001";
                leds_signal_2<="100";
              end if;
                   
             when YR=>
              if(counter_signal>=timeYR) then
              counter_signal<=0;
              flag_2<='1';
              state<=RG; 
              else
                counter_signal<=counter_signal+1;
                flag_2<='0';
               end if; 
               if(flag_2='1') then
               leds_signal_1<="010";
               leds_signal_2<="100";  
               end if;
            
            when RG=>   
              if(counter_signal>=timeRG)then
              counter_signal<=0;
              flag_3<='1';
               state<=RY;
              else
               counter_signal<=counter_signal+1;
                flag_3<='0';
              end if;
              if(flag_3='1') then
                leds_signal_1<="100";
                leds_signal_2<="001";
              end if;
            
             when RY=>
                if(counter_signal>=timeRY) then
                 counter_signal<=0;
                 flag_4<='1';
                 state<=GR;
               else    
                counter_signal<=counter_signal+1;
                 flag_4<='0';
                end if;
                if(flag_4='1') then
                 leds_signal_1<="100";
                 leds_signal_2<="010";
              end if;
            when others=>
                state<=GR;
        end case;
    end if;
end process;
    counter<=counter_signal;
    leds_1<=leds_signal_1;
    leds_2<=leds_signal_2;
end Behavioral;
