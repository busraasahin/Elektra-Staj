

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity std_logic_vector_to_unsigned is
Port (  
        input_1   : in std_logic_vector(2 downto 0);
        input_2   : in std_logic_vector(2 downto 0);
        output_1  : out std_logic_vector(2 downto 0)
        );
end std_logic_vector_to_unsigned;

architecture Behavioral of std_logic_vector_to_unsigned is
signal input_1_unsigned : unsigned(2 downto 0) := "000";
begin
            input_1_unsigned <= unsigned(input_1) + unsigned(input_2);
            output_1<=std_logic_vector(input_1_unsigned);
end Behavioral;
