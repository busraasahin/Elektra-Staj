

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.ALL;

entity carpma_8bit is
Port ( 
        clk    : in std_logic;
        reset  : in std_logic;
        start  : in std_logic;
        a_in   : in std_logic_vector(7 downto 0);
        b_in   : in std_logic_vector(7 downto 0);
        product: out std_logic_vector(15 downto 0)
);
end carpma_8bit;

architecture Behavioral of carpma_8bit is
signal p0: std_logic_vector(7 downto 0);
signal p1: std_logic_vector(7 downto 0);
signal p2: std_logic_vector(7 downto 0);
signal p3: std_logic_vector(7 downto 0);
signal p4: std_logic_vector(7 downto 0);
signal p5: std_logic_vector(7 downto 0);
signal p6: std_logic_vector(7 downto 0);
signal p7: std_logic_vector(7 downto 0);
signal zeros    : std_logic_vector(15 downto 0) :=(others=>'0');
signal zeros_p0 : std_logic_vector(15 downto 0);
signal zeros_p1 : std_logic_vector(15 downto 0);
signal zeros_p2 : std_logic_vector(15 downto 0);
signal zeros_p3 : std_logic_vector(15 downto 0);
signal zeros_p4 : std_logic_vector(15 downto 0);
signal zeros_p5 : std_logic_vector(15 downto 0);
signal zeros_p6 : std_logic_vector(15 downto 0);
signal zeros_p7 : std_logic_vector(15 downto 0);
signal shift_p0  : std_logic_vector(15 downto 0);
signal shift_p1  : std_logic_vector(15 downto 0);
signal shift_p2  : std_logic_vector(15 downto 0);
signal shift_p3  : std_logic_vector(15 downto 0);
signal shift_p4  : std_logic_vector(15 downto 0);
signal shift_p5  : std_logic_vector(15 downto 0);
signal shift_p6  : std_logic_vector(15 downto 0);
signal shift_p7  : std_logic_vector(15 downto 0);
signal sonuc     : std_logic_vector(15 downto 0);
signal i : integer :=0;
type durum is (s0,s1,s2,s3,s4);
signal state : durum;
begin
process(clk,reset)
begin
    if(reset='1')then 
        state<=s0;
        sonuc<=(others=>'0');
    elsif(rising_edge(clk)) then
        case state is
            when s0=> 
              if(start='1') then
                for i in 0 to 7 loop
                p0(i)<=a_in(i) and b_in(0);
                p1(i)<=a_in(i) and b_in(1);
                p2(i)<=a_in(i) and b_in(2);
                p3(i)<=a_in(i) and b_in(3);
                p4(i)<=a_in(i) and b_in(4);
                p5(i)<=a_in(i) and b_in(5);
                p6(i)<=a_in(i) and b_in(6);
                p7(i)<=a_in(i) and b_in(7);
              end loop;
             zeros_p0<= zeros+p0 ;
                      zeros_p1<= zeros+p1 ;
                      
                      zeros_p2<= zeros+p2 ;
                      
                      zeros_p3<= zeros+p3 ;
                      
                      zeros_p4<= zeros+p4 ;
                      
                      zeros_p5<= zeros+p5 ;
                      
                      zeros_p6<= zeros+p6 ;
                      
                      zeros_p7<= zeros+p7 ;
                     
                      shift_p0<= zeros_p0;
                    shift_p1<= zeros_p1(14 downto 0) & '0';
                    shift_p2<= zeros_p2(13 downto 0) & "00";
                    shift_p3<= zeros_p3(12 downto 0) & "000";
                    shift_p4<= zeros_p4(11 downto 0) & "0000";
                    shift_p5<= zeros_p5(10 downto 0) & "00000";
                    shift_p6<= zeros_p6(9 downto  0)  & "000000";
                    shift_p7<= zeros_p7(8 downto  0)  & "0000000";
                    sonuc<=shift_p0+shift_p1+ shift_p2+ shift_p3+ shift_p4+ shift_p5+ shift_p6+ shift_p7;
                   state<=s0;
              else 
                state<=s0;
--               
              end if;
          
             
                    
            when others=>
                    state<=s0;
                    sonuc<=(others=>'0');
        end case;
    end if;
end process;
product<=sonuc;
end Behavioral;
