-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Jun  5 14:03:32 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl /media/psf/Home/Uni/Cores/core-collection/simple_circuits/16_bit_alu_mips.vhd
-- Design      : alu
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alu is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cmd : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of alu : entity is true;
end alu;

architecture STRUCTURE of alu is
  signal a_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal b_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cmd_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal data5 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal r_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_OBUF[0]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[0]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[0]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[10]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_15_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_3_n_1\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_3_n_2\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_3_n_3\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[11]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[13]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_15_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_16_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_17_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_18_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_19_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_20_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_3_n_1\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_3_n_2\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_3_n_3\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[15]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[1]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[2]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_15_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_16_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_17_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_3_n_1\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_3_n_2\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_3_n_3\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[4]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[5]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_15_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_16_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_3_n_1\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_3_n_2\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_3_n_3\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[8]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_OBUF[9]_inst_i_9_n_0\ : STD_LOGIC;
  signal \NLW_r_OBUF[15]_inst_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_OBUF[0]_inst_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_OBUF[0]_inst_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_OBUF[0]_inst_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_OBUF[0]_inst_i_9\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_OBUF[10]_inst_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_OBUF[10]_inst_i_8\ : label is "soft_lutpair20";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \r_OBUF[11]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_OBUF[11]_inst_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_OBUF[12]_inst_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_OBUF[12]_inst_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_OBUF[12]_inst_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_OBUF[13]_inst_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_OBUF[13]_inst_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_OBUF[14]_inst_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_OBUF[14]_inst_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_OBUF[14]_inst_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_OBUF[14]_inst_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_OBUF[14]_inst_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_OBUF[15]_inst_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_OBUF[15]_inst_i_17\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_OBUF[15]_inst_i_18\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_OBUF[15]_inst_i_19\ : label is "soft_lutpair14";
  attribute METHODOLOGY_DRC_VIOS of \r_OBUF[15]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_OBUF[15]_inst_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_OBUF[15]_inst_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_OBUF[1]_inst_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_OBUF[1]_inst_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_OBUF[1]_inst_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_OBUF[2]_inst_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_OBUF[2]_inst_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_OBUF[3]_inst_i_11\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_OBUF[3]_inst_i_13\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_OBUF[3]_inst_i_15\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_OBUF[3]_inst_i_17\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS of \r_OBUF[3]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_OBUF[3]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_OBUF[4]_inst_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_OBUF[4]_inst_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_OBUF[4]_inst_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_OBUF[4]_inst_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_OBUF[5]_inst_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_OBUF[5]_inst_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_OBUF[6]_inst_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_OBUF[6]_inst_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_OBUF[7]_inst_i_14\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_OBUF[7]_inst_i_16\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS of \r_OBUF[7]_inst_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_OBUF[7]_inst_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_OBUF[8]_inst_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_OBUF[8]_inst_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_OBUF[8]_inst_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_OBUF[8]_inst_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_OBUF[9]_inst_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_OBUF[9]_inst_i_3\ : label is "soft_lutpair16";
begin
\a_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(0),
      O => a_IBUF(0)
    );
\a_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(10),
      O => a_IBUF(10)
    );
\a_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(11),
      O => a_IBUF(11)
    );
\a_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(12),
      O => a_IBUF(12)
    );
\a_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(13),
      O => a_IBUF(13)
    );
\a_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(14),
      O => a_IBUF(14)
    );
\a_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(15),
      O => a_IBUF(15)
    );
\a_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(1),
      O => a_IBUF(1)
    );
\a_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(2),
      O => a_IBUF(2)
    );
\a_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(3),
      O => a_IBUF(3)
    );
\a_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(4),
      O => a_IBUF(4)
    );
\a_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(5),
      O => a_IBUF(5)
    );
\a_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(6),
      O => a_IBUF(6)
    );
\a_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(7),
      O => a_IBUF(7)
    );
\a_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(8),
      O => a_IBUF(8)
    );
\a_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(9),
      O => a_IBUF(9)
    );
\b_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(0),
      O => b_IBUF(0)
    );
\b_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(10),
      O => b_IBUF(10)
    );
\b_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(11),
      O => b_IBUF(11)
    );
\b_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(12),
      O => b_IBUF(12)
    );
\b_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(13),
      O => b_IBUF(13)
    );
\b_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(14),
      O => b_IBUF(14)
    );
\b_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(15),
      O => b_IBUF(15)
    );
\b_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(1),
      O => b_IBUF(1)
    );
\b_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(2),
      O => b_IBUF(2)
    );
\b_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(3),
      O => b_IBUF(3)
    );
\b_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(4),
      O => b_IBUF(4)
    );
\b_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(5),
      O => b_IBUF(5)
    );
\b_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(6),
      O => b_IBUF(6)
    );
\b_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(7),
      O => b_IBUF(7)
    );
\b_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(8),
      O => b_IBUF(8)
    );
\b_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(9),
      O => b_IBUF(9)
    );
\cmd_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cmd(0),
      O => cmd_IBUF(0)
    );
\cmd_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cmd(1),
      O => cmd_IBUF(1)
    );
\cmd_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => cmd(2),
      O => cmd_IBUF(2)
    );
\r_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(0),
      O => r(0)
    );
\r_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[0]_inst_i_2_n_0\,
      I1 => data0(0),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(0),
      I5 => b_IBUF(0),
      O => r_OBUF(0)
    );
\r_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(8),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(0),
      O => \r_OBUF[0]_inst_i_10_n_0\
    );
\r_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(0),
      I1 => cmd_IBUF(0),
      I2 => data5(0),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[0]_inst_i_5_n_0\,
      O => \r_OBUF[0]_inst_i_2_n_0\
    );
\r_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[0]_inst_i_6_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[2]_inst_i_6_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[1]_inst_i_6_n_0\,
      O => data6(0)
    );
\r_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[0]_inst_i_7_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[0]_inst_i_8_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[1]_inst_i_7_n_0\,
      O => data5(0)
    );
\r_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008F0F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[0]_inst_i_9_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(0),
      I4 => a_IBUF(0),
      O => \r_OBUF[0]_inst_i_5_n_0\
    );
