library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity secuenciador_12bit is 
	Port ( 
		clk : in STD_LOGIC; 
		reset : in STD_LOGIC; 
		cc : in STD_LOGIC; 
		instr : in STD_LOGIC_VECTOR (1 downto 0); 
		D_salto : in STD_LOGIC_VECTOR (11 downto 0); -- Dirección de salto externa (Liga/Mapa/Vector)
		Y : out STD_LOGIC_VECTOR (11 downto 0); -- Dirección presente a la memoria 
		PL : out STD_LOGIC; 
		MAPP : out STD_LOGIC; 
		VECT : out STD_LOGIC 
	); 
end secuenciador_12bit;

architecture Structural of  secuenciador_12bit is 
	-- 1\. Declaración de Cables Internos 
	signal wire_uPC_pres : STD_LOGIC_VECTOR(11 downto 0);
	signal wire_uPC_inc : STD_LOGIC_VECTOR(11 downto 0); 
	signal wire_next_addr : STD_LOGIC_VECTOR(11 downto 0); 
	signal wire_sel_mux : STD_LOGIC; 
	
begin
	
	-- Asignación directa de la dirección presente a la salida general Y
	Y <= wire_uPC_pres; 
	
	-- 2\. Instanciación del Registro µPC 
	REG_uPC : entity work.register12mPC 
		port map ( 
			clk => clk, 
			reset => reset, 
			D => wire_next_addr, -- Recibe la dirección elegida por el MUX 
			Q => wire_uPC_pres -- Entrega la dirección actual 
		); 
			
	-- 3\. Instanciación del Incrementador