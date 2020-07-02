-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Apr  3 16:24:02 2020
-- Host        : AnnikasLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl adder.vhd -force
-- Design      : four_bit_adder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity four_bit_adder is
  port (
    x : in STD_LOGIC_VECTOR ( 0 to 3 );
    y : in STD_LOGIC_VECTOR ( 0 to 3 );
    z : out STD_LOGIC_VECTOR ( 0 to 3 );
    carry : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of four_bit_adder : entity is true;
end four_bit_adder;

architecture STRUCTURE of four_bit_adder is
  signal carry_OBUF : STD_LOGIC;
  signal x_IBUF : STD_LOGIC_VECTOR ( 0 to 3 );
  signal y_IBUF : STD_LOGIC_VECTOR ( 0 to 3 );
  signal z_OBUF : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \z_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of carry_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \z_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \z_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \z_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
begin
carry_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => carry_OBUF,
      O => carry
    );
carry_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => x_IBUF(3),
      I1 => y_IBUF(3),
      I2 => \z_OBUF[3]_inst_i_2_n_0\,
      O => carry_OBUF
    );
\x_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(0),
      O => x_IBUF(0)
    );
\x_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(1),
      O => x_IBUF(1)
    );
\x_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(2),
      O => x_IBUF(2)
    );
\x_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(3),
      O => x_IBUF(3)
    );
\y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(0),
      O => y_IBUF(0)
    );
\y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(1),
      O => y_IBUF(1)
    );
\y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(2),
      O => y_IBUF(2)
    );
\y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(3),
      O => y_IBUF(3)
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
end STRUCTURE;
