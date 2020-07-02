-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Feb 27 17:30:05 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl
--               /media/psf/Home/Uni/Cores/core-collection/crypto/present_opencores/netlists/present_xilinx_unisim_vivado.vhd
-- Design      : PresentEnc
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity present_vivado is
  port (
    plaintext : in STD_LOGIC_VECTOR ( 63 downto 0 );
    key : in STD_LOGIC_VECTOR ( 79 downto 0 );
    ciphertext : out STD_LOGIC_VECTOR ( 63 downto 0 );
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PRESENT_vivado : entity is true;
  attribute w_2 : integer;
  attribute w_2 of PRESENT_vivado : entity is 2;
  attribute w_32 : integer;
  attribute w_32 of PRESENT_vivado : entity is 32;
  attribute w_4 : integer;
  attribute w_4 of PRESENT_vivado : entity is 4;
  attribute w_5 : integer;
  attribute w_5 of PRESENT_vivado : entity is 5;
  attribute w_64 : integer;
  attribute w_64 of PRESENT_vivado : entity is 64;
  attribute w_80 : integer;
  attribute w_80 of PRESENT_vivado : entity is 80;
end PRESENT_vivado;

architecture STRUCTURE of PRESENT_vivado is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \SM/FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal ciphertext_OBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal input : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal key_IBUF : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal keyfout : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal keynum : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plaintext_IBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ready_OBUF : STD_LOGIC;
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \reg[33]_i_1_n_0\ : STD_LOGIC;
  signal \reg[34]_i_1_n_0\ : STD_LOGIC;
  signal \reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \reg[37]_i_1_n_0\ : STD_LOGIC;
  signal \reg[38]_i_1_n_0\ : STD_LOGIC;
  signal \reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \reg[41]_i_1_n_0\ : STD_LOGIC;
  signal \reg[42]_i_1_n_0\ : STD_LOGIC;
  signal \reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \reg[45]_i_1_n_0\ : STD_LOGIC;
  signal \reg[46]_i_1_n_0\ : STD_LOGIC;
  signal \reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \reg[49]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[50]_i_1_n_0\ : STD_LOGIC;
  signal \reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \reg[53]_i_1_n_0\ : STD_LOGIC;
  signal \reg[54]_i_1_n_0\ : STD_LOGIC;
  signal \reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \reg[57]_i_1_n_0\ : STD_LOGIC;
  signal \reg[58]_i_1_n_0\ : STD_LOGIC;
  signal \reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[60]_i_1_n_0\ : STD_LOGIC;
  signal \reg[61]_i_1_n_0\ : STD_LOGIC;
  signal \reg[62]_i_1_n_0\ : STD_LOGIC;
  signal \reg[63]_i_1_n_0\ : STD_LOGIC;
  signal \reg[63]_i_2_n_0\ : STD_LOGIC;
  signal \reg[63]_i_3_n_0\ : STD_LOGIC;
  signal \reg[64]_i_1_n_0\ : STD_LOGIC;
  signal \reg[65]_i_1_n_0\ : STD_LOGIC;
  signal \reg[66]_i_1_n_0\ : STD_LOGIC;
  signal \reg[67]_i_1_n_0\ : STD_LOGIC;
  signal \reg[68]_i_1_n_0\ : STD_LOGIC;
  signal \reg[69]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[70]_i_1_n_0\ : STD_LOGIC;
  signal \reg[71]_i_1_n_0\ : STD_LOGIC;
  signal \reg[72]_i_1_n_0\ : STD_LOGIC;
  signal \reg[73]_i_1_n_0\ : STD_LOGIC;
  signal \reg[74]_i_1_n_0\ : STD_LOGIC;
  signal \reg[75]_i_1_n_0\ : STD_LOGIC;
  signal \reg[76]_i_1_n_0\ : STD_LOGIC;
  signal \reg[77]_i_1_n_0\ : STD_LOGIC;
  signal \reg[78]_i_1_n_0\ : STD_LOGIC;
  signal \reg[79]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal toXor : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \SM/FSM_onehot_state_reg[0]\ : label is "sm_start:010,nop:001,sm_ready:100";
  attribute FSM_ENCODED_STATES of \SM/FSM_onehot_state_reg[1]\ : label is "sm_start:010,nop:001,sm_ready:100";
  attribute FSM_ENCODED_STATES of \SM/FSM_onehot_state_reg[2]\ : label is "sm_start:010,nop:001,sm_ready:100";
  attribute SOFT_HLUTNM of \ciphertext_OBUF[20]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ciphertext_OBUF[21]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ciphertext_OBUF[22]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ciphertext_OBUF[43]_inst_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[17]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg[23]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg[26]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg[27]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg[28]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg[29]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg[30]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reg[31]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reg[32]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reg[33]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reg[34]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reg[35]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reg[36]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reg[37]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \reg[38]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \reg[39]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reg[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg[40]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reg[41]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reg[42]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \reg[43]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reg[44]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reg[45]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reg[46]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reg[47]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reg[48]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reg[49]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg[50]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reg[51]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg[52]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg[53]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg[54]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg[55]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg[56]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg[57]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg[58]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg[59]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg[60]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg[61]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg[62]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg[63]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg[63]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg[64]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg[65]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg[66]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg[67]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg[68]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg[69]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg[70]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg[71]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg[72]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \reg[73]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg[74]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg[75]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg[9]_i_1\ : label is "soft_lutpair17";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => ready_OBUF,
      I1 => enable,
      I2 => \SM/FSM_onehot_state_reg_n_0_[0]\,
      I3 => start_IBUF,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C888"
    )
        port map (
      I0 => \SM/FSM_onehot_state_reg_n_0_[0]\,
      I1 => start_IBUF,
      I2 => enable,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0A0"
    )
        port map (
      I0 => ready_OBUF,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => start_IBUF,
      I3 => enable,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => keynum(4),
      I1 => keynum(2),
      I2 => keynum(1),
      I3 => keynum(0),
      I4 => keynum(3),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\SM/FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => \SM/FSM_onehot_state_reg_n_0_[0]\
    );
\SM/FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => enable
    );
\SM/FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => ready_OBUF
    );
\ciphertext_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(0),
      O => ciphertext(0)
    );
\ciphertext_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(16),
      I1 => toXor(0),
      O => ciphertext_OBUF(0)
    );
\ciphertext_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(10),
      O => ciphertext(10)
    );
\ciphertext_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(10),
      I1 => keyfout(26),
      O => ciphertext_OBUF(10)
    );
\ciphertext_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(11),
      O => ciphertext(11)
    );
\ciphertext_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(11),
      I1 => keyfout(27),
      O => ciphertext_OBUF(11)
    );
\ciphertext_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(12),
      O => ciphertext(12)
    );
\ciphertext_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(12),
      I1 => keyfout(28),
      O => ciphertext_OBUF(12)
    );
\ciphertext_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(13),
      O => ciphertext(13)
    );
\ciphertext_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(13),
      I1 => keyfout(29),
      O => ciphertext_OBUF(13)
    );
\ciphertext_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(14),
      O => ciphertext(14)
    );
\ciphertext_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(14),
      I1 => keyfout(30),
      O => ciphertext_OBUF(14)
    );
\ciphertext_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(15),
      O => ciphertext(15)
    );
\ciphertext_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(15),
      I1 => keyfout(31),
      O => ciphertext_OBUF(15)
    );
\ciphertext_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(16),
      O => ciphertext(16)
    );
\ciphertext_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(16),
      I1 => keyfout(32),
      O => ciphertext_OBUF(16)
    );
\ciphertext_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(17),
      O => ciphertext(17)
    );
\ciphertext_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(17),
      I1 => keyfout(33),
      O => ciphertext_OBUF(17)
    );
\ciphertext_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(18),
      O => ciphertext(18)
    );
\ciphertext_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(34),
      I1 => toXor(18),
      O => ciphertext_OBUF(18)
    );
