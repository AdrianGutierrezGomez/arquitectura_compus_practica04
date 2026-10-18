library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity incrementer_12bit is
    port (
        input_val : in  std_logic_vector(11 downto 0);
        output_val: out std_logic_vector(11 downto 0)
    );
end incrementer_12bit;

architecture Behavioral of incrementer_12bit is
begin
    output_val <= std_logic_vector(unsigned(input_val) + 1); -- Incrementar en 1
end Behavioral;   