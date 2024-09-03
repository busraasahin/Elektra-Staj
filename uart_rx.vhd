
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity uart_rx is
generic(
        clkfreq  : integer := 100_000_000;
        baudrate : integer := 115_200
        );
port (
        reset : in std_logic;
        clk  : in std_logic;
        rx_in : in std_logic;
        data_out : out std_logic_vector(7 downto 0);
        rx_start_in : in std_logic
);
end uart_rx;

architecture Behavioral of uart_rx is
constant bit_suresi : integer := clkfreq/baudrate; 

type states is (IDLE, START, DATA, STOP);
signal durum : states := IDLE;
signal timer: integer range 0 to bit_suresi*3/2 := 0;
signal counter : integer range 0 to 7 :=0;
signal shreg : std_logic_vector(7 downto 0):= (others=>'0');
begin
P_MAIN : process (clk,reset)begin
if(reset='1')then
        shreg<=(others=>'0');
        timer<=0;
        counter<=0;
        durum<=IDLE;   
      
elsif(rising_edge(clk))then
    case durum is 
        when IDLE =>
            timer<=0;
            counter<=0;
         if(rx_start_in='1')then
            if(rx_in='0')then --start biti algilandi
                durum<= START;
            else
                durum<=IDLE;
            end if;
         else
                durum<= IDLE;
         end if;
        when START =>
            if(timer =bit_suresi/2-1)then
                durum<= DATA;
                timer<=0;
            else
                timer<=timer+1;
                durum<=START;
            end if;
        
        when DATA => --t kadar sure beklenir, gelen veri orneklenir
          
            if(timer=bit_suresi-1)then
              if(counter=7)then
                counter<=0;
                durum<=STOP;
              else 
                counter<=counter+1;
                durum<=DATA;
              end if;
                shreg<=rx_in & (shreg(7 downto 1));
                timer<=0;
            else 
                timer<=timer+1;
                durum<=DATA;
            end if;
           
        when STOP =>
            if(timer =bit_suresi-1)then
                durum<= IDLE;
                timer<=0;
              
            else
                timer<=timer+1;
                durum<=STOP;
            end if;
    end case;
end if;
end process;
data_out<=shreg; 

end Behavioral;