\r_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(12),
      I1 => a_IBUF(4),
      I2 => b_IBUF(2),
      I3 => a_IBUF(8),
      I4 => b_IBUF(3),
      I5 => a_IBUF(0),
      O => \r_OBUF[0]_inst_i_6_n_0\
    );
\r_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_11_n_0\,
      I1 => b_IBUF(2),
      I2 => \r_OBUF[0]_inst_i_10_n_0\,
      O => \r_OBUF[0]_inst_i_7_n_0\
    );
\r_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[6]_inst_i_11_n_0\,
      I1 => b_IBUF(2),
      I2 => \r_OBUF[2]_inst_i_9_n_0\,
      O => \r_OBUF[0]_inst_i_8_n_0\
    );
\r_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => a_IBUF(0),
      I2 => b_IBUF(3),
      I3 => b_IBUF(1),
      O => \r_OBUF[0]_inst_i_9_n_0\
    );
\r_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(10),
      O => r(10)
    );
\r_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[10]_inst_i_2_n_0\,
      I1 => data0(10),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(10),
      I5 => b_IBUF(10),
      O => r_OBUF(10)
    );
\r_OBUF[10]_inst_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(10),
      I1 => a_IBUF(10),
      O => \r_OBUF[10]_inst_i_10_n_0\
    );
\r_OBUF[10]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FB0B0F00F808"
    )
        port map (
      I0 => a_IBUF(14),
      I1 => b_IBUF(2),
      I2 => b_IBUF(3),
      I3 => a_IBUF(15),
      I4 => b_IBUF(4),
      I5 => a_IBUF(10),
      O => \r_OBUF[10]_inst_i_11_n_0\
    );
\r_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(10),
      I1 => cmd_IBUF(0),
      I2 => data5(10),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[10]_inst_i_5_n_0\,
      O => \r_OBUF[10]_inst_i_2_n_0\
    );
\r_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[10]_inst_i_6_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[11]_inst_i_11_n_0\,
      O => data6(10)
    );
\r_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_12_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[11]_inst_i_13_n_0\,
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => \r_OBUF[10]_inst_i_7_n_0\,
      I5 => b_IBUF(0),
      O => data5(10)
    );
\r_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[10]_inst_i_8_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[10]_inst_i_9_n_0\,
      I4 => cmd_IBUF(0),
      I5 => \r_OBUF[10]_inst_i_10_n_0\,
      O => \r_OBUF[10]_inst_i_5_n_0\
    );
\r_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => a_IBUF(12),
      I1 => b_IBUF(1),
      I2 => a_IBUF(14),
      I3 => b_IBUF(2),
      I4 => a_IBUF(10),
      I5 => b_IBUF(3),
      O => \r_OBUF[10]_inst_i_6_n_0\
    );
\r_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[12]_inst_i_12_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[10]_inst_i_11_n_0\,
      O => \r_OBUF[10]_inst_i_7_n_0\
    );
\r_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_15_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[13]_inst_i_7_n_0\,
      O => \r_OBUF[10]_inst_i_8_n_0\
    );
\r_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => b_IBUF(2),
      I2 => a_IBUF(7),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[12]_inst_i_13_n_0\,
      O => \r_OBUF[10]_inst_i_9_n_0\
    );
\r_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(11),
      O => r(11)
    );
\r_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_2_n_0\,
      I1 => data0(11),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(11),
      I5 => b_IBUF(11),
      O => r_OBUF(11)
    );
\r_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(8),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(8),
      O => \r_OBUF[11]_inst_i_10_n_0\
    );
\r_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => a_IBUF(13),
      I1 => b_IBUF(1),
      I2 => a_IBUF(15),
      I3 => b_IBUF(2),
      I4 => a_IBUF(11),
      I5 => b_IBUF(3),
      O => \r_OBUF[11]_inst_i_11_n_0\
    );
\r_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F110E0"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(13),
      O => \r_OBUF[11]_inst_i_12_n_0\
    );
\r_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30F130E0"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(11),
      O => \r_OBUF[11]_inst_i_13_n_0\
    );
\r_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_15_n_0\,
      I1 => \r_OBUF[13]_inst_i_7_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[12]_inst_i_13_n_0\,
      I4 => b_IBUF(1),
      I5 => \r_OBUF[14]_inst_i_13_n_0\,
      O => \r_OBUF[11]_inst_i_14_n_0\
    );
\r_OBUF[11]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(4),
      I1 => b_IBUF(2),
      I2 => a_IBUF(0),
      I3 => b_IBUF(3),
      I4 => a_IBUF(8),
      O => \r_OBUF[11]_inst_i_15_n_0\
    );
\r_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(11),
      I1 => cmd_IBUF(0),
      I2 => data5(11),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[11]_inst_i_6_n_0\,
      O => \r_OBUF[11]_inst_i_2_n_0\
    );
\r_OBUF[11]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_OBUF[7]_inst_i_3_n_0\,
      CO(3) => \r_OBUF[11]_inst_i_3_n_0\,
      CO(2) => \r_OBUF[11]_inst_i_3_n_1\,
      CO(1) => \r_OBUF[11]_inst_i_3_n_2\,
      CO(0) => \r_OBUF[11]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a_IBUF(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \r_OBUF[11]_inst_i_7_n_0\,
      S(2) => \r_OBUF[11]_inst_i_8_n_0\,
      S(1) => \r_OBUF[11]_inst_i_9_n_0\,
      S(0) => \r_OBUF[11]_inst_i_10_n_0\
    );
\r_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[11]_inst_i_11_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[12]_inst_i_6_n_0\,
      O => data6(11)
    );
\r_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_12_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[11]_inst_i_13_n_0\,
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[12]_inst_i_8_n_0\,
      O => data5(11)
    );
\r_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[11]_inst_i_14_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(11),
      I4 => a_IBUF(11),
      O => \r_OBUF[11]_inst_i_6_n_0\
    );
\r_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(11),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(11),
      O => \r_OBUF[11]_inst_i_7_n_0\
    );
\r_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(10),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(10),
      O => \r_OBUF[11]_inst_i_8_n_0\
    );
\r_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(9),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(9),
      O => \r_OBUF[11]_inst_i_9_n_0\
    );
