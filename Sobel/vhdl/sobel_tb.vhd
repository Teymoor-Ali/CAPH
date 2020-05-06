-- -------------------------------------------------------------------------------
-- This file has been automatically generated by the Caph compiler (version 2.8.5)
-- from file main.cph, on 2020-05-06 at 15:29:19, by <unknown>
-- For more information, see : http://caph.univ-bpclermont.fr
-- -------------------------------------------------------------------------------

library ieee,caph;
use ieee.std_logic_1164.all;
use caph.core.all;
use caph.data_types.all;
use ieee.numeric_std.all;

entity sobel_tb is
end sobel_tb;

architecture arch of sobel_tb is

component sobel_net is
  port (
    w11_f: out std_logic;
    w11: in std_logic_vector(13 downto 0);
    w11_wr: in std_logic;
    w31_e: out std_logic;
    w31: out std_logic_vector(9 downto 0);
    w31_rd: in std_logic;
    clock: in std_logic;
    reset: in std_logic
    );
end component;

signal w31_e : std_logic;
signal w31 : std_logic_vector(9 downto 0);
signal w31_rd : std_logic;
signal w11_f : std_logic;
signal w11 : std_logic_vector(13 downto 0);
signal w11_wr : std_logic;
signal clock: std_logic;
signal reset: std_logic;

begin
  B2: stream_out generic map ("result.bin",10) port map(w31_e,w31,w31_rd,clock,reset);
  B1: stream_in generic map ("pcb.bin",14,1,false,0 ns) port map(w11_f,w11,w11_wr,clock,reset);
  N: sobel_net port map(w11_f,w11,w11_wr,w31_e,w31,w31_rd,clock,reset);

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
