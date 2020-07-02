-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon May 18 11:44:31 2020
-- Host        : AnnikasLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl C:/Users/Annika/Documents/02_Uni/32-bit-adder.vhd
-- Design      : thirty_two_bit_adder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity thirty_two_bit_adder is
  port (
    x : in STD_LOGIC_VECTOR ( 0 to 31 );
    y : in STD_LOGIC_VECTOR ( 0 to 31 );
    z : out STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of thirty_two_bit_adder : entity is true;
end thirty_two_bit_adder;

architecture STRUCTURE of thirty_two_bit_adder is
  signal x_IBUF : STD_LOGIC_VECTOR ( 0 to 31 );
  signal y_IBUF : STD_LOGIC_VECTOR ( 0 to 31 );
  signal z_OBUF : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \z_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[17]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[19]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[21]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[23]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[25]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[27]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[29]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[31]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \z_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \z_OBUF[0]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \z_OBUF[10]_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \z_OBUF[11]_inst_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \z_OBUF[12]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \z_OBUF[13]_inst_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \z_OBUF[14]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \z_OBUF[15]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \z_OBUF[16]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \z_OBUF[17]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \z_OBUF[18]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \z_OBUF[19]_inst_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \z_OBUF[1]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \z_OBUF[20]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \z_OBUF[21]_inst_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \z_OBUF[22]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \z_OBUF[23]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \z_OBUF[24]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \z_OBUF[25]_inst_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \z_OBUF[26]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \z_OBUF[27]_inst_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \z_OBUF[28]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \z_OBUF[29]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \z_OBUF[29]_inst_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \z_OBUF[30]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \z_OBUF[4]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \z_OBUF[5]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \z_OBUF[6]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \z_OBUF[7]_inst_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \z_OBUF[8]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \z_OBUF[9]_inst_i_2\ : label is "soft_lutpair13";
begin
\x_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(0),
      O => x_IBUF(0)
    );
\x_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(10),
      O => x_IBUF(10)
    );
\x_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(11),
      O => x_IBUF(11)
    );
\x_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(12),
      O => x_IBUF(12)
    );
\x_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(13),
      O => x_IBUF(13)
    );
\x_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(14),
      O => x_IBUF(14)
    );
\x_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(15),
      O => x_IBUF(15)
    );
\x_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(16),
      O => x_IBUF(16)
    );
\x_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(17),
      O => x_IBUF(17)
    );
\x_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(18),
      O => x_IBUF(18)
    );
\x_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(19),
      O => x_IBUF(19)
    );
\x_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(1),
      O => x_IBUF(1)
    );
\x_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(20),
      O => x_IBUF(20)
    );
\x_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(21),
      O => x_IBUF(21)
    );
\x_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(22),
      O => x_IBUF(22)
    );
\x_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(23),
      O => x_IBUF(23)
    );
\x_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(24),
      O => x_IBUF(24)
    );
\x_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(25),
      O => x_IBUF(25)
    );
\x_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(26),
      O => x_IBUF(26)
    );
\x_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(27),
      O => x_IBUF(27)
    );
\x_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(28),
      O => x_IBUF(28)
    );
\x_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(29),
      O => x_IBUF(29)
    );
\x_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(2),
      O => x_IBUF(2)
    );
\x_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(30),
      O => x_IBUF(30)
    );
\x_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(31),
      O => x_IBUF(31)
    );
\x_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(3),
      O => x_IBUF(3)
    );
\x_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(4),
      O => x_IBUF(4)
    );
\x_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(5),
      O => x_IBUF(5)
    );
\x_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(6),
      O => x_IBUF(6)
    );
\x_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(7),
      O => x_IBUF(7)
    );
\x_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(8),
      O => x_IBUF(8)
    );
\x_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(9),
      O => x_IBUF(9)
    );
\y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(0),
      O => y_IBUF(0)
    );
\y_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(10),
      O => y_IBUF(10)
    );
\y_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(11),
      O => y_IBUF(11)
    );
\y_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(12),
      O => y_IBUF(12)
    );
\y_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(13),
      O => y_IBUF(13)
    );
\y_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(14),
      O => y_IBUF(14)
    );
\y_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(15),
      O => y_IBUF(15)
    );
\y_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(16),
      O => y_IBUF(16)
    );
\y_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(17),
      O => y_IBUF(17)
    );
\y_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(18),
      O => y_IBUF(18)
    );
\y_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(19),
      O => y_IBUF(19)
    );
\y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(1),
      O => y_IBUF(1)
    );
\y_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(20),
      O => y_IBUF(20)
    );
