-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Nov  9 16:04:01 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl /media/psf/Home/Uni/Cores/hal-benchmarks/simple_circuits/ibex_alu.vhd -force
-- Design      : ibex_alu
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ibex_alu is
  port (
    operator_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    operand_a_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    operand_b_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    multdiv_operand_a_i : in STD_LOGIC_VECTOR ( 32 downto 0 );
    multdiv_operand_b_i : in STD_LOGIC_VECTOR ( 32 downto 0 );
    multdiv_en_i : in STD_LOGIC;
    adder_result_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adder_result_ext_o : out STD_LOGIC_VECTOR ( 33 downto 0 );
    result_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    comparison_result_o : out STD_LOGIC;
    is_equal_result_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ibex_alu : entity is true;
end ibex_alu;

architecture STRUCTURE of ibex_alu is
  signal adder_in_a : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal adder_result_ext_o_OBUF : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \adder_result_o_OBUF[10]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[10]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[18]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[22]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[26]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[2]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[30]_inst_i_9_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[31]_inst_i_3_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[31]_inst_i_4_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_1_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_1_n_1\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_1_n_2\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_1_n_3\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \adder_result_o_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal comparison_result_o_OBUF : STD_LOGIC;
  signal comparison_result_o_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal comparison_result_o_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal is_equal_result_o_OBUF : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal is_equal_result_o_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal is_greater_equal : STD_LOGIC;
  signal multdiv_en_i_IBUF : STD_LOGIC;
  signal multdiv_operand_a_i_IBUF : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal multdiv_operand_b_i_IBUF : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal operand_a_i_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal operand_b_i_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal operator_i_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal result_o_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \result_o_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[16]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[16]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[17]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[17]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[17]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[18]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[18]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[18]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[19]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[19]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[19]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[19]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[20]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[20]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[20]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[20]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[20]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[20]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[21]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[21]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[21]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[21]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[21]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[21]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[22]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[22]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[22]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[22]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[22]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[22]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[23]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[24]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[24]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[24]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[24]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[24]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[25]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[25]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[25]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[25]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[25]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[26]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[26]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[26]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[26]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[26]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[27]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[28]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[29]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[30]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_14_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_17_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_18_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_19_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_20_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_21_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_22_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_23_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_24_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[31]_inst_i_9_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_o_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal shift_left : STD_LOGIC;
  signal shift_op_a : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal shift_op_a_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal \NLW_adder_result_o_OBUF[31]_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_adder_result_o_OBUF[31]_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \result_o_OBUF[0]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_o_OBUF[15]_inst_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_o_OBUF[16]_inst_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_o_OBUF[1]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_o_OBUF[23]_inst_i_10\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result_o_OBUF[23]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result_o_OBUF[24]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result_o_OBUF[24]_inst_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result_o_OBUF[24]_inst_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result_o_OBUF[25]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result_o_OBUF[25]_inst_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result_o_OBUF[25]_inst_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result_o_OBUF[26]_inst_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result_o_OBUF[26]_inst_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result_o_OBUF[26]_inst_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result_o_OBUF[27]_inst_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \result_o_OBUF[27]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_o_OBUF[27]_inst_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \result_o_OBUF[27]_inst_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \result_o_OBUF[28]_inst_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \result_o_OBUF[28]_inst_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result_o_OBUF[28]_inst_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result_o_OBUF[28]_inst_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \result_o_OBUF[29]_inst_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result_o_OBUF[29]_inst_i_14\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result_o_OBUF[29]_inst_i_15\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \result_o_OBUF[29]_inst_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result_o_OBUF[29]_inst_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result_o_OBUF[2]_inst_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result_o_OBUF[30]_inst_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result_o_OBUF[30]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_o_OBUF[30]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result_o_OBUF[30]_inst_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result_o_OBUF[31]_inst_i_16\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result_o_OBUF[31]_inst_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_o_OBUF[3]_inst_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result_o_OBUF[4]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_o_OBUF[5]_inst_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result_o_OBUF[6]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result_o_OBUF[7]_inst_i_2\ : label is "soft_lutpair7";
begin
\adder_result_ext_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(0),
      O => adder_result_ext_o(0)
    );
\adder_result_ext_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(10),
      O => adder_result_ext_o(10)
    );
\adder_result_ext_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(11),
      O => adder_result_ext_o(11)
    );
\adder_result_ext_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(12),
      O => adder_result_ext_o(12)
    );
\adder_result_ext_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(13),
      O => adder_result_ext_o(13)
    );
\adder_result_ext_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(14),
      O => adder_result_ext_o(14)
    );
\adder_result_ext_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(15),
      O => adder_result_ext_o(15)
    );
\adder_result_ext_o_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(16),
      O => adder_result_ext_o(16)
    );
\adder_result_ext_o_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(17),
      O => adder_result_ext_o(17)
    );
\adder_result_ext_o_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(18),
      O => adder_result_ext_o(18)
    );
\adder_result_ext_o_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(19),
      O => adder_result_ext_o(19)
    );
\adder_result_ext_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(1),
      O => adder_result_ext_o(1)
    );
\adder_result_ext_o_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(20),
      O => adder_result_ext_o(20)
    );
\adder_result_ext_o_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(21),
      O => adder_result_ext_o(21)
    );
\adder_result_ext_o_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(22),
      O => adder_result_ext_o(22)
    );
\adder_result_ext_o_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(23),
      O => adder_result_ext_o(23)
    );
\adder_result_ext_o_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(24),
      O => adder_result_ext_o(24)
    );
\adder_result_ext_o_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(25),
      O => adder_result_ext_o(25)
    );
\adder_result_ext_o_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(26),
      O => adder_result_ext_o(26)
    );
\adder_result_ext_o_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(27),
      O => adder_result_ext_o(27)
    );
\adder_result_ext_o_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(28),
      O => adder_result_ext_o(28)
    );
\adder_result_ext_o_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(29),
      O => adder_result_ext_o(29)
    );
\adder_result_ext_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(2),
      O => adder_result_ext_o(2)
    );
\adder_result_ext_o_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(30),
      O => adder_result_ext_o(30)
    );
\adder_result_ext_o_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(31),
      O => adder_result_ext_o(31)
    );
\adder_result_ext_o_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(32),
      O => adder_result_ext_o(32)
    );
\adder_result_ext_o_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(33),
      O => adder_result_ext_o(33)
    );
\adder_result_ext_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(3),
      O => adder_result_ext_o(3)
    );
\adder_result_ext_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(4),
      O => adder_result_ext_o(4)
    );
\adder_result_ext_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(5),
      O => adder_result_ext_o(5)
    );
\adder_result_ext_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(6),
      O => adder_result_ext_o(6)
    );
\adder_result_ext_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(7),
      O => adder_result_ext_o(7)
    );
\adder_result_ext_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(8),
      O => adder_result_ext_o(8)
    );
\adder_result_ext_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(9),
      O => adder_result_ext_o(9)
    );
\adder_result_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(1),
      O => adder_result_o(0)
    );
\adder_result_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(11),
      O => adder_result_o(10)
    );
\adder_result_o_OBUF[10]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[6]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[10]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[10]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[10]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[10]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(11 downto 8),
      O(3 downto 0) => adder_result_ext_o_OBUF(11 downto 8),
      S(3) => \adder_result_o_OBUF[10]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[10]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[10]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[10]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(11),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(10),
      O => adder_in_a(11)
    );
\adder_result_o_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(10),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(9),
      O => adder_in_a(10)
    );
\adder_result_o_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(9),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(8),
      O => adder_in_a(9)
    );
\adder_result_o_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(8),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(7),
      O => adder_in_a(8)
    );
\adder_result_o_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(10),
      I1 => multdiv_operand_a_i_IBUF(11),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(10),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(11),
      O => \adder_result_o_OBUF[10]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(9),
      I1 => multdiv_operand_a_i_IBUF(10),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(9),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(10),
      O => \adder_result_o_OBUF[10]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(8),
      I1 => multdiv_operand_a_i_IBUF(9),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(8),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(9),
      O => \adder_result_o_OBUF[10]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(7),
      I1 => multdiv_operand_a_i_IBUF(8),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(7),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(8),
      O => \adder_result_o_OBUF[10]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(12),
      O => adder_result_o(11)
    );
\adder_result_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(13),
      O => adder_result_o(12)
    );
\adder_result_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(14),
      O => adder_result_o(13)
    );
\adder_result_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(15),
      O => adder_result_o(14)
    );
\adder_result_o_OBUF[14]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[10]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[14]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[14]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[14]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[14]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(15 downto 12),
      O(3 downto 0) => adder_result_ext_o_OBUF(15 downto 12),
      S(3) => \adder_result_o_OBUF[14]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[14]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[14]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[14]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(15),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(14),
      O => adder_in_a(15)
    );
\adder_result_o_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(14),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(13),
      O => adder_in_a(14)
    );
\adder_result_o_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(13),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(12),
      O => adder_in_a(13)
    );
\adder_result_o_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(12),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(11),
      O => adder_in_a(12)
    );
\adder_result_o_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(14),
      I1 => multdiv_operand_a_i_IBUF(15),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(14),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(15),
      O => \adder_result_o_OBUF[14]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(13),
      I1 => multdiv_operand_a_i_IBUF(14),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(13),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(14),
      O => \adder_result_o_OBUF[14]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(12),
      I1 => multdiv_operand_a_i_IBUF(13),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(12),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(13),
      O => \adder_result_o_OBUF[14]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(11),
      I1 => multdiv_operand_a_i_IBUF(12),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(11),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(12),
      O => \adder_result_o_OBUF[14]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(16),
      O => adder_result_o(15)
    );
\adder_result_o_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(17),
      O => adder_result_o(16)
    );
\adder_result_o_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(18),
      O => adder_result_o(17)
    );
