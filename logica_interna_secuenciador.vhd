library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logica_interna_secuenciador is

Port (
	-- Entradas
	cc: in STD_LOGIC;
	instr: in STD_LOGIC_VECTOR (1 downto 0);
	-- Salidas
	sel_mux: out STD_LOGIC;
	PL: out STD_LOGIC;
	MAPP: out STD_LOGIC;
	VECT: out STD_LOGIC
);

end logica_interna_secuenciador;

architecture Behavioral of logica_interna_secuenciador is
begin 

process(cc,instr)
begin
	case instr is

		when "00" => 			-- continua
			sel_mux 	 <= '0';
			PL			 <= '1';
			MAPP 		 <= '1';
			VECT 		 <= '1';
			
		when "01"=> 			-- salto condicional
			if cc = '0' then  --salta 
				sel_mux  <= '1';
				PL 		<= '0';
				MAPP 		<= '1';
				VECT 		<= '1';
			else 					-- continua
				sel_mux  <= '0';
				PL 		<= '1';
				MAPP 		<= '1';
				VECT 		<= '1';
			end if;
			
		when "10" => 			-- salto transformacion
			sel_mux 	<= '1';
			PL 		<= '1';
			MAPP 		<= '0';
			VECT 		<= '1';
			
		when "11" => 			-- salto de interrupcion
			if cc = '0' then  --salta 
				sel_mux  <= '1';
				PL 		<= '1';
			   MAPP 		<= '1';
				VECT 		<= '0';
			else 					-- continua
				sel_mux  <= '0';
				PL 		<= '1';
			   MAPP 		<= '1';
				VECT 		<= '1';
			end if;
		when others => 
			sel_mux  <= '0'; 
			PL 		<= '1'; 
			MAPp 		<= '1'; 
			VECT 		<= '1';
	end case;
end process;
end Behavioral;