\y_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(21),
      O => y_IBUF(21)
    );
\y_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(22),
      O => y_IBUF(22)
    );
\y_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(23),
      O => y_IBUF(23)
    );
\y_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(24),
      O => y_IBUF(24)
    );
\y_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(25),
      O => y_IBUF(25)
    );
\y_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(26),
      O => y_IBUF(26)
    );
\y_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(27),
      O => y_IBUF(27)
    );
\y_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(28),
      O => y_IBUF(28)
    );
\y_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(29),
      O => y_IBUF(29)
    );
\y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(2),
      O => y_IBUF(2)
    );
\y_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(30),
      O => y_IBUF(30)
    );
\y_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(31),
      O => y_IBUF(31)
    );
\y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(3),
      O => y_IBUF(3)
    );
\y_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(4),
      O => y_IBUF(4)
    );
\y_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(5),
      O => y_IBUF(5)
    );
\y_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(6),
      O => y_IBUF(6)
    );
\y_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(7),
      O => y_IBUF(7)
    );
\y_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(8),
      O => y_IBUF(8)
    );
\y_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(9),
      O => y_IBUF(9)
    );
\z_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(0),
      O => z(0)
    );
\z_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_IBUF(0),
      I1 => x_IBUF(0),
      O => z_OBUF(0)
    );
\z_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(10),
      O => z(10)
    );
\z_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[9]_inst_i_2_n_0\,
      I1 => y_IBUF(9),
      I2 => x_IBUF(9),
      I3 => x_IBUF(10),
      I4 => y_IBUF(10),
      O => z_OBUF(10)
    );
\z_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(11),
      O => z(11)
    );
\z_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[11]_inst_i_2_n_0\,
      I1 => x_IBUF(11),
      I2 => y_IBUF(11),
      O => z_OBUF(11)
    );
\z_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(10),
      I1 => y_IBUF(10),
      I2 => \z_OBUF[9]_inst_i_2_n_0\,
      I3 => y_IBUF(9),
      I4 => x_IBUF(9),
      O => \z_OBUF[11]_inst_i_2_n_0\
    );
\z_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(12),
      O => z(12)
    );
\z_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[11]_inst_i_2_n_0\,
      I1 => y_IBUF(11),
      I2 => x_IBUF(11),
      I3 => x_IBUF(12),
      I4 => y_IBUF(12),
      O => z_OBUF(12)
    );
\z_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(13),
      O => z(13)
    );
\z_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[13]_inst_i_2_n_0\,
      I1 => x_IBUF(13),
      I2 => y_IBUF(13),
      O => z_OBUF(13)
    );
\z_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(12),
      I1 => y_IBUF(12),
      I2 => \z_OBUF[11]_inst_i_2_n_0\,
      I3 => y_IBUF(11),
      I4 => x_IBUF(11),
      O => \z_OBUF[13]_inst_i_2_n_0\
    );
\z_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(14),
      O => z(14)
    );
\z_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[13]_inst_i_2_n_0\,
      I1 => y_IBUF(13),
      I2 => x_IBUF(13),
      I3 => x_IBUF(14),
      I4 => y_IBUF(14),
      O => z_OBUF(14)
    );
\z_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(15),
      O => z(15)
    );
\z_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[15]_inst_i_2_n_0\,
      I1 => x_IBUF(15),
      I2 => y_IBUF(15),
      O => z_OBUF(15)
    );
\z_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(14),
      I1 => y_IBUF(14),
      I2 => \z_OBUF[13]_inst_i_2_n_0\,
      I3 => y_IBUF(13),
      I4 => x_IBUF(13),
      O => \z_OBUF[15]_inst_i_2_n_0\
    );
\z_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(16),
      O => z(16)
    );
\z_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[15]_inst_i_2_n_0\,
      I1 => y_IBUF(15),
      I2 => x_IBUF(15),
      I3 => x_IBUF(16),
      I4 => y_IBUF(16),
      O => z_OBUF(16)
    );
\z_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(17),
      O => z(17)
    );
\z_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[17]_inst_i_2_n_0\,
      I1 => x_IBUF(17),
      I2 => y_IBUF(17),
      O => z_OBUF(17)
    );
\z_OBUF[17]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(16),
      I1 => y_IBUF(16),
      I2 => \z_OBUF[15]_inst_i_2_n_0\,
      I3 => y_IBUF(15),
      I4 => x_IBUF(15),
      O => \z_OBUF[17]_inst_i_2_n_0\
    );
\z_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(18),
      O => z(18)
    );