\ciphertext_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(19),
      O => ciphertext(19)
    );
\ciphertext_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(35),
      I1 => toXor(19),
      O => ciphertext_OBUF(19)
    );
\ciphertext_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(1),
      O => ciphertext(1)
    );
\ciphertext_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(17),
      I1 => toXor(1),
      O => ciphertext_OBUF(1)
    );
\ciphertext_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(20),
      O => ciphertext(20)
    );
\ciphertext_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(36),
      I1 => toXor(20),
      O => ciphertext_OBUF(20)
    );
\ciphertext_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(21),
      O => ciphertext(21)
    );
\ciphertext_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(37),
      I1 => toXor(21),
      O => ciphertext_OBUF(21)
    );
\ciphertext_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(22),
      O => ciphertext(22)
    );
\ciphertext_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(38),
      I1 => toXor(22),
      O => ciphertext_OBUF(22)
    );
\ciphertext_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(23),
      O => ciphertext(23)
    );
\ciphertext_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(23),
      I1 => keyfout(39),
      O => ciphertext_OBUF(23)
    );
\ciphertext_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(24),
      O => ciphertext(24)
    );
\ciphertext_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(24),
      I1 => keyfout(40),
      O => ciphertext_OBUF(24)
    );
\ciphertext_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(25),
      O => ciphertext(25)
    );
\ciphertext_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(25),
      I1 => keyfout(41),
      O => ciphertext_OBUF(25)
    );
\ciphertext_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(26),
      O => ciphertext(26)
    );
\ciphertext_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(26),
      I1 => keyfout(42),
      O => ciphertext_OBUF(26)
    );
\ciphertext_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(27),
      O => ciphertext(27)
    );
\ciphertext_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(27),
      I1 => keyfout(43),
      O => ciphertext_OBUF(27)
    );
\ciphertext_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(28),
      O => ciphertext(28)
    );
\ciphertext_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(28),
      I1 => keyfout(44),
      O => ciphertext_OBUF(28)
    );
\ciphertext_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(29),
      O => ciphertext(29)
    );
\ciphertext_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(29),
      I1 => keyfout(45),
      O => ciphertext_OBUF(29)
    );
\ciphertext_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(2),
      O => ciphertext(2)
    );
\ciphertext_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keyfout(18),
      I1 => toXor(2),
      O => ciphertext_OBUF(2)
    );
\ciphertext_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(30),
      O => ciphertext(30)
    );
\ciphertext_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(30),
      I1 => keyfout(46),
      O => ciphertext_OBUF(30)
    );
\ciphertext_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(31),
      O => ciphertext(31)
    );
\ciphertext_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(31),
      I1 => keyfout(47),
      O => ciphertext_OBUF(31)
    );
\ciphertext_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(32),
      O => ciphertext(32)
    );
\ciphertext_OBUF[32]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(32),
      I1 => keyfout(48),
      O => ciphertext_OBUF(32)
    );
\ciphertext_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(33),
      O => ciphertext(33)
    );
\ciphertext_OBUF[33]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(33),
      I1 => keyfout(49),
      O => ciphertext_OBUF(33)
    );
\ciphertext_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(34),
      O => ciphertext(34)
    );
\ciphertext_OBUF[34]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(34),
      I1 => keyfout(50),
      O => ciphertext_OBUF(34)
    );
\ciphertext_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(35),
      O => ciphertext(35)
    );
\ciphertext_OBUF[35]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(35),
      I1 => keyfout(51),
      O => ciphertext_OBUF(35)
    );
\ciphertext_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(36),
      O => ciphertext(36)
    );
\ciphertext_OBUF[36]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(36),
      I1 => keyfout(52),
      O => ciphertext_OBUF(36)
    );
\ciphertext_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(37),
      O => ciphertext(37)
    );
\ciphertext_OBUF[37]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(37),
      I1 => keyfout(53),
      O => ciphertext_OBUF(37)
    );
\ciphertext_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(38),
      O => ciphertext(38)
    );
\ciphertext_OBUF[38]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(38),
      I1 => keyfout(54),
      O => ciphertext_OBUF(38)
    );
\ciphertext_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(39),
      O => ciphertext(39)
    );
\ciphertext_OBUF[39]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(39),
      I1 => keyfout(55),
      O => ciphertext_OBUF(39)
    );
\ciphertext_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(3),
      O => ciphertext(3)
    );
\ciphertext_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(3),
      I1 => keyfout(19),
      O => ciphertext_OBUF(3)
    );
\ciphertext_OBUF[40]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(40),
      O => ciphertext(40)
    );
\ciphertext_OBUF[40]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(40),
      I1 => keyfout(56),
      O => ciphertext_OBUF(40)
    );
\ciphertext_OBUF[41]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(41),
      O => ciphertext(41)
    );
\ciphertext_OBUF[41]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(41),
      I1 => keyfout(57),
      O => ciphertext_OBUF(41)
    );
\ciphertext_OBUF[42]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(42),
      O => ciphertext(42)
    );
\ciphertext_OBUF[42]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(42),
      I1 => keyfout(58),
      O => ciphertext_OBUF(42)
    );
\ciphertext_OBUF[43]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(43),
      O => ciphertext(43)
    );
\ciphertext_OBUF[43]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(43),
      I1 => keyfout(59),
      O => ciphertext_OBUF(43)
    );
\ciphertext_OBUF[44]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(44),
      O => ciphertext(44)
    );
\ciphertext_OBUF[44]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(44),
      I1 => keyfout(60),
      O => ciphertext_OBUF(44)
    );
\ciphertext_OBUF[45]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(45),
      O => ciphertext(45)
    );
\ciphertext_OBUF[45]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(45),
      I1 => keyfout(61),
      O => ciphertext_OBUF(45)
    );
\ciphertext_OBUF[46]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(46),
      O => ciphertext(46)
    );
\ciphertext_OBUF[46]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(46),
      I1 => keyfout(62),
      O => ciphertext_OBUF(46)
    );
\ciphertext_OBUF[47]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(47),
      O => ciphertext(47)
    );
\ciphertext_OBUF[47]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(47),
      I1 => keyfout(63),
      O => ciphertext_OBUF(47)
    );
\ciphertext_OBUF[48]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(48),
      O => ciphertext(48)
    );
\ciphertext_OBUF[48]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(48),
      I1 => keyfout(64),
      O => ciphertext_OBUF(48)
    );
\ciphertext_OBUF[49]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(49),
      O => ciphertext(49)
    );
\ciphertext_OBUF[49]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(49),
      I1 => keyfout(65),
      O => ciphertext_OBUF(49)
    );
\ciphertext_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(4),
      O => ciphertext(4)
    );
\ciphertext_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(4),
      I1 => keyfout(20),
      O => ciphertext_OBUF(4)
    );
\ciphertext_OBUF[50]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(50),
      O => ciphertext(50)
    );
\ciphertext_OBUF[50]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(50),
      I1 => keyfout(66),
      O => ciphertext_OBUF(50)
    );
\ciphertext_OBUF[51]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(51),
      O => ciphertext(51)
    );
\ciphertext_OBUF[51]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(51),
      I1 => keyfout(67),
      O => ciphertext_OBUF(51)
    );
\ciphertext_OBUF[52]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(52),
      O => ciphertext(52)
    );
\ciphertext_OBUF[52]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(52),
      I1 => keyfout(68),
      O => ciphertext_OBUF(52)
    );
\ciphertext_OBUF[53]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(53),
      O => ciphertext(53)
    );
\ciphertext_OBUF[53]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(53),
      I1 => keyfout(69),
      O => ciphertext_OBUF(53)
    );
\ciphertext_OBUF[54]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(54),
      O => ciphertext(54)
    );
\ciphertext_OBUF[54]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(54),
      I1 => keyfout(70),
      O => ciphertext_OBUF(54)
    );
\ciphertext_OBUF[55]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(55),
      O => ciphertext(55)
    );
