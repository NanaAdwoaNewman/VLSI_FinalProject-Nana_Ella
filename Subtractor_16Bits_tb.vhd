LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Subtractor_16Bits_tb IS
END Subtractor_16Bits_tb;
 
ARCHITECTURE behavior OF Subtractor_16Bits_tb IS 
 
    COMPONENT Subtractor_16Bits
	port( A : in STD_LOGIC_VECTOR(15 downto 0);
              B : in STD_LOGIC_VECTOR(15 downto 0);
              Y : out STD_LOGIC_VECTOR(15 downto 0);
              Cout : out STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0);
   signal B : std_logic_vector(15 downto 0);
   
  --Outputs
   signal Y : std_logic_vector(15 downto 0);
   signal Cout : std_logic;

 
BEGIN
 
 -- Instantiate the Moore FSM Sequence Detector in VHDL
   uut: Subtractor_16Bits PORT MAP (
          A => A, B => B, Y => Y, Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin  

  	A <= "0000000001010111"; 
  	B <= "0000101010101010";    
  	wait for 40 ns;
  	A <= "0000000001010111"; 
  	B <= "1111101010101010";   
  	wait for 40 ns;
  	A <= "1111111111010111"; 
  	B <= "1111101010101010";   
  	wait for 60 ns;

   end process;

END;