\z_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[17]_inst_i_2_n_0\,
      I1 => y_IBUF(17),
      I2 => x_IBUF(17),
      I3 => x_IBUF(18),
      I4 => y_IBUF(18),
      O => z_OBUF(18)
    );
\z_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(19),
      O => z(19)
    );
\z_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[19]_inst_i_2_n_0\,
      I1 => x_IBUF(19),
      I2 => y_IBUF(19),
      O => z_OBUF(19)
    );
\z_OBUF[19]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(18),
      I1 => y_IBUF(18),
      I2 => \z_OBUF[17]_inst_i_2_n_0\,
      I3 => y_IBUF(17),
      I4 => x_IBUF(17),
      O => \z_OBUF[19]_inst_i_2_n_0\
    );
\z_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(1),
      O => z(1)
    );
\z_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => y_IBUF(0),
      I1 => x_IBUF(0),
      I2 => x_IBUF(1),
      I3 => y_IBUF(1),
      O => z_OBUF(1)
    );
\z_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(20),
      O => z(20)
    );
\z_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[19]_inst_i_2_n_0\,
      I1 => y_IBUF(19),
      I2 => x_IBUF(19),
      I3 => x_IBUF(20),
      I4 => y_IBUF(20),
      O => z_OBUF(20)
    );
\z_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(21),
      O => z(21)
    );
\z_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[21]_inst_i_2_n_0\,
      I1 => x_IBUF(21),
      I2 => y_IBUF(21),
      O => z_OBUF(21)
    );
\z_OBUF[21]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(20),
      I1 => y_IBUF(20),
      I2 => \z_OBUF[19]_inst_i_2_n_0\,
      I3 => y_IBUF(19),
      I4 => x_IBUF(19),
      O => \z_OBUF[21]_inst_i_2_n_0\
    );
\z_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(22),
      O => z(22)
    );
\z_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[21]_inst_i_2_n_0\,
      I1 => y_IBUF(21),
      I2 => x_IBUF(21),
      I3 => x_IBUF(22),
      I4 => y_IBUF(22),
      O => z_OBUF(22)
    );
\z_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(23),
      O => z(23)
    );
\z_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[23]_inst_i_2_n_0\,
      I1 => x_IBUF(23),
      I2 => y_IBUF(23),
      O => z_OBUF(23)
    );
\z_OBUF[23]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(22),
      I1 => y_IBUF(22),
      I2 => \z_OBUF[21]_inst_i_2_n_0\,
      I3 => y_IBUF(21),
      I4 => x_IBUF(21),
      O => \z_OBUF[23]_inst_i_2_n_0\
    );
\z_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(24),
      O => z(24)
    );
\z_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[23]_inst_i_2_n_0\,
      I1 => y_IBUF(23),
      I2 => x_IBUF(23),
      I3 => x_IBUF(24),
      I4 => y_IBUF(24),
      O => z_OBUF(24)
    );
\z_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(25),
      O => z(25)
    );
\z_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[25]_inst_i_2_n_0\,
      I1 => x_IBUF(25),
      I2 => y_IBUF(25),
      O => z_OBUF(25)
    );
\z_OBUF[25]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(24),
      I1 => y_IBUF(24),
      I2 => \z_OBUF[23]_inst_i_2_n_0\,
      I3 => y_IBUF(23),
      I4 => x_IBUF(23),
      O => \z_OBUF[25]_inst_i_2_n_0\
    );
\z_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(26),
      O => z(26)
    );
\z_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[25]_inst_i_2_n_0\,
      I1 => y_IBUF(25),
      I2 => x_IBUF(25),
      I3 => x_IBUF(26),
      I4 => y_IBUF(26),
      O => z_OBUF(26)
    );
\z_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(27),
      O => z(27)
    );
\z_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[27]_inst_i_2_n_0\,
      I1 => x_IBUF(27),
      I2 => y_IBUF(27),
      O => z_OBUF(27)
    );
\z_OBUF[27]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(26),
      I1 => y_IBUF(26),
      I2 => \z_OBUF[25]_inst_i_2_n_0\,
      I3 => y_IBUF(25),
      I4 => x_IBUF(25),
      O => \z_OBUF[27]_inst_i_2_n_0\
    );
\z_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(28),
      O => z(28)
    );
\z_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[27]_inst_i_2_n_0\,
      I1 => y_IBUF(27),
      I2 => x_IBUF(27),
      I3 => x_IBUF(28),
      I4 => y_IBUF(28),
      O => z_OBUF(28)
    );
\z_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(29),
      O => z(29)
    );
