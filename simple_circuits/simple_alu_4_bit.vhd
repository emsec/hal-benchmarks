-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri May 22 09:51:04 2020
-- Host        : AnnikasLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl C:/Users/Annika/Documents/02_Uni/simple_alu_4bit_4ops.vhd
-- Design      : four_bit_alu
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity four_bit_alu is
  port (
    op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Z : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of four_bit_alu : entity is true;
  attribute ADD_OP : string;
  attribute ADD_OP of four_bit_alu : entity is "2'b00";
  attribute AND_OP : string;
  attribute AND_OP of four_bit_alu : entity is "2'b10";
  attribute N : integer;
  attribute N of four_bit_alu : entity is 4;
  attribute SUB_OP : string;
  attribute SUB_OP of four_bit_alu : entity is "2'b11";
  attribute XOR_OP : string;
  attribute XOR_OP of four_bit_alu : entity is "2'b01";
end four_bit_alu;

architecture STRUCTURE of four_bit_alu is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Z_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Z_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal op_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
\Z_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(0),
      O => Z(0)
    );
\Z_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6686"
    )
        port map (
      I0 => B_IBUF(0),
      I1 => A_IBUF(0),
      I2 => op_IBUF(1),
      I3 => op_IBUF(0),
      O => Z_OBUF(0)
    );
\Z_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(1),
      O => Z(1)
    );
\Z_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696666688889666"
    )
        port map (
      I0 => B_IBUF(1),
      I1 => A_IBUF(1),
      I2 => B_IBUF(0),
      I3 => A_IBUF(0),
      I4 => op_IBUF(1),
      I5 => op_IBUF(0),
      O => Z_OBUF(1)
    );
\Z_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(2),
      O => Z(2)
    );
\Z_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69668896"
    )
        port map (
      I0 => B_IBUF(2),
      I1 => A_IBUF(2),
      I2 => \Z_OBUF[2]_inst_i_2_n_0\,
      I3 => op_IBUF(1),
      I4 => op_IBUF(0),
      O => Z_OBUF(2)
    );
\Z_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE28B8B8"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => B_IBUF(1),
      I2 => op_IBUF(1),
      I3 => A_IBUF(0),
      I4 => B_IBUF(0),
      O => \Z_OBUF[2]_inst_i_2_n_0\
    );
\Z_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Z_OBUF(3),
      O => Z(3)
    );
\Z_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EB2B282"
    )
        port map (
      I0 => p_0_in(3),
      I1 => op_IBUF(1),
      I2 => op_IBUF(0),
      I3 => B_IBUF(3),
      I4 => A_IBUF(3),
      O => Z_OBUF(3)
    );
\Z_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => \Z_OBUF[2]_inst_i_2_n_0\,
      I1 => B_IBUF(2),
      I2 => A_IBUF(2),
      I3 => A_IBUF(3),
      I4 => op_IBUF(1),
      I5 => B_IBUF(3),
      O => p_0_in(3)
    );
\op_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op(0),
      O => op_IBUF(0)
    );
\op_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op(1),
      O => op_IBUF(1)
    );
end STRUCTURE;
