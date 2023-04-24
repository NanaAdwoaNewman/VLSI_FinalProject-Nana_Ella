library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SingleBitMultiplier_16 is
    Port ( D : in STD_LOGIC_VECTOR(15 downto 0);
           E : in STD_LOGIC_VECTOR(15 downto 0);
           F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1: out STD_LOGIC_VECTOR(15 downto 0));
end SingleBitMultiplier_16;

architecture Behavioral of SingleBitMultiplier_16 is
begin
    process(D,E(0))
    begin
	for i in D'range loop
	    F1(i) <= D(i) and E(0);
	end loop;
    end process;
    
    process(D,E(1))
    begin
	for i in D'range loop
	    G1(i) <= D(i) and E(1);
	end loop;
    end process; 
    
    process(D,E(2))
    begin
	for i in D'range loop
	    H1(i) <= D(i) and E(2);
	end loop;
    end process; 
    
    process(D,E(3))
    begin
	for i in D'range loop
	    I1(i) <= D(i) and E(3);
	end loop;
    end process; 
    
    process(D,E(4))
    begin
	for i in D'range loop
	    J1(i) <= D(i) and E(4);
	end loop;
    end process;
    
    process(D,E(5))
    begin
	for i in D'range loop
	    K1(i) <= D(i) and E(5);
	end loop;
    end process; 
    
    process(D,E(6))
    begin
	for i in D'range loop
	    L1(i) <= D(i) and E(6);
	end loop;
    end process;
    
    process(D,E(7))
    begin
	for i in D'range loop
	    M1(i) <= D(i) and E(7);
	end loop;
    end process;
    
    process(D,E(8))
    begin
	for i in D'range loop
	    N1(i) <= D(i) and E(8);
	end loop;
    end process;
    
    process(D,E(9))
    begin
	for i in D'range loop
	    O1(i) <= D(i) and E(9);
	end loop;
    end process;
    
    process(D,E(10))
    begin
	for i in D'range loop
	    P1(i) <= D(i) and E(10);
	end loop;
    end process;
    
    process(D,E(11))
    begin
	for i in D'range loop
	    Q1(i) <= D(i) and E(11);
	end loop;
    end process;
    
    process(D,E(12))
    begin
	for i in D'range loop
	    R1(i) <= D(i) and E(12);
	end loop;
    end process;
    
    process(D,E(13))
    begin
	for i in D'range loop
	    S1(i) <= D(i) and E(13);
	end loop;
    end process;
    
    process(D,E(14))
    begin
	for i in D'range loop
	    T1(i) <= D(i) and E(14);
	end loop;
    end process;
    
    process(D,E(15))
    begin
	for i in D'range loop
	    U1(i) <= D(i) and E(15);
	end loop;
    end process;

end Behavioral;
