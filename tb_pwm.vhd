

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity tb_pwm is
end tb_pwm;

architecture Behavioral of tb_pwm is
component pwm
    port(
            clk     : in std_logic;
            reset   : in std_logic;
            pwm_out : out std_logic
    );
end component;
signal clk : std_logic;
signal reset: std_logic;
signal pwm_out: std_logic;
begin
uut: pwm
 port map(
clk     => clk,
reset   => reset,
pwm_out => pwm_out
);
clk_process: process
begin
clk<='0';
wait for 10 ns;
clk<='1';
wait for 10 ns;
end process;
end Behavioral;
