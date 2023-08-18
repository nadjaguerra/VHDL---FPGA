----SOMADOR COMPLETO

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



----PROGRAMA SECUNDÁRIO
entity programa_secundario is
port (
a, b, cin: in std_logic;
s, cout: out std_logic
);
end programa_secundario;
architecture soma of programa_secundario is
begin
s<= a xor b xor cin;
cout<= (a and cin) or (b and cin) or ( a and b);
end soma;
----PROGRAMA PRINCIPAL
architecture hardware of teste0 is
signal c_aux:std_logic_vector(3 downto 0);
begin
sm0: entity work.programa_secundario
port map (a => ehkey(0), b => ehkey(1), cin=> ehkey(2), s=> led(0), cout =>c_aux(0));
sm1: entity work.programa_secundario
port map (a => ehkey(3), b => ehkey(4), cin => c_aux(0), s=> led(1), cout =>c_aux(1));
sm2: entity work.programa_secundario
port map (a => ehkey(5), b => ehkey(6), cin => c_aux(1), s=> led(2), cout =>c_aux(2));
sm3: entity work.programa_secundario
port map (a => ehkey(7), b => ehkey(8), cin => c_aux(2), s=> led(3), cout =>c_aux(3));
end hardware;