\r_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(12),
      O => r(12)
    );
\r_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[12]_inst_i_2_n_0\,
      I1 => data0(12),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(12),
      I5 => b_IBUF(12),
      O => r_OBUF(12)
    );
\r_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_OBUF[12]_inst_i_13_n_0\,
      I1 => \r_OBUF[14]_inst_i_13_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[13]_inst_i_7_n_0\,
      I4 => b_IBUF(1),
      I5 => \r_OBUF[13]_inst_i_8_n_0\,
      O => \r_OBUF[12]_inst_i_10_n_0\
    );
\r_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F110E0"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(14),
      O => \r_OBUF[12]_inst_i_11_n_0\
    );
\r_OBUF[12]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F110E0"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(12),
      O => \r_OBUF[12]_inst_i_12_n_0\
    );
\r_OBUF[12]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(5),
      I1 => b_IBUF(2),
      I2 => a_IBUF(1),
      I3 => b_IBUF(3),
      I4 => a_IBUF(9),
      O => \r_OBUF[12]_inst_i_13_n_0\
    );
\r_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(12),
      I1 => cmd_IBUF(0),
      I2 => data5(12),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[12]_inst_i_5_n_0\,
      O => \r_OBUF[12]_inst_i_2_n_0\
    );
\r_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[12]_inst_i_6_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[12]_inst_i_7_n_0\,
      O => data6(12)
    );
\r_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[12]_inst_i_8_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[12]_inst_i_9_n_0\,
      O => data5(12)
    );
\r_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[12]_inst_i_10_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(12),
      I4 => a_IBUF(12),
      O => \r_OBUF[12]_inst_i_5_n_0\
    );
\r_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => a_IBUF(14),
      I1 => b_IBUF(1),
      I2 => b_IBUF(3),
      I3 => a_IBUF(12),
      I4 => b_IBUF(2),
      O => \r_OBUF[12]_inst_i_6_n_0\
    );
\r_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => a_IBUF(15),
      I1 => b_IBUF(1),
      I2 => b_IBUF(3),
      I3 => a_IBUF(13),
      I4 => b_IBUF(2),
      O => \r_OBUF[12]_inst_i_7_n_0\
    );
\r_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[12]_inst_i_11_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[12]_inst_i_12_n_0\,
      O => \r_OBUF[12]_inst_i_8_n_0\
    );
\r_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300FF010300FE00"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => b_IBUF(2),
      I2 => b_IBUF(3),
      I3 => a_IBUF(15),
      I4 => b_IBUF(4),
      I5 => a_IBUF(13),
      O => \r_OBUF[12]_inst_i_9_n_0\
    );
\r_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(13),
      O => r(13)
    );
\r_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[13]_inst_i_2_n_0\,
      I1 => data0(13),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(13),
      I5 => b_IBUF(13),
      O => r_OBUF(13)
    );
\r_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \r_OBUF[13]_inst_i_3_n_0\,
      I1 => cmd_IBUF(1),
      I2 => data4(13),
      I3 => cmd_IBUF(0),
      I4 => b_IBUF(13),
      I5 => a_IBUF(13),
      O => \r_OBUF[13]_inst_i_2_n_0\
    );
\r_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[13]_inst_i_5_n_0\,
      I2 => cmd_IBUF(0),
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => \r_OBUF[13]_inst_i_6_n_0\,
      O => \r_OBUF[13]_inst_i_3_n_0\
    );
\r_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \r_OBUF[13]_inst_i_7_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[13]_inst_i_8_n_0\,
      I3 => \r_OBUF[14]_inst_i_3_n_0\,
      I4 => \r_OBUF[14]_inst_i_11_n_0\,
      I5 => b_IBUF(0),
      O => data4(13)
    );
\r_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => a_IBUF(14),
      I2 => b_IBUF(3),
      I3 => b_IBUF(1),
      I4 => b_IBUF(0),
      I5 => \r_OBUF[12]_inst_i_7_n_0\,
      O => \r_OBUF[13]_inst_i_5_n_0\
    );
\r_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_9_n_0\,
      I1 => b_IBUF(0),
      I2 => \r_OBUF[12]_inst_i_9_n_0\,
      O => \r_OBUF[13]_inst_i_6_n_0\
    );
\r_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(6),
      I1 => b_IBUF(2),
      I2 => a_IBUF(2),
      I3 => b_IBUF(3),
      I4 => a_IBUF(10),
      O => \r_OBUF[13]_inst_i_7_n_0\
    );
\r_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => a_IBUF(8),
      I2 => b_IBUF(2),
      I3 => a_IBUF(4),
      I4 => b_IBUF(3),
      I5 => a_IBUF(12),
      O => \r_OBUF[13]_inst_i_8_n_0\
    );
\r_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(14),
      O => r(14)
    );
\r_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_2_n_0\,
      I1 => data0(14),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(14),
      I5 => b_IBUF(14),
      O => r_OBUF(14)
    );
\r_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1F0000"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => b_IBUF(2),
      I2 => b_IBUF(4),
      I3 => b_IBUF(3),
      I4 => a_IBUF(15),
      O => \r_OBUF[14]_inst_i_10_n_0\
    );
\r_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_13_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[15]_inst_i_16_n_0\,
      O => \r_OBUF[14]_inst_i_11_n_0\
    );
\r_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(14),
      I1 => a_IBUF(14),
      O => \r_OBUF[14]_inst_i_12_n_0\
    );
\r_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(7),
      I1 => b_IBUF(2),
      I2 => a_IBUF(3),
      I3 => b_IBUF(3),
      I4 => a_IBUF(11),
      O => \r_OBUF[14]_inst_i_13_n_0\
    );
\r_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[14]_inst_i_4_n_0\,
      I2 => cmd_IBUF(0),
      I3 => data5(14),
      I4 => cmd_IBUF(1),
      I5 => \r_OBUF[14]_inst_i_6_n_0\,
      O => \r_OBUF[14]_inst_i_2_n_0\
    );
\r_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => b_IBUF(13),
      I1 => b_IBUF(12),
      I2 => b_IBUF(15),
      I3 => b_IBUF(14),
      I4 => \r_OBUF[14]_inst_i_7_n_0\,
      I5 => \r_OBUF[14]_inst_i_8_n_0\,
      O => \r_OBUF[14]_inst_i_3_n_0\
    );