\ciphertext_OBUF[55]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(55),
      I1 => keyfout(71),
      O => ciphertext_OBUF(55)
    );
\ciphertext_OBUF[56]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(56),
      O => ciphertext(56)
    );
\ciphertext_OBUF[56]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(56),
      I1 => keyfout(72),
      O => ciphertext_OBUF(56)
    );
\ciphertext_OBUF[57]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(57),
      O => ciphertext(57)
    );
\ciphertext_OBUF[57]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(57),
      I1 => keyfout(73),
      O => ciphertext_OBUF(57)
    );
\ciphertext_OBUF[58]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(58),
      O => ciphertext(58)
    );
\ciphertext_OBUF[58]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(58),
      I1 => keyfout(74),
      O => ciphertext_OBUF(58)
    );
\ciphertext_OBUF[59]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(59),
      O => ciphertext(59)
    );
\ciphertext_OBUF[59]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(59),
      I1 => keyfout(75),
      O => ciphertext_OBUF(59)
    );
\ciphertext_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(5),
      O => ciphertext(5)
    );
\ciphertext_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(5),
      I1 => keyfout(21),
      O => ciphertext_OBUF(5)
    );
\ciphertext_OBUF[60]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(60),
      O => ciphertext(60)
    );
\ciphertext_OBUF[60]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(60),
      I1 => keyfout(76),
      O => ciphertext_OBUF(60)
    );
\ciphertext_OBUF[61]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(61),
      O => ciphertext(61)
    );
\ciphertext_OBUF[61]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(61),
      I1 => keyfout(77),
      O => ciphertext_OBUF(61)
    );
\ciphertext_OBUF[62]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(62),
      O => ciphertext(62)
    );
\ciphertext_OBUF[62]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(62),
      I1 => keyfout(78),
      O => ciphertext_OBUF(62)
    );
\ciphertext_OBUF[63]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(63),
      O => ciphertext(63)
    );
\ciphertext_OBUF[63]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(63),
      I1 => keyfout(79),
      O => ciphertext_OBUF(63)
    );
\ciphertext_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(6),
      O => ciphertext(6)
    );
\ciphertext_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(6),
      I1 => keyfout(22),
      O => ciphertext_OBUF(6)
    );
\ciphertext_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(7),
      O => ciphertext(7)
    );
\ciphertext_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(7),
      I1 => keyfout(23),
      O => ciphertext_OBUF(7)
    );
\ciphertext_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(8),
      O => ciphertext(8)
    );
\ciphertext_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(8),
      I1 => keyfout(24),
      O => ciphertext_OBUF(8)
    );
\ciphertext_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ciphertext_OBUF(9),
      O => ciphertext(9)
    );
\ciphertext_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => toXor(9),
      I1 => keyfout(25),
      O => ciphertext_OBUF(9)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => keynum(0),
      O => plusOp(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => keynum(0),
      I1 => keynum(1),
      O => plusOp(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => keynum(2),
      I1 => keynum(1),
      I2 => keynum(0),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => keynum(3),
      I1 => keynum(0),
      I2 => keynum(1),
      I3 => keynum(2),
      O => plusOp(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => keynum(4),
      I1 => keynum(2),
      I2 => keynum(1),
      I3 => keynum(0),
      I4 => keynum(3),
      O => plusOp(4)
    );
\count/cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => plusOp(0),
      Q => keynum(0)
    );
\count/cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => plusOp(1),
      Q => keynum(1)
    );
\count/cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \cnt[2]_i_1_n_0\,
      Q => keynum(2)
    );
\count/cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => plusOp(3),
      Q => keynum(3)
    );
\count/cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => plusOp(4),
      Q => keynum(4)
    );
\key_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(0),
      O => key_IBUF(0)
    );
\key_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(10),
      O => key_IBUF(10)
    );
\key_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(11),
      O => key_IBUF(11)
    );
\key_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(12),
      O => key_IBUF(12)
    );
\key_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(13),
      O => key_IBUF(13)
    );
\key_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(14),
      O => key_IBUF(14)
    );
\key_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(15),
      O => key_IBUF(15)
    );
\key_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(16),
      O => key_IBUF(16)
    );
\key_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(17),
      O => key_IBUF(17)
    );
\key_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(18),
      O => key_IBUF(18)
    );
\key_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(19),
      O => key_IBUF(19)
    );
\key_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(1),
      O => key_IBUF(1)
    );
\key_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(20),
      O => key_IBUF(20)
    );
\key_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(21),
      O => key_IBUF(21)
    );
\key_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(22),
      O => key_IBUF(22)
    );
\key_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(23),
      O => key_IBUF(23)
    );
\key_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(24),
      O => key_IBUF(24)
    );
\key_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(25),
      O => key_IBUF(25)
    );
\key_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(26),
      O => key_IBUF(26)
    );
\key_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(27),
      O => key_IBUF(27)
    );
\key_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(28),
      O => key_IBUF(28)
    );
\key_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(29),
      O => key_IBUF(29)
    );
\key_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(2),
      O => key_IBUF(2)
    );
\key_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(30),
      O => key_IBUF(30)
    );
\key_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(31),
      O => key_IBUF(31)
    );
\key_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(32),
      O => key_IBUF(32)
    );
\key_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(33),
      O => key_IBUF(33)
    );
\key_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(34),
      O => key_IBUF(34)
    );
\key_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(35),
      O => key_IBUF(35)
    );
\key_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(36),
      O => key_IBUF(36)
    );
\key_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(37),
      O => key_IBUF(37)
    );
\key_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(38),
      O => key_IBUF(38)
    );
\key_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(39),
      O => key_IBUF(39)
    );
\key_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(3),
      O => key_IBUF(3)
    );
\key_IBUF[40]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(40),
      O => key_IBUF(40)
    );
\key_IBUF[41]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(41),
      O => key_IBUF(41)
    );
\key_IBUF[42]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(42),
      O => key_IBUF(42)
    );
\key_IBUF[43]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(43),
      O => key_IBUF(43)
    );
\key_IBUF[44]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(44),
      O => key_IBUF(44)
    );
\key_IBUF[45]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(45),
      O => key_IBUF(45)
    );
\key_IBUF[46]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(46),
      O => key_IBUF(46)
    );
\key_IBUF[47]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(47),
      O => key_IBUF(47)
    );
\key_IBUF[48]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(48),
      O => key_IBUF(48)
    );
\key_IBUF[49]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(49),
      O => key_IBUF(49)
    );
\key_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(4),
      O => key_IBUF(4)
    );
\key_IBUF[50]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(50),
      O => key_IBUF(50)
    );
\key_IBUF[51]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(51),
      O => key_IBUF(51)
    );
\key_IBUF[52]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(52),
      O => key_IBUF(52)
    );
\key_IBUF[53]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(53),
      O => key_IBUF(53)
    );
\key_IBUF[54]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(54),
      O => key_IBUF(54)
    );
\key_IBUF[55]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(55),
      O => key_IBUF(55)
    );
\key_IBUF[56]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(56),
      O => key_IBUF(56)
    );
\key_IBUF[57]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(57),
      O => key_IBUF(57)
    );
\key_IBUF[58]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(58),
      O => key_IBUF(58)
    );
\key_IBUF[59]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(59),
      O => key_IBUF(59)
    );
\key_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(5),
      O => key_IBUF(5)
    );
\key_IBUF[60]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(60),
      O => key_IBUF(60)
    );
\key_IBUF[61]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(61),
      O => key_IBUF(61)
    );
\key_IBUF[62]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(62),
      O => key_IBUF(62)
    );
\key_IBUF[63]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(63),
      O => key_IBUF(63)
    );
\key_IBUF[64]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(64),
      O => key_IBUF(64)
    );
\key_IBUF[65]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(65),
      O => key_IBUF(65)
    );