\adder_result_o_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(19),
      O => adder_result_o(18)
    );
\adder_result_o_OBUF[18]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[14]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[18]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[18]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[18]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[18]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(19 downto 16),
      O(3 downto 0) => adder_result_ext_o_OBUF(19 downto 16),
      S(3) => \adder_result_o_OBUF[18]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[18]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[18]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[18]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[18]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(19),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(18),
      O => adder_in_a(19)
    );
\adder_result_o_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(18),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(17),
      O => adder_in_a(18)
    );
\adder_result_o_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(17),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(16),
      O => adder_in_a(17)
    );
\adder_result_o_OBUF[18]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(16),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(15),
      O => adder_in_a(16)
    );
\adder_result_o_OBUF[18]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(18),
      I1 => multdiv_operand_a_i_IBUF(19),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(18),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(19),
      O => \adder_result_o_OBUF[18]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[18]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(17),
      I1 => multdiv_operand_a_i_IBUF(18),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(17),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(18),
      O => \adder_result_o_OBUF[18]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[18]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(16),
      I1 => multdiv_operand_a_i_IBUF(17),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(16),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(17),
      O => \adder_result_o_OBUF[18]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[18]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(15),
      I1 => multdiv_operand_a_i_IBUF(16),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(15),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(16),
      O => \adder_result_o_OBUF[18]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(20),
      O => adder_result_o(19)
    );
\adder_result_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(2),
      O => adder_result_o(1)
    );
\adder_result_o_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(21),
      O => adder_result_o(20)
    );
\adder_result_o_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(22),
      O => adder_result_o(21)
    );
\adder_result_o_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(23),
      O => adder_result_o(22)
    );
\adder_result_o_OBUF[22]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[18]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[22]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[22]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[22]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[22]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(23 downto 20),
      O(3 downto 0) => adder_result_ext_o_OBUF(23 downto 20),
      S(3) => \adder_result_o_OBUF[22]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[22]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[22]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[22]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[22]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(23),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(22),
      O => adder_in_a(23)
    );
\adder_result_o_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(22),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(21),
      O => adder_in_a(22)
    );
\adder_result_o_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(21),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(20),
      O => adder_in_a(21)
    );
\adder_result_o_OBUF[22]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(20),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(19),
      O => adder_in_a(20)
    );
\adder_result_o_OBUF[22]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(22),
      I1 => multdiv_operand_a_i_IBUF(23),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(22),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(23),
      O => \adder_result_o_OBUF[22]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[22]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(21),
      I1 => multdiv_operand_a_i_IBUF(22),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(21),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(22),
      O => \adder_result_o_OBUF[22]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[22]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(20),
      I1 => multdiv_operand_a_i_IBUF(21),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(20),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(21),
      O => \adder_result_o_OBUF[22]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[22]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(19),
      I1 => multdiv_operand_a_i_IBUF(20),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(19),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(20),
      O => \adder_result_o_OBUF[22]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(24),
      O => adder_result_o(23)
    );
\adder_result_o_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(25),
      O => adder_result_o(24)
    );
\adder_result_o_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(26),
      O => adder_result_o(25)
    );
\adder_result_o_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(27),
      O => adder_result_o(26)
    );
\adder_result_o_OBUF[26]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[22]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[26]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[26]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[26]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[26]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(27 downto 24),
      O(3 downto 0) => adder_result_ext_o_OBUF(27 downto 24),
      S(3) => \adder_result_o_OBUF[26]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[26]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[26]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[26]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[26]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(27),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(26),
      O => adder_in_a(27)
    );
\adder_result_o_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(26),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(25),
      O => adder_in_a(26)
    );
\adder_result_o_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(25),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(24),
      O => adder_in_a(25)
    );
\adder_result_o_OBUF[26]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(24),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(23),
      O => adder_in_a(24)
    );
\adder_result_o_OBUF[26]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(26),
      I1 => multdiv_operand_a_i_IBUF(27),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(26),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(27),
      O => \adder_result_o_OBUF[26]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[26]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(25),
      I1 => multdiv_operand_a_i_IBUF(26),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(25),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(26),
      O => \adder_result_o_OBUF[26]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[26]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(24),
      I1 => multdiv_operand_a_i_IBUF(25),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(24),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(25),
      O => \adder_result_o_OBUF[26]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[26]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(23),
      I1 => multdiv_operand_a_i_IBUF(24),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(23),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(24),
      O => \adder_result_o_OBUF[26]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(28),
      O => adder_result_o(27)
    );
\adder_result_o_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(29),
      O => adder_result_o(28)
    );
\adder_result_o_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(30),
      O => adder_result_o(29)
    );
\adder_result_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(3),
      O => adder_result_o(2)
    );
\adder_result_o_OBUF[2]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \adder_result_o_OBUF[2]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[2]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[2]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[2]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(3 downto 0),
      O(3 downto 0) => adder_result_ext_o_OBUF(3 downto 0),
      S(3) => \adder_result_o_OBUF[2]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[2]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[2]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[2]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(3),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(2),
      O => adder_in_a(3)
    );
\adder_result_o_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(2),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(1),
      O => adder_in_a(2)
    );
\adder_result_o_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(1),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(0),
      O => adder_in_a(1)
    );
\adder_result_o_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(0),
      I1 => multdiv_en_i_IBUF,
      O => adder_in_a(0)
    );
\adder_result_o_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(2),
      I1 => multdiv_operand_a_i_IBUF(3),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(2),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(3),
      O => \adder_result_o_OBUF[2]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(1),
      I1 => multdiv_operand_a_i_IBUF(2),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(1),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(2),
      O => \adder_result_o_OBUF[2]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(0),
      I1 => multdiv_operand_a_i_IBUF(1),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(0),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(1),
      O => \adder_result_o_OBUF[2]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"478B"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(0),
      I1 => multdiv_en_i_IBUF,
      I2 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => multdiv_operand_b_i_IBUF(0),
      O => \adder_result_o_OBUF[2]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(31),
      O => adder_result_o(30)
    );
\adder_result_o_OBUF[30]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[26]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[30]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[30]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[30]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[30]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(31 downto 28),
      O(3 downto 0) => adder_result_ext_o_OBUF(31 downto 28),
      S(3) => \adder_result_o_OBUF[30]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[30]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[30]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[30]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[30]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(31),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(30),
      O => adder_in_a(31)
    );
\adder_result_o_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(30),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(29),
      O => adder_in_a(30)
    );
\adder_result_o_OBUF[30]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(29),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(28),
      O => adder_in_a(29)
    );
\adder_result_o_OBUF[30]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(28),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(27),
      O => adder_in_a(28)
    );
\adder_result_o_OBUF[30]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(30),
      I1 => multdiv_operand_a_i_IBUF(31),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(30),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(31),
      O => \adder_result_o_OBUF[30]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[30]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(29),
      I1 => multdiv_operand_a_i_IBUF(30),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(29),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(30),
      O => \adder_result_o_OBUF[30]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[30]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(28),
      I1 => multdiv_operand_a_i_IBUF(29),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(28),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(29),
      O => \adder_result_o_OBUF[30]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[30]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(27),
      I1 => multdiv_operand_a_i_IBUF(28),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(27),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(28),
      O => \adder_result_o_OBUF[30]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(32),
      O => adder_result_o(31)
    );
\adder_result_o_OBUF[31]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[30]_inst_i_1_n_0\,
      CO(3 downto 2) => \NLW_adder_result_o_OBUF[31]_inst_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => adder_result_ext_o_OBUF(33),
      CO(0) => \NLW_adder_result_o_OBUF[31]_inst_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => adder_in_a(32),
      O(3 downto 1) => \NLW_adder_result_o_OBUF[31]_inst_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => adder_result_ext_o_OBUF(32),
      S(3 downto 1) => B"001",
      S(0) => \adder_result_o_OBUF[31]_inst_i_3_n_0\
    );
\adder_result_o_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(32),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(31),
      O => adder_in_a(32)
    );
\adder_result_o_OBUF[31]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(31),
      I1 => multdiv_operand_a_i_IBUF(32),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(31),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(32),
      O => \adder_result_o_OBUF[31]_inst_i_3_n_0\
    );
\adder_result_o_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => operator_i_IBUF(0),
      I1 => operator_i_IBUF(2),
      I2 => operator_i_IBUF(1),
      I3 => operator_i_IBUF(3),
      I4 => operator_i_IBUF(4),
      O => \adder_result_o_OBUF[31]_inst_i_4_n_0\
    );
\adder_result_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(4),
      O => adder_result_o(3)
    );
\adder_result_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(5),
      O => adder_result_o(4)
    );
\adder_result_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(6),
      O => adder_result_o(5)
    );
\adder_result_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(7),
      O => adder_result_o(6)
    );
\adder_result_o_OBUF[6]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adder_result_o_OBUF[2]_inst_i_1_n_0\,
      CO(3) => \adder_result_o_OBUF[6]_inst_i_1_n_0\,
      CO(2) => \adder_result_o_OBUF[6]_inst_i_1_n_1\,
      CO(1) => \adder_result_o_OBUF[6]_inst_i_1_n_2\,
      CO(0) => \adder_result_o_OBUF[6]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => adder_in_a(7 downto 4),
      O(3 downto 0) => adder_result_ext_o_OBUF(7 downto 4),
      S(3) => \adder_result_o_OBUF[6]_inst_i_6_n_0\,
      S(2) => \adder_result_o_OBUF[6]_inst_i_7_n_0\,
      S(1) => \adder_result_o_OBUF[6]_inst_i_8_n_0\,
      S(0) => \adder_result_o_OBUF[6]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(7),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(6),
      O => adder_in_a(7)
    );
\adder_result_o_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(6),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(5),
      O => adder_in_a(6)
    );
