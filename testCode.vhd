library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity resize_example is
    Port ( my_vector : in  STD_LOGIC_VECTOR (3 downto 0);
           result_vector : out  STD_LOGIC_VECTOR (7 downto 0));
end resize_example;

architecture Behavioral of resize_example is
begin
    process(my_vector)
    begin
        -- Resize my_vector to 8 bits by adding 0s to the end
        result_vector <= resize(my_vector, 8);
    end process;
end Behavioral;