\r_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => a_IBUF(15),
      I1 => b_IBUF(0),
      I2 => b_IBUF(2),
      I3 => a_IBUF(14),
      I4 => b_IBUF(3),
      I5 => b_IBUF(1),
      O => \r_OBUF[14]_inst_i_4_n_0\
    );
\r_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[14]_inst_i_9_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[14]_inst_i_10_n_0\,
      O => data5(14)
    );
\r_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[15]_inst_i_17_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[14]_inst_i_11_n_0\,
      I4 => cmd_IBUF(0),
      I5 => \r_OBUF[14]_inst_i_12_n_0\,
      O => \r_OBUF[14]_inst_i_6_n_0\
    );
\r_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b_IBUF(6),
      I1 => b_IBUF(7),
      I2 => b_IBUF(4),
      I3 => b_IBUF(5),
      O => \r_OBUF[14]_inst_i_7_n_0\
    );
\r_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b_IBUF(10),
      I1 => b_IBUF(11),
      I2 => b_IBUF(8),
      I3 => b_IBUF(9),
      O => \r_OBUF[14]_inst_i_8_n_0\
    );
\r_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FF010100FE00"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => b_IBUF(2),
      I2 => b_IBUF(3),
      I3 => a_IBUF(15),
      I4 => b_IBUF(4),
      I5 => a_IBUF(14),
      O => \r_OBUF[14]_inst_i_9_n_0\
    );
\r_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(15),
      O => r(15)
    );
\r_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_2_n_0\,
      I1 => data0(15),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(15),
      I5 => b_IBUF(15),
      O => r_OBUF(15)
    );
\r_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(13),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(13),
      O => \r_OBUF[15]_inst_i_10_n_0\
    );
\r_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(12),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(12),
      O => \r_OBUF[15]_inst_i_11_n_0\
    );
\r_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => a_IBUF(15),
      I2 => b_IBUF(3),
      I3 => b_IBUF(1),
      O => \r_OBUF[15]_inst_i_12_n_0\
    );
\r_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => b_IBUF(14),
      I1 => b_IBUF(13),
      I2 => b_IBUF(15),
      I3 => \r_OBUF[15]_inst_i_18_n_0\,
      I4 => \r_OBUF[15]_inst_i_19_n_0\,
      O => \r_OBUF[15]_inst_i_13_n_0\
    );
\r_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01FF00000000"
    )
        port map (
      I0 => b_IBUF(0),
      I1 => b_IBUF(1),
      I2 => b_IBUF(2),
      I3 => b_IBUF(4),
      I4 => b_IBUF(3),
      I5 => a_IBUF(15),
      O => \r_OBUF[15]_inst_i_14_n_0\
    );
\r_OBUF[15]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => a_IBUF(11),
      I2 => b_IBUF(2),
      I3 => a_IBUF(7),
      I4 => b_IBUF(3),
      I5 => a_IBUF(15),
      O => \r_OBUF[15]_inst_i_15_n_0\
    );
\r_OBUF[15]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(1),
      I1 => a_IBUF(9),
      I2 => b_IBUF(2),
      I3 => a_IBUF(5),
      I4 => b_IBUF(3),
      I5 => a_IBUF(13),
      O => \r_OBUF[15]_inst_i_16_n_0\
    );
\r_OBUF[15]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[13]_inst_i_8_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[15]_inst_i_20_n_0\,
      O => \r_OBUF[15]_inst_i_17_n_0\
    );
\r_OBUF[15]_inst_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b_IBUF(7),
      I1 => b_IBUF(8),
      I2 => b_IBUF(5),
      I3 => b_IBUF(6),
      O => \r_OBUF[15]_inst_i_18_n_0\
    );
\r_OBUF[15]_inst_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => b_IBUF(11),
      I1 => b_IBUF(12),
      I2 => b_IBUF(9),
      I3 => b_IBUF(10),
      O => \r_OBUF[15]_inst_i_19_n_0\
    );
\r_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_6_n_0\,
      I1 => cmd_IBUF(1),
      I2 => data4(15),
      I3 => cmd_IBUF(0),
      I4 => b_IBUF(15),
      I5 => a_IBUF(15),
      O => \r_OBUF[15]_inst_i_2_n_0\
    );
\r_OBUF[15]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(2),
      I1 => a_IBUF(10),
      I2 => b_IBUF(2),
      I3 => a_IBUF(6),
      I4 => b_IBUF(3),
      I5 => a_IBUF(14),
      O => \r_OBUF[15]_inst_i_20_n_0\
    );
\r_OBUF[15]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_OBUF[11]_inst_i_3_n_0\,
      CO(3) => \NLW_r_OBUF[15]_inst_i_3_CO_UNCONNECTED\(3),
      CO(2) => \r_OBUF[15]_inst_i_3_n_1\,
      CO(1) => \r_OBUF[15]_inst_i_3_n_2\,
      CO(0) => \r_OBUF[15]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a_IBUF(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \r_OBUF[15]_inst_i_8_n_0\,
      S(2) => \r_OBUF[15]_inst_i_9_n_0\,
      S(1) => \r_OBUF[15]_inst_i_10_n_0\,
      S(0) => \r_OBUF[15]_inst_i_11_n_0\
    );
\r_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cmd_IBUF(2),
      I1 => cmd_IBUF(1),
      O => \r_OBUF[15]_inst_i_4_n_0\
    );
\r_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => cmd_IBUF(2),
      I1 => cmd_IBUF(1),
      I2 => cmd_IBUF(0),
      O => \r_OBUF[15]_inst_i_5_n_0\
    );
\r_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FF200020002000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => b_IBUF(0),
      I2 => \r_OBUF[15]_inst_i_12_n_0\,
      I3 => cmd_IBUF(0),
      I4 => \r_OBUF[15]_inst_i_13_n_0\,
      I5 => \r_OBUF[15]_inst_i_14_n_0\,
      O => \r_OBUF[15]_inst_i_6_n_0\
    );
