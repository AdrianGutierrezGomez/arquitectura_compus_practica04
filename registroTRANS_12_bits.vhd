library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity register12TRANS is 
	Port ( 
		clk : in STD_LOGIC; 
		reset : in STD_LOGIC; -- Reset activo en bajo ('0') 
		D : in STD_LOGIC_VECTOR (11 downto 0); 
		Q : out STD_LOGIC_VECTOR (11 downto 0) 
	); 		
end register12TRANS; 
		
architecture Behavioral of register12TRANS is 
	constant s0 : STD_LOGIC_VECTOR(11 downto 0) := (others => '0'); 
begin 
	process (clk, reset) 
	begin 
		if reset = '0' then 
			Q <= s0; 
		elsif rising_edge(clk) then 
			Q <= D; 
		end if; 
	end process; 
end Behavioral;