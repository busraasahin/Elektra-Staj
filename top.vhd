
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity top is
generic(
clkfreq  : integer := 100_000_000;
audrate : integer := 115_200;
topbit  : integer := 2;
RAM_WIDTH 		: integer 	:= 16;				-- Specify RAM data width
RAM_DEPTH 		: integer 	:= 128;				-- Specify RAM depth (number of entries)
RAM_PERFORMANCE : string 	:= "LOW_LATENCY";    -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
C_RAM_TYPE 		: string 	:= "block"   -- Select "block" or "distributed" 


);
Port (
        clk      : in std_logic;
        reset    : in std_logic;
        rx_in    : in std_logic;
        tx_out   : out std_logic
         );
end top;

architecture Behavioral of top is
component block_ram is
generic (
RAM_WIDTH 		: integer 	:= 16;				-- Specify RAM data width
RAM_DEPTH 		: integer 	:= 128;				-- Specify RAM depth (number of entries)
RAM_PERFORMANCE : string 	:= "LOW_LATENCY";    -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
-- RAM_PERFORMANCE : string 	:= "HIGH_PERFORMANCE";    -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY"
C_RAM_TYPE 		: string 	:= "block"    -- Select "block" or "distributed" 
-- C_RAM_TYPE 		: string 	:= "distributed"    -- Select "block" or "distributed" 
);
port (
addra : in std_logic_vector((clogb2(RAM_DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
dina  : in std_logic_vector(RAM_WIDTH-1 downto 0);		  		-- RAM input data
clka  : in std_logic;                       			  		-- Clock
wea   : in std_logic;                       			  		-- Write enable
douta : out std_logic_vector(RAM_WIDTH-1 downto 0)   			-- RAM output data
);
end component;
component uart_rx is
generic(
        clkfreq  : integer := 100_000_000;
        baudrate : integer := 115_200

        );
port (
        clk  : in std_logic;
        rx_in : in std_logic;
        data_out : out std_logic_vector(7 downto 0);
        rx_done : out std_logic

);
end component;
component uart_tx_2 is
generic(
        clkfreq  : integer := 100_000_000;
        baudrate : integer := 115_200;
        stopbit  : integer := 2
        );
port(
        clk          : in std_logic;
        tx_start_in  : in std_logic;
        data_in      : in std_logic_vector(7 downto 0);
        tx_out       : out std_logic;
   
        reset        : in std_logic;
        led          : out std_logic_vector(7 downto 0)
        );
end component;
signal data_out : std_logic_vector(7 downto 0):=(others=>'0');
begin
instance_uart_tx_2: uart_tx_2 
generic map(
        clkfreq      => clkfreq,
        baudrate     => baudrate,
        stopbit      => stopbit
        )
port map (
        clk          => clk,    
        tx_start_in  => tx_start_in,
        data_in      => data_in,
        tx_out       => tx_out,
        reset       => reset
             
        )
end component;


end Behavioral;
