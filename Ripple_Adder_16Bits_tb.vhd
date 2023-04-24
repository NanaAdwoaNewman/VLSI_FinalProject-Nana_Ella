LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Ripple_Adder_16Bits_tb IS
END Ripple_Adder_16Bits_tb;
 
ARCHITECTURE behavior OF Ripple_Adder_16Bits_tb IS 
 
    COMPONENT Ripple_Adder_16Bits
	port ( AAA : in STD_LOGIC_VECTOR(15 downto 0);
           BBB : in STD_LOGIC_VECTOR(15 downto 0);
           YYY : out STD_LOGIC_VECTOR(15 downto 0);
           Cin3  : in STD_LOGIC;
           Cout3 : out STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0);
   signal B : std_logic_vector(15 downto 0);
   signal Cin : std_logic := '0';

  --Outputs
   signal Y : std_logic_vector(15 downto 0);
   signal Cout : std_logic;

 
BEGIN
 
 -- Instantiate the Moore FSM Sequence Detector in VHDL
   uut: Ripple_Adder_16Bits PORT MAP (
          AAA => A, BBB => B, YYY => Y,
          Cin3 => Cin, Cout3 => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin  

  	A <= "0000000001010111"; 
  	B <= "0000101010101010";  
  	Cin <= '0';   
  	wait for 40 ns;
  	A <= "1111000001010111"; 
  	B <= "0000101010101010";  
  	Cin <= '0';   
  	wait for 40 ns;
  	A <= "0000000001010111"; 
  	B <= "1111101010101010";  
  	Cin <= '0';     
  	wait for 40 ns;
  	A <= "1111111111010111"; 
  	B <= "1111101010101010";  
  	Cin <= '0'; 
  	wait for 40 ns;

   end process;

END;
