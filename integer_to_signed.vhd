

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity conversion is
    port (
        input_1   : in std_logic_vector(2 downto 0);
        input_2   : in std_logic_vector(2 downto 0);
        output_1  : out std_logic_vector(2 downto 0);
        output_2  : out std_logic_vector(2 downto 0);
        output_3  : out std_logic_vector(2 downto 0);
        clk : in std_logic;
        reset : in std_logic
    );
end entity conversion;

architecture Behavioral of conversion is
    signal input_1_signed : signed(2 downto 0) := "000"; 
    signal input_2_signed : unsigned(2 downto 0) := "000";
    signal input_3_signed : signed(2 downto 0) := "000"; 
    signal integer_var : integer range 0 to 10 := 0;
    signal count : integer range 0 to 300  := 0;
    
begin
process(clk)
begin
    if(rising_edge(clk)) then
        count <= count+1;
        case count is
         when 100 =>
            input_1_signed <= signed(input_1)+ signed(input_2);
            output_1 <= std_logic_vector(input_1_signed);
         when 200 =>  
            input_2_signed <= unsigned(input_1) - unsigned(input_2);
            output_2<=std_logic_vector(input_2_signed);
         when 300 =>
            input_1_signed <= signed(input_1)+ signed(input_2);  
            integer_var <= to_integer(input_1_signed);
            input_3_signed<=to_signed(integer_var,3);
            output_3 <= std_logic_vector(input_3_signed);
            count<= 0;
          when others =>
            count <= 0;
        end case;
    end if;
end process;
end architecture Behavioral;