\z_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[29]_inst_i_2_n_0\,
      I1 => x_IBUF(29),
      I2 => y_IBUF(29),
      O => z_OBUF(29)
    );
\z_OBUF[29]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(28),
      I1 => y_IBUF(28),
      I2 => \z_OBUF[27]_inst_i_2_n_0\,
      I3 => y_IBUF(27),
      I4 => x_IBUF(27),
      O => \z_OBUF[29]_inst_i_2_n_0\
    );
\z_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(2),
      O => z(2)
    );
\z_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => x_IBUF(0),
      I1 => y_IBUF(0),
      I2 => y_IBUF(1),
      I3 => x_IBUF(1),
      I4 => x_IBUF(2),
      I5 => y_IBUF(2),
      O => z_OBUF(2)
    );
\z_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(30),
      O => z(30)
    );
\z_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[29]_inst_i_2_n_0\,
      I1 => y_IBUF(29),
      I2 => x_IBUF(29),
      I3 => x_IBUF(30),
      I4 => y_IBUF(30),
      O => z_OBUF(30)
    );
\z_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(31),
      O => z(31)
    );
\z_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => x_IBUF(29),
      I1 => y_IBUF(29),
      I2 => \z_OBUF[29]_inst_i_2_n_0\,
      I3 => y_IBUF(30),
      I4 => x_IBUF(30),
      I5 => \z_OBUF[31]_inst_i_2_n_0\,
      O => z_OBUF(31)
    );
\z_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_IBUF(31),
      I1 => x_IBUF(31),
      O => \z_OBUF[31]_inst_i_2_n_0\
    );
\z_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(3),
      O => z(3)
    );
\z_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[3]_inst_i_2_n_0\,
      I1 => x_IBUF(3),
      I2 => y_IBUF(3),
      O => z_OBUF(3)
    );
\z_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => x_IBUF(2),
      I1 => y_IBUF(2),
      I2 => x_IBUF(0),
      I3 => y_IBUF(0),
      I4 => y_IBUF(1),
      I5 => x_IBUF(1),
      O => \z_OBUF[3]_inst_i_2_n_0\
    );
\z_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(4),
      O => z(4)
    );
\z_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[3]_inst_i_2_n_0\,
      I1 => y_IBUF(3),
      I2 => x_IBUF(3),
      I3 => x_IBUF(4),
      I4 => y_IBUF(4),
      O => z_OBUF(4)
    );
\z_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(5),
      O => z(5)
    );
\z_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[5]_inst_i_2_n_0\,
      I1 => x_IBUF(5),
      I2 => y_IBUF(5),
      O => z_OBUF(5)
    );
\z_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(4),
      I1 => y_IBUF(4),
      I2 => \z_OBUF[3]_inst_i_2_n_0\,
      I3 => y_IBUF(3),
      I4 => x_IBUF(3),
      O => \z_OBUF[5]_inst_i_2_n_0\
    );
\z_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(6),
      O => z(6)
    );
\z_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[5]_inst_i_2_n_0\,
      I1 => y_IBUF(5),
      I2 => x_IBUF(5),
      I3 => x_IBUF(6),
      I4 => y_IBUF(6),
      O => z_OBUF(6)
    );
\z_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(7),
      O => z(7)
    );
\z_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[7]_inst_i_2_n_0\,
      I1 => x_IBUF(7),
      I2 => y_IBUF(7),
      O => z_OBUF(7)
    );
\z_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(6),
      I1 => y_IBUF(6),
      I2 => \z_OBUF[5]_inst_i_2_n_0\,
      I3 => y_IBUF(5),
      I4 => x_IBUF(5),
      O => \z_OBUF[7]_inst_i_2_n_0\
    );
\z_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(8),
      O => z(8)
    );
\z_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \z_OBUF[7]_inst_i_2_n_0\,
      I1 => y_IBUF(7),
      I2 => x_IBUF(7),
      I3 => x_IBUF(8),
      I4 => y_IBUF(8),
      O => z_OBUF(8)
    );
\z_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(9),
      O => z(9)
    );
\z_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \z_OBUF[9]_inst_i_2_n_0\,
      I1 => x_IBUF(9),
      I2 => y_IBUF(9),
      O => z_OBUF(9)
    );
\z_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => x_IBUF(8),
      I1 => y_IBUF(8),
      I2 => \z_OBUF[7]_inst_i_2_n_0\,
      I3 => y_IBUF(7),
      I4 => x_IBUF(7),
      O => \z_OBUF[9]_inst_i_2_n_0\
    );
end STRUCTURE;
