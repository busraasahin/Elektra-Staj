
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modul is
Port (
    clk        : in std_logic;
    data_in    : in std_logic_vector(7 downto 0);
    load       : in std_logic;
    data_out   : out std_logic
     );
end modul;

architecture Behavioral of modul is
signal temp : std_logic_vector(5 downto 0);
signal even_parity : std_logic;
signal k: integer:=1;
signal counter : integer range 0 to 8 :=0;
signal shift_data: std_logic_vector(8 downto 0);
begin
parity_process: process(clk)
begin
temp(0)<=data_in(0) xor data_in(1);
for k in 1 to 5 loop
 temp(k)<= temp(k-1) xor data_in(k+1);
end loop;
even_parity<=temp(5) xor data_in(7);
end process;

shift_process: process(clk)
begin
    if(rising_edge(clk))then
      if(load='1') then
        shift_data<= data_in&even_parity;
        if(counter=8)then
            counter<=0;
        else
            counter<=counter+1;
        end if;
      end if;
    end if;
end process;
data_out<= shift_data(8-counter);

end Behavioral;