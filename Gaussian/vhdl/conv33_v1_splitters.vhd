-- -------------------------------------------------------------------------------
-- This file has been automatically generated by the Caph compiler (version 2.8.5)
-- from file main.cph, on 2020-05-08 at 00:10:27, by <unknown>
-- For more information, see : http://caph.univ-bpclermont.fr
-- -------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity split6 is
  generic ( size: integer := 10);
  port (  
       d_f:    out std_logic;
       d :     in std_logic_vector (size-1 downto 0);
       d_wr :  in std_logic;
       d1_f :  in std_logic;
       d1 :    out std_logic_vector(size-1 downto 0);
       d1_wr : out std_logic;
       d2_f :  in std_logic;
       d2 :    out std_logic_vector(size-1 downto 0);
       d2_wr : out std_logic;
       d3_f :  in std_logic;
       d3 :    out std_logic_vector(size-1 downto 0);
       d3_wr : out std_logic;
       d4_f :  in std_logic;
       d4 :    out std_logic_vector(size-1 downto 0);
       d4_wr : out std_logic;
       d5_f :  in std_logic;
       d5 :    out std_logic_vector(size-1 downto 0);
       d5_wr : out std_logic;
       d6_f :  in std_logic;
       d6 :    out std_logic_vector(size-1 downto 0);
       d6_wr : out std_logic
       );
end split6;


architecture arch of split6 is
begin
  d1 <= d;
  d2 <= d;
  d3 <= d;
  d4 <= d;
  d5 <= d;
  d6 <= d;
  d1_wr <= d_wr;
  d2_wr <= d_wr;
  d3_wr <= d_wr;
  d4_wr <= d_wr;
  d5_wr <= d_wr;
  d6_wr <= d_wr;
  d_f <= d1_f or d2_f or d3_f or d4_f or d5_f or d6_f;
end arch;


library ieee;
use ieee.std_logic_1164.all;

entity split2 is
  generic ( size: integer := 10);
  port (  
       d_f:    out std_logic;
       d :     in std_logic_vector (size-1 downto 0);
       d_wr :  in std_logic;
       d1_f :  in std_logic;
       d1 :    out std_logic_vector(size-1 downto 0);
       d1_wr : out std_logic;
       d2_f :  in std_logic;
       d2 :    out std_logic_vector(size-1 downto 0);
       d2_wr : out std_logic
       );
end split2;


architecture arch of split2 is
begin
  d1 <= d;
  d2 <= d;
  d1_wr <= d_wr;
  d2_wr <= d_wr;
  d_f <= d1_f or d2_f;
end arch;


library ieee;
use ieee.std_logic_1164.all;

entity split3 is
  generic ( size: integer := 10);
  port (  
       d_f:    out std_logic;
       d :     in std_logic_vector (size-1 downto 0);
       d_wr :  in std_logic;
       d1_f :  in std_logic;
       d1 :    out std_logic_vector(size-1 downto 0);
       d1_wr : out std_logic;
       d2_f :  in std_logic;
       d2 :    out std_logic_vector(size-1 downto 0);
       d2_wr : out std_logic;
       d3_f :  in std_logic;
       d3 :    out std_logic_vector(size-1 downto 0);
       d3_wr : out std_logic
       );
end split3;


architecture arch of split3 is
begin
  d1 <= d;
  d2 <= d;
  d3 <= d;
  d1_wr <= d_wr;
  d2_wr <= d_wr;
  d3_wr <= d_wr;
  d_f <= d1_f or d2_f or d3_f;
end arch;


