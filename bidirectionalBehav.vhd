library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity bidirectionalBehav is
	port (  INPUT  		: in std_logic;
		CLK    		: in std_logic;
		Z1 			: out std_logic);
end bidirectionalBehav;

architecture bidirectionalBehav of bidirectionalBehav is
	type state_type is (ST0,ST1,ST2,ST3);
	signal PS,NS : state_type;
	
begin
	sync_proc: process(CLK,NS)
	begin
		-- take care of the asynchronous input
		if (rising_edge(CLK)) then
			PS <= NS;
		end if;
	end process sync_proc;
	
	comb_proc: process(PS,INPUT)
	begin
		--Z1 <= '0'; -- pre-assign output
		case PS is
			when ST0 => -- items regarding state ST0
				Z1 <= '0'; -- Moore output
				if (INPUT = '1') then NS <= ST0;
				else NS <= ST1;
				end if;
			when ST1 => -- items regarding state ST1
				Z1 <= '0'; -- Moore output
				if (INPUT = '1') then NS <= ST2;
				else NS <= ST1;
				end if;
			when ST2 => -- items regarding state ST1
				Z1 <= '0'; -- Moore output
				if (INPUT = '1') then NS <= ST0;
				else NS <= ST3;
				end if;
			when ST3 => -- items regarding state ST1
				Z1 <= '1'; -- Moore output
				if (INPUT = '1') then NS <= ST2;
				else NS <= ST1;
				end if;
			when others => -- the catch-all condition
				Z1 <= '0'; -- arbitrary; it should never
				NS <= ST0; -- make it to these two statement
		end case;
	end process comb_proc;
end bidirectionalBehav;
	
