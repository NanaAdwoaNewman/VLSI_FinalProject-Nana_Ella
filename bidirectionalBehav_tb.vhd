LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY bidirectionalBehav_tb IS
END bidirectionalBehav_tb;
 
ARCHITECTURE behavior OF bidirectionalBehav_tb IS 
 
    -- Component Declaration for the Moore FSM Sequence Detector in VHDL
 
    COMPONENT bidirectionalBehav
	port (  INPUT 		: in std_logic;
		CLK    	: in std_logic;
		Z1 			: out std_logic);
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
