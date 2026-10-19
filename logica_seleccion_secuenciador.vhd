library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logica_seleccion is
	 Port ( 
		-- Entradas de control (vienen del registro de la memoria) 
		vf : in STD_LOGIC; 
		prueba : in STD_LOGIC_VECTOR (1 downto 0);
		
		-- Entradas de condición externas a probar 
		Qx : in STD_LOGIC; 		-- prueba = "00" 
		X : in STD_LOGIC; 		-- prueba = "01" 
		Y_flag : in STD_LOGIC;  -- prueba = "10" 
		INT : in STD_LOGIC; 		-- prueba = "11"
		
		-- Salida hacia la entrada cc del secuenciador 
		cc : out STD_LOGIC
	 );
end logica_seleccion;

architecture Behavioral of logica_seleccion is
	signal aux_mux : STD_LOGIC; -- Cable interno para la salida del MUX 4 a 1
begin
	-- 1. MUX 4 a 1: Selecciona la bandera indicada por 'prueba' 
	process(prueba, Qx, X, Y_flag, INT) 
	begin 
		case prueba is 
			when "00" => aux_mux <= Qx; 
			when "01" => aux_mux <= X; 
			when "10" => aux_mux <= Y_flag; 
			when "11" => aux_mux <= INT; 
			when others => aux_mux <= '0'; 
		end case; 
	end process;
	-- 2\. Compuerta XOR: Compara la bandera seleccionada contra 'vf' 
	cc <= aux_mux xor vf; 
end Behavioral;