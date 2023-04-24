library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity aluStructural is
        Port ( A : in STD_LOGIC_VECTOR(15 downto 0);
               B : in STD_LOGIC_VECTOR(15 downto 0);
               Y : out STD_LOGIC_VECTOR(31 downto 0);
               Func_Sel : in STD_LOGIC_VECTOR(3 downto 0));

end aluStructural;

architecture Structural of aluStructural is
Component Ripple_Adder_16Bits is
    Port ( AAA : in STD_LOGIC_VECTOR(15 downto 0);
           BBB : in STD_LOGIC_VECTOR(15 downto 0);
           YYY  : out STD_LOGIC_VECTOR(15 downto 0);
           Cin3  : in STD_LOGIC;
           Cout3 : out STD_LOGIC);
end Component Ripple_Adder_16Bits;

Component Comparator_16Bits is
    Port ( A, B   : in  std_logic_vector(15 downto 0);       
    	   G, L, E : out std_logic);                         
end Component Comparator_16Bits;

Component Subtractor_16Bits is
    Port ( A : in STD_LOGIC_VECTOR(15 downto 0);
               B : in STD_LOGIC_VECTOR(15 downto 0);
               Y : out STD_LOGIC_VECTOR(15 downto 0);
              Cout : out STD_LOGIC);
end Component Subtractor_16Bits;

Component Multiplier_16Bits is
    Port ( X : in STD_LOGIC_VECTOR(15 downto 0);
           Y : in STD_LOGIC_VECTOR(15 downto 0);
           Z : out STD_LOGIC_VECTOR(31 downto 0));
end Component Multiplier_16Bits;

signal raCout, sCout, Gc, Lc, Ec : STD_LOGIC;
signal Yra, Ys : STD_LOGIC_VECTOR(15 downto 0);
signal Ym : STD_LOGIC_VECTOR(31 downto 0);
signal zeros_28 : STD_LOGIC_VECTOR(28 downto 0) := (others => '0');
signal zeros_16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal ones_16 : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');

begin
    
    RA16:Ripple_Adder_16Bits port map(AAA => A, BBB => B, YYY => Yra, Cin3 => '0', Cout3 => raCout);  
    C16:Comparator_16Bits port map(A => A, B => B, G => Gc, L => Lc, E => Ec);
    S16:Subtractor_16Bits port map(A => A, B => B, Y => Ys, Cout => sCout);
    M16:Multiplier_16Bits port map(X => A, Y=> B, Z => Ym);
    
    process (Func_Sel, Yra, Ys, Ym, Gc, Lc, Ec)
  	begin
  	   if (Func_Sel = "0001") then
	   	if (Yra(15) ='1') then
	    		Y <= ones_16 & Yra;
	    	else 
	    		Y <= zeros_16 & Yra;
	    	end if;
	   elsif (Func_Sel = "0010") then
	   	Y <= zeros_28 & Gc & Lc & Ec;
	   elsif (Func_Sel = "0100") then
	   	if (Ys(15) ='1') then
	    		Y <= ones_16 & Ys;
	    	else 
	    		Y <= zeros_16 & Ys;
	    	end if;
	   elsif (Func_Sel = "1000") then
	   	Y <= "00000000000000000000000000000000";
	   	Y <= Ym;
	   else
	   	Y <= "00000000000000000000000000000000";
	   end if;
   end process;
   		     
end Structural;