\r_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[15]_inst_i_15_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[15]_inst_i_16_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[15]_inst_i_17_n_0\,
      O => data4(15)
    );
\r_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(15),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(15),
      O => \r_OBUF[15]_inst_i_8_n_0\
    );
\r_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(14),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(14),
      O => \r_OBUF[15]_inst_i_9_n_0\
    );
\r_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(1),
      O => r(1)
    );
\r_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[1]_inst_i_2_n_0\,
      I1 => data0(1),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(1),
      I5 => b_IBUF(1),
      O => r_OBUF(1)
    );
\r_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(9),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(1),
      O => \r_OBUF[1]_inst_i_10_n_0\
    );
\r_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(1),
      I1 => cmd_IBUF(0),
      I2 => data5(1),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[1]_inst_i_5_n_0\,
      O => \r_OBUF[1]_inst_i_2_n_0\
    );
\r_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_7_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[2]_inst_i_6_n_0\,
      I3 => \r_OBUF[14]_inst_i_3_n_0\,
      I4 => \r_OBUF[1]_inst_i_6_n_0\,
      I5 => b_IBUF(0),
      O => data6(1)
    );
\r_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[1]_inst_i_7_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[2]_inst_i_7_n_0\,
      O => data5(1)
    );
\r_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[1]_inst_i_8_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(1),
      I4 => a_IBUF(1),
      O => \r_OBUF[1]_inst_i_5_n_0\
    );
\r_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[3]_inst_i_14_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[1]_inst_i_9_n_0\,
      O => \r_OBUF[1]_inst_i_6_n_0\
    );
\r_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_OBUF[3]_inst_i_15_n_0\,
      I1 => \r_OBUF[3]_inst_i_16_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[5]_inst_i_11_n_0\,
      I4 => b_IBUF(2),
      I5 => \r_OBUF[1]_inst_i_10_n_0\,
      O => \r_OBUF[1]_inst_i_7_n_0\
    );
\r_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => b_IBUF(0),
      I2 => b_IBUF(2),
      I3 => a_IBUF(1),
      I4 => b_IBUF(3),
      I5 => b_IBUF(1),
      O => \r_OBUF[1]_inst_i_8_n_0\
    );
\r_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(13),
      I1 => a_IBUF(5),
      I2 => b_IBUF(2),
      I3 => a_IBUF(9),
      I4 => b_IBUF(3),
      I5 => a_IBUF(1),
      O => \r_OBUF[1]_inst_i_9_n_0\
    );
\r_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(2),
      O => r(2)
    );
\r_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[2]_inst_i_2_n_0\,
      I1 => data0(2),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(2),
      I5 => b_IBUF(2),
      O => r_OBUF(2)
    );
\r_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(2),
      I1 => cmd_IBUF(0),
      I2 => data5(2),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[2]_inst_i_5_n_0\,
      O => \r_OBUF[2]_inst_i_2_n_0\
    );
\r_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_7_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[2]_inst_i_6_n_0\,
      I3 => \r_OBUF[14]_inst_i_3_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[3]_inst_i_11_n_0\,
      O => data6(2)
    );
\r_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[2]_inst_i_7_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[3]_inst_i_12_n_0\,
      O => data5(2)
    );
\r_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[2]_inst_i_8_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(2),
      I4 => a_IBUF(2),
      O => \r_OBUF[2]_inst_i_5_n_0\
    );
\r_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(14),
      I1 => a_IBUF(6),
      I2 => b_IBUF(2),
      I3 => a_IBUF(10),
      I4 => b_IBUF(3),
      I5 => a_IBUF(2),
      O => \r_OBUF[2]_inst_i_6_n_0\
    );
\r_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_10_n_0\,
      I1 => \r_OBUF[4]_inst_i_11_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[6]_inst_i_11_n_0\,
      I4 => b_IBUF(2),
      I5 => \r_OBUF[2]_inst_i_9_n_0\,
      O => \r_OBUF[2]_inst_i_7_n_0\
    );
\r_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => a_IBUF(1),
      I2 => b_IBUF(3),
      I3 => b_IBUF(1),
      I4 => b_IBUF(0),
      I5 => \r_OBUF[3]_inst_i_17_n_0\,
      O => \r_OBUF[2]_inst_i_8_n_0\
    );
\r_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(10),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(2),
      O => \r_OBUF[2]_inst_i_9_n_0\
    );
\r_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(3),
      O => r(3)
    );
\r_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[3]_inst_i_2_n_0\,
      I1 => data0(3),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(3),
      I5 => b_IBUF(3),
      O => r_OBUF(3)
    );
\r_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_IBUF(0),
      O => \r_OBUF[3]_inst_i_10_n_0\
    );
\r_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[5]_inst_i_9_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[3]_inst_i_14_n_0\,
      O => \r_OBUF[3]_inst_i_11_n_0\
    );
\r_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_OBUF[5]_inst_i_10_n_0\,
      I1 => \r_OBUF[5]_inst_i_11_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[3]_inst_i_15_n_0\,
      I4 => b_IBUF(2),
      I5 => \r_OBUF[3]_inst_i_16_n_0\,
      O => \r_OBUF[3]_inst_i_12_n_0\
    );
\r_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[3]_inst_i_17_n_0\,
      I1 => b_IBUF(0),
      I2 => \r_OBUF[4]_inst_i_12_n_0\,
      O => \r_OBUF[3]_inst_i_13_n_0\
    );
\r_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_IBUF(15),
      I1 => a_IBUF(7),
      I2 => b_IBUF(2),
      I3 => a_IBUF(11),
      I4 => b_IBUF(3),
      I5 => a_IBUF(3),
      O => \r_OBUF[3]_inst_i_14_n_0\
    );
\r_OBUF[3]_inst_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => a_IBUF(15),
      I2 => b_IBUF(4),
      I3 => a_IBUF(7),
      O => \r_OBUF[3]_inst_i_15_n_0\
    );
\r_OBUF[3]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(11),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(3),
      O => \r_OBUF[3]_inst_i_16_n_0\
    );
\r_OBUF[3]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => b_IBUF(1),
      I2 => b_IBUF(3),
      I3 => a_IBUF(2),
      I4 => b_IBUF(2),
      O => \r_OBUF[3]_inst_i_17_n_0\
    );