\key_IBUF[66]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(66),
      O => key_IBUF(66)
    );
\key_IBUF[67]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(67),
      O => key_IBUF(67)
    );
\key_IBUF[68]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(68),
      O => key_IBUF(68)
    );
\key_IBUF[69]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(69),
      O => key_IBUF(69)
    );
\key_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(6),
      O => key_IBUF(6)
    );
\key_IBUF[70]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(70),
      O => key_IBUF(70)
    );
\key_IBUF[71]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(71),
      O => key_IBUF(71)
    );
\key_IBUF[72]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(72),
      O => key_IBUF(72)
    );
\key_IBUF[73]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(73),
      O => key_IBUF(73)
    );
\key_IBUF[74]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(74),
      O => key_IBUF(74)
    );
\key_IBUF[75]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(75),
      O => key_IBUF(75)
    );
\key_IBUF[76]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(76),
      O => key_IBUF(76)
    );
\key_IBUF[77]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(77),
      O => key_IBUF(77)
    );
\key_IBUF[78]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(78),
      O => key_IBUF(78)
    );
\key_IBUF[79]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(79),
      O => key_IBUF(79)
    );
\key_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(7),
      O => key_IBUF(7)
    );
\key_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(8),
      O => key_IBUF(8)
    );
\key_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(9),
      O => key_IBUF(9)
    );
\plaintext_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(0),
      O => plaintext_IBUF(0)
    );
\plaintext_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(10),
      O => plaintext_IBUF(10)
    );
\plaintext_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(11),
      O => plaintext_IBUF(11)
    );
\plaintext_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(12),
      O => plaintext_IBUF(12)
    );
\plaintext_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(13),
      O => plaintext_IBUF(13)
    );
\plaintext_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(14),
      O => plaintext_IBUF(14)
    );
\plaintext_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(15),
      O => plaintext_IBUF(15)
    );
\plaintext_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(16),
      O => plaintext_IBUF(16)
    );
\plaintext_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(17),
      O => plaintext_IBUF(17)
    );
\plaintext_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(18),
      O => plaintext_IBUF(18)
    );
\plaintext_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(19),
      O => plaintext_IBUF(19)
    );
\plaintext_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(1),
      O => plaintext_IBUF(1)
    );
\plaintext_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(20),
      O => plaintext_IBUF(20)
    );
\plaintext_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(21),
      O => plaintext_IBUF(21)
    );
\plaintext_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(22),
      O => plaintext_IBUF(22)
    );
\plaintext_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(23),
      O => plaintext_IBUF(23)
    );
\plaintext_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(24),
      O => plaintext_IBUF(24)
    );
\plaintext_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(25),
      O => plaintext_IBUF(25)
    );
\plaintext_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(26),
      O => plaintext_IBUF(26)
    );
\plaintext_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(27),
      O => plaintext_IBUF(27)
    );
\plaintext_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(28),
      O => plaintext_IBUF(28)
    );
\plaintext_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(29),
      O => plaintext_IBUF(29)
    );
\plaintext_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(2),
      O => plaintext_IBUF(2)
    );
\plaintext_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(30),
      O => plaintext_IBUF(30)
    );
\plaintext_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(31),
      O => plaintext_IBUF(31)
    );
\plaintext_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(32),
      O => plaintext_IBUF(32)
    );
\plaintext_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(33),
      O => plaintext_IBUF(33)
    );
\plaintext_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(34),
      O => plaintext_IBUF(34)
    );
\plaintext_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(35),
      O => plaintext_IBUF(35)
    );
\plaintext_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(36),
      O => plaintext_IBUF(36)
    );
\plaintext_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(37),
      O => plaintext_IBUF(37)
    );
\plaintext_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(38),
      O => plaintext_IBUF(38)
    );
\plaintext_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(39),
      O => plaintext_IBUF(39)
    );
\plaintext_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(3),
      O => plaintext_IBUF(3)
    );
\plaintext_IBUF[40]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(40),
      O => plaintext_IBUF(40)
    );
\plaintext_IBUF[41]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(41),
      O => plaintext_IBUF(41)
    );
\plaintext_IBUF[42]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(42),
      O => plaintext_IBUF(42)
    );
\plaintext_IBUF[43]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(43),
      O => plaintext_IBUF(43)
    );
\plaintext_IBUF[44]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(44),
      O => plaintext_IBUF(44)
    );
\plaintext_IBUF[45]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(45),
      O => plaintext_IBUF(45)
    );
\plaintext_IBUF[46]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(46),
      O => plaintext_IBUF(46)
    );
\plaintext_IBUF[47]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(47),
      O => plaintext_IBUF(47)
    );
\plaintext_IBUF[48]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(48),
      O => plaintext_IBUF(48)
    );
\plaintext_IBUF[49]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(49),
      O => plaintext_IBUF(49)
    );
\plaintext_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(4),
      O => plaintext_IBUF(4)
    );
\plaintext_IBUF[50]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(50),
      O => plaintext_IBUF(50)
    );
\plaintext_IBUF[51]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(51),
      O => plaintext_IBUF(51)
    );
\plaintext_IBUF[52]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(52),
      O => plaintext_IBUF(52)
    );
\plaintext_IBUF[53]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(53),
      O => plaintext_IBUF(53)
    );
\plaintext_IBUF[54]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(54),
      O => plaintext_IBUF(54)
    );
\plaintext_IBUF[55]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(55),
      O => plaintext_IBUF(55)
    );
\plaintext_IBUF[56]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(56),
      O => plaintext_IBUF(56)
    );
\plaintext_IBUF[57]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(57),
      O => plaintext_IBUF(57)
    );
\plaintext_IBUF[58]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(58),
      O => plaintext_IBUF(58)
    );
\plaintext_IBUF[59]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(59),
      O => plaintext_IBUF(59)
    );
\plaintext_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(5),
      O => plaintext_IBUF(5)
    );
\plaintext_IBUF[60]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(60),
      O => plaintext_IBUF(60)
    );
\plaintext_IBUF[61]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(61),
      O => plaintext_IBUF(61)
    );
\plaintext_IBUF[62]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(62),
      O => plaintext_IBUF(62)
    );
\plaintext_IBUF[63]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(63),
      O => plaintext_IBUF(63)
    );
\plaintext_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(6),
      O => plaintext_IBUF(6)
    );
\plaintext_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(7),
      O => plaintext_IBUF(7)
    );
\plaintext_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(8),
      O => plaintext_IBUF(8)
    );
\plaintext_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => plaintext(9),
      O => plaintext_IBUF(9)
    );
ready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ready_OBUF,
      O => ready
    );
\regKey/reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[0]_i_1_n_0\,
      Q => keyfout(0)
    );
\regKey/reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[10]_i_1_n_0\,
      Q => keyfout(10)
    );
\regKey/reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[11]_i_1_n_0\,
      Q => keyfout(11)
    );
\regKey/reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[12]_i_1_n_0\,
      Q => keyfout(12)
    );
\regKey/reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[13]_i_1_n_0\,
      Q => keyfout(13)
    );
\regKey/reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[14]_i_1_n_0\,
      Q => keyfout(14)
    );
\regKey/reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[15]_i_1_n_0\,
      Q => keyfout(15)
    );
\regKey/reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[16]_i_1_n_0\,
      Q => keyfout(16)
    );
\regKey/reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[17]_i_1_n_0\,
      Q => keyfout(17)
    );
\regKey/reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[18]_i_1_n_0\,
      Q => keyfout(18)
    );
\regKey/reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[19]_i_1_n_0\,
      Q => keyfout(19)
    );
\regKey/reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[1]_i_1_n_0\,
      Q => keyfout(1)
    );
\regKey/reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[20]_i_1_n_0\,
      Q => keyfout(20)
    );
\regKey/reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[21]_i_1_n_0\,
      Q => keyfout(21)
    );
\regKey/reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[22]_i_1_n_0\,
      Q => keyfout(22)
    );
