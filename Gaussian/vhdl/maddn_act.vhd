-- -------------------------------------------------------------------------------
-- This file has been automatically generated by the Caph compiler (version 2.8.5)
-- from file main.cph, on 2020-05-08 at 00:10:27, by <unknown>
-- For more information, see : http://caph.univ-bpclermont.fr
-- -------------------------------------------------------------------------------

library ieee,caph,work;
use ieee.std_logic_1164.all;
use caph.core.all;
use caph.data_types.all;
use ieee.numeric_std.all;
use work.all;
use work.conv33_v1_globals.all;

entity maddn_act is
   generic (
    k: array9_s16;
    n: unsigned(3 downto 0)
    );
  port (
    x0_empty: in std_logic;
    x0: in std_logic_vector(17 downto 0);
    x0_rd: out std_logic;
    x1_empty: in std_logic;
    x1: in std_logic_vector(17 downto 0);
    x1_rd: out std_logic;
    x2_empty: in std_logic;
    x2: in std_logic_vector(17 downto 0);
    x2_rd: out std_logic;
    x3_empty: in std_logic;
    x3: in std_logic_vector(17 downto 0);
    x3_rd: out std_logic;
    x4_empty: in std_logic;
    x4: in std_logic_vector(17 downto 0);
    x4_rd: out std_logic;
    x5_empty: in std_logic;
    x5: in std_logic_vector(17 downto 0);
    x5_rd: out std_logic;
    x6_empty: in std_logic;
    x6: in std_logic_vector(17 downto 0);
    x6_rd: out std_logic;
    x7_empty: in std_logic;
    x7: in std_logic_vector(17 downto 0);
    x7_rd: out std_logic;
    x8_empty: in std_logic;
    x8: in std_logic_vector(17 downto 0);
    x8_rd: out std_logic;
    s_full: in std_logic;
    s: out std_logic_vector(17 downto 0);
    s_wr: out std_logic;
    clock: in std_logic;
    reset: in std_logic
    );
end maddn_act;

