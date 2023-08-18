--COMANDO CASE
--PORTA LÓGICA OR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


architecture caseor of estrutura is
signal x: std_logic_vector (1 downto 0);
begin
x<= a & b;
process (a, b)
begin
case x is
when "00" => c <='0';
when "01" => c <='1';
when "10" => c <='1';
when "11" => c <='1';
end case;
end process;
end caseor;
