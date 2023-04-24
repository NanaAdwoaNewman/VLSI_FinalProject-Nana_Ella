LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Comparator_16Bits_tb IS
END Comparator_16Bits_tb;
 
ARCHITECTURE behavior OF Comparator_16Bits_tb IS 
 
    COMPONENT Comparator_16Bits
	port( A, B    : in  std_logic_vector(15 downto 0);       
              G, L, E : out std_logic);                         

    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0);
   signal B : std_logic_vector(15 downto 0);
   
  --Outputs
   signal G, L, E : std_logic;

 
BEGIN

   uut: Comparator_16Bits PORT MAP (
          A => A, B => B, G => G, L => L, E => E
        );

   -- Stimulus process
   stim_proc: process
   begin  
   
        A <= "0000101010101010";
  	B <= "0000000001010111";   
  	wait for 40 ns;
  	B <= "0000000001010111"; 
  	A <= "1111101010101010";   
  	wait for 40 ns;
  	A <= "0111111111010111"; 
  	B <= "0111111111010111";   
  	wait for 60 ns;

   end process;

END;
