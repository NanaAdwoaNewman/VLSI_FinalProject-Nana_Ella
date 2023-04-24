library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

signal YxZ: STD_LOGIC;

begin

    YxZ <= Y xor Z;
    Sum <= YxZ xor Cin;
    Cout <= (Y and Z) or (Z and Cin) or (Cin and Y);
    

end Behavioral;

