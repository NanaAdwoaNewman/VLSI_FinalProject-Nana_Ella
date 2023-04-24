LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Multiplier_16Bits_tb IS
END Multiplier_16Bits_tb;
 
ARCHITECTURE behavior OF Multiplier_16Bits_tb IS 
 
    COMPONENT Multiplier_16Bits
	port ( X : in STD_LOGIC_VECTOR(15 downto 0);
           Y : in STD_LOGIC_VECTOR(15 downto 0);
           Z : out STD_LOGIC_VECTOR(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(15 downto 0);
   signal Y : std_logic_vector(15 downto 0);
   
  --Outputs
   signal Z : std_logic_vector(31 downto 0);

 
BEGIN
 
 -- Instantiate the Moore FSM Sequence Detector in VHDL
   uut: Multiplier_16Bits PORT MAP (
          X => X, Y => Y, Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin  

  	X <= "0000000001010111"; 
  	Y <= "0000101010101010";    
  	wait for 40 ns;
  	X <= "0000000001010111"; 
  	Y <= "1111101010101010";   
  	wait for 40 ns;
  	X <= "1111111111010111"; 
  	Y <= "1111101010101010";   
  	wait for 60 ns;

   end process;

END;
