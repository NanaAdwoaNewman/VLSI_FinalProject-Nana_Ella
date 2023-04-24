library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Subtractor_16Bits is
        Port ( A : in STD_LOGIC_VECTOR(15 downto 0);
               B : in STD_LOGIC_VECTOR(15 downto 0);
               Y : out STD_LOGIC_VECTOR(15 downto 0);
              Cout : out STD_LOGIC);

end Subtractor_16Bits;

architecture Structural of Subtractor_16Bits is
Component Ripple_Adder_16Bits is
    Port ( AAA : in STD_LOGIC_VECTOR(15 downto 0);
           BBB : in STD_LOGIC_VECTOR(15 downto 0);
           YYY  : out STD_LOGIC_VECTOR(15 downto 0);
           Cin3  : in STD_LOGIC;
           Cout3 : out STD_LOGIC);
end Component Ripple_Adder_16Bits;
signal nB: STD_LOGIC_VECTOR(15 downto 0);

begin

    nB <= not B;
    RA160:Ripple_Adder_16Bits port map(AAA => A, BBB => nB, YYY => Y, Cin3 => '1', Cout3 => Cout);  
     				     
end Structural;
