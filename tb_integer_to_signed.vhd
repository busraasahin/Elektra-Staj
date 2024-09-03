
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity tb_integer_to_signed is
end tb_integer_to_signed;

architecture Behavioral of tb_integer_to_signed is
signal tb_input_1: integer;
signal tb_input_2: integer;
signal tb_output_1: signed (3 downto 0);
signal tb_output_2: signed (3 downto 0);
component integer_to_signed 
    port (
        input_1   : in integer;
        input_2   : in integer;
        output_1  : out signed(3 downto 0);
        output_2  : out signed(3 downto 0)
    );
end component;
begin
dut : integer_to_signed
port map (
            input_1 => tb_input_1,
            input_2 => tb_input_2,
            output_1=> tb_output_1,
            output_2=> tb_output_2
            );
process is
begin
tb_input_1<=-5;
tb_input_2<=-7;
wait for 10 ns;
tb_input_1<=6;
tb_input_2<=-7;
wait for 10 ns;
tb_input_1<=5;
tb_input_2<=-3;
wait for 10 ns;
tb_input_1<=4;
tb_input_2<=7;
wait for 10 ns;
end process;
end Behavioral;
