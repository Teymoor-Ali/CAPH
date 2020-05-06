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

entity mul_act is
   port (
    i1_empty: in std_logic;
    i1: in std_logic_vector(7 downto 0);
    i1_rd: out std_logic;
    i2_empty: in std_logic;
    i2: in std_logic_vector(7 downto 0);
    i2_rd: out std_logic;
    o_full: in std_logic;
    o: out std_logic_vector(7 downto 0);
    o_wr: out std_logic;
    clock: in std_logic;
    reset: in std_logic
    );
end mul_act;

architecture FSM of mul_act is
begin
  comb: process(i1, i1_empty, i2, i2_empty, o_full)
    variable p_x : unsigned(7 downto 0);
    variable p_y : unsigned(7 downto 0);
  begin
    -- i2.rdy, i1.rdy, o.rdy / p_y=i2, p_x=i1, wr(o,p_x*p_y)
    if i2_empty='0' and i1_empty='0' and o_full='0' then
      p_y := from_std_logic_vector(i2,8);
      i2_rd <= '1';
      p_x := from_std_logic_vector(i1,8);
      i1_rd <= '1';
      o <= std_logic_vector(mul(p_x,p_y));
      o_wr <= '1';
    else
      i1_rd <= '0';
      i2_rd <= '0';
      o_wr <= '0';
      o <= (others => 'X');
    end if;
  end process;
  seq: process(clock, reset)
  begin
    if (reset='0') then
    elsif rising_edge(clock) then
    end if;
  end process;
end FSM;