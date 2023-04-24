library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder_16Bits is
    Port ( AAA : in STD_LOGIC_VECTOR(15 downto 0);
           BBB : in STD_LOGIC_VECTOR(15 downto 0);
           YYY : out STD_LOGIC_VECTOR(15 downto 0);
           Cin3  : in STD_LOGIC;
           Cout3 : out STD_LOGIC);
end Ripple_Adder_16Bits;

architecture Structural of Ripple_Adder_16Bits is
Component Ripple_Adder_8Bits is
    Port ( AA0, AA1, AA2, AA3, AA4, AA5, AA6, AA7 : in STD_LOGIC;
           BB0, BB1, BB2, BB3, BB4, BB5, BB6, BB7 : in STD_LOGIC;
           YY0, YY1, YY2, YY3, YY4, YY5, YY6, YY7  : out STD_LOGIC;
           Cin2  : in STD_LOGIC;
           Cout2 : out STD_LOGIC);
end Component;
signal C0: STD_LOGIC;

begin
    RA80:Ripple_Adder_8Bits port map(AA0 => AAA(0), AA1 => AAA(1), AA2 => AAA(2), AA3 => AAA(3),
    				     AA4 => AAA(4), AA5 => AAA(5), AA6 => AAA(6), AA7 => AAA(7),
                                    BB0 => BBB(0), BB1 => BBB(1), BB2 => BBB(2), BB3 => BBB(3),
                                    BB4 => BBB(4), BB5 => BBB(5), BB6 => BBB(6), BB7 => BBB(7),
                                    Cin2 => Cin3, Cout2 => C0,
                                    YY0 => YYY(0), YY1 => YYY(1), YY2 => YYY(2), YY3 => YYY(3),
                                    YY4 => YYY(4), YY5 => YYY(5), YY6 => YYY(6), YY7 => YYY(7));
    RA81:Ripple_Adder_8Bits port map(AA0 => AAA(8), AA1 => AAA(9), AA2 => AAA(10), AA3 => AAA(11),
    				     AA4 => AAA(12), AA5 => AAA(13), AA6 => AAA(14), AA7 => AAA(15),
                                    BB0 => BBB(8), BB1 => BBB(9), BB2 => BBB(10), BB3 => BBB(11),
                                    BB4 => BBB(12), BB5 => BBB(13), BB6 => BBB(14), BB7 => BBB(15),
                                    Cin2 => C0, Cout2 => Cout3,
                                    YY0 => YYY(8), YY1 => YYY(9), YY2 => YYY(10), YY3 => YYY(11),
                                    YY4 => YYY(12), YY5 => YYY(13), YY6 => YYY(14), YY7 => YYY(15));  

end Structural;