\adder_result_o_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(5),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(4),
      O => adder_in_a(5)
    );
\adder_result_o_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multdiv_operand_a_i_IBUF(4),
      I1 => multdiv_en_i_IBUF,
      I2 => operand_a_i_IBUF(3),
      O => adder_in_a(4)
    );
\adder_result_o_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(6),
      I1 => multdiv_operand_a_i_IBUF(7),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(6),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(7),
      O => \adder_result_o_OBUF[6]_inst_i_6_n_0\
    );
\adder_result_o_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(5),
      I1 => multdiv_operand_a_i_IBUF(6),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(5),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(6),
      O => \adder_result_o_OBUF[6]_inst_i_7_n_0\
    );
\adder_result_o_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(4),
      I1 => multdiv_operand_a_i_IBUF(5),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(4),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(5),
      O => \adder_result_o_OBUF[6]_inst_i_8_n_0\
    );
\adder_result_o_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A35353ACAC5C5CA"
    )
        port map (
      I0 => operand_a_i_IBUF(3),
      I1 => multdiv_operand_a_i_IBUF(4),
      I2 => multdiv_en_i_IBUF,
      I3 => operand_b_i_IBUF(3),
      I4 => \adder_result_o_OBUF[31]_inst_i_4_n_0\,
      I5 => multdiv_operand_b_i_IBUF(4),
      O => \adder_result_o_OBUF[6]_inst_i_9_n_0\
    );
\adder_result_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(8),
      O => adder_result_o(7)
    );
\adder_result_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(9),
      O => adder_result_o(8)
    );
\adder_result_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => adder_result_ext_o_OBUF(10),
      O => adder_result_o(9)
    );
comparison_result_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => comparison_result_o_OBUF,
      O => comparison_result_o
    );
comparison_result_o_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC0F60F06F"
    )
        port map (
      I0 => operator_i_IBUF(0),
      I1 => is_equal_result_o_OBUF,
      I2 => operator_i_IBUF(2),
      I3 => operator_i_IBUF(1),
      I4 => is_greater_equal,
      I5 => comparison_result_o_OBUF_inst_i_3_n_0,
      O => comparison_result_o_OBUF
    );
comparison_result_o_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFBFB040400FF"
    )
        port map (
      I0 => comparison_result_o_OBUF_inst_i_3_n_0,
      I1 => comparison_result_o_OBUF_inst_i_4_n_0,
      I2 => operator_i_IBUF(0),
      I3 => adder_result_ext_o_OBUF(32),
      I4 => operand_b_i_IBUF(31),
      I5 => operand_a_i_IBUF(31),
      O => is_greater_equal
    );
comparison_result_o_OBUF_inst_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => operator_i_IBUF(4),
      I1 => operator_i_IBUF(3),
      O => comparison_result_o_OBUF_inst_i_3_n_0
    );
comparison_result_o_OBUF_inst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => operator_i_IBUF(1),
      I1 => operator_i_IBUF(2),
      O => comparison_result_o_OBUF_inst_i_4_n_0
    );
is_equal_result_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => is_equal_result_o_OBUF,
      O => is_equal_result_o
    );
is_equal_result_o_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => is_equal_result_o_OBUF_inst_i_2_n_0,
      I1 => is_equal_result_o_OBUF_inst_i_3_n_0,
      I2 => is_equal_result_o_OBUF_inst_i_4_n_0,
      I3 => is_equal_result_o_OBUF_inst_i_5_n_0,
      O => is_equal_result_o_OBUF
    );
is_equal_result_o_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(17),
      I1 => adder_result_ext_o_OBUF(18),
      I2 => adder_result_ext_o_OBUF(19),
      I3 => adder_result_ext_o_OBUF(20),
      I4 => is_equal_result_o_OBUF_inst_i_6_n_0,
      O => is_equal_result_o_OBUF_inst_i_2_n_0
    );
is_equal_result_o_OBUF_inst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(29),
      I1 => adder_result_ext_o_OBUF(30),
      I2 => adder_result_ext_o_OBUF(32),
      I3 => adder_result_ext_o_OBUF(31),
      I4 => is_equal_result_o_OBUF_inst_i_7_n_0,
      O => is_equal_result_o_OBUF_inst_i_3_n_0
    );
is_equal_result_o_OBUF_inst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(13),
      I1 => adder_result_ext_o_OBUF(14),
      I2 => adder_result_ext_o_OBUF(15),
      I3 => adder_result_ext_o_OBUF(16),
      I4 => is_equal_result_o_OBUF_inst_i_8_n_0,
      O => is_equal_result_o_OBUF_inst_i_4_n_0
    );
is_equal_result_o_OBUF_inst_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(5),
      I1 => adder_result_ext_o_OBUF(6),
      I2 => adder_result_ext_o_OBUF(7),
      I3 => adder_result_ext_o_OBUF(8),
      I4 => is_equal_result_o_OBUF_inst_i_9_n_0,
      O => is_equal_result_o_OBUF_inst_i_5_n_0
    );
is_equal_result_o_OBUF_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(24),
      I1 => adder_result_ext_o_OBUF(23),
      I2 => adder_result_ext_o_OBUF(22),
      I3 => adder_result_ext_o_OBUF(21),
      O => is_equal_result_o_OBUF_inst_i_6_n_0
    );
is_equal_result_o_OBUF_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(26),
      I1 => adder_result_ext_o_OBUF(25),
      I2 => adder_result_ext_o_OBUF(28),
      I3 => adder_result_ext_o_OBUF(27),
      O => is_equal_result_o_OBUF_inst_i_7_n_0
    );
is_equal_result_o_OBUF_inst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(10),
      I1 => adder_result_ext_o_OBUF(9),
      I2 => adder_result_ext_o_OBUF(12),
      I3 => adder_result_ext_o_OBUF(11),
      O => is_equal_result_o_OBUF_inst_i_8_n_0
    );
is_equal_result_o_OBUF_inst_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(2),
      I1 => adder_result_ext_o_OBUF(1),
      I2 => adder_result_ext_o_OBUF(4),
      I3 => adder_result_ext_o_OBUF(3),
      O => is_equal_result_o_OBUF_inst_i_9_n_0
    );
multdiv_en_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => multdiv_en_i,
      O => multdiv_en_i_IBUF
    );
\multdiv_operand_a_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(0),
      O => multdiv_operand_a_i_IBUF(0)
    );
\multdiv_operand_a_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(10),
      O => multdiv_operand_a_i_IBUF(10)
    );
\multdiv_operand_a_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(11),
      O => multdiv_operand_a_i_IBUF(11)
    );
\multdiv_operand_a_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(12),
      O => multdiv_operand_a_i_IBUF(12)
    );
\multdiv_operand_a_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(13),
      O => multdiv_operand_a_i_IBUF(13)
    );
\multdiv_operand_a_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(14),
      O => multdiv_operand_a_i_IBUF(14)
    );
\multdiv_operand_a_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(15),
      O => multdiv_operand_a_i_IBUF(15)
    );
\multdiv_operand_a_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(16),
      O => multdiv_operand_a_i_IBUF(16)
    );
\multdiv_operand_a_i_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(17),
      O => multdiv_operand_a_i_IBUF(17)
    );
\multdiv_operand_a_i_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(18),
      O => multdiv_operand_a_i_IBUF(18)
    );
\multdiv_operand_a_i_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(19),
      O => multdiv_operand_a_i_IBUF(19)
    );
\multdiv_operand_a_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(1),
      O => multdiv_operand_a_i_IBUF(1)
    );
\multdiv_operand_a_i_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(20),
      O => multdiv_operand_a_i_IBUF(20)
    );
\multdiv_operand_a_i_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(21),
      O => multdiv_operand_a_i_IBUF(21)
    );
\multdiv_operand_a_i_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(22),
      O => multdiv_operand_a_i_IBUF(22)
    );
\multdiv_operand_a_i_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(23),
      O => multdiv_operand_a_i_IBUF(23)
    );
\multdiv_operand_a_i_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(24),
      O => multdiv_operand_a_i_IBUF(24)
    );
\multdiv_operand_a_i_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(25),
      O => multdiv_operand_a_i_IBUF(25)
    );
\multdiv_operand_a_i_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(26),
      O => multdiv_operand_a_i_IBUF(26)
    );
\multdiv_operand_a_i_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(27),
      O => multdiv_operand_a_i_IBUF(27)
    );
\multdiv_operand_a_i_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(28),
      O => multdiv_operand_a_i_IBUF(28)
    );
\multdiv_operand_a_i_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(29),
      O => multdiv_operand_a_i_IBUF(29)
    );
\multdiv_operand_a_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(2),
      O => multdiv_operand_a_i_IBUF(2)
    );
\multdiv_operand_a_i_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(30),
      O => multdiv_operand_a_i_IBUF(30)
    );
\multdiv_operand_a_i_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(31),
      O => multdiv_operand_a_i_IBUF(31)
    );
\multdiv_operand_a_i_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(32),
      O => multdiv_operand_a_i_IBUF(32)
    );
\multdiv_operand_a_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(3),
      O => multdiv_operand_a_i_IBUF(3)
    );
\multdiv_operand_a_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(4),
      O => multdiv_operand_a_i_IBUF(4)
    );
\multdiv_operand_a_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(5),
      O => multdiv_operand_a_i_IBUF(5)
    );
\multdiv_operand_a_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(6),
      O => multdiv_operand_a_i_IBUF(6)
    );
\multdiv_operand_a_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(7),
      O => multdiv_operand_a_i_IBUF(7)
    );
\multdiv_operand_a_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(8),
      O => multdiv_operand_a_i_IBUF(8)
    );
\multdiv_operand_a_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_a_i(9),
      O => multdiv_operand_a_i_IBUF(9)
    );
