
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
  generic
  (
    WIDTH         : positive;
    DEPTH         : positive
  );
  port
  (
    CLOCK         : in   std_logic;
    DATA_write       : in   std_logic_vector (WIDTH - 1 downto 0);
    WRITE_ADDRESS : in   integer range 0 to DEPTH - 1;
    READ_ADDRESS  : in   integer range 0 to DEPTH - 1;
    WRITE_ENABLE  : in   std_logic;
    DATA_read      : out  std_logic_vector (WIDTH - 1 downto 0)
  );
end RAM;
architecture RTL of RAM is
   type memory is array(0 to DEPTH - 1) of std_logic_vector(WIDTH - 1 downto 0);
   signal ram_block : memory;
begin
   RAM_ACCESS : process (CLOCK)
   begin
      if rising_edge(CLOCK) then
         if (WRITE_ENABLE = '1') then
            ram_block(WRITE_ADDRESS) <= DATA_write;
         end if;
         DATA_read <= ram_block(READ_ADDRESS);
      end if;
   end process;
end RTL;