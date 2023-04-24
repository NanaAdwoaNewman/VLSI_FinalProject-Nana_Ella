library ieee;
use ieee.std_logic_1164.all;

entity Comparator_16Bits is
  port (
    A, B      : in  std_logic_vector(15 downto 0);       
    G, L, E : out std_logic);                         

end Comparator_16Bits;

architecture Behavorial of Comparator_16Bits is

begin
 process (A,B)
  begin
   if (A > B) then
    G <= '1';
    L <= '0';
    E <= '0';
   elsif (B > A) then
    G <= '0';
    L <= '1';
    E <= '0';
   else
    G <= '0';
    L <= '0';
    E <= '1';
   end if;
  end process;
end Behavorial;