\multdiv_operand_b_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(0),
      O => multdiv_operand_b_i_IBUF(0)
    );
\multdiv_operand_b_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(10),
      O => multdiv_operand_b_i_IBUF(10)
    );
\multdiv_operand_b_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(11),
      O => multdiv_operand_b_i_IBUF(11)
    );
\multdiv_operand_b_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(12),
      O => multdiv_operand_b_i_IBUF(12)
    );
\multdiv_operand_b_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(13),
      O => multdiv_operand_b_i_IBUF(13)
    );
\multdiv_operand_b_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(14),
      O => multdiv_operand_b_i_IBUF(14)
    );
\multdiv_operand_b_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(15),
      O => multdiv_operand_b_i_IBUF(15)
    );
\multdiv_operand_b_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(16),
      O => multdiv_operand_b_i_IBUF(16)
    );
\multdiv_operand_b_i_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(17),
      O => multdiv_operand_b_i_IBUF(17)
    );
\multdiv_operand_b_i_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(18),
      O => multdiv_operand_b_i_IBUF(18)
    );
\multdiv_operand_b_i_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(19),
      O => multdiv_operand_b_i_IBUF(19)
    );
\multdiv_operand_b_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(1),
      O => multdiv_operand_b_i_IBUF(1)
    );
\multdiv_operand_b_i_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(20),
      O => multdiv_operand_b_i_IBUF(20)
    );
\multdiv_operand_b_i_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(21),
      O => multdiv_operand_b_i_IBUF(21)
    );
\multdiv_operand_b_i_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(22),
      O => multdiv_operand_b_i_IBUF(22)
    );
\multdiv_operand_b_i_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(23),
      O => multdiv_operand_b_i_IBUF(23)
    );
\multdiv_operand_b_i_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(24),
      O => multdiv_operand_b_i_IBUF(24)
    );
\multdiv_operand_b_i_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(25),
      O => multdiv_operand_b_i_IBUF(25)
    );
\multdiv_operand_b_i_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(26),
      O => multdiv_operand_b_i_IBUF(26)
    );
\multdiv_operand_b_i_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(27),
      O => multdiv_operand_b_i_IBUF(27)
    );
\multdiv_operand_b_i_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(28),
      O => multdiv_operand_b_i_IBUF(28)
    );
\multdiv_operand_b_i_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(29),
      O => multdiv_operand_b_i_IBUF(29)
    );
\multdiv_operand_b_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(2),
      O => multdiv_operand_b_i_IBUF(2)
    );
\multdiv_operand_b_i_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(30),
      O => multdiv_operand_b_i_IBUF(30)
    );
\multdiv_operand_b_i_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(31),
      O => multdiv_operand_b_i_IBUF(31)
    );
\multdiv_operand_b_i_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(32),
      O => multdiv_operand_b_i_IBUF(32)
    );
\multdiv_operand_b_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(3),
      O => multdiv_operand_b_i_IBUF(3)
    );
\multdiv_operand_b_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(4),
      O => multdiv_operand_b_i_IBUF(4)
    );
\multdiv_operand_b_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(5),
      O => multdiv_operand_b_i_IBUF(5)
    );
\multdiv_operand_b_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(6),
      O => multdiv_operand_b_i_IBUF(6)
    );
\multdiv_operand_b_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(7),
      O => multdiv_operand_b_i_IBUF(7)
    );
\multdiv_operand_b_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(8),
      O => multdiv_operand_b_i_IBUF(8)
    );
\multdiv_operand_b_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => multdiv_operand_b_i(9),
      O => multdiv_operand_b_i_IBUF(9)
    );
\operand_a_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(0),
      O => operand_a_i_IBUF(0)
    );
\operand_a_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(10),
      O => operand_a_i_IBUF(10)
    );
\operand_a_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(11),
      O => operand_a_i_IBUF(11)
    );
\operand_a_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(12),
      O => operand_a_i_IBUF(12)
    );
\operand_a_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(13),
      O => operand_a_i_IBUF(13)
    );
\operand_a_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(14),
      O => operand_a_i_IBUF(14)
    );
\operand_a_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(15),
      O => operand_a_i_IBUF(15)
    );
\operand_a_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(16),
      O => operand_a_i_IBUF(16)
    );
\operand_a_i_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(17),
      O => operand_a_i_IBUF(17)
    );
\operand_a_i_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(18),
      O => operand_a_i_IBUF(18)
    );
\operand_a_i_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(19),
      O => operand_a_i_IBUF(19)
    );
\operand_a_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(1),
      O => operand_a_i_IBUF(1)
    );
\operand_a_i_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(20),
      O => operand_a_i_IBUF(20)
    );
\operand_a_i_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(21),
      O => operand_a_i_IBUF(21)
    );
\operand_a_i_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(22),
      O => operand_a_i_IBUF(22)
    );
\operand_a_i_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(23),
      O => operand_a_i_IBUF(23)
    );
\operand_a_i_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(24),
      O => operand_a_i_IBUF(24)
    );
\operand_a_i_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(25),
      O => operand_a_i_IBUF(25)
    );
\operand_a_i_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(26),
      O => operand_a_i_IBUF(26)
    );
\operand_a_i_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(27),
      O => operand_a_i_IBUF(27)
    );
\operand_a_i_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(28),
      O => operand_a_i_IBUF(28)
    );
\operand_a_i_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(29),
      O => operand_a_i_IBUF(29)
    );
\operand_a_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(2),
      O => operand_a_i_IBUF(2)
    );
\operand_a_i_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(30),
      O => operand_a_i_IBUF(30)
    );
\operand_a_i_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(31),
      O => operand_a_i_IBUF(31)
    );
\operand_a_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(3),
      O => operand_a_i_IBUF(3)
    );
\operand_a_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(4),
      O => operand_a_i_IBUF(4)
    );
\operand_a_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(5),
      O => operand_a_i_IBUF(5)
    );
\operand_a_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(6),
      O => operand_a_i_IBUF(6)
    );
\operand_a_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(7),
      O => operand_a_i_IBUF(7)
    );
\operand_a_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(8),
      O => operand_a_i_IBUF(8)
    );
\operand_a_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_a_i(9),
      O => operand_a_i_IBUF(9)
    );
\operand_b_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(0),
      O => operand_b_i_IBUF(0)
    );
\operand_b_i_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(10),
      O => operand_b_i_IBUF(10)
    );
\operand_b_i_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(11),
      O => operand_b_i_IBUF(11)
    );
\operand_b_i_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(12),
      O => operand_b_i_IBUF(12)
    );
\operand_b_i_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(13),
      O => operand_b_i_IBUF(13)
    );
\operand_b_i_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(14),
      O => operand_b_i_IBUF(14)
    );
\operand_b_i_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(15),
      O => operand_b_i_IBUF(15)
    );
\operand_b_i_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(16),
      O => operand_b_i_IBUF(16)
    );
\operand_b_i_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(17),
      O => operand_b_i_IBUF(17)
    );
\operand_b_i_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(18),
      O => operand_b_i_IBUF(18)
    );
\operand_b_i_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(19),
      O => operand_b_i_IBUF(19)
    );
\operand_b_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(1),
      O => operand_b_i_IBUF(1)
    );
\operand_b_i_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(20),
      O => operand_b_i_IBUF(20)
    );
\operand_b_i_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(21),
      O => operand_b_i_IBUF(21)
    );
\operand_b_i_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(22),
      O => operand_b_i_IBUF(22)
    );
\operand_b_i_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(23),
      O => operand_b_i_IBUF(23)
    );
\operand_b_i_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(24),
      O => operand_b_i_IBUF(24)
    );
\operand_b_i_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(25),
      O => operand_b_i_IBUF(25)
    );
\operand_b_i_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(26),
      O => operand_b_i_IBUF(26)
    );
\operand_b_i_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(27),
      O => operand_b_i_IBUF(27)
    );
\operand_b_i_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(28),
      O => operand_b_i_IBUF(28)
    );
\operand_b_i_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(29),
      O => operand_b_i_IBUF(29)
    );
\operand_b_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(2),
      O => operand_b_i_IBUF(2)
    );
\operand_b_i_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(30),
      O => operand_b_i_IBUF(30)
    );
\operand_b_i_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(31),
      O => operand_b_i_IBUF(31)
    );
\operand_b_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(3),
      O => operand_b_i_IBUF(3)
    );
\operand_b_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(4),
      O => operand_b_i_IBUF(4)
    );
\operand_b_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(5),
      O => operand_b_i_IBUF(5)
    );
\operand_b_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(6),
      O => operand_b_i_IBUF(6)
    );
\operand_b_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(7),
      O => operand_b_i_IBUF(7)
    );
\operand_b_i_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(8),
      O => operand_b_i_IBUF(8)
    );
\operand_b_i_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operand_b_i(9),
      O => operand_b_i_IBUF(9)
    );
\operator_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operator_i(0),
      O => operator_i_IBUF(0)
    );
\operator_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operator_i(1),
      O => operator_i_IBUF(1)
    );
\operator_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operator_i(2),
      O => operator_i_IBUF(2)
    );
\operator_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operator_i(3),
      O => operator_i_IBUF(3)
    );
\operator_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => operator_i(4),
      O => operator_i_IBUF(4)
    );
\result_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(0),
      O => result_o(0)
    );
\result_o_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => data4(0),
      I1 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I2 => comparison_result_o_OBUF,
      I3 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I4 => \result_o_OBUF[0]_inst_i_3_n_0\,
      I5 => operator_i_IBUF(4),
      O => result_o_OBUF(0)
    );
\result_o_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[31]_inst_i_9_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[31]_inst_i_6_n_0\,
      O => data4(0)
    );
\result_o_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(1),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(0),
      I4 => operand_b_i_IBUF(0),
      O => \result_o_OBUF[0]_inst_i_3_n_0\
    );