\r_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(3),
      I1 => cmd_IBUF(0),
      I2 => data5(3),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[3]_inst_i_6_n_0\,
      O => \r_OBUF[3]_inst_i_2_n_0\
    );
\r_OBUF[3]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_OBUF[3]_inst_i_3_n_0\,
      CO(2) => \r_OBUF[3]_inst_i_3_n_1\,
      CO(1) => \r_OBUF[3]_inst_i_3_n_2\,
      CO(0) => \r_OBUF[3]_inst_i_3_n_3\,
      CYINIT => a_IBUF(0),
      DI(3 downto 1) => a_IBUF(3 downto 1),
      DI(0) => cmd_IBUF(0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \r_OBUF[3]_inst_i_7_n_0\,
      S(2) => \r_OBUF[3]_inst_i_8_n_0\,
      S(1) => \r_OBUF[3]_inst_i_9_n_0\,
      S(0) => \r_OBUF[3]_inst_i_10_n_0\
    );
\r_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_6_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[4]_inst_i_7_n_0\,
      I3 => \r_OBUF[14]_inst_i_3_n_0\,
      I4 => \r_OBUF[3]_inst_i_11_n_0\,
      I5 => b_IBUF(0),
      O => data6(3)
    );
\r_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[3]_inst_i_12_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[4]_inst_i_8_n_0\,
      O => data5(3)
    );
\r_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[3]_inst_i_13_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(3),
      I4 => a_IBUF(3),
      O => \r_OBUF[3]_inst_i_6_n_0\
    );
\r_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(3),
      O => \r_OBUF[3]_inst_i_7_n_0\
    );
\r_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(2),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(2),
      O => \r_OBUF[3]_inst_i_8_n_0\
    );
\r_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(1),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(1),
      O => \r_OBUF[3]_inst_i_9_n_0\
    );
\r_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(4),
      O => r(4)
    );
\r_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_2_n_0\,
      I1 => data0(4),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(4),
      I5 => b_IBUF(4),
      O => r_OBUF(4)
    );
\r_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D48"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => a_IBUF(15),
      I2 => b_IBUF(4),
      I3 => a_IBUF(8),
      O => \r_OBUF[4]_inst_i_10_n_0\
    );
\r_OBUF[4]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(12),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(4),
      O => \r_OBUF[4]_inst_i_11_n_0\
    );
\r_OBUF[4]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => a_IBUF(1),
      I1 => b_IBUF(1),
      I2 => b_IBUF(3),
      I3 => a_IBUF(3),
      I4 => b_IBUF(2),
      O => \r_OBUF[4]_inst_i_12_n_0\
    );
\r_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(4),
      I1 => cmd_IBUF(0),
      I2 => data5(4),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[4]_inst_i_5_n_0\,
      O => \r_OBUF[4]_inst_i_2_n_0\
    );
\r_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_6_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[4]_inst_i_7_n_0\,
      I3 => \r_OBUF[14]_inst_i_3_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[5]_inst_i_6_n_0\,
      O => data6(4)
    );
\r_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[4]_inst_i_8_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[5]_inst_i_7_n_0\,
      O => data5(4)
    );
\r_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[4]_inst_i_9_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(4),
      I4 => a_IBUF(4),
      O => \r_OBUF[4]_inst_i_5_n_0\
    );
\r_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(10),
      I1 => b_IBUF(2),
      I2 => a_IBUF(14),
      I3 => b_IBUF(3),
      I4 => a_IBUF(6),
      O => \r_OBUF[4]_inst_i_6_n_0\
    );
\r_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(8),
      I1 => b_IBUF(2),
      I2 => a_IBUF(12),
      I3 => b_IBUF(3),
      I4 => a_IBUF(4),
      O => \r_OBUF[4]_inst_i_7_n_0\
    );
\r_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_OBUF[6]_inst_i_10_n_0\,
      I1 => \r_OBUF[6]_inst_i_11_n_0\,
      I2 => b_IBUF(1),
      I3 => \r_OBUF[4]_inst_i_10_n_0\,
      I4 => b_IBUF(2),
      I5 => \r_OBUF[4]_inst_i_11_n_0\,
      O => \r_OBUF[4]_inst_i_8_n_0\
    );
\r_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[4]_inst_i_12_n_0\,
      I1 => b_IBUF(0),
      I2 => \r_OBUF[5]_inst_i_12_n_0\,
      O => \r_OBUF[4]_inst_i_9_n_0\
    );
\r_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(5),
      O => r(5)
    );
\r_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[5]_inst_i_2_n_0\,
      I1 => data0(5),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(5),
      I5 => b_IBUF(5),
      O => r_OBUF(5)
    );
\r_OBUF[5]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D48"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => a_IBUF(15),
      I2 => b_IBUF(4),
      I3 => a_IBUF(9),
      O => \r_OBUF[5]_inst_i_10_n_0\
    );
\r_OBUF[5]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(13),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(5),
      O => \r_OBUF[5]_inst_i_11_n_0\
    );
\r_OBUF[5]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => a_IBUF(2),
      I1 => b_IBUF(1),
      I2 => a_IBUF(0),
      I3 => b_IBUF(2),
      I4 => a_IBUF(4),
      I5 => b_IBUF(3),
      O => \r_OBUF[5]_inst_i_12_n_0\
    );
\r_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(5),
      I1 => cmd_IBUF(0),
      I2 => data5(5),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[5]_inst_i_5_n_0\,
      O => \r_OBUF[5]_inst_i_2_n_0\
    );
\r_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[5]_inst_i_6_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[6]_inst_i_6_n_0\,
      O => data6(5)
    );
\r_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[15]_inst_i_13_n_0\,
      I1 => \r_OBUF[5]_inst_i_7_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[6]_inst_i_7_n_0\,
      O => data5(5)
    );
\r_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[5]_inst_i_8_n_0\,
      I2 => cmd_IBUF(0),
      I3 => b_IBUF(5),
      I4 => a_IBUF(5),
      O => \r_OBUF[5]_inst_i_5_n_0\
    );
\r_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[7]_inst_i_15_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[5]_inst_i_9_n_0\,
      O => \r_OBUF[5]_inst_i_6_n_0\
    );
