LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testCode_tb IS
END testCode_tb;
 
ARCHITECTURE behavior OF testCode_tb IS 
    COMPONENT testCode
	port ( my_vector : in  STD_LOGIC_VECTOR (3 downto 0);
           result_vector : out  STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal INPUT : std_logic := '0';

  --Outputs
   signal Z1 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
 -- Instantiate the Moore FSM Sequence Detector in VHDL
   uut: bidirectionalBehav PORT MAP (
          CLK => CLK,
          INPUT => INPUT,
          Z1 => Z1
        );

   -- Clock process definitions
   clock_process :process
   begin
	  CLK <= '0';
	  wait for clock_period/2;
	  CLK <= '1';
	  wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin  

  	INPUT	<= '1';  
  	wait for 30 ns;
  	INPUT	<= '0';  
  	wait for 10 ns;
  	INPUT	<= '1';  
  	wait for 10 ns; 
  	INPUT	<= '0';  
  	wait for 30 ns; 
  	INPUT	<= '1';  
  	wait for 20 ns; 
  	INPUT	<= '0';  
  	wait for 20 ns; 
  	INPUT	<= '1';  
  	wait for 10 ns; 
  	INPUT	<= '0';  
  	wait for 10 ns;  

   end process;

END;