\result_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(10),
      O => result_o(10)
    );
\result_o_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(10),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[10]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(10)
    );
\result_o_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[22]_inst_i_5_n_0\,
      I1 => \result_o_OBUF[21]_inst_i_5_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[21]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[22]_inst_i_4_n_0\,
      O => data4(10)
    );
\result_o_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(11),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(10),
      I4 => operand_b_i_IBUF(10),
      O => \result_o_OBUF[10]_inst_i_3_n_0\
    );
\result_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(11),
      O => result_o(11)
    );
\result_o_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(11),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[11]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(11)
    );
\result_o_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[21]_inst_i_5_n_0\,
      I1 => \result_o_OBUF[20]_inst_i_5_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[20]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[21]_inst_i_4_n_0\,
      O => data4(11)
    );
\result_o_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(12),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(11),
      I4 => operand_b_i_IBUF(11),
      O => \result_o_OBUF[11]_inst_i_3_n_0\
    );
\result_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(12),
      O => result_o(12)
    );
\result_o_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(12),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[12]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(12)
    );
\result_o_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[20]_inst_i_5_n_0\,
      I1 => \result_o_OBUF[19]_inst_i_5_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[19]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[20]_inst_i_4_n_0\,
      O => data4(12)
    );
\result_o_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(13),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(12),
      I4 => operand_b_i_IBUF(12),
      O => \result_o_OBUF[12]_inst_i_3_n_0\
    );
\result_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(13),
      O => result_o(13)
    );
\result_o_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(13),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[13]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(13)
    );
\result_o_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[19]_inst_i_5_n_0\,
      I1 => \result_o_OBUF[18]_inst_i_5_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[18]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[19]_inst_i_4_n_0\,
      O => data4(13)
    );
\result_o_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(14),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(13),
      I4 => operand_b_i_IBUF(13),
      O => \result_o_OBUF[13]_inst_i_3_n_0\
    );
\result_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(14),
      O => result_o(14)
    );
\result_o_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(14),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[14]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(14)
    );
\result_o_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[18]_inst_i_5_n_0\,
      I1 => \result_o_OBUF[17]_inst_i_5_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[17]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[18]_inst_i_4_n_0\,
      O => data4(14)
    );
\result_o_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(15),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(14),
      I4 => operand_b_i_IBUF(14),
      O => \result_o_OBUF[14]_inst_i_3_n_0\
    );
\result_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(15),
      O => result_o(15)
    );
\result_o_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(15),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[15]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(15)
    );
\result_o_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \result_o_OBUF[17]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[16]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[17]_inst_i_4_n_0\,
      O => data4(15)
    );
\result_o_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(16),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(15),
      I4 => operand_b_i_IBUF(15),
      O => \result_o_OBUF[15]_inst_i_3_n_0\
    );
\result_o_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(16),
      O => result_o(16)
    );
\result_o_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(16),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[16]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(16)
    );
\result_o_OBUF[16]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \result_o_OBUF[17]_inst_i_4_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[17]_inst_i_5_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[16]_inst_i_4_n_0\,
      O => data4(16)
    );
\result_o_OBUF[16]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(17),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(16),
      I4 => operand_b_i_IBUF(16),
      O => \result_o_OBUF[16]_inst_i_3_n_0\
    );
\result_o_OBUF[16]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[22]_inst_i_8_n_0\,
      I1 => \result_o_OBUF[20]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[20]_inst_i_8_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[22]_inst_i_6_n_0\,
      O => \result_o_OBUF[16]_inst_i_4_n_0\
    );
\result_o_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(17),
      O => result_o(17)
    );
\result_o_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(17),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[17]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(17)
    );
\result_o_OBUF[17]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[17]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[18]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[18]_inst_i_5_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[17]_inst_i_5_n_0\,
      O => data4(17)
    );
\result_o_OBUF[17]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(18),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(17),
      I4 => operand_b_i_IBUF(17),
      O => \result_o_OBUF[17]_inst_i_3_n_0\
    );
\result_o_OBUF[17]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[21]_inst_i_8_n_0\,
      I1 => \result_o_OBUF[21]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[19]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[23]_inst_i_7_n_0\,
      O => \result_o_OBUF[17]_inst_i_4_n_0\
    );
\result_o_OBUF[17]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[23]_inst_i_9_n_0\,
      I1 => \result_o_OBUF[19]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[21]_inst_i_8_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[21]_inst_i_6_n_0\,
      O => \result_o_OBUF[17]_inst_i_5_n_0\
    );
\result_o_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(18),
      O => result_o(18)
    );
\result_o_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(18),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[18]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(18)
    );
\result_o_OBUF[18]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[18]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[19]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[19]_inst_i_5_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[18]_inst_i_5_n_0\,
      O => data4(18)
    );
\result_o_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(19),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(18),
      I4 => operand_b_i_IBUF(18),
      O => \result_o_OBUF[18]_inst_i_3_n_0\
    );
\result_o_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[20]_inst_i_8_n_0\,
      I1 => \result_o_OBUF[22]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[20]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[24]_inst_i_6_n_0\,
      O => \result_o_OBUF[18]_inst_i_4_n_0\
    );
\result_o_OBUF[18]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[20]_inst_i_7_n_0\,
      I1 => \result_o_OBUF[20]_inst_i_8_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[22]_inst_i_8_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[20]_inst_i_6_n_0\,
      O => \result_o_OBUF[18]_inst_i_5_n_0\
    );
\result_o_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(19),
      O => result_o(19)
    );
\result_o_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(19),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[19]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(19)
    );
\result_o_OBUF[19]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[19]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[20]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[20]_inst_i_5_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[19]_inst_i_5_n_0\,
      O => data4(19)
    );
\result_o_OBUF[19]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(20),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(19),
      I4 => operand_b_i_IBUF(19),
      O => \result_o_OBUF[19]_inst_i_3_n_0\
    );
\result_o_OBUF[19]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[19]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[23]_inst_i_7_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[21]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[25]_inst_i_6_n_0\,
      O => \result_o_OBUF[19]_inst_i_4_n_0\
    );
\result_o_OBUF[19]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[21]_inst_i_7_n_0\,
      I1 => \result_o_OBUF[21]_inst_i_8_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[23]_inst_i_9_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[19]_inst_i_6_n_0\,
      O => \result_o_OBUF[19]_inst_i_5_n_0\
    );
\result_o_OBUF[19]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(27),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(19),
      O => \result_o_OBUF[19]_inst_i_6_n_0\
    );
\result_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(1),
      O => result_o(1)
    );
\result_o_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(1),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[1]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(1)
    );
\result_o_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[30]_inst_i_6_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[30]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[30]_inst_i_5_n_0\,
      O => data4(1)
    );
\result_o_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(2),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(1),
      I4 => operand_b_i_IBUF(1),
      O => \result_o_OBUF[1]_inst_i_3_n_0\
    );
\result_o_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(20),
      O => result_o(20)
    );
\result_o_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(20),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[20]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(20)
    );
\result_o_OBUF[20]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[20]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[21]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[21]_inst_i_5_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[20]_inst_i_5_n_0\,
      O => data4(20)
    );
\result_o_OBUF[20]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(21),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(20),
      I4 => operand_b_i_IBUF(20),
      O => \result_o_OBUF[20]_inst_i_3_n_0\
    );
\result_o_OBUF[20]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[20]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[24]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[22]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[26]_inst_i_6_n_0\,
      O => \result_o_OBUF[20]_inst_i_4_n_0\
    );
\result_o_OBUF[20]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[22]_inst_i_7_n_0\,
      I1 => \result_o_OBUF[22]_inst_i_8_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[20]_inst_i_7_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[20]_inst_i_8_n_0\,
      O => \result_o_OBUF[20]_inst_i_5_n_0\
    );
\result_o_OBUF[20]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(26),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(18),
      O => \result_o_OBUF[20]_inst_i_6_n_0\
    );
\result_o_OBUF[20]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => operand_b_i_IBUF(3),
      I1 => shift_op_a_32(32),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(7),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(24),
      O => \result_o_OBUF[20]_inst_i_7_n_0\
    );
\result_o_OBUF[20]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(28),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(20),
      O => \result_o_OBUF[20]_inst_i_8_n_0\
    );
\result_o_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(21),
      O => result_o(21)
    );
\result_o_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(21),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[21]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(21)
    );
\result_o_OBUF[21]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[21]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[22]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[22]_inst_i_5_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[21]_inst_i_5_n_0\,
      O => data4(21)
    );
\result_o_OBUF[21]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(22),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(21),
      I4 => operand_b_i_IBUF(21),
      O => \result_o_OBUF[21]_inst_i_3_n_0\
    );
\result_o_OBUF[21]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[21]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[25]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[23]_inst_i_7_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[27]_inst_i_6_n_0\,
      O => \result_o_OBUF[21]_inst_i_4_n_0\
    );
\result_o_OBUF[21]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[23]_inst_i_8_n_0\,
      I1 => \result_o_OBUF[23]_inst_i_9_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[21]_inst_i_7_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[21]_inst_i_8_n_0\,
      O => \result_o_OBUF[21]_inst_i_5_n_0\
    );
\result_o_OBUF[21]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(25),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(17),
      O => \result_o_OBUF[21]_inst_i_6_n_0\
    );
\result_o_OBUF[21]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => operand_b_i_IBUF(3),
      I1 => shift_op_a_32(32),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(6),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(25),
      O => \result_o_OBUF[21]_inst_i_7_n_0\
    );
\result_o_OBUF[21]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(29),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(21),
      O => \result_o_OBUF[21]_inst_i_8_n_0\
    );
\result_o_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(22),
      O => result_o(22)
    );
\result_o_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(22),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[22]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(22)
    );
\result_o_OBUF[22]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[22]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[23]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[23]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[22]_inst_i_5_n_0\,
      O => data4(22)
    );
