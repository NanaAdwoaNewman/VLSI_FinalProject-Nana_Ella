LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY aluStructural_tb IS
END aluStructural_tb;
 
ARCHITECTURE behavior OF aluStructural_tb IS 
 
    COMPONENT aluStructural
	port( A : in STD_LOGIC_VECTOR(15 downto 0);
              B : in STD_LOGIC_VECTOR(15 downto 0);
              Y : out STD_LOGIC_VECTOR(31 downto 0);
              Func_Sel : in STD_LOGIC_VECTOR(3 downto 0));
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0);
   signal B : std_logic_vector(15 downto 0);
   
  --Outputs
   signal Y : std_logic_vector(31 downto 0);
   signal Func_Sel : std_logic_vector(3 downto 0);

 
BEGIN
 
 -- Instantiate the Moore FSM Sequence Detector in VHDL
   uut: aluStructural PORT MAP (
          A => A, B => B, Y => Y, Func_Sel => Func_Sel
        );

   -- Stimulus process
   stim_proc: process
   begin 
   --Addition 
        Func_Sel <= "0001";
  	A <= "0000000001010111"; 
  	B <= "0000101010101010";    
  	wait for 40 ns;
  	Func_Sel <= "0001";
  	A <= "1111111111010111"; 
  	B <= "0000001010101010"; 
  	wait for 40 ns;
  	Func_Sel <= "0001";
  	A <= "0000000001010111"; 
  	B <= "1111101010101010";   
  	wait for 40 ns;
  	Func_Sel <= "0001";
  	A <= "1111111111010111"; 
  	B <= "1111101010101010";   
  	wait for 40 ns;
  	
   --Comparator
  	Func_Sel <= "0010";
  	A <= "0000000001010111"; 
  	B <= "0000101010101010";    
  	wait for 40 ns;
  	Func_Sel <= "0010";
  	A <= "1111111111010111"; 
  	B <= "0000001010101010"; 
  	wait for 40 ns;
  	Func_Sel <= "0010";
  	A <= "0001000001010111"; 
  	B <= "0000001010101010";   
  	wait for 40 ns;
  	Func_Sel <= "0010";
  	A <= "0000101010101010"; 
  	B <= "0000101010101010";   
  	wait for 40 ns;
  	
    --Subtractor
  	Func_Sel <= "0100";
  	A <= "0000000001010111"; 
  	B <= "0000101010101010";    
  	wait for 40 ns;
  	Func_Sel <= "0100";
  	A <= "1111111111010111"; 
  	B <= "0000001010101010";   
  	wait for 40 ns;
  	Func_Sel <= "0100";
  	A <= "0000000001010111"; 
  	B <= "1111101010101010";  
  	wait for 40 ns;
  	Func_Sel <= "0100";
  	A <= "1111111111010111"; 
  	B <= "1111101010101010";   
  	wait for 40 ns;
  	
    --Multiplier
  	Func_Sel <= "1000";
  	A <= "0000000001010111"; 
  	B <= "0000101010101010";    
  	wait for 40 ns;
  	Func_Sel <= "1000";
  	A <= "1111111111010111"; 
  	B <= "0000001010101010";
  	wait for 40 ns;
  	Func_Sel <= "1000";
  	A <= "0000000001010111"; 
  	B <= "1111101010101010";   
  	wait for 40 ns;
  	Func_Sel <= "1000";
  	A <= "1111111111010111"; 
  	B <= "1111101010101010";   
  	wait for 40 ns;

   end process;

END;
