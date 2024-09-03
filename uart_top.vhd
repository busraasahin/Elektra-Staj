

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity uart_top is
generic(
        clkfreq  : integer := 100_000_000;
        baudrate : integer := 115_200;
        stopbit  : integer := 2
        );
port(   
        clk          : in std_logic;
        reset        : in std_logic;
        tx_start_in  : in std_logic;
        data_in      : in std_logic_vector(7 downto 0); --dip switchs
        rx_in        : in std_logic;
        rx_start_in : in std_logic;
        
        data_out     : out std_logic_vector(7 downto 0); --leds
        tx_out      : out std_logic
        
        );
end uart_top;

architecture Behavioral of uart_top is
component uart_tx is 
generic (
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
end component;
component uart_rx is 
generic(
        clkfreq  : integer := 100_000_000;
        baudrate : integer := 115_200

        );
port (
        
        clk         : in std_logic;
        reset       : in std_logic;
        rx_in       : in std_logic;
        data_out    : out std_logic_vector(7 downto 0);
        rx_start_in : in std_logic
);
end component;
signal tx_done : std_logic := '0';

signal tx_start_in_sig : std_logic := '0';
signal rx_start_in_sig : std_logic := '0';

begin
instance_uart_rx: uart_rx
generic map(
       clkfreq  =>clkfreq, 
       baudrate =>baudrate 
       )
port map(
        clk          => clk,
        reset        => reset,
        rx_in        => rx_in,
        data_out     => data_out,
        rx_start_in  => rx_start_in_sig
            );
instance_uart_tx: uart_tx
generic map(
             clkfreq => clkfreq,
             baudrate=> baudrate,
             stopbit => stopbit
             )
port map(
            clk          => clk,
            reset        =>reset,
            tx_start_in  =>tx_start_in_sig,
            data_in      => data_in,
            tx_out       => tx_out,
            tx_done      => tx_done
            );
 process(clk,reset)
 begin
    if(reset='1')then
        tx_done<='0';
--        rx_done<='0';
        tx_start_in_sig <= '0';
        rx_start_in_sig <= '0';
    elsif(rising_edge(clk))then
        if (tx_start_in = '1')then
                tx_start_in_sig <= '1';
            
        else
                tx_start_in_sig <= '0';
        end if;

        if (rx_start_in = '1') then
            rx_start_in_sig <= '1';
        else
            rx_start_in_sig <= '0';
        end if;
    end if;
 end process;

end Behavioral;