\result_o_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(23),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(22),
      I4 => operand_b_i_IBUF(22),
      O => \result_o_OBUF[22]_inst_i_3_n_0\
    );
\result_o_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[22]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[26]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[24]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[28]_inst_i_6_n_0\,
      O => \result_o_OBUF[22]_inst_i_4_n_0\
    );
\result_o_OBUF[22]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[24]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(1),
      I2 => \result_o_OBUF[22]_inst_i_7_n_0\,
      I3 => operand_b_i_IBUF(2),
      I4 => \result_o_OBUF[22]_inst_i_8_n_0\,
      O => \result_o_OBUF[22]_inst_i_5_n_0\
    );
\result_o_OBUF[22]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(24),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(16),
      O => \result_o_OBUF[22]_inst_i_6_n_0\
    );
\result_o_OBUF[22]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => operand_b_i_IBUF(3),
      I1 => shift_op_a_32(32),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(5),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(26),
      O => \result_o_OBUF[22]_inst_i_7_n_0\
    );
\result_o_OBUF[22]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(30),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(22),
      O => \result_o_OBUF[22]_inst_i_8_n_0\
    );
\result_o_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(23),
      O => result_o(23)
    );
\result_o_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(23),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[23]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(23)
    );
\result_o_OBUF[23]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(8),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(23),
      O => shift_op_a(23)
    );
\result_o_OBUF[23]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[23]_inst_i_4_n_0\,
      I1 => \result_o_OBUF[24]_inst_i_4_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[23]_inst_i_5_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[23]_inst_i_6_n_0\,
      O => data4(23)
    );
\result_o_OBUF[23]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(24),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(23),
      I4 => operand_b_i_IBUF(23),
      O => \result_o_OBUF[23]_inst_i_3_n_0\
    );
\result_o_OBUF[23]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[23]_inst_i_7_n_0\,
      I1 => \result_o_OBUF[27]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[25]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[29]_inst_i_6_n_0\,
      O => \result_o_OBUF[23]_inst_i_4_n_0\
    );
\result_o_OBUF[23]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_o_OBUF[26]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(1),
      I2 => \result_o_OBUF[24]_inst_i_7_n_0\,
      O => \result_o_OBUF[23]_inst_i_5_n_0\
    );
\result_o_OBUF[23]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[25]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(1),
      I2 => \result_o_OBUF[23]_inst_i_8_n_0\,
      I3 => operand_b_i_IBUF(2),
      I4 => \result_o_OBUF[23]_inst_i_9_n_0\,
      O => \result_o_OBUF[23]_inst_i_6_n_0\
    );
\result_o_OBUF[23]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(23),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[27]_inst_i_10_n_0\,
      O => \result_o_OBUF[23]_inst_i_7_n_0\
    );
\result_o_OBUF[23]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => operand_b_i_IBUF(3),
      I1 => shift_op_a_32(32),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(4),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(27),
      O => \result_o_OBUF[23]_inst_i_8_n_0\
    );
\result_o_OBUF[23]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => shift_op_a(31),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(23),
      O => \result_o_OBUF[23]_inst_i_9_n_0\
    );
\result_o_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(24),
      O => result_o(24)
    );
\result_o_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(24),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[24]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(24)
    );
\result_o_OBUF[24]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[24]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[25]_inst_i_4_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[24]_inst_i_5_n_0\,
      O => data4(24)
    );
\result_o_OBUF[24]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(25),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(24),
      I4 => operand_b_i_IBUF(24),
      O => \result_o_OBUF[24]_inst_i_3_n_0\
    );
\result_o_OBUF[24]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[24]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[28]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[26]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[30]_inst_i_7_n_0\,
      O => \result_o_OBUF[24]_inst_i_4_n_0\
    );
\result_o_OBUF[24]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[27]_inst_i_8_n_0\,
      I1 => \result_o_OBUF[25]_inst_i_7_n_0\,
      I2 => operand_b_i_IBUF(0),
      I3 => \result_o_OBUF[26]_inst_i_7_n_0\,
      I4 => operand_b_i_IBUF(1),
      I5 => \result_o_OBUF[24]_inst_i_7_n_0\,
      O => \result_o_OBUF[24]_inst_i_5_n_0\
    );
\result_o_OBUF[24]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(22),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[28]_inst_i_11_n_0\,
      O => \result_o_OBUF[24]_inst_i_6_n_0\
    );
\result_o_OBUF[24]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => shift_op_a(28),
      I1 => operand_b_i_IBUF(2),
      I2 => operand_b_i_IBUF(3),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(4),
      I5 => shift_op_a(24),
      O => \result_o_OBUF[24]_inst_i_7_n_0\
    );
\result_o_OBUF[24]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(9),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(22),
      O => shift_op_a(22)
    );
\result_o_OBUF[24]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(7),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(24),
      O => shift_op_a(24)
    );
\result_o_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(25),
      O => result_o(25)
    );
\result_o_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(25),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[25]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(25)
    );
\result_o_OBUF[25]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[25]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[26]_inst_i_4_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[25]_inst_i_5_n_0\,
      O => data4(25)
    );
\result_o_OBUF[25]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(26),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(25),
      I4 => operand_b_i_IBUF(25),
      O => \result_o_OBUF[25]_inst_i_3_n_0\
    );
\result_o_OBUF[25]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[25]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[29]_inst_i_6_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[27]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[27]_inst_i_7_n_0\,
      O => \result_o_OBUF[25]_inst_i_4_n_0\
    );
\result_o_OBUF[25]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_9_n_0\,
      I1 => \result_o_OBUF[26]_inst_i_7_n_0\,
      I2 => operand_b_i_IBUF(0),
      I3 => \result_o_OBUF[27]_inst_i_8_n_0\,
      I4 => operand_b_i_IBUF(1),
      I5 => \result_o_OBUF[25]_inst_i_7_n_0\,
      O => \result_o_OBUF[25]_inst_i_5_n_0\
    );
\result_o_OBUF[25]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(21),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[29]_inst_i_12_n_0\,
      O => \result_o_OBUF[25]_inst_i_6_n_0\
    );
\result_o_OBUF[25]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => shift_op_a(29),
      I1 => operand_b_i_IBUF(2),
      I2 => operand_b_i_IBUF(3),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(4),
      I5 => shift_op_a(25),
      O => \result_o_OBUF[25]_inst_i_7_n_0\
    );
\result_o_OBUF[25]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(10),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(21),
      O => shift_op_a(21)
    );
\result_o_OBUF[25]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(6),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(25),
      O => shift_op_a(25)
    );
\result_o_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(26),
      O => result_o(26)
    );
\result_o_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(26),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[26]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(26)
    );
\result_o_OBUF[26]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[26]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[27]_inst_i_4_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[26]_inst_i_5_n_0\,
      O => data4(26)
    );
\result_o_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(27),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(26),
      I4 => operand_b_i_IBUF(26),
      O => \result_o_OBUF[26]_inst_i_3_n_0\
    );
\result_o_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[26]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[30]_inst_i_7_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[28]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[28]_inst_i_7_n_0\,
      O => \result_o_OBUF[26]_inst_i_4_n_0\
    );
\result_o_OBUF[26]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_10_n_0\,
      I1 => \result_o_OBUF[27]_inst_i_8_n_0\,
      I2 => operand_b_i_IBUF(0),
      I3 => \result_o_OBUF[28]_inst_i_9_n_0\,
      I4 => operand_b_i_IBUF(1),
      I5 => \result_o_OBUF[26]_inst_i_7_n_0\,
      O => \result_o_OBUF[26]_inst_i_5_n_0\
    );
\result_o_OBUF[26]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(20),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[30]_inst_i_12_n_0\,
      O => \result_o_OBUF[26]_inst_i_6_n_0\
    );
\result_o_OBUF[26]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => shift_op_a(30),
      I1 => operand_b_i_IBUF(2),
      I2 => operand_b_i_IBUF(3),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(4),
      I5 => shift_op_a(26),
      O => \result_o_OBUF[26]_inst_i_7_n_0\
    );
\result_o_OBUF[26]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(11),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(20),
      O => shift_op_a(20)
    );
\result_o_OBUF[26]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(5),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(26),
      O => shift_op_a(26)
    );
\result_o_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(27),
      O => result_o(27)
    );
\result_o_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(27),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[27]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(27)
    );
\result_o_OBUF[27]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(0),
      I1 => operand_a_i_IBUF(31),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(16),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(15),
      O => \result_o_OBUF[27]_inst_i_10_n_0\
    );
\result_o_OBUF[27]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(8),
      I1 => operand_a_i_IBUF(23),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(24),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(7),
      O => \result_o_OBUF[27]_inst_i_11_n_0\
    );
\result_o_OBUF[27]_inst_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(4),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(27),
      O => shift_op_a(27)
    );
\result_o_OBUF[27]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[27]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[28]_inst_i_4_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[27]_inst_i_5_n_0\,
      O => data4(27)
    );
\result_o_OBUF[27]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(28),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(27),
      I4 => operand_b_i_IBUF(27),
      O => \result_o_OBUF[27]_inst_i_3_n_0\
    );
\result_o_OBUF[27]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[27]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[27]_inst_i_7_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[29]_inst_i_6_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[29]_inst_i_7_n_0\,
      O => \result_o_OBUF[27]_inst_i_4_n_0\
    );
\result_o_OBUF[27]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_8_n_0\,
      I1 => \result_o_OBUF[28]_inst_i_9_n_0\,
      I2 => operand_b_i_IBUF(0),
      I3 => \result_o_OBUF[29]_inst_i_10_n_0\,
      I4 => operand_b_i_IBUF(1),
      I5 => \result_o_OBUF[27]_inst_i_8_n_0\,
      O => \result_o_OBUF[27]_inst_i_5_n_0\
    );