\regKey/reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[23]_i_1_n_0\,
      Q => keyfout(23)
    );
\regKey/reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[24]_i_1_n_0\,
      Q => keyfout(24)
    );
\regKey/reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[25]_i_1_n_0\,
      Q => keyfout(25)
    );
\regKey/reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[26]_i_1_n_0\,
      Q => keyfout(26)
    );
\regKey/reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[27]_i_1_n_0\,
      Q => keyfout(27)
    );
\regKey/reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[28]_i_1_n_0\,
      Q => keyfout(28)
    );
\regKey/reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[29]_i_1_n_0\,
      Q => keyfout(29)
    );
\regKey/reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[2]_i_1_n_0\,
      Q => keyfout(2)
    );
\regKey/reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[30]_i_1_n_0\,
      Q => keyfout(30)
    );
\regKey/reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[31]_i_1_n_0\,
      Q => keyfout(31)
    );
\regKey/reg_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[32]_i_1_n_0\,
      Q => keyfout(32)
    );
\regKey/reg_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[33]_i_1_n_0\,
      Q => keyfout(33)
    );
\regKey/reg_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[34]_i_1_n_0\,
      Q => keyfout(34)
    );
\regKey/reg_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[35]_i_1_n_0\,
      Q => keyfout(35)
    );
\regKey/reg_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[36]_i_1_n_0\,
      Q => keyfout(36)
    );
\regKey/reg_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[37]_i_1_n_0\,
      Q => keyfout(37)
    );
\regKey/reg_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[38]_i_1_n_0\,
      Q => keyfout(38)
    );
\regKey/reg_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[39]_i_1_n_0\,
      Q => keyfout(39)
    );
\regKey/reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[3]_i_1_n_0\,
      Q => keyfout(3)
    );
\regKey/reg_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[40]_i_1_n_0\,
      Q => keyfout(40)
    );
\regKey/reg_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[41]_i_1_n_0\,
      Q => keyfout(41)
    );
\regKey/reg_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[42]_i_1_n_0\,
      Q => keyfout(42)
    );
\regKey/reg_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[43]_i_1_n_0\,
      Q => keyfout(43)
    );
\regKey/reg_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[44]_i_1_n_0\,
      Q => keyfout(44)
    );
\regKey/reg_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[45]_i_1_n_0\,
      Q => keyfout(45)
    );
\regKey/reg_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[46]_i_1_n_0\,
      Q => keyfout(46)
    );
\regKey/reg_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[47]_i_1_n_0\,
      Q => keyfout(47)
    );
\regKey/reg_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[48]_i_1_n_0\,
      Q => keyfout(48)
    );
\regKey/reg_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[49]_i_1_n_0\,
      Q => keyfout(49)
    );
\regKey/reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[4]_i_1_n_0\,
      Q => keyfout(4)
    );
\regKey/reg_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[50]_i_1_n_0\,
      Q => keyfout(50)
    );
\regKey/reg_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[51]_i_1_n_0\,
      Q => keyfout(51)
    );
\regKey/reg_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[52]_i_1_n_0\,
      Q => keyfout(52)
    );
\regKey/reg_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[53]_i_1_n_0\,
      Q => keyfout(53)
    );
\regKey/reg_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[54]_i_1_n_0\,
      Q => keyfout(54)
    );
\regKey/reg_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[55]_i_1_n_0\,
      Q => keyfout(55)
    );
\regKey/reg_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[56]_i_1_n_0\,
      Q => keyfout(56)
    );
\regKey/reg_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[57]_i_1_n_0\,
      Q => keyfout(57)
    );
\regKey/reg_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[58]_i_1_n_0\,
      Q => keyfout(58)
    );
\regKey/reg_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[59]_i_1_n_0\,
      Q => keyfout(59)
    );
\regKey/reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[5]_i_1_n_0\,
      Q => keyfout(5)
    );
\regKey/reg_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[60]_i_1_n_0\,
      Q => keyfout(60)
    );
\regKey/reg_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[61]_i_1_n_0\,
      Q => keyfout(61)
    );
\regKey/reg_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[62]_i_1_n_0\,
      Q => keyfout(62)
    );
\regKey/reg_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[63]_i_1_n_0\,
      Q => keyfout(63)
    );
\regKey/reg_reg[64]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[64]_i_1_n_0\,
      Q => keyfout(64)
    );
\regKey/reg_reg[65]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[65]_i_1_n_0\,
      Q => keyfout(65)
    );
\regKey/reg_reg[66]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[66]_i_1_n_0\,
      Q => keyfout(66)
    );
\regKey/reg_reg[67]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[67]_i_1_n_0\,
      Q => keyfout(67)
    );
\regKey/reg_reg[68]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[68]_i_1_n_0\,
      Q => keyfout(68)
    );
\regKey/reg_reg[69]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[69]_i_1_n_0\,
      Q => keyfout(69)
    );
\regKey/reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[6]_i_1_n_0\,
      Q => keyfout(6)
    );
\regKey/reg_reg[70]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[70]_i_1_n_0\,
      Q => keyfout(70)
    );
\regKey/reg_reg[71]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[71]_i_1_n_0\,
      Q => keyfout(71)
    );
\regKey/reg_reg[72]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[72]_i_1_n_0\,
      Q => keyfout(72)
    );
\regKey/reg_reg[73]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[73]_i_1_n_0\,
      Q => keyfout(73)
    );
\regKey/reg_reg[74]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[74]_i_1_n_0\,
      Q => keyfout(74)
    );
\regKey/reg_reg[75]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[75]_i_1_n_0\,
      Q => keyfout(75)
    );
\regKey/reg_reg[76]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[76]_i_1_n_0\,
      Q => keyfout(76)
    );
\regKey/reg_reg[77]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[77]_i_1_n_0\,
      Q => keyfout(77)
    );
\regKey/reg_reg[78]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[78]_i_1_n_0\,
      Q => keyfout(78)
    );
\regKey/reg_reg[79]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[79]_i_1_n_0\,
      Q => keyfout(79)
    );
\regKey/reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[7]_i_1_n_0\,
      Q => keyfout(7)
    );
\regKey/reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[8]_i_1_n_0\,
      Q => keyfout(8)
    );
\regKey/reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => \reg[9]_i_1_n_0\,
      Q => keyfout(9)
    );
\regText/reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(0),
      Q => toXor(0)
    );
\regText/reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(10),
      Q => toXor(10)
    );
\regText/reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(11),
      Q => toXor(11)
    );
\regText/reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(12),
      Q => toXor(12)
    );
\regText/reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(13),
      Q => toXor(13)
    );
\regText/reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(14),
      Q => toXor(14)
    );
\regText/reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(15),
      Q => toXor(15)
    );
\regText/reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(16),
      Q => toXor(16)
    );
\regText/reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(17),
      Q => toXor(17)
    );
\regText/reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(18),
      Q => toXor(18)
    );
\regText/reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(19),
      Q => toXor(19)
    );
\regText/reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(1),
      Q => toXor(1)
    );
\regText/reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(20),
      Q => toXor(20)
    );
\regText/reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(21),
      Q => toXor(21)
    );
\regText/reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(22),
      Q => toXor(22)
    );
\regText/reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(23),
      Q => toXor(23)
    );
\regText/reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(24),
      Q => toXor(24)
    );
\regText/reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(25),
      Q => toXor(25)
    );
\regText/reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(26),
      Q => toXor(26)
    );
\regText/reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(27),
      Q => toXor(27)
    );
\regText/reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(28),
      Q => toXor(28)
    );
\regText/reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(29),
      Q => toXor(29)
    );
\regText/reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(2),
      Q => toXor(2)
    );
\regText/reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(30),
      Q => toXor(30)
    );
\regText/reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(31),
      Q => toXor(31)
    );
\regText/reg_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(32),
      Q => toXor(32)
    );
\regText/reg_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(33),
      Q => toXor(33)
    );
