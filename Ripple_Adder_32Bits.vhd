library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder_32Bits is
        Port ( AAAA : in STD_LOGIC_VECTOR(31 downto 0);
               BBBB : in STD_LOGIC_VECTOR(31 downto 0);
               YYYY : out STD_LOGIC_VECTOR(31 downto 0);
               Cin4 : in STD_LOGIC;
              Cout4 : out STD_LOGIC);

end Ripple_Adder_32Bits;

architecture Structural of Ripple_Adder_32Bits is
Component Ripple_Adder_16Bits is
    Port ( AAA : in STD_LOGIC_VECTOR(15 downto 0);
           BBB : in STD_LOGIC_VECTOR(15 downto 0);
           YYY  : out STD_LOGIC_VECTOR(15 downto 0);
           Cin3  : in STD_LOGIC;
           Cout3 : out STD_LOGIC);
end Component Ripple_Adder_16Bits;
signal C0: STD_LOGIC;

begin
    RA160:Ripple_Adder_16Bits port map(AAA(0) => AAAA(0), AAA(1) => AAAA(1), AAA(2) => AAAA(2), AAA(3) => AAAA(3),
    				     AAA(4) => AAAA(4), AAA(5) => AAAA(5), AAA(6) => AAAA(6), AAA(7) => AAAA(7),
    				     AAA(8) => AAAA(8), AAA(9) => AAAA(9), AAA(10) => AAAA(10), AAA(11) => AAAA(11),
    				     AAA(12) => AAAA(12), AAA(13) => AAAA(13), AAA(14) => AAAA(14), AAA(15) => AAAA(15),
                                    BBB(0) => BBBB(0), BBB(1) => BBBB(1), BBB(2) => BBBB(2), BBB(3) => BBBB(3),
                                    BBB(4) => BBBB(4), BBB(5) => BBBB(5), BBB(6) => BBBB(6), BBB(7) => BBBB(7),
                                    BBB(8) => BBBB(8), BBB(9) => BBBB(9), BBB(10) => BBBB(10), BBB(11) => BBBB(11),
    				     BBB(12) => BBBB(12), BBB(13) => BBBB(13), BBB(14) => BBBB(14), BBB(15) => BBBB(15),
                                    Cin3 => Cin4, Cout3 => C0,
                                    YYY(0) => YYYY(0), YYY(1) => YYYY(1), YYY(2) => YYYY(2), YYY(3) => YYYY(3),
                                    YYY(4) => YYYY(4), YYY(5) => YYYY(5), YYY(6) => YYYY(6), YYY(7) => YYYY(7),
                                    YYY(8) => YYYY(8), YYY(9) => YYYY(9), YYY(10) => YYYY(10), YYY(11) => YYYY(11),
    				     YYY(12) => YYYY(12), YYY(13) => YYYY(13), YYY(14) => YYYY(14), YYY(15) => YYYY(15));
    				     
    RA161:Ripple_Adder_16Bits port map(AAA(0) => AAAA(16), AAA(1) => AAAA(17), AAA(2) => AAAA(18), AAA(3) => AAAA(19),
    				     AAA(4) => AAAA(20), AAA(5) => AAAA(21), AAA(6) => AAAA(22), AAA(7) => AAAA(23),
    				     AAA(8) => AAAA(24), AAA(9) => AAAA(25), AAA(10) => AAAA(26), AAA(11) => AAAA(27),
    				     AAA(12) => AAAA(28), AAA(13) => AAAA(29), AAA(14) => AAAA(30), AAA(15) => AAAA(31),
                                    BBB(0) => BBBB(16), BBB(1) => BBBB(17), BBB(2) => BBBB(18), BBB(3) => BBBB(19),
                                    BBB(4) => BBBB(20), BBB(5) => BBBB(21), BBB(6) => BBBB(22), BBB(7) => BBBB(23),
                                    BBB(8) => BBBB(24), BBB(9) => BBBB(25), BBB(10) => BBBB(26), BBB(11) => BBBB(27),
    				     BBB(12) => BBBB(28), BBB(13) => BBBB(29), BBB(14) => BBBB(30), BBB(15) => BBBB(31),
                                    Cin3 => C0, Cout3 => Cout4,
                                    YYY(0) => YYYY(16), YYY(1) => YYYY(17), YYY(2) => YYYY(18), YYY(3) => YYYY(19),
                                    YYY(4) => YYYY(20), YYY(5) => YYYY(21), YYY(6) => YYYY(22), YYY(7) => YYYY(23),
                                    YYY(8) => YYYY(24), YYY(9) => YYYY(25), YYY(10) => YYYY(26), YYY(11) => YYYY(27),
    				     YYY(12) => YYYY(28), YYY(13) => YYYY(29), YYY(14) => YYYY(30), YYY(15) => YYYY(31)); 

end Structural;