\result_o_OBUF[27]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(19),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_17_n_0\,
      O => \result_o_OBUF[27]_inst_i_6_n_0\
    );
\result_o_OBUF[27]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_o_OBUF[27]_inst_i_10_n_0\,
      I1 => operand_b_i_IBUF(3),
      I2 => \result_o_OBUF[27]_inst_i_11_n_0\,
      O => \result_o_OBUF[27]_inst_i_7_n_0\
    );
\result_o_OBUF[27]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => shift_op_a(31),
      I1 => operand_b_i_IBUF(2),
      I2 => operand_b_i_IBUF(3),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(4),
      I5 => shift_op_a(27),
      O => \result_o_OBUF[27]_inst_i_8_n_0\
    );
\result_o_OBUF[27]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(12),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(19),
      O => shift_op_a(19)
    );
\result_o_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(28),
      O => result_o(28)
    );
\result_o_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(28),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[28]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(28)
    );
\result_o_OBUF[28]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(13),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(18),
      O => shift_op_a(18)
    );
\result_o_OBUF[28]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(1),
      I1 => operand_a_i_IBUF(30),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(17),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(14),
      O => \result_o_OBUF[28]_inst_i_11_n_0\
    );
\result_o_OBUF[28]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(9),
      I1 => operand_a_i_IBUF(22),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(25),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(6),
      O => \result_o_OBUF[28]_inst_i_12_n_0\
    );
\result_o_OBUF[28]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(3),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(28),
      O => shift_op_a(28)
    );
\result_o_OBUF[28]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[29]_inst_i_4_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[28]_inst_i_5_n_0\,
      O => data4(28)
    );
\result_o_OBUF[28]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(29),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(28),
      I4 => operand_b_i_IBUF(28),
      O => \result_o_OBUF[28]_inst_i_3_n_0\
    );
\result_o_OBUF[28]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[28]_inst_i_7_n_0\,
      I2 => operand_b_i_IBUF(1),
      I3 => \result_o_OBUF[30]_inst_i_7_n_0\,
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[30]_inst_i_8_n_0\,
      O => \result_o_OBUF[28]_inst_i_4_n_0\
    );
\result_o_OBUF[28]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_9_n_0\,
      I1 => \result_o_OBUF[29]_inst_i_10_n_0\,
      I2 => operand_b_i_IBUF(0),
      I3 => \result_o_OBUF[28]_inst_i_8_n_0\,
      I4 => operand_b_i_IBUF(1),
      I5 => \result_o_OBUF[28]_inst_i_9_n_0\,
      O => \result_o_OBUF[28]_inst_i_5_n_0\
    );
\result_o_OBUF[28]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(18),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_21_n_0\,
      O => \result_o_OBUF[28]_inst_i_6_n_0\
    );
\result_o_OBUF[28]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_11_n_0\,
      I1 => operand_b_i_IBUF(3),
      I2 => \result_o_OBUF[28]_inst_i_12_n_0\,
      O => \result_o_OBUF[28]_inst_i_7_n_0\
    );
\result_o_OBUF[28]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operand_b_i_IBUF(2),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(30),
      O => \result_o_OBUF[28]_inst_i_8_n_0\
    );
\result_o_OBUF[28]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operand_b_i_IBUF(2),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(28),
      O => \result_o_OBUF[28]_inst_i_9_n_0\
    );
\result_o_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(29),
      O => result_o(29)
    );
\result_o_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(29),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[29]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(29)
    );
\result_o_OBUF[29]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operand_b_i_IBUF(2),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(29),
      O => \result_o_OBUF[29]_inst_i_10_n_0\
    );
\result_o_OBUF[29]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(14),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(17),
      O => shift_op_a(17)
    );
\result_o_OBUF[29]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(2),
      I1 => operand_a_i_IBUF(29),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(18),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(13),
      O => \result_o_OBUF[29]_inst_i_12_n_0\
    );
\result_o_OBUF[29]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(10),
      I1 => operand_a_i_IBUF(21),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(26),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(5),
      O => \result_o_OBUF[29]_inst_i_13_n_0\
    );
\result_o_OBUF[29]_inst_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(1),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(30),
      O => shift_op_a(30)
    );
\result_o_OBUF[29]_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(2),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(29),
      O => shift_op_a(29)
    );
\result_o_OBUF[29]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[30]_inst_i_4_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[29]_inst_i_5_n_0\,
      O => data4(29)
    );
\result_o_OBUF[29]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(30),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(29),
      I4 => operand_b_i_IBUF(29),
      O => \result_o_OBUF[29]_inst_i_3_n_0\
    );
\result_o_OBUF[29]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_6_n_0\,
      I1 => operand_b_i_IBUF(2),
      I2 => \result_o_OBUF[29]_inst_i_7_n_0\,
      I3 => operand_b_i_IBUF(1),
      I4 => \result_o_OBUF[31]_inst_i_12_n_0\,
      O => \result_o_OBUF[29]_inst_i_4_n_0\
    );
\result_o_OBUF[29]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_8_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[29]_inst_i_9_n_0\,
      I3 => operand_b_i_IBUF(1),
      I4 => \result_o_OBUF[29]_inst_i_10_n_0\,
      O => \result_o_OBUF[29]_inst_i_5_n_0\
    );
\result_o_OBUF[29]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(17),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_19_n_0\,
      O => \result_o_OBUF[29]_inst_i_6_n_0\
    );
\result_o_OBUF[29]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_12_n_0\,
      I1 => operand_b_i_IBUF(3),
      I2 => \result_o_OBUF[29]_inst_i_13_n_0\,
      O => \result_o_OBUF[29]_inst_i_7_n_0\
    );
\result_o_OBUF[29]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => operand_b_i_IBUF(1),
      I1 => operand_b_i_IBUF(2),
      I2 => operand_b_i_IBUF(3),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(4),
      I5 => shift_op_a(30),
      O => \result_o_OBUF[29]_inst_i_8_n_0\
    );
\result_o_OBUF[29]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operand_b_i_IBUF(2),
      I1 => operand_b_i_IBUF(3),
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(4),
      I4 => shift_op_a(31),
      O => \result_o_OBUF[29]_inst_i_9_n_0\
    );
\result_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(2),
      O => result_o(2)
    );
\result_o_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(2),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[2]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(2)
    );
\result_o_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[29]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[30]_inst_i_4_n_0\,
      O => data4(2)
    );
\result_o_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(3),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(2),
      I4 => operand_b_i_IBUF(2),
      O => \result_o_OBUF[2]_inst_i_3_n_0\
    );
\result_o_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(30),
      O => result_o(30)
    );
\result_o_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(30),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[30]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(30)
    );
\result_o_OBUF[30]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => operand_b_i_IBUF(3),
      I1 => shift_op_a_32(32),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(1),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(30),
      O => \result_o_OBUF[30]_inst_i_10_n_0\
    );
\result_o_OBUF[30]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(15),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(16),
      O => shift_op_a(16)
    );
\result_o_OBUF[30]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(3),
      I1 => operand_a_i_IBUF(28),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(19),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(12),
      O => \result_o_OBUF[30]_inst_i_12_n_0\
    );
\result_o_OBUF[30]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(11),
      I1 => operand_a_i_IBUF(20),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(27),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(4),
      O => \result_o_OBUF[30]_inst_i_13_n_0\
    );
\result_o_OBUF[30]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[30]_inst_i_4_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => \result_o_OBUF[30]_inst_i_5_n_0\,
      I3 => shift_left,
      I4 => \result_o_OBUF[30]_inst_i_6_n_0\,
      O => data4(30)
    );
\result_o_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(31),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(30),
      I4 => operand_b_i_IBUF(30),
      O => \result_o_OBUF[30]_inst_i_3_n_0\
    );
\result_o_OBUF[30]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \result_o_OBUF[30]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(2),
      I2 => \result_o_OBUF[30]_inst_i_8_n_0\,
      I3 => operand_b_i_IBUF(1),
      I4 => \result_o_OBUF[31]_inst_i_14_n_0\,
      O => \result_o_OBUF[30]_inst_i_4_n_0\
    );
\result_o_OBUF[30]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_12_n_0\,
      I1 => operand_b_i_IBUF(1),
      I2 => \result_o_OBUF[31]_inst_i_13_n_0\,
      O => \result_o_OBUF[30]_inst_i_5_n_0\
    );
\result_o_OBUF[30]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \result_o_OBUF[30]_inst_i_9_n_0\,
      I1 => operand_b_i_IBUF(0),
      I2 => operand_b_i_IBUF(1),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(2),
      I5 => \result_o_OBUF[30]_inst_i_10_n_0\,
      O => \result_o_OBUF[30]_inst_i_6_n_0\
    );
\result_o_OBUF[30]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => shift_op_a_32(32),
      I1 => operand_b_i_IBUF(4),
      I2 => shift_op_a(16),
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_23_n_0\,
      O => \result_o_OBUF[30]_inst_i_7_n_0\
    );
\result_o_OBUF[30]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result_o_OBUF[30]_inst_i_12_n_0\,
      I1 => operand_b_i_IBUF(3),
      I2 => \result_o_OBUF[30]_inst_i_13_n_0\,
      O => \result_o_OBUF[30]_inst_i_8_n_0\
    );
\result_o_OBUF[30]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => operand_b_i_IBUF(3),
      I1 => shift_op_a_32(32),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(0),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(31),
      O => \result_o_OBUF[30]_inst_i_9_n_0\
    );
\result_o_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(31),
      O => result_o(31)
    );
\result_o_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(31),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[31]_inst_i_5_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(31)
    );