\r_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_OBUF[7]_inst_i_12_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[5]_inst_i_10_n_0\,
      I3 => b_IBUF(2),
      I4 => \r_OBUF[5]_inst_i_11_n_0\,
      O => \r_OBUF[5]_inst_i_7_n_0\
    );
\r_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[5]_inst_i_12_n_0\,
      I1 => b_IBUF(0),
      I2 => \r_OBUF[6]_inst_i_8_n_0\,
      O => \r_OBUF[5]_inst_i_8_n_0\
    );
\r_OBUF[5]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(9),
      I1 => b_IBUF(2),
      I2 => a_IBUF(13),
      I3 => b_IBUF(3),
      I4 => a_IBUF(5),
      O => \r_OBUF[5]_inst_i_9_n_0\
    );
\r_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(6),
      O => r(6)
    );
\r_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[6]_inst_i_2_n_0\,
      I1 => data0(6),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(6),
      I5 => b_IBUF(6),
      O => r_OBUF(6)
    );
\r_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D48"
    )
        port map (
      I0 => b_IBUF(3),
      I1 => a_IBUF(15),
      I2 => b_IBUF(4),
      I3 => a_IBUF(10),
      O => \r_OBUF[6]_inst_i_10_n_0\
    );
\r_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a_IBUF(14),
      I1 => b_IBUF(3),
      I2 => a_IBUF(15),
      I3 => b_IBUF(4),
      I4 => a_IBUF(6),
      O => \r_OBUF[6]_inst_i_11_n_0\
    );
\r_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(6),
      I1 => cmd_IBUF(0),
      I2 => data5(6),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[6]_inst_i_5_n_0\,
      O => \r_OBUF[6]_inst_i_2_n_0\
    );
\r_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[6]_inst_i_6_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[7]_inst_i_11_n_0\,
      O => data6(6)
    );
\r_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \r_OBUF[9]_inst_i_7_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[7]_inst_i_12_n_0\,
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => \r_OBUF[6]_inst_i_7_n_0\,
      I5 => b_IBUF(0),
      O => data5(6)
    );
\r_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[7]_inst_i_13_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[6]_inst_i_8_n_0\,
      I4 => cmd_IBUF(0),
      I5 => \r_OBUF[6]_inst_i_9_n_0\,
      O => \r_OBUF[6]_inst_i_5_n_0\
    );
\r_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(12),
      I1 => b_IBUF(2),
      I2 => a_IBUF(8),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[4]_inst_i_6_n_0\,
      O => \r_OBUF[6]_inst_i_6_n_0\
    );
\r_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_OBUF[8]_inst_i_11_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[6]_inst_i_10_n_0\,
      I3 => b_IBUF(2),
      I4 => \r_OBUF[6]_inst_i_11_n_0\,
      O => \r_OBUF[6]_inst_i_7_n_0\
    );
\r_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => b_IBUF(1),
      I2 => a_IBUF(1),
      I3 => b_IBUF(2),
      I4 => a_IBUF(5),
      I5 => b_IBUF(3),
      O => \r_OBUF[6]_inst_i_8_n_0\
    );
\r_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(6),
      I1 => a_IBUF(6),
      O => \r_OBUF[6]_inst_i_9_n_0\
    );
\r_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(7),
      O => r(7)
    );
\r_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[7]_inst_i_2_n_0\,
      I1 => data0(7),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(7),
      I5 => b_IBUF(7),
      O => r_OBUF(7)
    );
\r_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(4),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(4),
      O => \r_OBUF[7]_inst_i_10_n_0\
    );
\r_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(13),
      I1 => b_IBUF(2),
      I2 => a_IBUF(9),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[7]_inst_i_15_n_0\,
      O => \r_OBUF[7]_inst_i_11_n_0\
    );
\r_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00FB0B3F00F808"
    )
        port map (
      I0 => a_IBUF(11),
      I1 => b_IBUF(2),
      I2 => b_IBUF(3),
      I3 => a_IBUF(15),
      I4 => b_IBUF(4),
      I5 => a_IBUF(7),
      O => \r_OBUF[7]_inst_i_12_n_0\
    );
\r_OBUF[7]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(0),
      I1 => b_IBUF(2),
      I2 => a_IBUF(4),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[7]_inst_i_16_n_0\,
      O => \r_OBUF[7]_inst_i_13_n_0\
    );
\r_OBUF[7]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(7),
      I1 => a_IBUF(7),
      O => \r_OBUF[7]_inst_i_14_n_0\
    );
\r_OBUF[7]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a_IBUF(11),
      I1 => b_IBUF(2),
      I2 => a_IBUF(15),
      I3 => b_IBUF(3),
      I4 => a_IBUF(7),
      O => \r_OBUF[7]_inst_i_15_n_0\
    );
\r_OBUF[7]_inst_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => a_IBUF(2),
      I1 => b_IBUF(2),
      I2 => a_IBUF(6),
      I3 => b_IBUF(3),
      O => \r_OBUF[7]_inst_i_16_n_0\
    );
\r_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(7),
      I1 => cmd_IBUF(0),
      I2 => data5(7),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[7]_inst_i_6_n_0\,
      O => \r_OBUF[7]_inst_i_2_n_0\
    );
\r_OBUF[7]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_OBUF[3]_inst_i_3_n_0\,
      CO(3) => \r_OBUF[7]_inst_i_3_n_0\,
      CO(2) => \r_OBUF[7]_inst_i_3_n_1\,
      CO(1) => \r_OBUF[7]_inst_i_3_n_2\,
      CO(0) => \r_OBUF[7]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a_IBUF(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \r_OBUF[7]_inst_i_7_n_0\,
      S(2) => \r_OBUF[7]_inst_i_8_n_0\,
      S(1) => \r_OBUF[7]_inst_i_9_n_0\,
      S(0) => \r_OBUF[7]_inst_i_10_n_0\
    );
\r_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[7]_inst_i_11_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[8]_inst_i_6_n_0\,
      O => data6(7)
    );
\r_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \r_OBUF[9]_inst_i_7_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[7]_inst_i_12_n_0\,
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[8]_inst_i_7_n_0\,
      O => data5(7)
    );