\regText/reg_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(34),
      Q => toXor(34)
    );
\regText/reg_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(35),
      Q => toXor(35)
    );
\regText/reg_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(36),
      Q => toXor(36)
    );
\regText/reg_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(37),
      Q => toXor(37)
    );
\regText/reg_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(38),
      Q => toXor(38)
    );
\regText/reg_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(39),
      Q => toXor(39)
    );
\regText/reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(3),
      Q => toXor(3)
    );
\regText/reg_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(40),
      Q => toXor(40)
    );
\regText/reg_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(41),
      Q => toXor(41)
    );
\regText/reg_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(42),
      Q => toXor(42)
    );
\regText/reg_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(43),
      Q => toXor(43)
    );
\regText/reg_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(44),
      Q => toXor(44)
    );
\regText/reg_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(45),
      Q => toXor(45)
    );
\regText/reg_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(46),
      Q => toXor(46)
    );
\regText/reg_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(47),
      Q => toXor(47)
    );
\regText/reg_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(48),
      Q => toXor(48)
    );
\regText/reg_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(49),
      Q => toXor(49)
    );
\regText/reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(4),
      Q => toXor(4)
    );
\regText/reg_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(50),
      Q => toXor(50)
    );
\regText/reg_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(51),
      Q => toXor(51)
    );
\regText/reg_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(52),
      Q => toXor(52)
    );
\regText/reg_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(53),
      Q => toXor(53)
    );
\regText/reg_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(54),
      Q => toXor(54)
    );
\regText/reg_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(55),
      Q => toXor(55)
    );
\regText/reg_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(56),
      Q => toXor(56)
    );
\regText/reg_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(57),
      Q => toXor(57)
    );
\regText/reg_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(58),
      Q => toXor(58)
    );
\regText/reg_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(59),
      Q => toXor(59)
    );
\regText/reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(5),
      Q => toXor(5)
    );
\regText/reg_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(60),
      Q => toXor(60)
    );
\regText/reg_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(61),
      Q => toXor(61)
    );
\regText/reg_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(62),
      Q => toXor(62)
    );
\regText/reg_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(63),
      Q => toXor(63)
    );
\regText/reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(6),
      Q => toXor(6)
    );
\regText/reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(7),
      Q => toXor(7)
    );
\regText/reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(8),
      Q => toXor(8)
    );
\regText/reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => enable,
      CLR => reset_IBUF,
      D => input(9),
      Q => toXor(9)
    );
\reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(0),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(19),
      O => \reg[0]_i_1_n_0\
    );
\reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(0),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(3),
      I3 => ciphertext_OBUF(1),
      I4 => ciphertext_OBUF(0),
      I5 => ciphertext_OBUF(2),
      O => input(0)
    );
\reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(10),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(29),
      O => \reg[10]_i_1_n_0\
    );
\reg[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(10),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(43),
      I3 => ciphertext_OBUF(41),
      I4 => ciphertext_OBUF(40),
      I5 => ciphertext_OBUF(42),
      O => input(10)
    );
\reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(11),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(30),
      O => \reg[11]_i_1_n_0\
    );
\reg[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(11),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(47),
      I3 => ciphertext_OBUF(45),
      I4 => ciphertext_OBUF(44),
      I5 => ciphertext_OBUF(46),
      O => input(11)
    );
\reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(12),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(31),
      O => \reg[12]_i_1_n_0\
    );
\reg[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(12),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(51),
      I3 => ciphertext_OBUF(49),
      I4 => ciphertext_OBUF(48),
      I5 => ciphertext_OBUF(50),
      O => input(12)
    );
\reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(13),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(32),
      O => \reg[13]_i_1_n_0\
    );
\reg[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(13),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(55),
      I3 => ciphertext_OBUF(53),
      I4 => ciphertext_OBUF(52),
      I5 => ciphertext_OBUF(54),
      O => input(13)
    );
\reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(14),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(33),
      O => \reg[14]_i_1_n_0\
    );
\reg[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(14),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(59),
      I3 => ciphertext_OBUF(57),
      I4 => ciphertext_OBUF(56),
      I5 => ciphertext_OBUF(58),
      O => input(14)
    );
\reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => key_IBUF(15),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keynum(0),
      I3 => keyfout(34),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(15),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(63),
      I3 => ciphertext_OBUF(61),
      I4 => ciphertext_OBUF(60),
      I5 => ciphertext_OBUF(62),
      O => input(15)
    );
\reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => key_IBUF(16),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keynum(1),
      I3 => keyfout(35),
      O => \reg[16]_i_1_n_0\
    );
\reg[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B8BBBB888B8B8"
    )
        port map (
      I0 => plaintext_IBUF(16),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(3),
      I3 => ciphertext_OBUF(0),
      I4 => ciphertext_OBUF(2),
      I5 => ciphertext_OBUF(1),
      O => input(16)
    );
\reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => key_IBUF(17),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keynum(2),
      I3 => keyfout(36),
      O => \reg[17]_i_1_n_0\
    );
\reg[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(17),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(7),
      I3 => ciphertext_OBUF(5),
      I4 => ciphertext_OBUF(6),
      I5 => ciphertext_OBUF(4),
      O => input(17)
    );
\reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => key_IBUF(18),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keynum(3),
      I3 => keyfout(37),
      O => \reg[18]_i_1_n_0\
    );
\reg[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(18),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(11),
      I3 => ciphertext_OBUF(9),
      I4 => ciphertext_OBUF(10),
      I5 => ciphertext_OBUF(8),
      O => input(18)
    );
\reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => key_IBUF(19),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keynum(4),
      I3 => keyfout(38),
      O => \reg[19]_i_1_n_0\
    );
\reg[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(19),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(15),
      I3 => ciphertext_OBUF(13),
      I4 => ciphertext_OBUF(14),
      I5 => ciphertext_OBUF(12),
      O => input(19)
    );
\reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(1),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(20),
      O => \reg[1]_i_1_n_0\
    );
\reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(1),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(7),
      I3 => ciphertext_OBUF(5),
      I4 => ciphertext_OBUF(4),
      I5 => ciphertext_OBUF(6),
      O => input(1)
    );
\reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(20),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(39),
      O => \reg[20]_i_1_n_0\
    );
\reg[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(20),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(19),
      I3 => ciphertext_OBUF(17),
      I4 => ciphertext_OBUF(18),
      I5 => ciphertext_OBUF(16),
      O => input(20)
    );
\reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(21),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(40),
      O => \reg[21]_i_1_n_0\
    );
\reg[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(21),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(23),
      I3 => ciphertext_OBUF(21),
      I4 => ciphertext_OBUF(22),
      I5 => ciphertext_OBUF(20),
      O => input(21)
    );
\reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(22),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(41),
      O => \reg[22]_i_1_n_0\
    );
\reg[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(22),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(27),
      I3 => ciphertext_OBUF(25),
      I4 => ciphertext_OBUF(26),
      I5 => ciphertext_OBUF(24),
      O => input(22)
    );
\reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(23),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(42),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(23),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(31),
      I3 => ciphertext_OBUF(29),
      I4 => ciphertext_OBUF(30),
      I5 => ciphertext_OBUF(28),
      O => input(23)
    );
\reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(24),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(43),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(24),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(35),
      I3 => ciphertext_OBUF(33),
      I4 => ciphertext_OBUF(34),
      I5 => ciphertext_OBUF(32),
      O => input(24)
    );
\reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(25),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(44),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(25),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(39),
      I3 => ciphertext_OBUF(37),
      I4 => ciphertext_OBUF(38),
      I5 => ciphertext_OBUF(36),
      O => input(25)
    );
\reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(26),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(45),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(26),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(43),
      I3 => ciphertext_OBUF(41),
      I4 => ciphertext_OBUF(42),
      I5 => ciphertext_OBUF(40),
      O => input(26)
    );
\reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(27),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(46),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(27),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(47),
      I3 => ciphertext_OBUF(45),
      I4 => ciphertext_OBUF(46),
      I5 => ciphertext_OBUF(44),
      O => input(27)
    );
\reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(28),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(47),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(28),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(51),
      I3 => ciphertext_OBUF(49),
      I4 => ciphertext_OBUF(50),
      I5 => ciphertext_OBUF(48),
      O => input(28)
    );
\reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(29),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(48),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(29),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(55),
      I3 => ciphertext_OBUF(53),
      I4 => ciphertext_OBUF(54),
      I5 => ciphertext_OBUF(52),
      O => input(29)
    );
\reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(2),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(21),
      O => \reg[2]_i_1_n_0\
    );
\reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(2),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(11),
      I3 => ciphertext_OBUF(9),
      I4 => ciphertext_OBUF(8),
      I5 => ciphertext_OBUF(10),
      O => input(2)
    );
\reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(30),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(49),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(30),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(59),
      I3 => ciphertext_OBUF(57),
      I4 => ciphertext_OBUF(58),
      I5 => ciphertext_OBUF(56),
      O => input(30)
    );
\reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(31),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(50),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88BB88B88BBB8"
    )
        port map (
      I0 => plaintext_IBUF(31),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(63),
      I3 => ciphertext_OBUF(61),
      I4 => ciphertext_OBUF(62),
      I5 => ciphertext_OBUF(60),
      O => input(31)
    );
\reg[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(32),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(51),
      O => \reg[32]_i_1_n_0\
    );
\reg[32]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(32),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(3),
      I3 => ciphertext_OBUF(2),
      I4 => ciphertext_OBUF(1),
      I5 => ciphertext_OBUF(0),
      O => input(32)
    );
\reg[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(33),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(52),
      O => \reg[33]_i_1_n_0\
    );
\reg[33]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(33),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(7),
      I3 => ciphertext_OBUF(6),
      I4 => ciphertext_OBUF(5),
      I5 => ciphertext_OBUF(4),
      O => input(33)
    );
\reg[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(34),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(53),
      O => \reg[34]_i_1_n_0\
    );
\reg[34]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(34),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(11),
      I3 => ciphertext_OBUF(10),
      I4 => ciphertext_OBUF(9),
      I5 => ciphertext_OBUF(8),
      O => input(34)
    );
\reg[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(35),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(54),
      O => \reg[35]_i_1_n_0\
    );
\reg[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(35),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(15),
      I3 => ciphertext_OBUF(14),
      I4 => ciphertext_OBUF(13),
      I5 => ciphertext_OBUF(12),
      O => input(35)
    );
\reg[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(36),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(55),
      O => \reg[36]_i_1_n_0\
    );
\reg[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(36),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(19),
      I3 => ciphertext_OBUF(18),
      I4 => ciphertext_OBUF(17),
      I5 => ciphertext_OBUF(16),
      O => input(36)
    );
\reg[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(37),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(56),
      O => \reg[37]_i_1_n_0\
    );
\reg[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8888BBB"
    )
        port map (
      I0 => plaintext_IBUF(37),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(21),
      I3 => ciphertext_OBUF(20),
      I4 => ciphertext_OBUF(22),
      I5 => ciphertext_OBUF(23),
      O => input(37)
    );
\reg[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(38),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(57),
      O => \reg[38]_i_1_n_0\
    );
\reg[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(38),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(27),
      I3 => ciphertext_OBUF(26),
      I4 => ciphertext_OBUF(25),
      I5 => ciphertext_OBUF(24),
      O => input(38)
    );
\reg[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(39),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(58),
      O => \reg[39]_i_1_n_0\
    );
\reg[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(39),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(31),
      I3 => ciphertext_OBUF(30),
      I4 => ciphertext_OBUF(29),
      I5 => ciphertext_OBUF(28),
      O => input(39)
    );
\reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(3),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(22),
      O => \reg[3]_i_1_n_0\
    );
\reg[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(3),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(15),
      I3 => ciphertext_OBUF(13),
      I4 => ciphertext_OBUF(12),
      I5 => ciphertext_OBUF(14),
      O => input(3)
    );
\reg[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(40),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(59),
      O => \reg[40]_i_1_n_0\
    );
\reg[40]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(40),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(35),
      I3 => ciphertext_OBUF(34),
      I4 => ciphertext_OBUF(33),
      I5 => ciphertext_OBUF(32),
      O => input(40)
    );
\reg[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(41),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(60),
      O => \reg[41]_i_1_n_0\
    );
\reg[41]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(41),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(39),
      I3 => ciphertext_OBUF(38),
      I4 => ciphertext_OBUF(37),
      I5 => ciphertext_OBUF(36),
      O => input(41)
    );
\reg[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(42),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(61),
      O => \reg[42]_i_1_n_0\
    );
\reg[42]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(42),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(43),
      I3 => ciphertext_OBUF(42),
      I4 => ciphertext_OBUF(41),
      I5 => ciphertext_OBUF(40),
      O => input(42)
    );
\reg[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(43),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(62),
      O => \reg[43]_i_1_n_0\
    );
\reg[43]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(43),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(47),
      I3 => ciphertext_OBUF(46),
      I4 => ciphertext_OBUF(45),
      I5 => ciphertext_OBUF(44),
      O => input(43)
    );
\reg[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(44),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(63),
      O => \reg[44]_i_1_n_0\
    );
\reg[44]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(44),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(51),
      I3 => ciphertext_OBUF(50),
      I4 => ciphertext_OBUF(49),
      I5 => ciphertext_OBUF(48),
      O => input(44)
    );
\reg[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(45),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(64),
      O => \reg[45]_i_1_n_0\
    );
\reg[45]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(45),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(55),
      I3 => ciphertext_OBUF(54),
      I4 => ciphertext_OBUF(53),
      I5 => ciphertext_OBUF(52),
      O => input(45)
    );
\reg[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(46),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(65),
      O => \reg[46]_i_1_n_0\
    );
\reg[46]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(46),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(59),
      I3 => ciphertext_OBUF(58),
      I4 => ciphertext_OBUF(57),
      I5 => ciphertext_OBUF(56),
      O => input(46)
    );
\reg[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(47),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(66),
      O => \reg[47]_i_1_n_0\
    );
\reg[47]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88B8BB88BBB88B"
    )
        port map (
      I0 => plaintext_IBUF(47),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(63),
      I3 => ciphertext_OBUF(62),
      I4 => ciphertext_OBUF(61),
      I5 => ciphertext_OBUF(60),
      O => input(47)
    );
\reg[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(48),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(67),
      O => \reg[48]_i_1_n_0\
    );
\reg[48]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(48),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(3),
      I3 => ciphertext_OBUF(0),
      I4 => ciphertext_OBUF(2),
      I5 => ciphertext_OBUF(1),
      O => input(48)
    );
\reg[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(49),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(68),
      O => \reg[49]_i_1_n_0\
    );
\reg[49]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(49),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(7),
      I3 => ciphertext_OBUF(4),
      I4 => ciphertext_OBUF(6),
      I5 => ciphertext_OBUF(5),
      O => input(49)
    );
\reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(4),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(23),
      O => \reg[4]_i_1_n_0\
    );
\reg[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(4),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(19),
      I3 => ciphertext_OBUF(17),
      I4 => ciphertext_OBUF(16),
      I5 => ciphertext_OBUF(18),
      O => input(4)
    );
\reg[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(50),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(69),
      O => \reg[50]_i_1_n_0\
    );
\reg[50]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(50),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(11),
      I3 => ciphertext_OBUF(8),
      I4 => ciphertext_OBUF(10),
      I5 => ciphertext_OBUF(9),
      O => input(50)
    );
\reg[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(51),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(70),
      O => \reg[51]_i_1_n_0\
    );
\reg[51]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(51),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(15),
      I3 => ciphertext_OBUF(12),
      I4 => ciphertext_OBUF(14),
      I5 => ciphertext_OBUF(13),
      O => input(51)
    );