\result_o_OBUF[31]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => operator_i_IBUF(1),
      I1 => operator_i_IBUF(0),
      I2 => operator_i_IBUF(3),
      I3 => operator_i_IBUF(2),
      O => \result_o_OBUF[31]_inst_i_10_n_0\
    );
\result_o_OBUF[31]_inst_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5F1"
    )
        port map (
      I0 => operator_i_IBUF(2),
      I1 => operator_i_IBUF(1),
      I2 => operator_i_IBUF(3),
      I3 => operator_i_IBUF(0),
      O => \result_o_OBUF[31]_inst_i_11_n_0\
    );
\result_o_OBUF[31]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[27]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(2),
      I2 => \result_o_OBUF[31]_inst_i_17_n_0\,
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_18_n_0\,
      O => \result_o_OBUF[31]_inst_i_12_n_0\
    );
\result_o_OBUF[31]_inst_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[29]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(2),
      I2 => \result_o_OBUF[31]_inst_i_19_n_0\,
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_20_n_0\,
      O => \result_o_OBUF[31]_inst_i_13_n_0\
    );
\result_o_OBUF[31]_inst_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_7_n_0\,
      I1 => operand_b_i_IBUF(2),
      I2 => \result_o_OBUF[31]_inst_i_21_n_0\,
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_22_n_0\,
      O => \result_o_OBUF[31]_inst_i_14_n_0\
    );
\result_o_OBUF[31]_inst_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[30]_inst_i_8_n_0\,
      I1 => operand_b_i_IBUF(2),
      I2 => \result_o_OBUF[31]_inst_i_23_n_0\,
      I3 => operand_b_i_IBUF(3),
      I4 => \result_o_OBUF[31]_inst_i_24_n_0\,
      O => \result_o_OBUF[31]_inst_i_15_n_0\
    );
\result_o_OBUF[31]_inst_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => operand_a_i_IBUF(0),
      I1 => shift_left,
      I2 => operand_a_i_IBUF(31),
      O => shift_op_a(31)
    );
\result_o_OBUF[31]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(4),
      I1 => operand_a_i_IBUF(27),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(20),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(11),
      O => \result_o_OBUF[31]_inst_i_17_n_0\
    );
\result_o_OBUF[31]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(12),
      I1 => operand_a_i_IBUF(19),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(28),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(3),
      O => \result_o_OBUF[31]_inst_i_18_n_0\
    );
\result_o_OBUF[31]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(6),
      I1 => operand_a_i_IBUF(25),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(22),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(9),
      O => \result_o_OBUF[31]_inst_i_19_n_0\
    );
\result_o_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5F7"
    )
        port map (
      I0 => operator_i_IBUF(2),
      I1 => operator_i_IBUF(1),
      I2 => operator_i_IBUF(3),
      I3 => operator_i_IBUF(0),
      O => \result_o_OBUF[31]_inst_i_2_n_0\
    );
\result_o_OBUF[31]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(14),
      I1 => operand_a_i_IBUF(17),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(30),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(1),
      O => \result_o_OBUF[31]_inst_i_20_n_0\
    );
\result_o_OBUF[31]_inst_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(5),
      I1 => operand_a_i_IBUF(26),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(21),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(10),
      O => \result_o_OBUF[31]_inst_i_21_n_0\
    );
\result_o_OBUF[31]_inst_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(13),
      I1 => operand_a_i_IBUF(18),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(29),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(2),
      O => \result_o_OBUF[31]_inst_i_22_n_0\
    );
\result_o_OBUF[31]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(7),
      I1 => operand_a_i_IBUF(24),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(23),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(8),
      O => \result_o_OBUF[31]_inst_i_23_n_0\
    );
\result_o_OBUF[31]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operand_a_i_IBUF(15),
      I1 => operand_a_i_IBUF(16),
      I2 => operand_b_i_IBUF(4),
      I3 => operand_a_i_IBUF(31),
      I4 => shift_left,
      I5 => operand_a_i_IBUF(0),
      O => \result_o_OBUF[31]_inst_i_24_n_0\
    );
\result_o_OBUF[31]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_6_n_0\,
      I1 => shift_left,
      I2 => shift_op_a_32(32),
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[31]_inst_i_9_n_0\,
      O => data4(31)
    );
\result_o_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1113"
    )
        port map (
      I0 => operator_i_IBUF(2),
      I1 => operator_i_IBUF(3),
      I2 => operator_i_IBUF(1),
      I3 => operator_i_IBUF(0),
      O => \result_o_OBUF[31]_inst_i_4_n_0\
    );
\result_o_OBUF[31]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(32),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(31),
      I4 => operand_b_i_IBUF(31),
      O => \result_o_OBUF[31]_inst_i_5_n_0\
    );
\result_o_OBUF[31]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_12_n_0\,
      I1 => \result_o_OBUF[31]_inst_i_13_n_0\,
      I2 => operand_b_i_IBUF(0),
      I3 => \result_o_OBUF[31]_inst_i_14_n_0\,
      I4 => operand_b_i_IBUF(1),
      I5 => \result_o_OBUF[31]_inst_i_15_n_0\,
      O => \result_o_OBUF[31]_inst_i_6_n_0\
    );
\result_o_OBUF[31]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => operator_i_IBUF(3),
      I1 => operator_i_IBUF(4),
      I2 => operator_i_IBUF(2),
      I3 => operator_i_IBUF(0),
      I4 => operator_i_IBUF(1),
      O => shift_left
    );
\result_o_OBUF[31]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => operator_i_IBUF(3),
      I1 => operator_i_IBUF(4),
      I2 => operator_i_IBUF(2),
      I3 => operator_i_IBUF(1),
      I4 => operator_i_IBUF(0),
      I5 => shift_op_a(31),
      O => shift_op_a_32(32)
    );
\result_o_OBUF[31]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => operand_b_i_IBUF(1),
      I1 => operand_b_i_IBUF(2),
      I2 => operand_b_i_IBUF(3),
      I3 => shift_op_a_32(32),
      I4 => operand_b_i_IBUF(4),
      I5 => shift_op_a(31),
      O => \result_o_OBUF[31]_inst_i_9_n_0\
    );
\result_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(3),
      O => result_o(3)
    );
\result_o_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(3),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[3]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(3)
    );
\result_o_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[28]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[28]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[29]_inst_i_4_n_0\,
      O => data4(3)
    );
\result_o_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(4),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(3),
      I4 => operand_b_i_IBUF(3),
      O => \result_o_OBUF[3]_inst_i_3_n_0\
    );
\result_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(4),
      O => result_o(4)
    );
\result_o_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(4),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[4]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(4)
    );
\result_o_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[27]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[27]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[28]_inst_i_4_n_0\,
      O => data4(4)
    );
\result_o_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(5),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(4),
      I4 => operand_b_i_IBUF(4),
      O => \result_o_OBUF[4]_inst_i_3_n_0\
    );
\result_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(5),
      O => result_o(5)
    );
\result_o_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(5),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[5]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(5)
    );
\result_o_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[26]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[26]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[27]_inst_i_4_n_0\,
      O => data4(5)
    );
\result_o_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(6),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(5),
      I4 => operand_b_i_IBUF(5),
      O => \result_o_OBUF[5]_inst_i_3_n_0\
    );
\result_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(6),
      O => result_o(6)
    );
\result_o_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(6),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[6]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(6)
    );
\result_o_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[25]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[25]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[26]_inst_i_4_n_0\,
      O => data4(6)
    );
\result_o_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(7),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(6),
      I4 => operand_b_i_IBUF(6),
      O => \result_o_OBUF[6]_inst_i_3_n_0\
    );
\result_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(7),
      O => result_o(7)
    );
\result_o_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(7),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[7]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(7)
    );
\result_o_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result_o_OBUF[24]_inst_i_5_n_0\,
      I1 => shift_left,
      I2 => \result_o_OBUF[24]_inst_i_4_n_0\,
      I3 => operand_b_i_IBUF(0),
      I4 => \result_o_OBUF[25]_inst_i_4_n_0\,
      O => data4(7)
    );
\result_o_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(8),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(7),
      I4 => operand_b_i_IBUF(7),
      O => \result_o_OBUF[7]_inst_i_3_n_0\
    );
\result_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(8),
      O => result_o(8)
    );
\result_o_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(8),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[8]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(8)
    );
\result_o_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[23]_inst_i_5_n_0\,
      I1 => \result_o_OBUF[23]_inst_i_6_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[23]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[24]_inst_i_4_n_0\,
      O => data4(8)
    );
\result_o_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(9),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(8),
      I4 => operand_b_i_IBUF(8),
      O => \result_o_OBUF[8]_inst_i_3_n_0\
    );
\result_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_o_OBUF(9),
      O => result_o(9)
    );
\result_o_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \result_o_OBUF[31]_inst_i_2_n_0\,
      I1 => data4(9),
      I2 => \result_o_OBUF[31]_inst_i_4_n_0\,
      I3 => \result_o_OBUF[9]_inst_i_3_n_0\,
      I4 => operator_i_IBUF(4),
      O => result_o_OBUF(9)
    );
\result_o_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_o_OBUF[23]_inst_i_6_n_0\,
      I1 => \result_o_OBUF[22]_inst_i_5_n_0\,
      I2 => shift_left,
      I3 => \result_o_OBUF[22]_inst_i_4_n_0\,
      I4 => operand_b_i_IBUF(0),
      I5 => \result_o_OBUF[23]_inst_i_4_n_0\,
      O => data4(9)
    );
\result_o_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => adder_result_ext_o_OBUF(10),
      I1 => \result_o_OBUF[31]_inst_i_10_n_0\,
      I2 => \result_o_OBUF[31]_inst_i_11_n_0\,
      I3 => operand_a_i_IBUF(9),
      I4 => operand_b_i_IBUF(9),
      O => \result_o_OBUF[9]_inst_i_3_n_0\
    );
end STRUCTURE;
