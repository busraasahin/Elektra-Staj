
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART is
    Generic 
    (
            BAUD_RATE               : positive;
            CLOCK_FREQUENCY         : positive;
            TX_FIFO_DEPTH           : positive;
            RX_FIFO_DEPTH           : positive
    );
    Port 
    (  -- General
            CLOCK                   :   in      std_logic;
            RESET                   :   in      std_logic;    
            TX_FIFO_DATA_IN         :   in      std_logic_vector(7 downto 0);
            TX_FIFO_DATA_IN_hazir     :   in      std_logic;
            TX_FIFO_DATA_IN_flag     :   out     std_logic;
            RX_FIFO_DATA_OUT        :   out     std_logic_vector(7 downto 0);
            RX_FIFO_DATA_OUT_hazir    :   out     std_logic;
            RX_FIFO_DATA_OUT_flag    :   in      std_logic;
            RX                      :   in      std_logic;
            TX                      :   out     std_logic
    );
end UART;

architecture RTL of UART is
    -- Component Declarations
    component UART_rx_tx is
        Generic (
                BAUD_RATE           : positive;
                CLOCK_FREQUENCY     : positive
            );
        Port (  -- General
                CLOCK100M           :   in      std_logic;
                RESET               :   in      std_logic;    
                DATA_IN      :   in      std_logic_vector(7 downto 0);
                DATA_IN_hazir  :   in      std_logic;
                DATA_IN_flag  :   out     std_logic;
                DATA_OUT     :   out     std_logic_vector(7 downto 0);
                DATA_OUT_hazir :   out     std_logic;
                DATA_OUT_flag :   in      std_logic;
                TX                  :   out     std_logic;
                RX                  :   in      std_logic
             );
    end component UART_rx_tx;
    
    component FIFO is
        generic(
            width : integer;
            depth : integer
        );
        port(  CLOCK        :   in  std_logic;
               RESET        :   in  std_logic;
               DATA_IN      :   in  std_logic_vector (width - 1 downto 0);
               DATA_OUT     :   out std_logic_vector (width - 1 downto 0);
               DATA_IN_hazir  :   in  std_logic;
               DATA_OUT_hazir :   out std_logic;
               DATA_IN_flag  :   out std_logic;
               DATA_OUT_flag :   in  std_logic
        );
    end component FIFO;

    -- FIFO signals
    signal tx_fifo_data_out         : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_fifo_data_out_hazir     : std_logic := '0';
    signal tx_fifo_data_out_flag     : std_logic := '0';
    signal rx_fifo_data_in          : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_fifo_data_in_hazir      : std_logic := '0';
    signal rx_fifo_data_in_flag      : std_logic := '0';
        
begin

    UART_inst1 : UART_rx_tx
    generic map (
            BAUD_RATE           => BAUD_RATE,
            CLOCK_FREQUENCY     => CLOCK_FREQUENCY
    )
    port map    (  -- General
            CLOCK100M           => CLOCK,
            RESET               => RESET,
            DATA_IN      => tx_fifo_data_out,
            DATA_IN_hazir  => tx_fifo_data_out_hazir,
            DATA_IN_flag  => tx_fifo_data_out_flag,
            DATA_OUT     => rx_fifo_data_in,
            DATA_OUT_hazir => rx_fifo_data_in_hazir,
            DATA_OUT_flag => rx_fifo_data_in_flag,
            TX                  => TX,
            RX                  => RX
    );
    
    TX_FIFO : FIFO generic map(
      width => 8,
      depth => TX_FIFO_DEPTH
    )
    port map(  CLOCK    =>  CLOCK,
           RESET        =>  RESET,
           DATA_IN      =>  TX_FIFO_DATA_IN,
           DATA_OUT     =>  tx_fifo_data_out,
           DATA_IN_hazir  =>  TX_FIFO_DATA_IN_hazir,
           DATA_OUT_hazir =>  tx_fifo_data_out_hazir,
           DATA_IN_flag  =>  TX_FIFO_DATA_IN_flag,
           DATA_OUT_flag =>  tx_fifo_data_out_flag
    );     

    RX_FIFO : FIFO generic map(
      width => 8,
      depth => RX_FIFO_DEPTH
    )
    port map(  CLOCK    =>  CLOCK,
           RESET        =>  RESET,
           DATA_IN      =>  rx_fifo_data_in,
           DATA_OUT     =>  RX_FIFO_DATA_OUT,
           DATA_IN_hazir  =>  rx_fifo_data_in_hazir,
           DATA_OUT_hazir =>  RX_FIFO_DATA_OUT_hazir,
           DATA_IN_flag  =>  rx_fifo_data_in_flag,
           DATA_OUT_flag =>  RX_FIFO_DATA_OUT_flag
    );   
            
end RTL;