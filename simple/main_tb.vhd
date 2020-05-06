-- -------------------------------------------------------------------------------
-- This file has been automatically generated by the Caph compiler (version 2.8.5)
-- from file main.cph, on 2020-02-19 at 21:55:37, by <unknown>
-- For more information, see : http://caph.univ-bpclermont.fr
-- -------------------------------------------------------------------------------

library ieee,caph;
use ieee.std_logic_1164.all;
use caph.core.all;
use caph.data_types.all;
use ieee.numeric_std.all;

entity main_tb is
end main_tb;

architecture arch of main_tb is

component main_net is
  port (
    w7_f: out std_logic;
    w7: in std_logic_vector(7 downto 0);
    w7_wr: in std_logic;
    w18_e: out std_logic;
    w18: out std_logic_vector(7 downto 0);
    w18_rd: in std_logic;
    clock: in std_logic;
    reset: in std_logic
    );
end component;

signal w18_e : std_logic;
signal w18 : std_logic_vector(7 downto 0);
signal w18_rd : std_logic;
signal w7_f : std_logic;
signal w7 : std_logic_vector(7 downto 0);
signal w7_wr : std_logic;
signal clock: std_logic;
signal reset: std_logic;

begin
  B2: stream_out generic map ("result.bin",8) port map(w18_e,w18,w18_rd,clock,reset);
  B1: stream_in generic map ("sample.bin",8,1,false,0 ns) port map(w7_f,w7,w7_wr,clock,reset);
  N: main_net port map(w7_f,w7,w7_wr,w18_e,w18,w18_rd,clock,reset);

process                     -- Initial reset
begin
  reset <= '0';
  wait for 1 ns;
  reset <= '1';
  wait;
end process;

process                     -- Clock
begin
  clock <= '1';
  wait for 5 ns;
  clock <= '0';
  wait for 5 ns;
end process;

end arch;