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
	INC_12 : entity work.incrementer_12bit 
		port map ( 
			input_val => wire_uPC_pres, -- Lee la dirección actual Y 
			output_val => wire_uPC_inc -- Entrega Y + 1 
		);
		
	-- 4\. Instanciación del Multiplexor 2 a 1 
	MUX_12 : entity work.mux2a1_12bit 
		port map ( 
			registromPC => wire_uPC_inc, -- Entrada '0': Dirección incrementada 
			D => D_salto, -- Entrada '1': Dirección de salto 
			sel => wire_sel_mux, -- Selección que viene de la Lógica Interna 
			output => wire_next_addr -- Salida hacia la entrada del Registro 
		);
	-- 5\. Instanciación de la Lógica Interna 
	LOG_INT : entity work.logica_interna_secuenciador
		port map ( 
				cc => cc, 
				instr => instr, 
				sel_mux => wire_sel_mux, 
				PL => PL, 
				MAPP => MAPP, 
				VECT => VECT 
			); 
	end Structural;