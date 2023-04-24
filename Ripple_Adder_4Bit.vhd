library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder_4Bit is
    Port ( A0, A1, A2, A3 : in STD_LOGIC;
           B0, B1, B2, B3 : in STD_LOGIC;
           Cin1            : in STD_LOGIC;
           Cout1          : out STD_LOGIC;
           Y0, Y1, Y2, Y3 : out STD_LOGIC);
end Ripple_Adder_4Bit;

architecture Structural of Ripple_Adder_4Bit is

signal C0, C1, C2, C3, S0, S1, S2, S3: STD_LOGIC;
Component Full_Adder is
    Port ( Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Component Full_Adder;
begin
    FA0:Full_Adder port map(Y=> A0, Z=> B0, Cin=> Cin1, Sum=>S0, Cout=> C0);
    FA1:Full_Adder port map(Y=> A1, Z=> B1, Cin=> C0, Sum=>S1, Cout=> C1);
    FA2:Full_Adder port map(Y=> A2, Z=> B2, Cin=> C1, Sum=>S2, Cout=> C2);
    FA3:Full_Adder port map(Y=> A3, Z=> B3, Cin=> C2, Sum=>S3, Cout=> C3);
    
    Y0 <= S0;
    Y1 <= S1;
    Y2 <= S2;
    Y3 <= S3;
    Cout1 <= C3; 

end Structural;                    
