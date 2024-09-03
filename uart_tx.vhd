
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_tx is
generic(
        clkfreq  : integer := 100_000_000;
        baudrate : integer := 115_200;
        stopbit  : integer := 2
        );
port(
        clk          : in std_logic;
        reset        : in std_logic;
        tx_start_in  : in std_logic;
        data_in      : in std_logic_vector(7 downto 0);
        tx_out       : out std_logic;
        tx_done      : out std_logic
        );
end uart_tx;

architecture Behavioral of uart_tx is
constant bit_suresi : integer := clkfreq/baudrate; 
constant stop_bit_suresi : integer := (clkfreq/baudrate)*stopbit;
constant timerlim : integer := 20000000;
type states is (IDLE, START, DATA, STOP);
signal durum : states := IDLE;
signal timer: integer range 0 to stop_bit_suresi := 0;
signal counter : integer range 0 to 7 :=0;
signal shreg : std_logic_vector(7 downto 0):=(others=>'0');
signal sayac : integer range 0 to timerlim :=0;
signal tx_flag_in : std_logic:='0';

begin
MAIN : process(clk) begin
if (rising_edge(clk))then 
    if(tx_start_in='1')then
    tx_flag_in<='1';
    end if;
    if(tx_flag_in='1')then
     case durum is 
        when IDLE =>
        tx_out <='1';
        tx_done<='0';
        counter<=0;
        if(sayac=timerlim-1)then
            if(tx_start_in ='1') then 
                durum <= START ;
                tx_out <= '0';
                shreg <= data_in; --data_indeki veriler iceriye bufferlanir.
                sayac<=0;
            else 
                durum<=IDLE;
            end if;
        else    
            sayac<=sayac+1;
        end if;    
        when START => 
            if(timer=bit_suresi-1) then -- baslangicta 1/baudrate kadar beklenir
                durum<= DATA;
                tx_out<=shreg(0);
                shreg(7)<=shreg(0);
                shreg(6 downto 0)<= shreg(7 downto 1);
                timer<=0;
            else 
                timer <= timer+1;
            end if; 
        when DATA=> 
            if(counter=7) then -- 8 bit gonderildi
                if(timer=bit_suresi-1) then
                    counter<=0;
                    durum<=STOP;
                    tx_out<='1';
                    timer <=0;
                else 
                    timer<= timer+1;
                end if;
            else -- 8 bit burada gonderilir
                if(timer=bit_suresi-1)then
                    shreg(7)<=shreg(0);
                    shreg(6 downto 0)<= shreg(7 downto 1);
                    tx_out<= shreg(0);
                    counter <=counter+1;
                    timer<=0;
                else
                    timer<=timer+1;
                end if;
            end if;
       when STOP =>
            if(timer=stop_bit_suresi-1)then --stop biti beklenir sonra ýdle ye donulur.
                durum<=IDLE;
                tx_done<= '1';
                timer<=0;
            else 
                timer <=timer+1;
            end if;
     end case;
    end if;
if(reset='1')then
shreg<=(others=>'0');
end if;
end if;
end process;

end Behavioral;
