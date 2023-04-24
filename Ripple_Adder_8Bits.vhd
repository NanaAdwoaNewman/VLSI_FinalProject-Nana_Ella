library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder_8Bits is
    Port ( AA0, AA1, AA2, AA3, AA4, AA5, AA6, AA7 : in STD_LOGIC;
           BB0, BB1, BB2, BB3, BB4, BB5, BB6, BB7 : in STD_LOGIC;
           YY0, YY1, YY2, YY3, YY4, YY5, YY6, YY7  : out STD_LOGIC;
           Cin2  : in STD_LOGIC;
           Cout2 : out STD_LOGIC);
end Ripple_Adder_8Bits;

architecture Structural of Ripple_Adder_8Bits is
Component Ripple_Adder_4Bit is
    Port ( A0, A1, A2, A3 : in STD_LOGIC;
           B0, B1, B2, B3 : in STD_LOGIC;
           Cin1            :in STD_LOGIC;
           Cout1          : out STD_LOGIC;
           Y0, Y1, Y2, Y3 : out STD_LOGIC);
end Component;
signal C0: STD_LOGIC;

begin
    RA40:Ripple_Adder_4Bit port map(A0 => AA0, A1 => AA1, A2 => AA2, A3 => AA3,
                                    B0 => BB0, B1 => BB1, B2 => BB2, B3 => BB3,
                                    Cin1 => Cin2, Cout1 => C0,
                                    Y0 => YY0, Y1 => YY1, Y2 => YY2, Y3 => YY3);
    RA41:Ripple_Adder_4Bit port map(A0 => AA4, A1 => AA5, A2 => AA6, A3 => AA7,
                                    B0 => BB4, B1 => BB5, B2 => BB6, B3 => BB7,
                                    Cin1 => C0, Cout1 => Cout2,
                                    Y0 => YY4, Y1 => YY5, Y2 => YY6, Y3 => YY7);   

end Structural;
