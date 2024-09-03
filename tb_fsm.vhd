
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_fsm is
end tb_fsm;

architecture Behavioral of tb_fsm is
component fsm 
        port(
                 a_in : in std_logic;
                 b_in : in std_logic;
                 d_in : in std_logic;
                 clk  : in std_logic;
                 rst  : in std_logic;
                 x_out: out std_logic;
                 led_out: out std_logic_vector(5 downto 0));
 end component;

signal a_in : std_logic;
signal b_in : std_logic;
signal d_in : std_logic;
signal clk: std_logic;
signal rst: std_logic;
signal x_out: std_logic;
signal led_out: std_logic_vector(5 downto 0);
begin
dut : fsm
    port map(
               a_in=>a_in,
               b_in=>b_in,
               d_in=>d_in,
               clk=>clk,
               rst=>rst,
               x_out=>x_out,
               led_out=>led_out
                    );
    
clk_process: process
begin 
        clk <='0';
        wait for 20 ns;
        clk <='1';
        wait for 20 ns;
    
end process;

stim_process: process
begin
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        
        wait for 10 ns;
        a_in <= '1';
        d_in <= '0';
        wait for 20 ns;
        d_in <= '1';
        wait for 20 ns;
        a_in <= '0';
        b_in <= '1';
        d_in <= '0';
        wait for 20 ns;
        d_in <= '1';
        wait for 20 ns;
      
end process;
end Behavioral;