\r_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[8]_inst_i_8_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[7]_inst_i_13_n_0\,
      I4 => cmd_IBUF(0),
      I5 => \r_OBUF[7]_inst_i_14_n_0\,
      O => \r_OBUF[7]_inst_i_6_n_0\
    );
\r_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(7),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(7),
      O => \r_OBUF[7]_inst_i_7_n_0\
    );
\r_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(6),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(6),
      O => \r_OBUF[7]_inst_i_8_n_0\
    );
\r_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b_IBUF(5),
      I1 => cmd_IBUF(0),
      I2 => a_IBUF(5),
      O => \r_OBUF[7]_inst_i_9_n_0\
    );
\r_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(8),
      O => r(8)
    );
\r_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[8]_inst_i_2_n_0\,
      I1 => data0(8),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(8),
      I5 => b_IBUF(8),
      O => r_OBUF(8)
    );
\r_OBUF[8]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => a_IBUF(12),
      I1 => b_IBUF(2),
      I2 => a_IBUF(8),
      I3 => b_IBUF(3),
      O => \r_OBUF[8]_inst_i_10_n_0\
    );
\r_OBUF[8]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FB0B0F00F808"
    )
        port map (
      I0 => a_IBUF(12),
      I1 => b_IBUF(2),
      I2 => b_IBUF(3),
      I3 => a_IBUF(15),
      I4 => b_IBUF(4),
      I5 => a_IBUF(8),
      O => \r_OBUF[8]_inst_i_11_n_0\
    );
\r_OBUF[8]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => a_IBUF(3),
      I1 => b_IBUF(2),
      I2 => a_IBUF(7),
      I3 => b_IBUF(3),
      O => \r_OBUF[8]_inst_i_12_n_0\
    );
\r_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(8),
      I1 => cmd_IBUF(0),
      I2 => data5(8),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[8]_inst_i_5_n_0\,
      O => \r_OBUF[8]_inst_i_2_n_0\
    );
\r_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[8]_inst_i_6_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[9]_inst_i_6_n_0\,
      O => data6(8)
    );
\r_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_13_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[9]_inst_i_7_n_0\,
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => \r_OBUF[8]_inst_i_7_n_0\,
      I5 => b_IBUF(0),
      O => data5(8)
    );
\r_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[9]_inst_i_8_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[8]_inst_i_8_n_0\,
      I4 => cmd_IBUF(0),
      I5 => \r_OBUF[8]_inst_i_9_n_0\,
      O => \r_OBUF[8]_inst_i_5_n_0\
    );
\r_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(14),
      I1 => b_IBUF(2),
      I2 => a_IBUF(10),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[8]_inst_i_10_n_0\,
      O => \r_OBUF[8]_inst_i_6_n_0\
    );
\r_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_OBUF[10]_inst_i_11_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[8]_inst_i_11_n_0\,
      O => \r_OBUF[8]_inst_i_7_n_0\
    );
\r_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(1),
      I1 => b_IBUF(2),
      I2 => a_IBUF(5),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[8]_inst_i_12_n_0\,
      O => \r_OBUF[8]_inst_i_8_n_0\
    );
\r_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(8),
      I1 => a_IBUF(8),
      O => \r_OBUF[8]_inst_i_9_n_0\
    );
\r_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_OBUF(9),
      O => r(9)
    );
\r_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \r_OBUF[9]_inst_i_2_n_0\,
      I1 => data0(9),
      I2 => \r_OBUF[15]_inst_i_4_n_0\,
      I3 => \r_OBUF[15]_inst_i_5_n_0\,
      I4 => a_IBUF(9),
      I5 => b_IBUF(9),
      O => r_OBUF(9)
    );
\r_OBUF[9]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => a_IBUF(13),
      I1 => b_IBUF(2),
      I2 => a_IBUF(9),
      I3 => b_IBUF(3),
      O => \r_OBUF[9]_inst_i_10_n_0\
    );
\r_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(9),
      I1 => cmd_IBUF(0),
      I2 => data5(9),
      I3 => cmd_IBUF(1),
      I4 => \r_OBUF[9]_inst_i_5_n_0\,
      O => \r_OBUF[9]_inst_i_2_n_0\
    );
\r_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[9]_inst_i_6_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[10]_inst_i_6_n_0\,
      O => data6(9)
    );
\r_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \r_OBUF[11]_inst_i_13_n_0\,
      I1 => b_IBUF(1),
      I2 => \r_OBUF[9]_inst_i_7_n_0\,
      I3 => \r_OBUF[15]_inst_i_13_n_0\,
      I4 => b_IBUF(0),
      I5 => \r_OBUF[10]_inst_i_7_n_0\,
      O => data5(9)
    );
\r_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \r_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_OBUF[10]_inst_i_9_n_0\,
      I2 => b_IBUF(0),
      I3 => \r_OBUF[9]_inst_i_8_n_0\,
      I4 => cmd_IBUF(0),
      I5 => \r_OBUF[9]_inst_i_9_n_0\,
      O => \r_OBUF[9]_inst_i_5_n_0\
    );
\r_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(15),
      I1 => b_IBUF(2),
      I2 => a_IBUF(11),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[9]_inst_i_10_n_0\,
      O => \r_OBUF[9]_inst_i_6_n_0\
    );
\r_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FB0B0F00F808"
    )
        port map (
      I0 => a_IBUF(13),
      I1 => b_IBUF(2),
      I2 => b_IBUF(3),
      I3 => a_IBUF(15),
      I4 => b_IBUF(4),
      I5 => a_IBUF(9),
      O => \r_OBUF[9]_inst_i_7_n_0\
    );
\r_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a_IBUF(2),
      I1 => b_IBUF(2),
      I2 => a_IBUF(6),
      I3 => b_IBUF(3),
      I4 => b_IBUF(1),
      I5 => \r_OBUF[11]_inst_i_15_n_0\,
      O => \r_OBUF[9]_inst_i_8_n_0\
    );
\r_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_IBUF(9),
      I1 => a_IBUF(9),
      O => \r_OBUF[9]_inst_i_9_n_0\
    );
end STRUCTURE;
