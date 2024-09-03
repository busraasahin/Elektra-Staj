
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_std_logic_vector_to_unsigned is
end tb_std_logic_vector_to_unsigned;

architecture Behavioral of tb_std_logic_vector_to_unsigned is
component std_logic_vector_to_unsigned 
port (
        input_1   : in std_logic_vector(2 downto 0);
        input_2   : in std_logic_vector(2 downto 0);
        output_1  : out std_logic_vector(2 downto 0)
        );
end component;
signal tb_input_1 : std_logic_vector(2 downto 0);
signal tb_input_2 : std_logic_vector(2 downto 0);
signal tb_output_1: std_logic_vector(2 downto 0);
begin
dut: std_logic_vector_to_unsigned 
port map(
        input_1=> tb_input_1,
        input_2=> tb_input_2,
        output_1=> tb_output_1
);
stim_procc: process
begin
tb_input_1<="101"; -- -4
tb_input_2<="010"; -- 1
wait for 20 ns;
tb_input_1<="101";  -- -3
tb_input_2<="110";  -- -2
wait for 20 ns;
tb_input_1<="011"; -- 3
tb_input_2<="001"; --1
wait for 20 ns;

end process;

end Behavioral;
