
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIFO is
  Generic 
  ( 
    width : POSITIVE; --veri genisligi
    depth : POSITIVE --veri derinligii
  );
  Port 
  ( 
    clock        :   in  STD_LOGIC;
    reset        :   in  STD_LOGIC;
    data_in      :   in  STD_LOGIC_VECTOR (width - 1 downto 0); --fifoya yazilacak veri
    data_out     :   out STD_LOGIC_VECTOR (width - 1 downto 0);  --fifodan okunacak veri
    data_in_hazir  :   in  STD_LOGIC; --veri yazilamsi icin 
    data_out_hazir :   out STD_LOGIC;
    data_in_flag  :   out STD_LOGIC;
    data_out_flag :   in  STD_LOGIC
  );
end FIFO;

architecture RTL of FIFO is

    function log2(A: integer) return integer is
    begin
      for I in 1 to 30 loop  -- Works for up to 32 bit integers
        if(2**I > A) then return(I-1);  end if;
      end loop;
      return(30);
    end;

    function get_fifo_level(write_pointer   : UNSIGNED;
                            read_pointer    : UNSIGNED;
                            depth           : POSITIVE
                            ) return INTEGER is
    begin
        if write_pointer > read_pointer then
            return to_integer(write_pointer - read_pointer);
        elsif write_pointer = read_pointer then
            return 0;
        else
            return ((depth) - to_integer(read_pointer)) + to_integer(write_pointer);
        end if;
    end function get_fifo_level;

    type    memory is array (0 to depth - 1) of STD_LOGIC_VECTOR(width - 1 downto 0);
    signal  fifo_memory     : memory := (others => (others => '0'));
    signal  read_pointer,
            write_pointer   : UNSIGNED (log2(depth) downto 0) := (others => '0');
    signal  s_data_out_hazir  : STD_LOGIC := '0';
    signal  s_data_in_flag   : STD_LOGIC := '0';
begin    

    data_out_hazir    <= s_data_out_hazir;
    data_in_flag      <= s_data_in_flag;
    
    FIFO_LOGIC : process (clock, reset)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                write_pointer       <= (others => '0');
                read_pointer        <= (others => '0');
                s_data_out_hazir      <= '0';
                data_out            <= (others => '0');
                s_data_in_flag         <= '0';                
            else
                s_data_in_flag        <= '0';
                if data_in_hazir = '1' and 
                   get_fifo_level (write_pointer, read_pointer, depth) /= depth - 1 and
                   s_data_in_flag = '0' then
                    fifo_memory(to_integer(write_pointer))   
                                    <= data_in;
                    if write_pointer = depth - 1 then
                        write_pointer <= (others => '0');
                    else
                        write_pointer <= write_pointer + 1;
                    end if;
                    s_data_in_flag     <= '1';
                end if;
                
                if s_data_out_hazir = '0' and get_fifo_level (write_pointer, read_pointer, depth) > 0 then
                    data_out        <= fifo_memory(to_integer(read_pointer));
                    s_data_out_hazir  <= '1';
                    if read_pointer = depth - 1 then
                        read_pointer <= (others => '0');
                    else
                        read_pointer <= read_pointer + 1;
                    end if;
                elsif s_data_out_hazir = '1' and data_out_flag = '1' then
                    s_data_out_hazir  <= '0';
                end if;
            end if;
        end if;
    end process FIFO_LOGIC;    
end RTL;
