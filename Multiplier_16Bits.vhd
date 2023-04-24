library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplier_16Bits is
    Port ( X : in STD_LOGIC_VECTOR(15 downto 0);
           Y : in STD_LOGIC_VECTOR(15 downto 0);
           Z : out STD_LOGIC_VECTOR(31 downto 0));
end Multiplier_16Bits;

architecture Structural of Multiplier_16Bits is

Component SingleBitMultiplier_16 is
    Port ( D : in STD_LOGIC_VECTOR(15 downto 0);
           E : in STD_LOGIC_VECTOR(15 downto 0);
           F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1: out STD_LOGIC_VECTOR(15 downto 0));
end Component SingleBitMultiplier_16;

Component Ripple_Adder_32Bits is
    Port ( AAAA : in STD_LOGIC_VECTOR(31 downto 0);
               BBBB : in STD_LOGIC_VECTOR(31 downto 0);
               YYYY : out STD_LOGIC_VECTOR(31 downto 0);
               Cin4 : in STD_LOGIC;
              Cout4 : out STD_LOGIC);
end Component Ripple_Adder_32Bits;

signal F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U: STD_LOGIC_VECTOR(15 downto 0);
signal OUT1,OUT2,OUT3, OUT4, OUT5, OUT6, OUT7, OUT8, OUT9, OUT10: STD_LOGIC_VECTOR(31 downto 0);
signal OUT11,OUT12,OUT13, OUT14, OUT15, OUT16, OUT17, OUT18, OUT19: STD_LOGIC_VECTOR(31 downto 0);
signal OUT20,OUT21,OUT22, OUT23, OUT24, OUT25, OUT26, OUT27, OUT28: STD_LOGIC_VECTOR(31 downto 0);
signal OUT29,OUT30,OUT31: STD_LOGIC_VECTOR(31 downto 0);
signal C1: STD_LOGIC;

