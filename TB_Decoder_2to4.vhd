library ieee;
use ieee.std_logic_1164.all;

entity TB_Decoder_2to4 is 
end TB_Decoder_2to4;

architecture test of TB_Decoder_2to4 is
    component decoder_2to4
    port(
        a, b : in std_logic;
        w, x, y, z : out std_logic
    );
    end component;

     --inputs
     signal a : std_logic := '0';
     signal b : std_logic := '0';

     --outputs
     signal w : std_logic;
     signal x : std_logic;
     signal y : std_logic;
     signal z : std_logic;

     begin
        uut : decoder_2to4 port map (a, b, w, x, y, z);
        process
        begin
            wait for 100 ns;
            a <= '1';
            wait for 100 ns;
            b <= '1';
            wait for 100 ns;
            a <= '0';
        end process;
     end;
 