architecture FSM of maddn_act is
begin
  comb: process(x0, x0_empty, x1, x1_empty, x2, x2_empty, x3, x3_empty, x4, x4_empty, x5, x5_empty, x6, x6_empty, x7, x7_empty, x8, x8_empty, s_full)
    variable p_x0 : signed(15 downto 0);
    variable p_x1 : signed(15 downto 0);
    variable p_x2 : signed(15 downto 0);
    variable p_x3 : signed(15 downto 0);
    variable p_x4 : signed(15 downto 0);
    variable p_x5 : signed(15 downto 0);
    variable p_x6 : signed(15 downto 0);
    variable p_x7 : signed(15 downto 0);
    variable p_x8 : signed(15 downto 0);
  begin
    -- x8.rdy, x8=SoS, x7.rdy, x7=SoS, x6.rdy, x6=SoS, x5.rdy, x5=SoS, x4.rdy, x4=SoS, x3.rdy, x3=SoS, x2.rdy, x2=SoS, x1.rdy, x1=SoS, x0.rdy, x0=SoS, s.rdy / rd(x8), rd(x7), rd(x6), rd(x5), rd(x4), rd(x3), rd(x2), rd(x1), rd(x0), wr(s,SoS)
    if x8_empty='0' and dc_s16.is_soS(x8) and x7_empty='0' and dc_s16.is_soS(x7) and x6_empty='0' and dc_s16.is_soS(x6) and x5_empty='0' and dc_s16.is_soS(x5) and x4_empty='0' and dc_s16.is_soS(x4) and x3_empty='0' and dc_s16.is_soS(x3) and x2_empty='0' and dc_s16.is_soS(x2) and x1_empty='0' and dc_s16.is_soS(x1) and x0_empty='0' and dc_s16.is_soS(x0) and s_full='0' then
      x8_rd <= '1';
      x7_rd <= '1';
      x6_rd <= '1';
      x5_rd <= '1';
      x4_rd <= '1';
      x3_rd <= '1';
      x2_rd <= '1';
      x1_rd <= '1';
      x0_rd <= '1';
      s <= dc_s16.mk_soS;
      s_wr <= '1';
    -- x8.rdy, x8=Data(p_x8), x7.rdy, x7=Data(p_x7), x6.rdy, x6=Data(p_x6), x5.rdy, x5=Data(p_x5), x4.rdy, x4=Data(p_x4), x3.rdy, x3=Data(p_x3), x2.rdy, x2=Data(p_x2), x1.rdy, x1=Data(p_x1), x0.rdy, x0=Data(p_x0), s.rdy / p_x8=x8.data, p_x7=x7.data, p_x6=x6.data, p_x5=x5.data, p_x4=x4.data, p_x3=x3.data, p_x2=x2.data, p_x1=x1.data, p_x0=x0.data, wr(s,Data((k[0]*p_x8+k[1]*p_x7+k[2]*p_x6+k[3]*p_x5+k[4]*p_x4+k[5]*p_x3+k[6]*p_x2+k[7]*p_x1+k[8]*p_x0)>>n))
    elsif x8_empty='0' and dc_s16.is_data(x8) and x7_empty='0' and dc_s16.is_data(x7) and x6_empty='0' and dc_s16.is_data(x6) and x5_empty='0' and dc_s16.is_data(x5) and x4_empty='0' and dc_s16.is_data(x4) and x3_empty='0' and dc_s16.is_data(x3) and x2_empty='0' and dc_s16.is_data(x2) and x1_empty='0' and dc_s16.is_data(x1) and x0_empty='0' and dc_s16.is_data(x0) and s_full='0' then
      p_x8 := dc_s16.get_data(x8);
      x8_rd <= '1';
      p_x7 := dc_s16.get_data(x7);
      x7_rd <= '1';
      p_x6 := dc_s16.get_data(x6);
      x6_rd <= '1';
      p_x5 := dc_s16.get_data(x5);
      x5_rd <= '1';
      p_x4 := dc_s16.get_data(x4);
      x4_rd <= '1';
      p_x3 := dc_s16.get_data(x3);
      x3_rd <= '1';
      p_x2 := dc_s16.get_data(x2);
      x2_rd <= '1';
      p_x1 := dc_s16.get_data(x1);
      x1_rd <= '1';
      p_x0 := dc_s16.get_data(x0);
      x0_rd <= '1';
      s <= dc_s16.mk_data(SHIFT_RIGHT(((((((((mul(k(0),p_x8)) + (mul(k(1),p_x7))) + (mul(k(2),p_x6))) + (mul(k(3),p_x5))) + (mul(k(4),p_x4))) + (mul(k(5),p_x3))) + (mul(k(6),p_x2))) + (mul(k(7),p_x1))) + (mul(k(8),p_x0)), to_integer(n)));
      s_wr <= '1';
    -- x8.rdy, x8=EoS, x7.rdy, x7=EoS, x6.rdy, x6=EoS, x5.rdy, x5=EoS, x4.rdy, x4=EoS, x3.rdy, x3=EoS, x2.rdy, x2=EoS, x1.rdy, x1=EoS, x0.rdy, x0=EoS, s.rdy / rd(x8), rd(x7), rd(x6), rd(x5), rd(x4), rd(x3), rd(x2), rd(x1), rd(x0), wr(s,EoS)
    elsif x8_empty='0' and dc_s16.is_eoS(x8) and x7_empty='0' and dc_s16.is_eoS(x7) and x6_empty='0' and dc_s16.is_eoS(x6) and x5_empty='0' and dc_s16.is_eoS(x5) and x4_empty='0' and dc_s16.is_eoS(x4) and x3_empty='0' and dc_s16.is_eoS(x3) and x2_empty='0' and dc_s16.is_eoS(x2) and x1_empty='0' and dc_s16.is_eoS(x1) and x0_empty='0' and dc_s16.is_eoS(x0) and s_full='0' then
      x8_rd <= '1';
      x7_rd <= '1';
      x6_rd <= '1';
      x5_rd <= '1';
      x4_rd <= '1';
      x3_rd <= '1';
      x2_rd <= '1';
      x1_rd <= '1';
      x0_rd <= '1';
      s <= dc_s16.mk_eoS;
      s_wr <= '1';
    else
      x0_rd <= '0';
      x1_rd <= '0';
      x2_rd <= '0';
      x3_rd <= '0';
      x4_rd <= '0';
      x5_rd <= '0';
      x6_rd <= '0';
      x7_rd <= '0';
      x8_rd <= '0';
      s_wr <= '0';
      s <= (others => 'X');
    end if;
  end process;
  seq: process(clock, reset)
  begin
    if (reset='0') then
    elsif rising_edge(clock) then
    end if;
  end process;
end FSM;