begin
    SBM0:SingleBitMultiplier_16 port map(D=> X, E=> Y, F1=> F, G1=> G, H1=> H, I1=> I,
    					J1=> J, K1=> K, L1=> L, M1=> M, N1=> N, O1=> O, 
    					P1=> P, Q1=> Q, R1=> R, S1=> S, T1=> T, U1=> U);
    RA320:Ripple_Adder_32Bits port map(AAAA(31) => F(15), AAAA(30) => F(15), AAAA(29) => F(15), AAAA(28) => F(15),
    				     AAAA(27) => F(15), AAAA(26) => F(15), AAAA(25) => F(15), AAAA(24) => F(15),
    				     AAAA(23) => F(15), AAAA(22) => F(15), AAAA(21) => F(15), AAAA(20) => F(15),
    				     AAAA(19) => F(15), AAAA(18) => F(15), AAAA(17) => F(15), AAAA(16) => F(15),
    				     AAAA(15) => F(15), AAAA(14) => F(14), AAAA(13) => F(13), AAAA(12) => F(12),
    				     AAAA(11) => F(11),AAAA(10) => F(10), AAAA(9) => F(9), AAAA(8) => F(8),
    				     AAAA(7) => F(7), AAAA(6) => F(6), AAAA(5) => F(5), AAAA(4) => F(4),
    				     AAAA(3) => F(3), AAAA(2) => F(2), AAAA(1) => F(1), AAAA(0) => F(0),
    				     BBBB(31) => G(15), BBBB(30) => G(15), BBBB(29) => G(15), BBBB(28) => G(15),
                                    BBBB(27) => G(15), BBBB(26) => G(15), BBBB(25) => G(15), BBBB(24) => G(15),
                                    BBBB(23) => G(15), BBBB(22) => G(15), BBBB(21) => G(15), BBBB(20) => G(15),
    				     BBBB(19) => G(15), BBBB(18) => G(15), BBBB(17) => G(15), BBBB(16) => G(15),
    				     BBBB(15) => G(14), BBBB(14) => G(13), BBBB(13) => G(12), BBBB(12) => G(11),
                                    BBBB(11) => G(10), BBBB(10) => G(9), BBBB(9) => G(8), BBBB(8) => G(7),
                                    BBBB(7) => G(6), BBBB(6) => G(5), BBBB(5) => G(4), BBBB(4) => G(3),
    				     BBBB(3) => G(2), BBBB(2) => G(1), BBBB(1) => G(0), BBBB(0) => '0',
    				     YYYY => OUT1, Cin4 => '0', Cout4 => C1);
    RA321:Ripple_Adder_32Bits port map(AAAA => OUT1, 
    				     BBBB(31) => H(15), BBBB(30) => H(15), BBBB(29) => H(15), BBBB(28) => H(15),
                                    BBBB(27) => H(15), BBBB(26) => H(15), BBBB(25) => H(15), BBBB(24) => H(15),
                                    BBBB(23) => H(15), BBBB(22) => H(15), BBBB(21) => H(15), BBBB(20) => H(15),
    				     BBBB(19) => H(15), BBBB(18) => H(15), BBBB(17) => H(15), BBBB(16) => H(14), 
    				     BBBB(15) => H(13),BBBB(14) => H(12), BBBB(13) => H(11), BBBB(12) => H(10), 
    				     BBBB(11) => H(9),BBBB(10) => H(8), BBBB(9) => H(7), BBBB(8) => H(6), 
    				     BBBB(7) => H(5),BBBB(6) => H(4), BBBB(5) => H(3), BBBB(4) => H(2),
    				     BBBB(3) => H(1),BBBB(2) => H(0), BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT2, Cin4 => '0', Cout4 => C1);
    RA322:Ripple_Adder_32Bits port map(AAAA => OUT2,
    				     BBBB(31) => I(15), BBBB(30) => I(15), BBBB(29) => I(15), BBBB(28) => I(15),
                                    BBBB(27) => I(15), BBBB(26) => I(15), BBBB(25) => I(15), BBBB(24) => I(15),
                                    BBBB(23) => I(15), BBBB(22) => I(15), BBBB(21) => I(15), BBBB(20) => I(15),
    				     BBBB(19) => I(15), BBBB(18) => I(15), BBBB(17) => I(14), BBBB(16) => I(13),
    				     BBBB(15) => I(12), BBBB(14) => I(11), BBBB(13) => I(10), BBBB(12) => I(9),
                                    BBBB(11) => I(8), BBBB(10) => I(7), BBBB(9) => I(6), BBBB(8) => I(5),
                                    BBBB(7) => I(4), BBBB(6) => I(3), BBBB(5) => I(2), BBBB(4) => I(1),
    				     BBBB(3) => I(0), BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT3, Cin4 => '0', Cout4 => C1);
    RA323:Ripple_Adder_32Bits port map(AAAA => OUT3,
    				     BBBB(31) => J(15), BBBB(30) => J(15), BBBB(29) => J(15), BBBB(28) => J(15),
                                    BBBB(27) => J(15), BBBB(26) => J(15), BBBB(25) => J(15), BBBB(24) => J(15),
                                    BBBB(23) => J(15), BBBB(22) => J(15), BBBB(21) => J(15), BBBB(20) => J(15),
    				     BBBB(19) => J(15), BBBB(18) => J(14), BBBB(17) => J(13), BBBB(16) => J(12),
    				     BBBB(15) => J(11), BBBB(14) => J(10), BBBB(13) => J(9), BBBB(12) => J(8),
                                    BBBB(11) => J(7), BBBB(10) => J(6), BBBB(9) => J(5), BBBB(8) => J(4),
                                    BBBB(7) => J(3), BBBB(6) => J(2), BBBB(5) => J(1), BBBB(4) => J(0),
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT4, Cin4 => '0', Cout4 => C1);
    RA324:Ripple_Adder_32Bits port map(AAAA => OUT4,
    				     BBBB(31) => K(15), BBBB(30) => K(15), BBBB(29) => K(15), BBBB(28) => K(15),
                                    BBBB(27) => K(15), BBBB(26) => K(15), BBBB(25) => K(15), BBBB(24) => K(15),
                                    BBBB(23) => K(15), BBBB(22) => K(15), BBBB(21) => K(15), BBBB(20) => K(15),
    				     BBBB(19) => K(14), BBBB(18) => K(13), BBBB(17) => K(12), BBBB(16) => K(11),
    				     BBBB(15) => K(10), BBBB(14) => K(9), BBBB(13) => K(8), BBBB(12) => K(7),
                                    BBBB(11) => K(6), BBBB(10) => K(5), BBBB(9) => K(4), BBBB(8) => K(3),
                                    BBBB(7) => K(2), BBBB(6) => K(1), BBBB(5) => K(0), BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT5, Cin4 => '0', Cout4 => C1);	
    RA325:Ripple_Adder_32Bits port map(AAAA => OUT5,
    				     BBBB(31) => L(15), BBBB(30) => L(15), BBBB(29) => L(15), BBBB(28) => L(15),
                                    BBBB(27) => L(15), BBBB(26) => L(15), BBBB(25) => L(15), BBBB(24) => L(15),
                                    BBBB(23) => L(15), BBBB(22) => L(15), BBBB(21) => L(15), BBBB(20) => L(14),
    				     BBBB(19) => L(13), BBBB(18) => L(12), BBBB(17) => L(11), BBBB(16) => L(10),
    				     BBBB(15) => L(9), BBBB(14) => L(8), BBBB(13) => L(7), BBBB(12) => L(6),
                                    BBBB(11) => L(5), BBBB(10) => L(4), BBBB(9) => L(3), BBBB(8) => L(2),
                                    BBBB(7) => L(1), BBBB(6) => L(0), BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT6, Cin4 => '0', Cout4 => C1);
    RA326:Ripple_Adder_32Bits port map(AAAA => OUT6,
    				     BBBB(31) => M(15), BBBB(30) => M(15), BBBB(29) => M(15), BBBB(28) => M(15),
                                    BBBB(27) => M(15), BBBB(26) => M(15), BBBB(25) => M(15), BBBB(24) => M(15),
                                    BBBB(23) => M(15), BBBB(22) => M(15), BBBB(21) => M(14), BBBB(20) => M(13),
    				     BBBB(19) => M(12), BBBB(18) => M(11), BBBB(17) => M(10), BBBB(16) => M(9),
    				     BBBB(15) => M(8), BBBB(14) => M(7), BBBB(13) => M(6), BBBB(12) => M(5),
                                    BBBB(11) => M(4), BBBB(10) => M(3), BBBB(9) => M(2), BBBB(8) => M(1),
                                    BBBB(7) => M(0), BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT7, Cin4 => '0', Cout4 => C1);				    				    	RA327:Ripple_Adder_32Bits port map(AAAA => OUT7,
    				     BBBB(31) => N(15), BBBB(30) => N(15), BBBB(29) => N(15), BBBB(28) => N(15),
                                    BBBB(27) => N(15), BBBB(26) => N(15), BBBB(25) => N(15), BBBB(24) => N(15),
                                    BBBB(23) => N(15), BBBB(22) => N(14), BBBB(21) => N(13), BBBB(20) => N(12),
    				     BBBB(19) => N(11), BBBB(18) => N(10), BBBB(17) => N(9), BBBB(16) => N(8),
    				     BBBB(15) => N(7), BBBB(14) => N(6), BBBB(13) => N(5), BBBB(12) => N(4),
                                    BBBB(11) => N(3), BBBB(10) => N(2), BBBB(9) => N(1), BBBB(8) => N(0),
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT8, Cin4 => '0', Cout4 => C1);
    RA328:Ripple_Adder_32Bits port map(AAAA => OUT8,
    				     BBBB(31) => O(15), BBBB(30) => O(15), BBBB(29) => O(15), BBBB(28) => O(15),
                                    BBBB(27) => O(15), BBBB(26) => O(15), BBBB(25) => O(15), BBBB(24) => O(15),
                                    BBBB(23) => O(14), BBBB(22) => O(13), BBBB(21) => O(12), BBBB(20) => O(11),
    				     BBBB(19) => O(10), BBBB(18) => O(9), BBBB(17) => O(8), BBBB(16) => O(7),
    				     BBBB(15) => O(6), BBBB(14) => O(5), BBBB(13) => O(4), BBBB(12) => O(3),
                                    BBBB(11) => O(2), BBBB(10) => O(1), BBBB(9) => O(0), BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT9, Cin4 => '0', Cout4 => C1);
    RA329:Ripple_Adder_32Bits port map(AAAA => OUT9,
    				     BBBB(31) => P(15), BBBB(30) => P(15), BBBB(29) => P(15), BBBB(28) => P(15),
                                    BBBB(27) => P(15), BBBB(26) => P(15), BBBB(25) => P(15), BBBB(24) => P(14),
                                    BBBB(23) => P(13), BBBB(22) => P(12), BBBB(21) => P(11), BBBB(20) => P(10),
    				     BBBB(19) => P(9), BBBB(18) => P(8), BBBB(17) => P(7), BBBB(16) => P(6),
    				     BBBB(15) => P(5), BBBB(14) => P(4), BBBB(13) => P(3), BBBB(12) => P(2),
                                    BBBB(11) => P(1), BBBB(10) => P(0),  BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT10, Cin4 => '0', Cout4 => C1);	
    RA3210:Ripple_Adder_32Bits port map(AAAA => OUT10,
    				     BBBB(31) => Q(15), BBBB(30) => Q(15), BBBB(29) => Q(15), BBBB(28) => Q(15),
                                    BBBB(27) => Q(15), BBBB(26) => Q(15), BBBB(25) => Q(14), BBBB(24) => Q(13),
                                    BBBB(23) => Q(12), BBBB(22) => Q(11), BBBB(21) => Q(10), BBBB(20) => Q(9),
    				     BBBB(19) => Q(8), BBBB(18) => Q(7), BBBB(17) => Q(6), BBBB(16) => Q(5),
    				     BBBB(15) => Q(4), BBBB(14) => Q(3), BBBB(13) => Q(2), BBBB(12) => Q(1),
                                    BBBB(11) => Q(0),BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT11, Cin4 => '0', Cout4 => C1);
    RA3211:Ripple_Adder_32Bits port map(AAAA => OUT11,
    				     BBBB(31) => R(15), BBBB(30) => R(15), BBBB(29) => R(15), BBBB(28) => R(15),
                                    BBBB(27) => R(15), BBBB(26) => R(14), BBBB(25) => R(13), BBBB(24) => R(12),
                                    BBBB(23) => R(11), BBBB(22) => R(10), BBBB(21) => R(9), BBBB(20) => R(8),
    				     BBBB(19) => R(7), BBBB(18) => R(6), BBBB(17) => R(5), BBBB(16) => R(4),
    				     BBBB(15) => R(3), BBBB(14) => R(2), BBBB(13) => R(1), BBBB(12) => R(0),
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT12, Cin4 => '0', Cout4 => C1);
    				     				     				     			     
    RA3212:Ripple_Adder_32Bits port map(AAAA => OUT12,
    				     BBBB(31) => S(15), BBBB(30) => S(15), BBBB(29) => S(15), BBBB(28) => S(15),
                                    BBBB(27) => S(14), BBBB(26) => S(13), BBBB(25) => S(12), BBBB(24) => S(11),
                                    BBBB(23) => S(10), BBBB(22) => S(9), BBBB(21) => S(8), BBBB(20) => S(7),
    				     BBBB(19) => S(6), BBBB(18) => S(5), BBBB(17) => S(4), BBBB(16) => S(3),
    				     BBBB(15) => S(2), BBBB(14) => S(1), BBBB(13) => S(0), BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT13, Cin4 => '0', Cout4 => C1);
    RA3213:Ripple_Adder_32Bits port map(AAAA => OUT13,
    				     BBBB(31) => T(15), BBBB(30) => T(15), BBBB(29) => T(15), BBBB(28) => T(14),
                                    BBBB(27) => T(13), BBBB(26) => T(12), BBBB(25) => T(11), BBBB(24) => T(10),
                                    BBBB(23) => T(9), BBBB(22) => T(8), BBBB(21) => T(7), BBBB(20) => T(6),
    				     BBBB(19) => T(5), BBBB(18) => T(4), BBBB(17) => T(3), BBBB(16) => T(2),
    				     BBBB(15) => T(1), BBBB(14) => T(0), BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT14, Cin4 => '0', Cout4 => C1);
    RA3214:Ripple_Adder_32Bits port map(AAAA => OUT14,
    				     BBBB(31) => U(15), BBBB(30) => U(15), BBBB(29) => U(14), BBBB(28) => U(13),
                                    BBBB(27) => U(12), BBBB(26) => U(11), BBBB(25) => U(10), BBBB(24) => U(9),
                                    BBBB(23) => U(8), BBBB(22) => U(7), BBBB(21) => U(6), BBBB(20) => U(5),
    				     BBBB(19) => U(4), BBBB(18) => U(3), BBBB(17) => U(2), BBBB(16) => U(1),
    				     BBBB(15) => U(0), BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT15, Cin4 => '0', Cout4 => C1);
    RA3215:Ripple_Adder_32Bits port map(AAAA => OUT15,
    				     BBBB(31) => U(15), BBBB(30) => U(14), BBBB(29) => U(13), BBBB(28) => U(12),
                                    BBBB(27) => U(11), BBBB(26) => U(10), BBBB(25) => U(9), BBBB(24) => U(8),
                                    BBBB(23) => U(7), BBBB(22) => U(6), BBBB(21) => U(5), BBBB(20) => U(4),
    				     BBBB(19) => U(3), BBBB(18) => U(2), BBBB(17) => U(1), BBBB(16) => U(0),
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT16, Cin4 => '0', Cout4 => C1);
    RA3216:Ripple_Adder_32Bits port map(AAAA => OUT16,
    				     BBBB(31) => U(14), BBBB(30) => U(13), BBBB(29) => U(12), BBBB(28) => U(11),
                                    BBBB(27) => U(10), BBBB(26) => U(9), BBBB(25) => U(8), BBBB(24) => U(7),
                                    BBBB(23) => U(6), BBBB(22) => U(5), BBBB(21) => U(4), BBBB(20) => U(3),
    				     BBBB(19) => U(2), BBBB(18) => U(1), BBBB(17) => U(0), BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT17, Cin4 => '0', Cout4 => C1);
    RA3217:Ripple_Adder_32Bits port map(AAAA => OUT17,
    				     BBBB(31) => U(13), BBBB(30) => U(12), BBBB(29) => U(11), BBBB(28) => U(10),
                                    BBBB(27) => U(9), BBBB(26) => U(8), BBBB(25) => U(7), BBBB(24) => U(6),
                                    BBBB(23) => U(5), BBBB(22) => U(4), BBBB(21) => U(3), BBBB(20) => U(2),
    				     BBBB(19) => U(1), BBBB(18) => U(0), BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT18, Cin4 => '0', Cout4 => C1);
    RA3218:Ripple_Adder_32Bits port map(AAAA => OUT18,
    				     BBBB(31) => U(12), BBBB(30) => U(11), BBBB(29) => U(10), BBBB(28) => U(9),
                                    BBBB(27) => U(8), BBBB(26) => U(7), BBBB(25) => U(6), BBBB(24) => U(5),
                                    BBBB(23) => U(4), BBBB(22) => U(3), BBBB(21) => U(2), BBBB(20) => U(1),
    				     BBBB(19) => U(0), BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT19, Cin4 => '0', Cout4 => C1);
    RA3219:Ripple_Adder_32Bits port map(AAAA => OUT19,
    				     BBBB(31) => U(11), BBBB(30) => U(10), BBBB(29) => U(9), BBBB(28) => U(8),
                                    BBBB(27) => U(7), BBBB(26) => U(6), BBBB(25) => U(5), BBBB(24) => U(4),
                                    BBBB(23) => U(3), BBBB(22) => U(2), BBBB(21) => U(1), BBBB(20) => U(0),
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT20, Cin4 => '0', Cout4 => C1);
    RA3220:Ripple_Adder_32Bits port map(AAAA => OUT20,
    				     BBBB(31) => U(10), BBBB(30) => U(9), BBBB(29) => U(8), BBBB(28) => U(7),
                                    BBBB(27) => U(6), BBBB(26) => U(5), BBBB(25) => U(4), BBBB(24) => U(3),
                                    BBBB(23) => U(2), BBBB(22) => U(1), BBBB(21) => U(0), BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT21, Cin4 => '0', Cout4 => C1);
    RA3221:Ripple_Adder_32Bits port map(AAAA => OUT21,
    				     BBBB(31) => U(9), BBBB(30) => U(8), BBBB(29) => U(7), BBBB(28) => U(6),
                                    BBBB(27) => U(5), BBBB(26) => U(4), BBBB(25) => U(3), BBBB(24) => U(2),
                                    BBBB(23) => U(1), BBBB(22) => U(0), BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT22, Cin4 => '0', Cout4 => C1);
    RA3222:Ripple_Adder_32Bits port map(AAAA => OUT22,
    				     BBBB(31) => U(8), BBBB(30) => U(7), BBBB(29) => U(6), BBBB(28) => U(5),
                                    BBBB(27) => U(4), BBBB(26) => U(3), BBBB(25) => U(2), BBBB(24) => U(1),
                                    BBBB(23) => U(0), BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT23, Cin4 => '0', Cout4 => C1);
    RA3223:Ripple_Adder_32Bits port map(AAAA => OUT23,
    				     BBBB(31) => U(7), BBBB(30) => U(6), BBBB(29) => U(5), BBBB(28) => U(4),
                                    BBBB(27) => U(3), BBBB(26) => U(2), BBBB(25) => U(1), BBBB(24) => U(0),
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT24, Cin4 => '0', Cout4 => C1);
    RA3224:Ripple_Adder_32Bits port map(AAAA => OUT24,
    				     BBBB(31) => U(6), BBBB(30) => U(5), BBBB(29) => U(4), BBBB(28) => U(3),
                                    BBBB(27) => U(2), BBBB(26) => U(1), BBBB(25) => U(0), BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT25, Cin4 => '0', Cout4 => C1);
    RA3225:Ripple_Adder_32Bits port map(AAAA => OUT25,
    				     BBBB(31) => U(5), BBBB(30) => U(4), BBBB(29) => U(3), BBBB(28) => U(2),
                                    BBBB(27) => U(1), BBBB(26) => U(0), BBBB(25) => '0', BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT26, Cin4 => '0', Cout4 => C1);
    RA3226:Ripple_Adder_32Bits port map(AAAA => OUT26,
    				     BBBB(31) => U(4), BBBB(30) => U(3), BBBB(29) => U(2), BBBB(28) => U(1),
                                    BBBB(27) => U(0), BBBB(26) => '0', BBBB(25) => '0', BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT27, Cin4 => '0', Cout4 => C1);
    RA3227:Ripple_Adder_32Bits port map(AAAA => OUT27,
    				     BBBB(31) => U(3), BBBB(30) => U(2), BBBB(29) => U(1), BBBB(28) => U(0),
                                    BBBB(27) => '0', BBBB(26) => '0', BBBB(25) => '0', BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT28, Cin4 => '0', Cout4 => C1);
    RA3228:Ripple_Adder_32Bits port map(AAAA => OUT28,
    				     BBBB(31) => U(2), BBBB(30) => U(1), BBBB(29) => U(0), BBBB(28) => '0',
                                    BBBB(27) => '0', BBBB(26) => '0', BBBB(25) => '0', BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT29, Cin4 => '0', Cout4 => C1);
    RA3229:Ripple_Adder_32Bits port map(AAAA => OUT29,
    				     BBBB(31) => U(1), BBBB(30) => U(0), BBBB(29) => '0', BBBB(28) => '0',
                                    BBBB(27) => '0', BBBB(26) => '0', BBBB(25) => '0', BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT30, Cin4 => '0', Cout4 => C1);
    RA3230:Ripple_Adder_32Bits port map(AAAA => OUT30,
    				     BBBB(31) => U(0), BBBB(30) => '0', BBBB(29) => '0', BBBB(28) => '0',
                                    BBBB(27) => '0', BBBB(26) => '0', BBBB(25) => '0', BBBB(24) => '0',
                                    BBBB(23) => '0', BBBB(22) => '0', BBBB(21) => '0', BBBB(20) => '0',
    				     BBBB(19) => '0', BBBB(18) => '0', BBBB(17) => '0', BBBB(16) => '0',
    				     BBBB(15) => '0', BBBB(14) => '0', BBBB(13) => '0', BBBB(12) => '0',
                                    BBBB(11) => '0', BBBB(10) => '0', BBBB(9) => '0', BBBB(8) => '0',
                                    BBBB(7) => '0', BBBB(6) => '0', BBBB(5) => '0', BBBB(4) => '0',
    				     BBBB(3) => '0', BBBB(2) => '0', BBBB(1) => '0', BBBB(0) => '0',
    				     YYYY => OUT31, Cin4 => '0', Cout4 => C1);
    Z <= OUT31;

end Structural;       