\reg[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(52),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(71),
      O => \reg[52]_i_1_n_0\
    );
\reg[52]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(52),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(19),
      I3 => ciphertext_OBUF(16),
      I4 => ciphertext_OBUF(18),
      I5 => ciphertext_OBUF(17),
      O => input(52)
    );
\reg[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(53),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(72),
      O => \reg[53]_i_1_n_0\
    );
\reg[53]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(53),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(23),
      I3 => ciphertext_OBUF(20),
      I4 => ciphertext_OBUF(22),
      I5 => ciphertext_OBUF(21),
      O => input(53)
    );
\reg[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(54),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(73),
      O => \reg[54]_i_1_n_0\
    );
\reg[54]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(54),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(27),
      I3 => ciphertext_OBUF(24),
      I4 => ciphertext_OBUF(26),
      I5 => ciphertext_OBUF(25),
      O => input(54)
    );
\reg[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(55),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(74),
      O => \reg[55]_i_1_n_0\
    );
\reg[55]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(55),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(31),
      I3 => ciphertext_OBUF(28),
      I4 => ciphertext_OBUF(30),
      I5 => ciphertext_OBUF(29),
      O => input(55)
    );
\reg[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(56),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(75),
      O => \reg[56]_i_1_n_0\
    );
\reg[56]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(56),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(35),
      I3 => ciphertext_OBUF(32),
      I4 => ciphertext_OBUF(34),
      I5 => ciphertext_OBUF(33),
      O => input(56)
    );
\reg[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(57),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(76),
      O => \reg[57]_i_1_n_0\
    );
\reg[57]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(57),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(39),
      I3 => ciphertext_OBUF(36),
      I4 => ciphertext_OBUF(38),
      I5 => ciphertext_OBUF(37),
      O => input(57)
    );
\reg[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(58),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(77),
      O => \reg[58]_i_1_n_0\
    );
\reg[58]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(58),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(43),
      I3 => ciphertext_OBUF(40),
      I4 => ciphertext_OBUF(42),
      I5 => ciphertext_OBUF(41),
      O => input(58)
    );
\reg[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(59),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(78),
      O => \reg[59]_i_1_n_0\
    );
\reg[59]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(59),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(47),
      I3 => ciphertext_OBUF(44),
      I4 => ciphertext_OBUF(46),
      I5 => ciphertext_OBUF(45),
      O => input(59)
    );
\reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(5),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(24),
      O => \reg[5]_i_1_n_0\
    );
\reg[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB88BB8B88B8BB8"
    )
        port map (
      I0 => plaintext_IBUF(5),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(23),
      I3 => ciphertext_OBUF(20),
      I4 => ciphertext_OBUF(22),
      I5 => ciphertext_OBUF(21),
      O => input(5)
    );
\reg[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(60),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(79),
      O => \reg[60]_i_1_n_0\
    );
\reg[60]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(60),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(51),
      I3 => ciphertext_OBUF(48),
      I4 => ciphertext_OBUF(50),
      I5 => ciphertext_OBUF(49),
      O => input(60)
    );
\reg[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(61),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(0),
      O => \reg[61]_i_1_n_0\
    );
\reg[61]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(61),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(55),
      I3 => ciphertext_OBUF(52),
      I4 => ciphertext_OBUF(54),
      I5 => ciphertext_OBUF(53),
      O => input(61)
    );
\reg[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(62),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(1),
      O => \reg[62]_i_1_n_0\
    );
\reg[62]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(62),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(59),
      I3 => ciphertext_OBUF(56),
      I4 => ciphertext_OBUF(58),
      I5 => ciphertext_OBUF(57),
      O => input(62)
    );
\reg[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(63),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(2),
      O => \reg[63]_i_1_n_0\
    );
\reg[63]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBB8888BB88B"
    )
        port map (
      I0 => plaintext_IBUF(63),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(63),
      I3 => ciphertext_OBUF(60),
      I4 => ciphertext_OBUF(62),
      I5 => ciphertext_OBUF(61),
      O => input(63)
    );
\reg[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F5F"
    )
        port map (
      I0 => ready_OBUF,
      I1 => \reg[63]_i_3_n_0\,
      I2 => start_IBUF,
      I3 => enable,
      O => \reg[63]_i_2_n_0\
    );
\reg[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => keynum(0),
      I1 => keynum(1),
      I2 => keynum(2),
      I3 => keynum(4),
      I4 => keynum(3),
      O => \reg[63]_i_3_n_0\
    );
\reg[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(64),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(3),
      O => \reg[64]_i_1_n_0\
    );
\reg[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(65),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(4),
      O => \reg[65]_i_1_n_0\
    );
\reg[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(66),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(5),
      O => \reg[66]_i_1_n_0\
    );
\reg[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(67),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(6),
      O => \reg[67]_i_1_n_0\
    );
\reg[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(68),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(7),
      O => \reg[68]_i_1_n_0\
    );
\reg[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(69),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(8),
      O => \reg[69]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(6),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(25),
      O => \reg[6]_i_1_n_0\
    );
\reg[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(6),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(27),
      I3 => ciphertext_OBUF(25),
      I4 => ciphertext_OBUF(24),
      I5 => ciphertext_OBUF(26),
      O => input(6)
    );
\reg[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(70),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(9),
      O => \reg[70]_i_1_n_0\
    );
\reg[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(71),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(10),
      O => \reg[71]_i_1_n_0\
    );
\reg[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(72),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(11),
      O => \reg[72]_i_1_n_0\
    );
\reg[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(73),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(12),
      O => \reg[73]_i_1_n_0\
    );
\reg[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(74),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(13),
      O => \reg[74]_i_1_n_0\
    );
\reg[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(75),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(14),
      O => \reg[75]_i_1_n_0\
    );
\reg[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BB88BB8B88BB8"
    )
        port map (
      I0 => key_IBUF(76),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(18),
      I3 => keyfout(17),
      I4 => keyfout(16),
      I5 => keyfout(15),
      O => \reg[76]_i_1_n_0\
    );
\reg[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B8BBBB888B8B8"
    )
        port map (
      I0 => key_IBUF(77),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(18),
      I3 => keyfout(15),
      I4 => keyfout(17),
      I5 => keyfout(16),
      O => \reg[77]_i_1_n_0\
    );
\reg[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB88B8B8B88B8BB"
    )
        port map (
      I0 => key_IBUF(78),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(16),
      I3 => keyfout(18),
      I4 => keyfout(17),
      I5 => keyfout(15),
      O => \reg[78]_i_1_n_0\
    );
\reg[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBB88B8BB88B"
    )
        port map (
      I0 => key_IBUF(79),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(18),
      I3 => keyfout(16),
      I4 => keyfout(17),
      I5 => keyfout(15),
      O => \reg[79]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(7),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(26),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(7),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(31),
      I3 => ciphertext_OBUF(29),
      I4 => ciphertext_OBUF(28),
      I5 => ciphertext_OBUF(30),
      O => input(7)
    );
\reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(8),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(27),
      O => \reg[8]_i_1_n_0\
    );
\reg[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(8),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(35),
      I3 => ciphertext_OBUF(33),
      I4 => ciphertext_OBUF(32),
      I5 => ciphertext_OBUF(34),
      O => input(8)
    );
\reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key_IBUF(9),
      I1 => \reg[63]_i_2_n_0\,
      I2 => keyfout(28),
      O => \reg[9]_i_1_n_0\
    );
\reg[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88B8B8BB8B8"
    )
        port map (
      I0 => plaintext_IBUF(9),
      I1 => \reg[63]_i_2_n_0\,
      I2 => ciphertext_OBUF(39),
      I3 => ciphertext_OBUF(37),
      I4 => ciphertext_OBUF(36),
      I5 => ciphertext_OBUF(38),
      O => input(9)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
end STRUCTURE;
