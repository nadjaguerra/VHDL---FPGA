--COMANDO IF
--PORTA LÓGICA OR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

architecture orif of estrutura is
signal x: std_logic_vector(1 downto 0);
begin
x <= a & b;
process (a, b)
begin
if (x<="00") then
c<='0';
else
c<='1';
end if;
end process;
end orif;
