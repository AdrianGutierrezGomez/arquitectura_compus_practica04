library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memoria_microprograma is
    Port (
        clk       : in  STD_LOGIC;
        addr      : in  STD_LOGIC_VECTOR(3 downto 0);  -- 4 bits de dirección (Y)

        -- Salidas desglosadas hacia el resto del circuito
        liga_12b  : out STD_LOGIC_VECTOR(11 downto 0); -- Liga extendida a 12 bits
        instr     : out STD_LOGIC_VECTOR(1 downto 0);  -- Instrucción del Secuenciador
        prueba    : out STD_LOGIC_VECTOR(1 downto 0);  -- Selección de condición
        vf        : out STD_LOGIC;                     -- Bit Verdadero/Falso
        salidas   : out STD_LOGIC_VECTOR(3 downto 0)   -- Salidas S0, S1, S2, S3
    );
end memoria_microprograma;

architecture Behavioral of memoria_microprograma is

    -- Definición del tipo de arreglo para la ROM (16 localidades x 13 bits)
    type rom_type is array (0 to 15) of STD_LOGIC_VECTOR(12 downto 0);

    -- Contenido de la Tabla 1 de la Práctica 4 (Liga & Instr & Prueba & VF & Salidas)
    constant ROM : rom_type := (
        0  => "0000" & "00" & "00" & '0' & "1100", -- Estado 0000 (C)
        1  => "0000" & "00" & "00" & '0' & "0110", -- Estado 0001 (C)
        2  => "0000" & "10" & "00" & '0' & "0001", -- Estado 0010 (ST)
        3  => "0011" & "01" & "01" & '0' & "0010", -- Estado 0011 (SCC)
        4  => "0000" & "11" & "11" & '1' & "1000", -- Estado 0100 (SCI)
        5  => "0001" & "01" & "00" & '0' & "1100", -- Estado 0101 (SCC)
        6  => "0000" & "00" & "00" & '0' & "0011", -- Estado 0110 (C)
        7  => "0000" & "01" & "00" & '0' & "0001", -- Estado 0111 (SCC)
        8  => "0000" & "00" & "00" & '0' & "1000", -- Estado 1000 (C)
        9  => "0000" & "11" & "11" & '1' & "0000", -- Estado 1001 (SCI)
        10 => "0001" & "01" & "00" & '0' & "1100", -- Estado 1010 (SCC)
        11 => "0000" & "00" & "00" & '0' & "0101", -- Estado 1011 (C)
        12 => "0000" & "01" & "00" & '0' & "0001", -- Estado 1100 (SCC)
        13 => "1101" & "01" & "10" & '1' & "0010", -- Estado 1101 (SCC)
        14 => "1001" & "01" & "00" & '0' & "0000", -- Estado 1110 (SCC)
        others => (others => '0')                  -- Estado 1111 (Default)
    );

    -- Registro Pipeline de 13 bits
    signal reg_pipeline : STD_LOGIC_VECTOR(12 downto 0) := (others => '0');

begin

    -- Lectura sincrónica de la ROM guardada en el Registro Pipeline
    process(clk)
    begin
        if rising_edge(clk) then
            reg_pipeline <= ROM(to_integer(unsigned(addr)));
        end if;
    end process;

    -- Conexión de salidas desglosadas
    liga_12b <= "00000000" & reg_pipeline(12 downto 9); -- Liga extendida a 12 bits
    instr    <= reg_pipeline(8 downto 7);
    prueba   <= reg_pipeline(6 downto 5);
    vf       <= reg_pipeline(4);
    salidas  <= reg_pipeline(3 downto 0);

end Behavioral;
