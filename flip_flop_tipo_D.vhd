----FlIP FLOP D

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--PROGRAMA SECUNDÁRIO
entity Flip_Flop_D is
port
(
D : in std_logic;
En: in std_logic;
Q : out std_logic
);
end Flip_Flop_D;
architecture behaviorOfTest of Flip_Flop_D is
--signal vtest: std_logic_vector(4 downto 0);
begin
process(En)
begin
if En='1' then
if D='1' then
Q<='1';
else
Q<='0';
end if;
end if;
end process;
end behaviorOfTest;

--PROGRAMA PRINCIPAL
entity teste0 is
port
(
--output ports
Y : out std_logic;
-- input ports
D1,En1,D2,En2 : in std_logic
);
end teste0;
architecture behaviorOfTest of teste0 is
signal A,B,C,D: std_logic;
begin
FLIP_FLOP1: entity work.Flip_Flop_D
port map(D => D1, En => En1, Q => A);
FLIP_FLOP2: entity work.Flip_Flop_D
port map(D => D2, En => En2, Q => B);
C <= A and B;
D <= (not A) and (not B);
Y <= not (C or D);
end behaviorOfTest;