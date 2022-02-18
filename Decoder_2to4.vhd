library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder_2to4 is
    port(
        a, b : in std_logic;
        w, x, y, z : out std_logic
    );
end decoder_2to4;

architecture dataflow of decoder_2to4 is
    begin
        w <= (not(a)) and not(b);
        x <= (not(a)) and b;
        y <= a and (not(b));
        z <= a and b;
    end dataflow;