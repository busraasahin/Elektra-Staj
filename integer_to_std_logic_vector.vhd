


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity integer_to_std_logic_vector is
 Port (
         input_1   : in integer;
        input_2   : in integer;
        output_1  : out std_logic_vector(3 downto 0);
        output_2  : out std_logic_vector(3 downto 0) );
end integer_to_std_logic_vector;

architecture Behavioral of integer_to_std_logic_vector is

begin
    output_1 <= std_logic_vector(to_signed(input_1, output_1'length));
    output_2 <= std_logic_vector(to_signed(input_2, output_2'length));
end Behavioral;
