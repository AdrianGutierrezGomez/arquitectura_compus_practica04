library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2a1_12bit is
	Port ( 
	 registromPC : in STD_LOGIC_VECTOR (11 downto 0);
	 D : in STD_LOGIC_VECTOR (11 downto 0);
	 sel : in STD_LOGIC;
	 output : out STD_LOGIC_VECTOR (11 downto 0));

end mux2a1_12bit;

architecture Behavioral of mux2a1_12bit is
begin
process(registromPC,D,sel)
begin
	if sel = '0'then
		output <= registromPC;
	else 
		output <= D;
	end if;
end process;
end Behavioral;