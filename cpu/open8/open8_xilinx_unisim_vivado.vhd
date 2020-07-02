-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Mar  5 23:12:02 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl /media/psf/Home/Uni/Cores/core-collection/cpu/open8/netlists/open8_xilinx_unisim_vivado.vhd
-- Design      : Open8_vivado
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Open8_vivado is
  port (
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupts : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Rd_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rd_Enable : out STD_LOGIC;
    Wr_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Wr_Enable : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Open8_vivado : entity is true;
  attribute Allow_Stack_Address_Move : string;
  attribute Allow_Stack_Address_Move of Open8_vivado : entity is "FALSE";
  attribute BRK_Implements_WAI : string;
  attribute BRK_Implements_WAI of Open8_vivado : entity is "FALSE";
  attribute Default_Interrupt_Mask : string;
  attribute Default_Interrupt_Mask of Open8_vivado : entity is "8'b11111111";
  attribute Enable_Auto_Increment : string;
  attribute Enable_Auto_Increment of Open8_vivado : entity is "FALSE";
  attribute Enable_NMI : string;
  attribute Enable_NMI of Open8_vivado : entity is "TRUE";
  attribute ISR_Start_Addr : string;
  attribute ISR_Start_Addr of Open8_vivado : entity is "16'b1111111111110000";
  attribute Program_Start_Addr : string;
  attribute Program_Start_Addr of Open8_vivado : entity is "16'b0000000000000000";
  attribute Reset_Level : string;
  attribute Reset_Level of Open8_vivado : entity is "1'b0";
  attribute Stack_Start_Addr : string;
  attribute Stack_Start_Addr of Open8_vivado : entity is "16'b0000001111111111";
end Open8_vivado;

architecture STRUCTURE of Open8_vivado is
  signal Ack_D : STD_LOGIC;
  signal Ack_Q : STD_LOGIC;
  signal Ack_Q1 : STD_LOGIC;
  signal Ack_Q_i_2_n_0 : STD_LOGIC;
  signal Address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Address_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_10_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_11_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_12_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_13_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_14_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_15_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_16_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_1\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_2\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_3\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_4\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_5\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_6\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_4_n_7\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_10_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_11_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_15_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_16_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_17_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_18_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_19_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_20_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_1\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_2\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_3\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_4\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_5\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_6\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_6_n_7\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \Address_OBUF[15]_inst_i_9_n_0\ : STD_LOGIC;
  signal \Address_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_14_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_15_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_16_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_1\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_2\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_3\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_4\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_5\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_6\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_4_n_7\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \Address_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \Address_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_12_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_13_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_14_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_15_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_1\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_2\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_3\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_4\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_5\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_6\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_4_n_7\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \Address_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \Address_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Address_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Address_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Address_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Address_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Address_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \Address_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal CPU_Next_State : STD_LOGIC_VECTOR ( 5 to 5 );
  signal CPU_State : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \CPU_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \CPU_State[0]_i_2_n_0\ : STD_LOGIC;
  signal \CPU_State[0]_i_3_n_0\ : STD_LOGIC;
  signal \CPU_State[0]_i_4_n_0\ : STD_LOGIC;
  signal \CPU_State[0]_i_5_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_10_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_11_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_2_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_3_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_4_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_5_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_6_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_7_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_8_n_0\ : STD_LOGIC;
  signal \CPU_State[1]_i_9_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_2_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_3_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_4_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_5_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_6_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_7_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_8_n_0\ : STD_LOGIC;
  signal \CPU_State[2]_i_9_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_1_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_2_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_3_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_4_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_5_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_6_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_7_n_0\ : STD_LOGIC;
  signal \CPU_State[3]_i_8_n_0\ : STD_LOGIC;
  signal \CPU_State[4]_i_1_n_0\ : STD_LOGIC;
  signal \CPU_State[4]_i_2_n_0\ : STD_LOGIC;
  signal \CPU_State[4]_i_3_n_0\ : STD_LOGIC;
  signal \CPU_State[4]_i_4_n_0\ : STD_LOGIC;
  signal \CPU_State[5]_i_1_n_0\ : STD_LOGIC;
  signal \CPU_State[5]_i_3_n_0\ : STD_LOGIC;
  signal \CPU_State[5]_i_4_n_0\ : STD_LOGIC;
  signal \CPU_State[5]_i_5_n_0\ : STD_LOGIC;
  signal \CPU_State[5]_i_6_n_0\ : STD_LOGIC;
  signal Cache_Ctrl : STD_LOGIC_VECTOR ( 2 to 2 );
  signal Clock_IBUF : STD_LOGIC;
  signal Clock_IBUF_BUFG : STD_LOGIC;
  signal Flags : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Flags[0]_i_10_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_11_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_12_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_13_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_14_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_15_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_16_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_17_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_18_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_19_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_20_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_21_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_22_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_23_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_24_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_25_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_26_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_27_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_28_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_29_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_30_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_31_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_32_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_33_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_34_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_35_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_36_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_37_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_38_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_39_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_3_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_40_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_41_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_42_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_43_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_45_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_46_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_47_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_48_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_49_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_4_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_50_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_51_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_52_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_53_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_54_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_55_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_56_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_57_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_58_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_5_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_6_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_7_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_8_n_0\ : STD_LOGIC;
  signal \Flags[0]_i_9_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_10_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_11_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_12_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_13_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_16_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_3_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_4_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_5_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_6_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_7_n_0\ : STD_LOGIC;
  signal \Flags[1]_i_8_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_11_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_12_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_14_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_15_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_16_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_17_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_18_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_19_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_20_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_21_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_3_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_4_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_5_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_6_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_7_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_8_n_0\ : STD_LOGIC;
  signal \Flags[2]_i_9_n_0\ : STD_LOGIC;
  signal \Flags[3]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[3]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[4]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[4]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[5]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[5]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[6]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[6]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[7]_i_1_n_0\ : STD_LOGIC;
  signal \Flags[7]_i_2_n_0\ : STD_LOGIC;
  signal \Flags[7]_i_3_n_0\ : STD_LOGIC;
  signal \Flags[7]_i_4_n_0\ : STD_LOGIC;
  signal \Flags[7]_i_5_n_0\ : STD_LOGIC;
  signal \Flags_reg[0]_i_44_n_0\ : STD_LOGIC;
  signal \Flags_reg[1]_i_14_n_3\ : STD_LOGIC;
  signal \Flags_reg[1]_i_15_n_3\ : STD_LOGIC;
  signal \Flags_reg[1]_i_9_n_3\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_1\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_2\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_3\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_4\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_5\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_6\ : STD_LOGIC;
  signal \Flags_reg[2]_i_10_n_7\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_1\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_2\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_3\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_4\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_5\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_6\ : STD_LOGIC;
  signal \Flags_reg[2]_i_13_n_7\ : STD_LOGIC;
  signal \INT_Ctrl[Incr_ISR]\ : STD_LOGIC;
  signal \INT_Ctrl[Mask_Set]\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_10_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_11_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_12_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_3_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_5_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_6_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_7_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_8_n_0\ : STD_LOGIC;
  signal \ISR_Addr[0]_i_9_n_0\ : STD_LOGIC;
  signal \ISR_Addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \ISR_Addr[12]_i_3_n_0\ : STD_LOGIC;
  signal \ISR_Addr[12]_i_4_n_0\ : STD_LOGIC;
  signal \ISR_Addr[12]_i_5_n_0\ : STD_LOGIC;
  signal \ISR_Addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \ISR_Addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \ISR_Addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \ISR_Addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \ISR_Addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \ISR_Addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \ISR_Addr[8]_i_4_n_0\ : STD_LOGIC;
  signal \ISR_Addr[8]_i_5_n_0\ : STD_LOGIC;
  signal ISR_Addr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ISR_Addr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \ISR_Addr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ISR_Addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ISR_Addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ISR_Addr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal Instr_Prefetch : STD_LOGIC;
  signal Instr_Prefetch_i_1_n_0 : STD_LOGIC;
  signal Int_Ack : STD_LOGIC;
  signal Int_Mask : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Int_Mask[7]_i_2_n_0\ : STD_LOGIC;
  signal \Int_Mask[7]_i_3_n_0\ : STD_LOGIC;
  signal Int_Req : STD_LOGIC;
  signal Int_Req0 : STD_LOGIC;
  signal Interrupts_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mult[10]_i_10_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_11_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_12_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_14_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_15_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_16_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_17_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_18_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_19_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_20_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_21_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_22_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_23_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_24_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_25_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_2_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_3_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_4_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_5_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_6_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_7_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_8_n_0\ : STD_LOGIC;
  signal \Mult[10]_i_9_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_10_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_11_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_12_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_13_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_14_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_15_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_16_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_17_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_18_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_19_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_20_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_21_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_23_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_24_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_25_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_26_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_2_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_3_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_4_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_5_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_6_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_7_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_8_n_0\ : STD_LOGIC;
  signal \Mult[14]_i_9_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_10_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_11_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_12_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_2_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_3_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_5_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_6_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_7_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_8_n_0\ : STD_LOGIC;
  signal \Mult[15]_i_9_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_12_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_13_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_14_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_15_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_16_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_17_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_18_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_19_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_20_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_2_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_3_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_4_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_5_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_6_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_7_n_0\ : STD_LOGIC;
  signal \Mult[2]_i_8_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_10_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_3_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_4_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_5_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_6_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_7_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_8_n_0\ : STD_LOGIC;
  signal \Mult[3]_i_9_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_10_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_11_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_12_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_13_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_14_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_15_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_16_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_17_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_18_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_19_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_2_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_4_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_5_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_6_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_7_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_8_n_0\ : STD_LOGIC;
  signal \Mult[6]_i_9_n_0\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_0\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_1\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_2\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_3\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_4\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_5\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_6\ : STD_LOGIC;
  signal \Mult_reg[10]_i_13_n_7\ : STD_LOGIC;
  signal \Mult_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \Mult_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \Mult_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \Mult_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \Mult_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \Mult_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \Mult_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \Mult_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \Mult_reg[14]_i_22_n_1\ : STD_LOGIC;
  signal \Mult_reg[14]_i_22_n_3\ : STD_LOGIC;
  signal \Mult_reg[14]_i_22_n_6\ : STD_LOGIC;
  signal \Mult_reg[14]_i_22_n_7\ : STD_LOGIC;
  signal \Mult_reg[15]_i_4_n_1\ : STD_LOGIC;
  signal \Mult_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \Mult_reg[15]_i_4_n_6\ : STD_LOGIC;
  signal \Mult_reg[15]_i_4_n_7\ : STD_LOGIC;
  signal \Mult_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Mult_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \Mult_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \Mult_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \Mult_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \Mult_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \Mult_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \Mult_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \Mult_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \Mult_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_1\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_2\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_4\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_5\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_6\ : STD_LOGIC;
  signal \Mult_reg[6]_i_3_n_7\ : STD_LOGIC;
  signal \Mult_reg_n_0_[0]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[1]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[2]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[3]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[4]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[5]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[6]\ : STD_LOGIC;
  signal \Mult_reg_n_0_[7]\ : STD_LOGIC;
  signal Opcode : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \Opcode[0]_i_1_n_0\ : STD_LOGIC;
  signal \Opcode[1]_i_1_n_0\ : STD_LOGIC;
  signal \Opcode[2]_i_1_n_0\ : STD_LOGIC;
  signal \Opcode[3]_i_1_n_0\ : STD_LOGIC;
  signal \Opcode[4]_i_1_n_0\ : STD_LOGIC;
  signal \Operand1[7]_i_1_n_0\ : STD_LOGIC;
  signal \Operand2[7]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[0]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[0]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[1]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[1]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[2]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[2]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[2]_i_3_n_0\ : STD_LOGIC;
  signal \Pending[3]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[3]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[4]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[4]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[4]_i_3_n_0\ : STD_LOGIC;
  signal \Pending[4]_i_4_n_0\ : STD_LOGIC;
  signal \Pending[4]_i_5_n_0\ : STD_LOGIC;
  signal \Pending[4]_i_6_n_0\ : STD_LOGIC;
  signal \Pending[5]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[5]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[5]_i_3_n_0\ : STD_LOGIC;
  signal \Pending[5]_i_4_n_0\ : STD_LOGIC;
  signal \Pending[5]_i_5_n_0\ : STD_LOGIC;
  signal \Pending[5]_i_6_n_0\ : STD_LOGIC;
  signal \Pending[6]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[6]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[7]_i_1_n_0\ : STD_LOGIC;
  signal \Pending[7]_i_2_n_0\ : STD_LOGIC;
  signal \Pending[7]_i_3_n_0\ : STD_LOGIC;
  signal \Pending_reg_n_0_[0]\ : STD_LOGIC;
  signal \Pending_reg_n_0_[6]\ : STD_LOGIC;
  signal Prefetch : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Prefetch[7]_i_2_n_0\ : STD_LOGIC;
  signal \Prefetch[7]_i_3_n_0\ : STD_LOGIC;
  signal Program_Ctr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Program_Ctr[0]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[10]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_10_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_11_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_12_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_13_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_14_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_15_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_16_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_7_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_8_n_0\ : STD_LOGIC;
  signal \Program_Ctr[11]_i_9_n_0\ : STD_LOGIC;
  signal \Program_Ctr[12]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[12]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[12]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[12]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[12]_i_7_n_0\ : STD_LOGIC;
  signal \Program_Ctr[13]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[14]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_10_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_12_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_13_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_14_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_15_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_16_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_17_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_18_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_19_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_1_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_20_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_21_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_22_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_23_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_24_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_25_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_26_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[15]_i_9_n_0\ : STD_LOGIC;
  signal \Program_Ctr[1]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[2]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_10_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_11_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_12_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_13_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_14_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_15_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_16_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_7_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_8_n_0\ : STD_LOGIC;
  signal \Program_Ctr[3]_i_9_n_0\ : STD_LOGIC;
  signal \Program_Ctr[4]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[4]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[4]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[4]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[4]_i_7_n_0\ : STD_LOGIC;
  signal \Program_Ctr[5]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[6]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_10_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_11_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_12_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_13_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_14_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_15_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_16_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_7_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_8_n_0\ : STD_LOGIC;
  signal \Program_Ctr[7]_i_9_n_0\ : STD_LOGIC;
  signal \Program_Ctr[8]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr[8]_i_4_n_0\ : STD_LOGIC;
  signal \Program_Ctr[8]_i_5_n_0\ : STD_LOGIC;
  signal \Program_Ctr[8]_i_6_n_0\ : STD_LOGIC;
  signal \Program_Ctr[8]_i_7_n_0\ : STD_LOGIC;
  signal \Program_Ctr[9]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[12]_i_3_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_11_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_11_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_11_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_11_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_11_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_7_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[15]_i_8_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[4]_i_3_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_2\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_3\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_4\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_5\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_6\ : STD_LOGIC;
  signal \Program_Ctr_reg[8]_i_3_n_7\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[10]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[11]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[12]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[13]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[14]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[15]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[6]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[7]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[8]\ : STD_LOGIC;
  signal \Program_Ctr_reg_n_0_[9]\ : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \R__0\ : STD_LOGIC_VECTOR ( 6 to 8 );
  signal Rd_Data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Rd_Enable_OBUF : STD_LOGIC;
  signal Rd_Enable_i_10_n_0 : STD_LOGIC;
  signal Rd_Enable_i_11_n_0 : STD_LOGIC;
  signal Rd_Enable_i_12_n_0 : STD_LOGIC;
  signal Rd_Enable_i_13_n_0 : STD_LOGIC;
  signal Rd_Enable_i_1_n_0 : STD_LOGIC;
  signal Rd_Enable_i_2_n_0 : STD_LOGIC;
  signal Rd_Enable_i_3_n_0 : STD_LOGIC;
  signal Rd_Enable_i_4_n_0 : STD_LOGIC;
  signal Rd_Enable_i_5_n_0 : STD_LOGIC;
  signal Rd_Enable_i_6_n_0 : STD_LOGIC;
  signal Rd_Enable_i_7_n_0 : STD_LOGIC;
  signal Rd_Enable_i_8_n_0 : STD_LOGIC;
  signal Rd_Enable_i_9_n_0 : STD_LOGIC;
  signal \Regfile[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][0]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_10_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_11_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_12_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_13_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_14_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_15_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_16_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_17_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_18_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_20_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_21_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_22_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_23_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_24_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_25_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][1]_i_9_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][2]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_10_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_11_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][3]_i_9_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_11_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_12_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_13_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_14_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_15_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_16_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_17_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_18_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_19_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_20_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_21_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_22_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][4]_i_9_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_10_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_11_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_12_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_13_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_14_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_15_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_16_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_17_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][5]_i_9_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][6]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_10_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_11_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_12_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_13_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_14_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_15_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_16_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_17_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_18_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_19_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_21_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_22_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_23_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_24_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_25_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_26_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_27_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_28_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_29_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_30_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[0][7]_i_9_n_0\ : STD_LOGIC;
  signal \Regfile[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][0]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[1][2]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][3]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[1][4]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][5]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][5]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][5]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[1][6]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_10_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_11_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_12_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_13_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_14_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_15_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_16_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_17_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_18_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[1][7]_i_9_n_0\ : STD_LOGIC;
  signal \Regfile[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][3]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][4]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][5]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][6]_i_2_n_0\ : STD_LOGIC;
  signal \Regfile[2][6]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][6]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[2][6]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_3_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_4_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_6_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_7_n_0\ : STD_LOGIC;
  signal \Regfile[2][7]_i_8_n_0\ : STD_LOGIC;
  signal \Regfile[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_0\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_1\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_2\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_3\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_4\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_5\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_6\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_19_n_7\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_0\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_1\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_2\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_3\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_4\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_5\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_6\ : STD_LOGIC;
  signal \Regfile_reg[0][1]_i_5_n_7\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_0\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_1\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_2\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_3\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_4\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_5\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_6\ : STD_LOGIC;
  signal \Regfile_reg[0][4]_i_10_n_7\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_0\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_1\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_2\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_3\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_4\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_5\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_6\ : STD_LOGIC;
  signal \Regfile_reg[0][7]_i_20_n_7\ : STD_LOGIC;
  signal \Regfile_reg[0]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[1]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[2]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[3]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[4]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[5]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[6]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Regfile_reg[7]__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Reset_IBUF : STD_LOGIC;
  signal Stack_Ptr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Stack_Ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[10]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[11]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[12]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[12]_i_3_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[12]_i_4_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[12]_i_5_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[12]_i_6_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[13]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[14]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_10_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_11_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_12_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_13_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_14_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_15_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_2_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_3_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_4_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_6_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_7_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_8_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[15]_i_9_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[4]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[4]_i_3_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[4]_i_4_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[4]_i_5_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[4]_i_6_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[4]_i_7_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[5]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[6]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[7]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[8]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[8]_i_3_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[8]_i_4_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[8]_i_5_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[8]_i_6_n_0\ : STD_LOGIC;
  signal \Stack_Ptr[9]_i_1_n_0\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \Stack_Ptr_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \Stack_Ptr_reg[15]_i_5_n_2\ : STD_LOGIC;
  signal \Stack_Ptr_reg[15]_i_5_n_3\ : STD_LOGIC;
  signal \Stack_Ptr_reg[15]_i_5_n_5\ : STD_LOGIC;
  signal \Stack_Ptr_reg[15]_i_5_n_6\ : STD_LOGIC;
  signal \Stack_Ptr_reg[15]_i_5_n_7\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \Stack_Ptr_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \Stack_Ptr_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal SubOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \SubOp[0]_i_1_n_0\ : STD_LOGIC;
  signal \SubOp[1]_i_1_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_10_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_11_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_12_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_13_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_14_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_15_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_16_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_17_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_18_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_19_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_1_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_2_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_3_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_5_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_6_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_7_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_8_n_0\ : STD_LOGIC;
  signal \SubOp[2]_i_9_n_0\ : STD_LOGIC;
  signal \SubOp_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \SubOp_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \SubOp_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \SubOp_p1[2]_i_2_n_0\ : STD_LOGIC;
  signal \SubOp_p1_reg_n_0_[0]\ : STD_LOGIC;
  signal \SubOp_p1_reg_n_0_[1]\ : STD_LOGIC;
  signal \SubOp_p1_reg_n_0_[2]\ : STD_LOGIC;
  signal \SubOp_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal Wait_for_FSM : STD_LOGIC;
  signal Wait_for_FSM_i_1_n_0 : STD_LOGIC;
  signal Wait_for_FSM_i_2_n_0 : STD_LOGIC;
  signal \Wr_Data[0]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[0]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data[0]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[0]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[0]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[0]_i_6_n_0\ : STD_LOGIC;
  signal \Wr_Data[1]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[1]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[1]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[1]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[2]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[2]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data[2]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[2]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[2]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[2]_i_6_n_0\ : STD_LOGIC;
  signal \Wr_Data[3]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[3]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[3]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[3]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[4]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[4]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data[4]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[4]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[4]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[5]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[5]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[5]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[5]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[6]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[6]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[6]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[6]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_10_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_11_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_12_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_13_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_1_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_3_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_4_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_5_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_6_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_7_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_8_n_0\ : STD_LOGIC;
  signal \Wr_Data[7]_i_9_n_0\ : STD_LOGIC;
  signal Wr_Data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Wr_Data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \Wr_Data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal Wr_Enable_OBUF : STD_LOGIC;
  signal Wr_Enable_i_1_n_0 : STD_LOGIC;
  signal data2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal multOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \NLW_Address_OBUF[15]_inst_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Flags_reg[1]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Flags_reg[1]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Flags_reg[1]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Flags_reg[1]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Flags_reg[1]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Flags_reg[1]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ISR_Addr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Mult_reg[14]_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Mult_reg[14]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Mult_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Mult_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Mult_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Mult_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Mult_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Program_Ctr_reg[15]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Program_Ctr_reg[15]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Program_Ctr_reg[15]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Program_Ctr_reg[15]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Stack_Ptr_reg[15]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Stack_Ptr_reg[15]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Address_OBUF[0]_inst_i_4\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \Address_OBUF[15]_inst_i_11\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \Address_OBUF[1]_inst_i_4\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \Address_OBUF[2]_inst_i_4\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \Address_OBUF[3]_inst_i_5\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \Address_OBUF[4]_inst_i_4\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \Address_OBUF[5]_inst_i_4\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \Address_OBUF[6]_inst_i_4\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \CPU_State[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \CPU_State[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CPU_State[0]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \CPU_State[1]_i_9\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \CPU_State[2]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \CPU_State[2]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \CPU_State[2]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \CPU_State[2]_i_6\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \CPU_State[2]_i_8\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \CPU_State[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \CPU_State[3]_i_4\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \CPU_State[3]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \CPU_State[3]_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \CPU_State[4]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \CPU_State[4]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \CPU_State[4]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CPU_State[5]_i_3\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \Flags[0]_i_20\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \Flags[0]_i_21\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \Flags[0]_i_22\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Flags[0]_i_23\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Flags[0]_i_26\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Flags[0]_i_27\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Flags[0]_i_28\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Flags[0]_i_29\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Flags[0]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Flags[0]_i_30\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \Flags[0]_i_31\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Flags[0]_i_32\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \Flags[0]_i_33\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Flags[0]_i_34\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Flags[0]_i_35\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Flags[0]_i_36\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Flags[0]_i_39\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \Flags[0]_i_42\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Flags[0]_i_47\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \Flags[0]_i_48\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Flags[0]_i_50\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Flags[0]_i_53\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Flags[0]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Flags[1]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Flags[1]_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Flags[1]_i_12\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \Flags[1]_i_16\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \Flags[1]_i_7\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \Flags[1]_i_8\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \Flags[2]_i_11\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Flags[2]_i_12\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Flags[2]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Flags[2]_i_7\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Flags[2]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Flags[7]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ISR_Addr[0]_i_11\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ISR_Addr[0]_i_9\ : label is "soft_lutpair29";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \ISR_Addr_reg[0]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ISR_Addr_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ISR_Addr_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ISR_Addr_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \Int_Mask[7]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of Int_Req_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \Mult[10]_i_10\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Mult[10]_i_11\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \Mult[10]_i_12\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Mult[10]_i_22\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Mult[10]_i_23\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \Mult[10]_i_24\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \Mult[10]_i_25\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \Mult[14]_i_10\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \Mult[14]_i_12\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \Mult[14]_i_13\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \Mult[14]_i_14\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \Mult[14]_i_15\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \Mult[14]_i_16\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \Mult[14]_i_17\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \Mult[14]_i_18\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \Mult[14]_i_19\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \Mult[15]_i_5\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Mult[15]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Mult[15]_i_7\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Mult[15]_i_8\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Mult[2]_i_12\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \Mult[2]_i_17\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \Mult[2]_i_18\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \Mult[2]_i_19\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \Mult[2]_i_20\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Mult[3]_i_10\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Mult[6]_i_16\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \Mult[6]_i_17\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Mult[6]_i_18\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \Mult[6]_i_19\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Opcode[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \Opcode[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \Opcode[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \Opcode[3]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \Opcode[4]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \Pending[0]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \Pending[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Pending[2]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Pending[2]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \Pending[4]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Pending[4]_i_4\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \Pending[4]_i_5\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \Pending[5]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Pending[5]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Pending[5]_i_5\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Prefetch[7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Program_Ctr[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Program_Ctr[10]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Program_Ctr[11]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Program_Ctr[11]_i_16\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Program_Ctr[14]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Program_Ctr[15]_i_12\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Program_Ctr[15]_i_22\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Program_Ctr[15]_i_26\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Program_Ctr[15]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of Rd_Enable_i_10 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of Rd_Enable_i_11 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of Rd_Enable_i_13 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of Rd_Enable_i_7 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of Rd_Enable_i_8 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of Rd_Enable_i_9 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Regfile[0][0]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Regfile[0][0]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Regfile[0][0]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Regfile[0][1]_i_10\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \Regfile[0][1]_i_16\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Regfile[0][1]_i_17\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Regfile[0][1]_i_18\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Regfile[0][1]_i_6\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \Regfile[0][2]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Regfile[0][2]_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Regfile[0][2]_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Regfile[0][3]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Regfile[0][3]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \Regfile[0][3]_i_5\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \Regfile[0][3]_i_7\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \Regfile[0][3]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Regfile[0][3]_i_9\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \Regfile[0][4]_i_11\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Regfile[0][4]_i_12\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \Regfile[0][4]_i_8\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_10\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_11\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_16\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_17\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_6\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_8\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Regfile[0][5]_i_9\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \Regfile[0][6]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Regfile[0][6]_i_8\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \Regfile[0][7]_i_16\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Regfile[0][7]_i_18\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \Regfile[0][7]_i_29\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Regfile[0][7]_i_30\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Regfile[0][7]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Regfile[1][0]_i_4\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \Regfile[1][1]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Regfile[1][2]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \Regfile[1][2]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Regfile[1][2]_i_8\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Regfile[1][3]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \Regfile[1][3]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Regfile[1][3]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Regfile[1][4]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \Regfile[1][4]_i_6\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Regfile[1][5]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \Regfile[1][5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Regfile[1][5]_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Regfile[1][5]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \Regfile[1][6]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \Regfile[1][6]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_11\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_15\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_17\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_18\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Regfile[1][7]_i_8\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Regfile[2][0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Regfile[2][2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \Regfile[2][3]_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \Regfile[2][5]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Regfile[2][6]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Regfile[2][7]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \Regfile[2][7]_i_7\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \Regfile[2][7]_i_8\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Stack_Ptr[0]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \Stack_Ptr[10]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \Stack_Ptr[11]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \Stack_Ptr[12]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \Stack_Ptr[13]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \Stack_Ptr[14]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \Stack_Ptr[15]_i_14\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Stack_Ptr[15]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \Stack_Ptr[15]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Stack_Ptr[15]_i_8\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \Stack_Ptr[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \Stack_Ptr[2]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \Stack_Ptr[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \Stack_Ptr[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \Stack_Ptr[5]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \Stack_Ptr[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \Stack_Ptr[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \Stack_Ptr[8]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \Stack_Ptr[9]_i_1\ : label is "soft_lutpair109";
  attribute METHODOLOGY_DRC_VIOS of \Stack_Ptr_reg[12]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Stack_Ptr_reg[15]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Stack_Ptr_reg[4]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Stack_Ptr_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \SubOp[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \SubOp[2]_i_10\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \SubOp[2]_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SubOp[2]_i_14\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \SubOp[2]_i_17\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \SubOp[2]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \SubOp[2]_i_6\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \SubOp_p1[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \SubOp_p1[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \SubOp_p1[2]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of Wait_for_FSM_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of Wait_for_FSM_i_2 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Wr_Data[0]_i_5\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \Wr_Data[0]_i_6\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \Wr_Data[2]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \Wr_Data[4]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Wr_Data[7]_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Wr_Data[7]_i_13\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \Wr_Data[7]_i_5\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Wr_Data[7]_i_8\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of Wr_Enable_i_1 : label is "soft_lutpair38";
begin
Ack_Q1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => Ack_Q,
      Q => Ack_Q1
    );
Ack_Q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(5),
      I2 => CPU_State(2),
      I3 => CPU_State(1),
      I4 => CPU_State(3),
      I5 => CPU_State(4),
      O => Ack_D
    );
Ack_Q_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset_IBUF,
      O => Ack_Q_i_2_n_0
    );
Ack_Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => Ack_D,
      Q => Ack_Q
    );
\Address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(0),
      O => Address(0)
    );
\Address_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[0]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[0]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[0]_inst_i_3_n_0\,
      O => Address_OBUF(0)
    );
\Address_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_4_n_7\,
      I1 => data4(0),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(0),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(0),
      O => \Address_OBUF[0]_inst_i_2_n_0\
    );
\Address_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[0]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(0),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[0]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[0]_inst_i_3_n_0\
    );
\Address_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[0]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[0]_inst_i_7_n_0\,
      O => data4(0)
    );
\Address_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(0),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[0]\,
      O => \Address_OBUF[0]_inst_i_5_n_0\
    );
\Address_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(0),
      I1 => \Regfile_reg[6]__0\(0),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(0),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(0),
      O => \Address_OBUF[0]_inst_i_6_n_0\
    );
\Address_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(0),
      I1 => \Regfile_reg[2]__0\(0),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(0),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(0),
      O => \Address_OBUF[0]_inst_i_7_n_0\
    );
\Address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(10),
      O => Address(10)
    );
\Address_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[10]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[10]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[10]_inst_i_3_n_0\,
      O => Address_OBUF(10)
    );
\Address_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_4_n_5\,
      I1 => \Address_OBUF[10]_inst_i_4_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(10),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(10),
      O => \Address_OBUF[10]_inst_i_2_n_0\
    );
\Address_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[10]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(10),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[10]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[10]_inst_i_3_n_0\
    );
\Address_OBUF[10]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[10]_inst_i_6_n_0\,
      I1 => \Address_OBUF[10]_inst_i_7_n_0\,
      O => \Address_OBUF[10]_inst_i_4_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[10]_inst_i_4_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[10]\,
      O => \Address_OBUF[10]_inst_i_5_n_0\
    );
\Address_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(2),
      I1 => \Regfile_reg[2]__0\(2),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(2),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(2),
      O => \Address_OBUF[10]_inst_i_6_n_0\
    );
\Address_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(2),
      I1 => \Regfile_reg[6]__0\(2),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(2),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(2),
      O => \Address_OBUF[10]_inst_i_7_n_0\
    );
\Address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(11),
      O => Address(11)
    );
\Address_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[11]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[11]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[11]_inst_i_3_n_0\,
      O => Address_OBUF(11)
    );
\Address_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[8]_inst_i_6_n_0\,
      I1 => \SubOp_p1_reg_n_0_[2]\,
      I2 => \Address_OBUF[8]_inst_i_7_n_0\,
      O => \Address_OBUF[11]_inst_i_10_n_0\
    );
\Address_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Address_OBUF[10]_inst_i_4_n_0\,
      I1 => \Address_OBUF[11]_inst_i_5_n_0\,
      O => \Address_OBUF[11]_inst_i_11_n_0\
    );
\Address_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Address_OBUF[9]_inst_i_4_n_0\,
      I1 => \Address_OBUF[10]_inst_i_4_n_0\,
      O => \Address_OBUF[11]_inst_i_12_n_0\
    );
\Address_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Address_OBUF[8]_inst_i_4_n_0\,
      I1 => \Address_OBUF[9]_inst_i_4_n_0\,
      O => \Address_OBUF[11]_inst_i_13_n_0\
    );
\Address_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data2(7),
      I1 => \Address_OBUF[8]_inst_i_4_n_0\,
      O => \Address_OBUF[11]_inst_i_14_n_0\
    );
\Address_OBUF[11]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(3),
      I1 => \Regfile_reg[2]__0\(3),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(3),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(3),
      O => \Address_OBUF[11]_inst_i_15_n_0\
    );
\Address_OBUF[11]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(3),
      I1 => \Regfile_reg[6]__0\(3),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(3),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(3),
      O => \Address_OBUF[11]_inst_i_16_n_0\
    );
\Address_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_4_n_4\,
      I1 => \Address_OBUF[11]_inst_i_5_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(11),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(11),
      O => \Address_OBUF[11]_inst_i_2_n_0\
    );
\Address_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_6_n_0\,
      I1 => Opcode(4),
      I2 => data2(11),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[11]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[11]_inst_i_3_n_0\
    );
\Address_OBUF[11]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_OBUF[7]_inst_i_4_n_0\,
      CO(3) => \Address_OBUF[11]_inst_i_4_n_0\,
      CO(2) => \Address_OBUF[11]_inst_i_4_n_1\,
      CO(1) => \Address_OBUF[11]_inst_i_4_n_2\,
      CO(0) => \Address_OBUF[11]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => data4(10 downto 8),
      DI(0) => \Address_OBUF[11]_inst_i_10_n_0\,
      O(3) => \Address_OBUF[11]_inst_i_4_n_4\,
      O(2) => \Address_OBUF[11]_inst_i_4_n_5\,
      O(1) => \Address_OBUF[11]_inst_i_4_n_6\,
      O(0) => \Address_OBUF[11]_inst_i_4_n_7\,
      S(3) => \Address_OBUF[11]_inst_i_11_n_0\,
      S(2) => \Address_OBUF[11]_inst_i_12_n_0\,
      S(1) => \Address_OBUF[11]_inst_i_13_n_0\,
      S(0) => \Address_OBUF[11]_inst_i_14_n_0\
    );
\Address_OBUF[11]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[11]_inst_i_15_n_0\,
      I1 => \Address_OBUF[11]_inst_i_16_n_0\,
      O => \Address_OBUF[11]_inst_i_5_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_5_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[11]\,
      O => \Address_OBUF[11]_inst_i_6_n_0\
    );
\Address_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_OBUF[10]_inst_i_4_n_0\,
      O => data4(10)
    );
\Address_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_OBUF[9]_inst_i_4_n_0\,
      O => data4(9)
    );
\Address_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_OBUF[8]_inst_i_4_n_0\,
      O => data4(8)
    );
\Address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(12),
      O => Address(12)
    );
\Address_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[12]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[12]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[12]_inst_i_3_n_0\,
      O => Address_OBUF(12)
    );
\Address_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[15]_inst_i_6_n_7\,
      I1 => \Address_OBUF[12]_inst_i_4_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(12),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(12),
      O => \Address_OBUF[12]_inst_i_2_n_0\
    );
\Address_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[12]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(12),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[12]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[12]_inst_i_3_n_0\
    );
\Address_OBUF[12]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[12]_inst_i_6_n_0\,
      I1 => \Address_OBUF[12]_inst_i_7_n_0\,
      O => \Address_OBUF[12]_inst_i_4_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[12]_inst_i_4_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[12]\,
      O => \Address_OBUF[12]_inst_i_5_n_0\
    );
\Address_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(4),
      I1 => \Regfile_reg[2]__0\(4),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(4),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(4),
      O => \Address_OBUF[12]_inst_i_6_n_0\
    );
\Address_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(4),
      I1 => \Regfile_reg[6]__0\(4),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(4),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(4),
      O => \Address_OBUF[12]_inst_i_7_n_0\
    );
\Address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(13),
      O => Address(13)
    );
\Address_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[13]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[13]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[13]_inst_i_3_n_0\,
      O => Address_OBUF(13)
    );
\Address_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[15]_inst_i_6_n_6\,
      I1 => \Address_OBUF[13]_inst_i_4_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(13),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(13),
      O => \Address_OBUF[13]_inst_i_2_n_0\
    );
\Address_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[13]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(13),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[13]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[13]_inst_i_3_n_0\
    );
\Address_OBUF[13]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[13]_inst_i_6_n_0\,
      I1 => \Address_OBUF[13]_inst_i_7_n_0\,
      O => \Address_OBUF[13]_inst_i_4_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[13]_inst_i_4_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[13]\,
      O => \Address_OBUF[13]_inst_i_5_n_0\
    );
\Address_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(5),
      I1 => \Regfile_reg[2]__0\(5),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(5),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(5),
      O => \Address_OBUF[13]_inst_i_6_n_0\
    );
\Address_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(5),
      I1 => \Regfile_reg[6]__0\(5),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(5),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(5),
      O => \Address_OBUF[13]_inst_i_7_n_0\
    );
\Address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(14),
      O => Address(14)
    );
\Address_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[14]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[14]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[14]_inst_i_3_n_0\,
      O => Address_OBUF(14)
    );
\Address_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[15]_inst_i_6_n_5\,
      I1 => \Address_OBUF[14]_inst_i_4_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(14),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(14),
      O => \Address_OBUF[14]_inst_i_2_n_0\
    );
\Address_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[14]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(14),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[14]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[14]_inst_i_3_n_0\
    );
\Address_OBUF[14]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[14]_inst_i_6_n_0\,
      I1 => \Address_OBUF[14]_inst_i_7_n_0\,
      O => \Address_OBUF[14]_inst_i_4_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[14]_inst_i_4_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[14]\,
      O => \Address_OBUF[14]_inst_i_5_n_0\
    );
\Address_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(6),
      I1 => \Regfile_reg[2]__0\(6),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(6),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Address_OBUF[14]_inst_i_6_n_0\
    );
\Address_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(6),
      I1 => \Regfile_reg[6]__0\(6),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(6),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(6),
      O => \Address_OBUF[14]_inst_i_7_n_0\
    );
\Address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(15),
      O => Address(15)
    );
\Address_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[15]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[15]_inst_i_3_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[15]_inst_i_5_n_0\,
      O => Address_OBUF(15)
    );
\Address_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[15]_inst_i_7_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[15]\,
      O => \Address_OBUF[15]_inst_i_10_n_0\
    );
\Address_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Opcode(3),
      I1 => Opcode(4),
      I2 => Opcode(2),
      O => \Address_OBUF[15]_inst_i_11_n_0\
    );
\Address_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_OBUF[13]_inst_i_4_n_0\,
      O => data4(13)
    );
\Address_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_OBUF[12]_inst_i_4_n_0\,
      O => data4(12)
    );
\Address_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_5_n_0\,
      O => data4(11)
    );
\Address_OBUF[15]_inst_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Address_OBUF[14]_inst_i_4_n_0\,
      I1 => \Address_OBUF[15]_inst_i_7_n_0\,
      O => \Address_OBUF[15]_inst_i_15_n_0\
    );
\Address_OBUF[15]_inst_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Address_OBUF[13]_inst_i_4_n_0\,
      I1 => \Address_OBUF[14]_inst_i_4_n_0\,
      O => \Address_OBUF[15]_inst_i_16_n_0\
    );
\Address_OBUF[15]_inst_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Address_OBUF[12]_inst_i_4_n_0\,
      I1 => \Address_OBUF[13]_inst_i_4_n_0\,
      O => \Address_OBUF[15]_inst_i_17_n_0\
    );
\Address_OBUF[15]_inst_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_5_n_0\,
      I1 => \Address_OBUF[12]_inst_i_4_n_0\,
      O => \Address_OBUF[15]_inst_i_18_n_0\
    );
\Address_OBUF[15]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(7),
      I1 => \Regfile_reg[2]__0\(7),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(7),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(7),
      O => \Address_OBUF[15]_inst_i_19_n_0\
    );
\Address_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7CCBBFFC5CCFF"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(3),
      I2 => CPU_State(2),
      I3 => CPU_State(5),
      I4 => CPU_State(4),
      I5 => CPU_State(0),
      O => \Address_OBUF[15]_inst_i_2_n_0\
    );
\Address_OBUF[15]_inst_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(7),
      I1 => \Regfile_reg[6]__0\(7),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(7),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(7),
      O => \Address_OBUF[15]_inst_i_20_n_0\
    );
\Address_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[15]_inst_i_6_n_4\,
      I1 => \Address_OBUF[15]_inst_i_7_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(15),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(15),
      O => \Address_OBUF[15]_inst_i_3_n_0\
    );
\Address_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFEFFEFFF"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(5),
      I2 => CPU_State(0),
      I3 => CPU_State(1),
      I4 => CPU_State(4),
      I5 => CPU_State(3),
      O => \Address_OBUF[15]_inst_i_4_n_0\
    );
\Address_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[15]_inst_i_10_n_0\,
      I1 => Opcode(4),
      I2 => data2(15),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[15]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[15]_inst_i_5_n_0\
    );
\Address_OBUF[15]_inst_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_OBUF[11]_inst_i_4_n_0\,
      CO(3) => \NLW_Address_OBUF[15]_inst_i_6_CO_UNCONNECTED\(3),
      CO(2) => \Address_OBUF[15]_inst_i_6_n_1\,
      CO(1) => \Address_OBUF[15]_inst_i_6_n_2\,
      CO(0) => \Address_OBUF[15]_inst_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data4(13 downto 11),
      O(3) => \Address_OBUF[15]_inst_i_6_n_4\,
      O(2) => \Address_OBUF[15]_inst_i_6_n_5\,
      O(1) => \Address_OBUF[15]_inst_i_6_n_6\,
      O(0) => \Address_OBUF[15]_inst_i_6_n_7\,
      S(3) => \Address_OBUF[15]_inst_i_15_n_0\,
      S(2) => \Address_OBUF[15]_inst_i_16_n_0\,
      S(1) => \Address_OBUF[15]_inst_i_17_n_0\,
      S(0) => \Address_OBUF[15]_inst_i_18_n_0\
    );
\Address_OBUF[15]_inst_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[15]_inst_i_19_n_0\,
      I1 => \Address_OBUF[15]_inst_i_20_n_0\,
      O => \Address_OBUF[15]_inst_i_7_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFFEFFEFF2333"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(5),
      I2 => CPU_State(0),
      I3 => CPU_State(1),
      I4 => CPU_State(4),
      I5 => CPU_State(3),
      O => \Address_OBUF[15]_inst_i_8_n_0\
    );
\Address_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A04000100F0A8"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(0),
      I2 => CPU_State(5),
      I3 => CPU_State(2),
      I4 => CPU_State(4),
      I5 => CPU_State(3),
      O => \Address_OBUF[15]_inst_i_9_n_0\
    );
\Address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(1),
      O => Address(1)
    );
\Address_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[1]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[1]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[1]_inst_i_3_n_0\,
      O => Address_OBUF(1)
    );
\Address_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_4_n_6\,
      I1 => data4(1),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(1),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(1),
      O => \Address_OBUF[1]_inst_i_2_n_0\
    );
\Address_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[1]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(1),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[1]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[1]_inst_i_3_n_0\
    );
\Address_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[1]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[1]_inst_i_7_n_0\,
      O => data4(1)
    );
\Address_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(1),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[1]\,
      O => \Address_OBUF[1]_inst_i_5_n_0\
    );
\Address_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(1),
      I1 => \Regfile_reg[6]__0\(1),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(1),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(1),
      O => \Address_OBUF[1]_inst_i_6_n_0\
    );
\Address_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(1),
      I1 => \Regfile_reg[2]__0\(1),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(1),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(1),
      O => \Address_OBUF[1]_inst_i_7_n_0\
    );
\Address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(2),
      O => Address(2)
    );
\Address_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[2]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[2]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[2]_inst_i_3_n_0\,
      O => Address_OBUF(2)
    );
\Address_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_4_n_5\,
      I1 => data4(2),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(2),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(2),
      O => \Address_OBUF[2]_inst_i_2_n_0\
    );
\Address_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[2]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(2),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[2]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[2]_inst_i_3_n_0\
    );
\Address_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[2]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[2]_inst_i_7_n_0\,
      O => data4(2)
    );
\Address_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(2),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[2]\,
      O => \Address_OBUF[2]_inst_i_5_n_0\
    );
\Address_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(2),
      I1 => \Regfile_reg[6]__0\(2),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(2),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(2),
      O => \Address_OBUF[2]_inst_i_6_n_0\
    );
\Address_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(2),
      I1 => \Regfile_reg[2]__0\(2),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(2),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(2),
      O => \Address_OBUF[2]_inst_i_7_n_0\
    );
\Address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(3),
      O => Address(3)
    );
\Address_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[3]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[3]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[3]_inst_i_3_n_0\,
      O => Address_OBUF(3)
    );
\Address_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[0]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[0]_inst_i_7_n_0\,
      O => \Address_OBUF[3]_inst_i_10_n_0\
    );
\Address_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(3),
      I1 => data2(3),
      O => \Address_OBUF[3]_inst_i_11_n_0\
    );
\Address_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(2),
      I1 => data2(2),
      O => \Address_OBUF[3]_inst_i_12_n_0\
    );
\Address_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(1),
      I1 => data2(1),
      O => \Address_OBUF[3]_inst_i_13_n_0\
    );
\Address_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(0),
      I1 => data2(0),
      O => \Address_OBUF[3]_inst_i_14_n_0\
    );
\Address_OBUF[3]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(3),
      I1 => \Regfile_reg[6]__0\(3),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(3),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(3),
      O => \Address_OBUF[3]_inst_i_15_n_0\
    );
\Address_OBUF[3]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(3),
      I1 => \Regfile_reg[2]__0\(3),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(3),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(3),
      O => \Address_OBUF[3]_inst_i_16_n_0\
    );
\Address_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_4_n_4\,
      I1 => data4(3),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(3),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(3),
      O => \Address_OBUF[3]_inst_i_2_n_0\
    );
\Address_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_6_n_0\,
      I1 => Opcode(4),
      I2 => data2(3),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[3]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[3]_inst_i_3_n_0\
    );
\Address_OBUF[3]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Address_OBUF[3]_inst_i_4_n_0\,
      CO(2) => \Address_OBUF[3]_inst_i_4_n_1\,
      CO(1) => \Address_OBUF[3]_inst_i_4_n_2\,
      CO(0) => \Address_OBUF[3]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \Address_OBUF[3]_inst_i_7_n_0\,
      DI(2) => \Address_OBUF[3]_inst_i_8_n_0\,
      DI(1) => \Address_OBUF[3]_inst_i_9_n_0\,
      DI(0) => \Address_OBUF[3]_inst_i_10_n_0\,
      O(3) => \Address_OBUF[3]_inst_i_4_n_4\,
      O(2) => \Address_OBUF[3]_inst_i_4_n_5\,
      O(1) => \Address_OBUF[3]_inst_i_4_n_6\,
      O(0) => \Address_OBUF[3]_inst_i_4_n_7\,
      S(3) => \Address_OBUF[3]_inst_i_11_n_0\,
      S(2) => \Address_OBUF[3]_inst_i_12_n_0\,
      S(1) => \Address_OBUF[3]_inst_i_13_n_0\,
      S(0) => \Address_OBUF[3]_inst_i_14_n_0\
    );
\Address_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_15_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[3]_inst_i_16_n_0\,
      O => data4(3)
    );
\Address_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(3),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[3]\,
      O => \Address_OBUF[3]_inst_i_6_n_0\
    );
\Address_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[3]_inst_i_15_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[3]_inst_i_16_n_0\,
      O => \Address_OBUF[3]_inst_i_7_n_0\
    );
\Address_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[2]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[2]_inst_i_7_n_0\,
      O => \Address_OBUF[3]_inst_i_8_n_0\
    );
\Address_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[1]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[1]_inst_i_7_n_0\,
      O => \Address_OBUF[3]_inst_i_9_n_0\
    );
\Address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(4),
      O => Address(4)
    );
\Address_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[4]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[4]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[4]_inst_i_3_n_0\,
      O => Address_OBUF(4)
    );
\Address_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[7]_inst_i_4_n_7\,
      I1 => data4(4),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(4),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(4),
      O => \Address_OBUF[4]_inst_i_2_n_0\
    );
\Address_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[4]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(4),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[4]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[4]_inst_i_3_n_0\
    );
\Address_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[4]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[4]_inst_i_7_n_0\,
      O => data4(4)
    );
\Address_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(4),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[4]\,
      O => \Address_OBUF[4]_inst_i_5_n_0\
    );
\Address_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(4),
      I1 => \Regfile_reg[6]__0\(4),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(4),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(4),
      O => \Address_OBUF[4]_inst_i_6_n_0\
    );
\Address_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(4),
      I1 => \Regfile_reg[2]__0\(4),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(4),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(4),
      O => \Address_OBUF[4]_inst_i_7_n_0\
    );
\Address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(5),
      O => Address(5)
    );
\Address_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[5]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[5]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[5]_inst_i_3_n_0\,
      O => Address_OBUF(5)
    );
\Address_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[7]_inst_i_4_n_6\,
      I1 => data4(5),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(5),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(5),
      O => \Address_OBUF[5]_inst_i_2_n_0\
    );
\Address_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[5]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(5),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[5]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[5]_inst_i_3_n_0\
    );
\Address_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[5]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[5]_inst_i_7_n_0\,
      O => data4(5)
    );
\Address_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(5),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[5]\,
      O => \Address_OBUF[5]_inst_i_5_n_0\
    );
\Address_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(5),
      I1 => \Regfile_reg[6]__0\(5),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(5),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(5),
      O => \Address_OBUF[5]_inst_i_6_n_0\
    );
\Address_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(5),
      I1 => \Regfile_reg[2]__0\(5),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(5),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(5),
      O => \Address_OBUF[5]_inst_i_7_n_0\
    );
\Address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(6),
      O => Address(6)
    );
\Address_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[6]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[6]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[6]_inst_i_3_n_0\,
      O => Address_OBUF(6)
    );
\Address_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[7]_inst_i_4_n_5\,
      I1 => data4(6),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(6),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(6),
      O => \Address_OBUF[6]_inst_i_2_n_0\
    );
\Address_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[6]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(6),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[6]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[6]_inst_i_3_n_0\
    );
\Address_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[6]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[6]_inst_i_7_n_0\,
      O => data4(6)
    );
\Address_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(6),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[6]\,
      O => \Address_OBUF[6]_inst_i_5_n_0\
    );
\Address_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(6),
      I1 => \Regfile_reg[6]__0\(6),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(6),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(6),
      O => \Address_OBUF[6]_inst_i_6_n_0\
    );
\Address_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(6),
      I1 => \Regfile_reg[2]__0\(6),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(6),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(6),
      O => \Address_OBUF[6]_inst_i_7_n_0\
    );
\Address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(7),
      O => Address(7)
    );
\Address_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[7]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[7]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[7]_inst_i_3_n_0\,
      O => Address_OBUF(7)
    );
\Address_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data2(7),
      I1 => data4(7),
      O => \Address_OBUF[7]_inst_i_10_n_0\
    );
\Address_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(6),
      I1 => data2(6),
      O => \Address_OBUF[7]_inst_i_11_n_0\
    );
\Address_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(5),
      I1 => data2(5),
      O => \Address_OBUF[7]_inst_i_12_n_0\
    );
\Address_OBUF[7]_inst_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(4),
      I1 => data2(4),
      O => \Address_OBUF[7]_inst_i_13_n_0\
    );
\Address_OBUF[7]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(7),
      I1 => \Regfile_reg[2]__0\(7),
      I2 => SubOp(1),
      I3 => \Regfile_reg[1]__0\(7),
      I4 => SubOp(0),
      I5 => \Regfile_reg[0]__0\(7),
      O => \Address_OBUF[7]_inst_i_14_n_0\
    );
\Address_OBUF[7]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(7),
      I1 => \Regfile_reg[6]__0\(7),
      I2 => SubOp(1),
      I3 => \Regfile_reg[5]__0\(7),
      I4 => SubOp(0),
      I5 => \Regfile_reg[4]__0\(7),
      O => \Address_OBUF[7]_inst_i_15_n_0\
    );
\Address_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Address_OBUF[7]_inst_i_4_n_4\,
      I1 => data4(7),
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(7),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(7),
      O => \Address_OBUF[7]_inst_i_2_n_0\
    );
\Address_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[7]_inst_i_6_n_0\,
      I1 => Opcode(4),
      I2 => data2(7),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[7]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[7]_inst_i_3_n_0\
    );
\Address_OBUF[7]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_OBUF[3]_inst_i_4_n_0\,
      CO(3) => \Address_OBUF[7]_inst_i_4_n_0\,
      CO(2) => \Address_OBUF[7]_inst_i_4_n_1\,
      CO(1) => \Address_OBUF[7]_inst_i_4_n_2\,
      CO(0) => \Address_OBUF[7]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3) => data2(7),
      DI(2) => \Address_OBUF[7]_inst_i_7_n_0\,
      DI(1) => \Address_OBUF[7]_inst_i_8_n_0\,
      DI(0) => \Address_OBUF[7]_inst_i_9_n_0\,
      O(3) => \Address_OBUF[7]_inst_i_4_n_4\,
      O(2) => \Address_OBUF[7]_inst_i_4_n_5\,
      O(1) => \Address_OBUF[7]_inst_i_4_n_6\,
      O(0) => \Address_OBUF[7]_inst_i_4_n_7\,
      S(3) => \Address_OBUF[7]_inst_i_10_n_0\,
      S(2) => \Address_OBUF[7]_inst_i_11_n_0\,
      S(1) => \Address_OBUF[7]_inst_i_12_n_0\,
      S(0) => \Address_OBUF[7]_inst_i_13_n_0\
    );
\Address_OBUF[7]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[7]_inst_i_14_n_0\,
      I1 => \Address_OBUF[7]_inst_i_15_n_0\,
      O => data4(7),
      S => SubOp(2)
    );
\Address_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFFDFFFFFFF"
    )
        port map (
      I0 => data4(7),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[7]\,
      O => \Address_OBUF[7]_inst_i_6_n_0\
    );
\Address_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[6]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[6]_inst_i_7_n_0\,
      O => \Address_OBUF[7]_inst_i_7_n_0\
    );
\Address_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[5]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[5]_inst_i_7_n_0\,
      O => \Address_OBUF[7]_inst_i_8_n_0\
    );
\Address_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[4]_inst_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Address_OBUF[4]_inst_i_7_n_0\,
      O => \Address_OBUF[7]_inst_i_9_n_0\
    );
\Address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(8),
      O => Address(8)
    );
\Address_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[8]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[8]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[8]_inst_i_3_n_0\,
      O => Address_OBUF(8)
    );
\Address_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_4_n_7\,
      I1 => \Address_OBUF[8]_inst_i_4_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(8),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(8),
      O => \Address_OBUF[8]_inst_i_2_n_0\
    );
\Address_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[8]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(8),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[8]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[8]_inst_i_3_n_0\
    );
\Address_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Address_OBUF[8]_inst_i_6_n_0\,
      I1 => \SubOp_p1_reg_n_0_[2]\,
      I2 => \Address_OBUF[8]_inst_i_7_n_0\,
      O => \Address_OBUF[8]_inst_i_4_n_0\
    );
\Address_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[8]_inst_i_4_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[8]\,
      O => \Address_OBUF[8]_inst_i_5_n_0\
    );
\Address_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(0),
      I1 => \Regfile_reg[6]__0\(0),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(0),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(0),
      O => \Address_OBUF[8]_inst_i_6_n_0\
    );
\Address_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(0),
      I1 => \Regfile_reg[2]__0\(0),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(0),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(0),
      O => \Address_OBUF[8]_inst_i_7_n_0\
    );
\Address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Address_OBUF(9),
      O => Address(9)
    );
\Address_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[9]\,
      I1 => \Address_OBUF[15]_inst_i_2_n_0\,
      I2 => \Address_OBUF[9]_inst_i_2_n_0\,
      I3 => \Address_OBUF[15]_inst_i_4_n_0\,
      I4 => \Address_OBUF[9]_inst_i_3_n_0\,
      O => Address_OBUF(9)
    );
\Address_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \Address_OBUF[11]_inst_i_4_n_6\,
      I1 => \Address_OBUF[9]_inst_i_4_n_0\,
      I2 => \Address_OBUF[15]_inst_i_8_n_0\,
      I3 => Stack_Ptr(9),
      I4 => \Address_OBUF[15]_inst_i_9_n_0\,
      I5 => ISR_Addr_reg(9),
      O => \Address_OBUF[9]_inst_i_2_n_0\
    );
\Address_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F044F0FFF044F0"
    )
        port map (
      I0 => \Address_OBUF[9]_inst_i_5_n_0\,
      I1 => Opcode(4),
      I2 => data2(9),
      I3 => \Address_OBUF[15]_inst_i_2_n_0\,
      I4 => \Program_Ctr_reg_n_0_[9]\,
      I5 => \Address_OBUF[15]_inst_i_11_n_0\,
      O => \Address_OBUF[9]_inst_i_3_n_0\
    );
\Address_OBUF[9]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Address_OBUF[9]_inst_i_6_n_0\,
      I1 => \Address_OBUF[9]_inst_i_7_n_0\,
      O => \Address_OBUF[9]_inst_i_4_n_0\,
      S => \SubOp_p1_reg_n_0_[2]\
    );
\Address_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FFFFFFEFFFFFFF"
    )
        port map (
      I0 => \Address_OBUF[9]_inst_i_4_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => \Program_Ctr_reg_n_0_[9]\,
      O => \Address_OBUF[9]_inst_i_5_n_0\
    );
\Address_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(1),
      I1 => \Regfile_reg[2]__0\(1),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[1]__0\(1),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[0]__0\(1),
      O => \Address_OBUF[9]_inst_i_6_n_0\
    );
\Address_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(1),
      I1 => \Regfile_reg[6]__0\(1),
      I2 => \SubOp_p1_reg_n_0_[1]\,
      I3 => \Regfile_reg[5]__0\(1),
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile_reg[4]__0\(1),
      O => \Address_OBUF[9]_inst_i_7_n_0\
    );
\CPU_State[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444445445555"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \CPU_State[0]_i_2_n_0\,
      I2 => CPU_State(2),
      I3 => CPU_State(1),
      I4 => \CPU_State[0]_i_3_n_0\,
      I5 => \CPU_State[0]_i_4_n_0\,
      O => \CPU_State[0]_i_1_n_0\
    );
\CPU_State[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D55155C5"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(4),
      I2 => CPU_State(2),
      I3 => CPU_State(1),
      I4 => CPU_State(3),
      O => \CPU_State[0]_i_2_n_0\
    );
\CPU_State[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFBF"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(2),
      I2 => \CPU_State[1]_i_6_n_0\,
      I3 => CPU_State(0),
      I4 => Flags(0),
      O => \CPU_State[0]_i_3_n_0\
    );
\CPU_State[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF1"
    )
        port map (
      I0 => \CPU_State[0]_i_5_n_0\,
      I1 => CPU_State(2),
      I2 => CPU_State(3),
      I3 => CPU_State(4),
      I4 => CPU_State(5),
      O => \CPU_State[0]_i_4_n_0\
    );
\CPU_State[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B37733FBF37733FB"
    )
        port map (
      I0 => Opcode(3),
      I1 => Opcode(4),
      I2 => Opcode(0),
      I3 => Opcode(1),
      I4 => Opcode(2),
      I5 => \Pending[4]_i_4_n_0\,
      O => \CPU_State[0]_i_5_n_0\
    );
\CPU_State[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \CPU_State[1]_i_2_n_0\,
      I2 => \CPU_State[1]_i_3_n_0\,
      I3 => \CPU_State[1]_i_4_n_0\,
      O => \CPU_State[1]_i_1_n_0\
    );
\CPU_State[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Flags(3),
      I1 => Flags(2),
      I2 => SubOp(1),
      I3 => R,
      I4 => SubOp(0),
      I5 => Flags(0),
      O => \CPU_State[1]_i_10_n_0\
    );
\CPU_State[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Flags(7),
      I1 => Flags(6),
      I2 => SubOp(1),
      I3 => Flags(5),
      I4 => SubOp(0),
      I5 => Flags(4),
      O => \CPU_State[1]_i_11_n_0\
    );
\CPU_State[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8845664488006644"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(4),
      I2 => CPU_State(5),
      I3 => CPU_State(3),
      I4 => CPU_State(1),
      I5 => \CPU_State[1]_i_5_n_0\,
      O => \CPU_State[1]_i_2_n_0\
    );
\CPU_State[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF07FF07FF"
    )
        port map (
      I0 => \CPU_State[1]_i_6_n_0\,
      I1 => CPU_State(2),
      I2 => CPU_State(1),
      I3 => \CPU_State[1]_i_7_n_0\,
      I4 => CPU_State(3),
      I5 => CPU_State(5),
      O => \CPU_State[1]_i_3_n_0\
    );
\CPU_State[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8220222A8000202"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(1),
      I2 => CPU_State(3),
      I3 => CPU_State(4),
      I4 => CPU_State(2),
      I5 => \CPU_State[1]_i_8_n_0\,
      O => \CPU_State[1]_i_4_n_0\
    );
\CPU_State[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FCF0FFFFF4F0F5"
    )
        port map (
      I0 => Opcode(2),
      I1 => \CPU_State[1]_i_9_n_0\,
      I2 => \CPU_State[3]_i_8_n_0\,
      I3 => Opcode(3),
      I4 => Opcode(1),
      I5 => Opcode(0),
      O => \CPU_State[1]_i_5_n_0\
    );
\CPU_State[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Opcode(0),
      I1 => \CPU_State[1]_i_10_n_0\,
      I2 => SubOp(2),
      I3 => \CPU_State[1]_i_11_n_0\,
      O => \CPU_State[1]_i_6_n_0\
    );
\CPU_State[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(0),
      O => \CPU_State[1]_i_7_n_0\
    );
\CPU_State[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404FFFFFFFFFF00"
    )
        port map (
      I0 => SubOp(2),
      I1 => SubOp(1),
      I2 => SubOp(0),
      I3 => Flags(0),
      I4 => CPU_State(3),
      I5 => CPU_State(5),
      O => \CPU_State[1]_i_8_n_0\
    );
\CPU_State[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A88A"
    )
        port map (
      I0 => Opcode(2),
      I1 => SubOp(2),
      I2 => SubOp(1),
      I3 => SubOp(0),
      O => \CPU_State[1]_i_9_n_0\
    );
\CPU_State[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545444444444"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \CPU_State[2]_i_2_n_0\,
      I2 => \CPU_State[2]_i_3_n_0\,
      I3 => \CPU_State[2]_i_4_n_0\,
      I4 => \CPU_State[2]_i_5_n_0\,
      I5 => CPU_State(0),
      O => \CPU_State[2]_i_1_n_0\
    );
\CPU_State[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4040000"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(1),
      I2 => CPU_State(4),
      I3 => CPU_State(3),
      I4 => CPU_State(2),
      O => \CPU_State[2]_i_2_n_0\
    );
\CPU_State[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055005555005504"
    )
        port map (
      I0 => \CPU_State[2]_i_6_n_0\,
      I1 => \CPU_State[2]_i_7_n_0\,
      I2 => \CPU_State[2]_i_8_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(4),
      I5 => CPU_State(5),
      O => \CPU_State[2]_i_3_n_0\
    );
\CPU_State[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(5),
      O => \CPU_State[2]_i_4_n_0\
    );
\CPU_State[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(1),
      O => \CPU_State[2]_i_5_n_0\
    );
\CPU_State[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(1),
      O => \CPU_State[2]_i_6_n_0\
    );
\CPU_State[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F50000FF030000"
    )
        port map (
      I0 => Opcode(0),
      I1 => \Pending[4]_i_5_n_0\,
      I2 => Opcode(1),
      I3 => \CPU_State[2]_i_9_n_0\,
      I4 => Opcode(4),
      I5 => Opcode(3),
      O => \CPU_State[2]_i_7_n_0\
    );
\CPU_State[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Opcode(2),
      I1 => Opcode(1),
      O => \CPU_State[2]_i_8_n_0\
    );
\CPU_State[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1600FF0000FFFFFF"
    )
        port map (
      I0 => SubOp(1),
      I1 => SubOp(0),
      I2 => SubOp(2),
      I3 => Opcode(1),
      I4 => Opcode(2),
      I5 => Opcode(0),
      O => \CPU_State[2]_i_9_n_0\
    );
\CPU_State[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4544"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \CPU_State[3]_i_2_n_0\,
      I2 => \CPU_State[3]_i_3_n_0\,
      I3 => CPU_State(1),
      O => \CPU_State[3]_i_1_n_0\
    );
\CPU_State[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00A0FFAA00A08A"
    )
        port map (
      I0 => \CPU_State[3]_i_4_n_0\,
      I1 => \Pending[2]_i_3_n_0\,
      I2 => CPU_State(0),
      I3 => CPU_State(2),
      I4 => CPU_State(4),
      I5 => \CPU_State[3]_i_5_n_0\,
      O => \CPU_State[3]_i_2_n_0\
    );
\CPU_State[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CBB3CBB3CFF3FFF"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(2),
      I2 => CPU_State(5),
      I3 => CPU_State(0),
      I4 => \CPU_State[3]_i_6_n_0\,
      I5 => CPU_State(3),
      O => \CPU_State[3]_i_3_n_0\
    );
\CPU_State[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(1),
      O => \CPU_State[3]_i_4_n_0\
    );
\CPU_State[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(5),
      O => \CPU_State[3]_i_5_n_0\
    );
\CPU_State[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C4C7C4F7"
    )
        port map (
      I0 => \CPU_State[3]_i_7_n_0\,
      I1 => Opcode(2),
      I2 => Opcode(3),
      I3 => Opcode(1),
      I4 => Opcode(0),
      I5 => \CPU_State[3]_i_8_n_0\,
      O => \CPU_State[3]_i_6_n_0\
    );
\CPU_State[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ADADADAD0DADADAD"
    )
        port map (
      I0 => Opcode(0),
      I1 => \Pending[4]_i_5_n_0\,
      I2 => Opcode(1),
      I3 => SubOp(0),
      I4 => SubOp(1),
      I5 => SubOp(2),
      O => \CPU_State[3]_i_7_n_0\
    );
\CPU_State[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_State(4),
      I1 => Opcode(4),
      O => \CPU_State[3]_i_8_n_0\
    );
\CPU_State[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000055555555"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \CPU_State[4]_i_2_n_0\,
      I2 => CPU_State(1),
      I3 => CPU_State(5),
      I4 => CPU_State(0),
      I5 => \CPU_State[4]_i_3_n_0\,
      O => \CPU_State[4]_i_1_n_0\
    );
\CPU_State[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F008"
    )
        port map (
      I0 => Opcode(4),
      I1 => \CPU_State[4]_i_4_n_0\,
      I2 => CPU_State(3),
      I3 => CPU_State(2),
      I4 => CPU_State(4),
      O => \CPU_State[4]_i_2_n_0\
    );
\CPU_State[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF3FDF"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(3),
      I2 => CPU_State(4),
      I3 => CPU_State(2),
      I4 => CPU_State(1),
      O => \CPU_State[4]_i_3_n_0\
    );
\CPU_State[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0034FF0F"
    )
        port map (
      I0 => \Pending[4]_i_5_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(2),
      O => \CPU_State[4]_i_4_n_0\
    );
\CPU_State[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(2),
      I2 => CPU_State(4),
      I3 => CPU_State(5),
      O => \CPU_State[5]_i_1_n_0\
    );
\CPU_State[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFEEEA"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => CPU_State(1),
      I2 => \CPU_State[5]_i_3_n_0\,
      I3 => \CPU_State[5]_i_4_n_0\,
      I4 => \CPU_State[5]_i_5_n_0\,
      I5 => CPU_State(4),
      O => CPU_Next_State(5)
    );
\CPU_State[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_State(5),
      I1 => CPU_State(2),
      O => \CPU_State[5]_i_3_n_0\
    );
\CPU_State[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000002020200"
    )
        port map (
      I0 => \CPU_State[5]_i_6_n_0\,
      I1 => CPU_State(2),
      I2 => CPU_State(3),
      I3 => SubOp(0),
      I4 => SubOp(1),
      I5 => SubOp(2),
      O => \CPU_State[5]_i_4_n_0\
    );
\CPU_State[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44550000FF0F0000"
    )
        port map (
      I0 => CPU_State(1),
      I1 => \Pending[2]_i_3_n_0\,
      I2 => CPU_State(2),
      I3 => CPU_State(0),
      I4 => CPU_State(5),
      I5 => CPU_State(3),
      O => \CPU_State[5]_i_5_n_0\
    );
\CPU_State[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => Opcode(0),
      I1 => Opcode(1),
      I2 => Opcode(2),
      I3 => Opcode(3),
      I4 => CPU_State(0),
      I5 => Opcode(4),
      O => \CPU_State[5]_i_6_n_0\
    );
\CPU_State_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \CPU_State[5]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \CPU_State[0]_i_1_n_0\,
      Q => CPU_State(0)
    );
\CPU_State_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \CPU_State[5]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \CPU_State[1]_i_1_n_0\,
      Q => CPU_State(1)
    );
\CPU_State_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \CPU_State[5]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \CPU_State[2]_i_1_n_0\,
      Q => CPU_State(2)
    );
\CPU_State_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \CPU_State[5]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \CPU_State[3]_i_1_n_0\,
      Q => CPU_State(3)
    );
\CPU_State_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \CPU_State[5]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \CPU_State[4]_i_1_n_0\,
      Q => CPU_State(4)
    );
\CPU_State_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \CPU_State[5]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => CPU_Next_State(5),
      Q => CPU_State(5)
    );
Clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clock_IBUF,
      O => Clock_IBUF_BUFG
    );
Clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clock,
      O => Clock_IBUF
    );
\Flags[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFFFFFBAA0000"
    )
        port map (
      I0 => \Flags[0]_i_2_n_0\,
      I1 => \Flags[0]_i_3_n_0\,
      I2 => \Flags[0]_i_4_n_0\,
      I3 => \Flags[0]_i_5_n_0\,
      I4 => \Flags[0]_i_6_n_0\,
      I5 => Flags(0),
      O => \Flags[0]_i_1_n_0\
    );
\Flags[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => \Flags[0]_i_25_n_0\,
      I1 => \Flags[0]_i_26_n_0\,
      I2 => \Flags[0]_i_27_n_0\,
      I3 => \Mult[6]_i_19_n_0\,
      I4 => \Regfile_reg[0]__0\(3),
      I5 => \Regfile[0][4]_i_7_n_0\,
      O => \Flags[0]_i_10_n_0\
    );
\Flags[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Flags[0]_i_28_n_0\,
      I1 => \Flags[0]_i_29_n_0\,
      I2 => \Flags[0]_i_30_n_0\,
      I3 => \Flags[0]_i_31_n_0\,
      I4 => \Flags[0]_i_32_n_0\,
      I5 => \Flags[0]_i_33_n_0\,
      O => \Flags[0]_i_11_n_0\
    );
\Flags[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \Flags[0]_i_34_n_0\,
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => R,
      I4 => \Regfile[1][7]_i_5_n_0\,
      I5 => \Flags[0]_i_35_n_0\,
      O => \Flags[0]_i_12_n_0\
    );
\Flags[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000200000000"
    )
        port map (
      I0 => \Flags[0]_i_36_n_0\,
      I1 => \Regfile_reg[0][4]_i_10_n_5\,
      I2 => \Flags[0]_i_37_n_0\,
      I3 => \Regfile_reg[0][4]_i_10_n_6\,
      I4 => \Flags[0]_i_38_n_0\,
      I5 => \Flags[0]_i_39_n_0\,
      O => \Flags[0]_i_13_n_0\
    );
\Flags[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000CDDDD000C"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Flags[0]_i_40_n_0\,
      I3 => \Regfile[0][7]_i_8_n_0\,
      I4 => \Flags[0]_i_41_n_0\,
      I5 => \Flags[0]_i_42_n_0\,
      O => \Flags[0]_i_14_n_0\
    );
\Flags[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30FFBAFF3FFFBAFF"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Flags[0]_i_43_n_0\,
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \Regfile[0][1]_i_16_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      I5 => \Flags_reg[0]_i_44_n_0\,
      O => \Flags[0]_i_15_n_0\
    );
\Flags[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAE"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Flags[0]_i_34_n_0\,
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \R__0\(8),
      I4 => \Mult[14]_i_11_n_0\,
      I5 => \Regfile[0][7]_i_30_n_0\,
      O => \Flags[0]_i_16_n_0\
    );
\Flags[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F110000FFFFFFFF"
    )
        port map (
      I0 => \Flags[0]_i_45_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Flags[0]_i_46_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Flags[0]_i_17_n_0\
    );
\Flags[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \Flags[0]_i_47_n_0\,
      I1 => \Regfile_reg[0][1]_i_19_n_4\,
      I2 => \Regfile_reg[0][1]_i_19_n_5\,
      I3 => \Regfile_reg[0][1]_i_19_n_6\,
      I4 => \Regfile_reg[0][1]_i_19_n_7\,
      I5 => \Flags[7]_i_2_n_0\,
      O => \Flags[0]_i_18_n_0\
    );
\Flags[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA02AA02AAAAAA"
    )
        port map (
      I0 => \Regfile[0][7]_i_8_n_0\,
      I1 => \Regfile[0][7]_i_4_n_0\,
      I2 => \Flags[0]_i_48_n_0\,
      I3 => \Regfile[1][7]_i_11_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Flags[7]_i_2_n_0\,
      O => \Flags[0]_i_19_n_0\
    );
\Flags[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008AAAAAA08AA"
    )
        port map (
      I0 => \Flags[0]_i_7_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[0]_i_8_n_0\,
      I3 => \Regfile[1][0]_i_2_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      I5 => \Flags[0]_i_9_n_0\,
      O => \Flags[0]_i_2_n_0\
    );
\Flags[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile_reg[0]__0\(4),
      O => \Flags[0]_i_20_n_0\
    );
\Flags[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(7),
      I1 => \Mult[15]_i_3_n_0\,
      O => \Flags[0]_i_21_n_0\
    );
\Flags[0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \R__0\(7),
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \R__0\(8),
      I3 => \Regfile_reg[0]__0\(0),
      O => \Flags[0]_i_22_n_0\
    );
\Flags[0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Regfile_reg[0]__0\(3),
      I2 => \Regfile[0][1]_i_9_n_0\,
      I3 => \Regfile_reg[0]__0\(2),
      O => \Flags[0]_i_23_n_0\
    );
\Flags[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFFFFF"
    )
        port map (
      I0 => \Regfile[0][7]_i_8_n_0\,
      I1 => \Flags[7]_i_3_n_0\,
      I2 => \Regfile[2][6]_i_2_n_0\,
      I3 => \Regfile[2][1]_i_2_n_0\,
      I4 => \Regfile[0][5]_i_4_n_0\,
      I5 => \Regfile[2][4]_i_2_n_0\,
      O => \Flags[0]_i_24_n_0\
    );
\Flags[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000070707"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      I2 => \Flags[0]_i_49_n_0\,
      I3 => \Regfile[1][4]_i_4_n_0\,
      I4 => \Regfile_reg[0]__0\(5),
      I5 => \Flags[0]_i_50_n_0\,
      O => \Flags[0]_i_25_n_0\
    );
\Flags[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Mult[2]_i_15_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Mult[2]_i_16_n_0\,
      O => \Flags[0]_i_26_n_0\
    );
\Flags[0]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \R__0\(8),
      O => \Flags[0]_i_27_n_0\
    );
\Flags[0]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Regfile[0][4]_i_7_n_0\,
      O => \Flags[0]_i_28_n_0\
    );
\Flags[0]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \R__0\(7),
      O => \Flags[0]_i_29_n_0\
    );
\Flags[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFEF"
    )
        port map (
      I0 => \Regfile[0][5]_i_5_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Flags[1]_i_8_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Flags[0]_i_10_n_0\,
      O => \Flags[0]_i_3_n_0\
    );
\Flags[0]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile_reg[0]__0\(6),
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile_reg[0]__0\(4),
      O => \Flags[0]_i_30_n_0\
    );
\Flags[0]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \Regfile[1][7]_i_6_n_0\,
      I1 => \R__0\(8),
      I2 => \Regfile_reg[0]__0\(0),
      O => \Flags[0]_i_31_n_0\
    );
\Flags[0]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Regfile[0][1]_i_9_n_0\,
      I3 => \Regfile_reg[0]__0\(2),
      O => \Flags[0]_i_32_n_0\
    );
\Flags[0]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      I2 => \Flags[7]_i_2_n_0\,
      O => \Flags[0]_i_33_n_0\
    );
\Flags[0]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \R__0\(7),
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile[0][4]_i_7_n_0\,
      O => \Flags[0]_i_34_n_0\
    );
\Flags[0]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      O => \Flags[0]_i_35_n_0\
    );
\Flags[0]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40001555"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile_reg[0][4]_i_10_n_5\,
      I2 => \Flags[0]_i_38_n_0\,
      I3 => \Regfile_reg[0][4]_i_10_n_6\,
      I4 => \Regfile_reg[0][4]_i_10_n_4\,
      O => \Flags[0]_i_36_n_0\
    );
\Flags[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_7\,
      I1 => \Regfile_reg[0][1]_i_19_n_5\,
      I2 => R,
      I3 => \Regfile_reg[0][1]_i_19_n_7\,
      I4 => \Regfile_reg[0][1]_i_19_n_6\,
      I5 => \Regfile_reg[0][1]_i_19_n_4\,
      O => \Flags[0]_i_37_n_0\
    );
\Flags[0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_19_n_5\,
      I1 => \Regfile_reg[0][1]_i_19_n_6\,
      I2 => R,
      I3 => \Regfile_reg[0][1]_i_19_n_7\,
      I4 => \Regfile_reg[0][1]_i_19_n_4\,
      I5 => \Regfile_reg[0][4]_i_10_n_7\,
      O => \Flags[0]_i_38_n_0\
    );
\Flags[0]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \Regfile[1][7]_i_6_n_0\,
      I1 => \Regfile_reg[0][1]_i_19_n_7\,
      I2 => R,
      O => \Flags[0]_i_39_n_0\
    );
\Flags[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD00"
    )
        port map (
      I0 => \Flags[0]_i_11_n_0\,
      I1 => \Flags[0]_i_12_n_0\,
      I2 => \Flags[0]_i_13_n_0\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Flags[0]_i_14_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Flags[0]_i_4_n_0\
    );
\Flags[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Flags[0]_i_51_n_0\,
      I1 => \Mult_reg_n_0_[7]\,
      I2 => \Mult_reg_n_0_[6]\,
      I3 => \Mult_reg_n_0_[5]\,
      I4 => \Mult_reg_n_0_[4]\,
      I5 => \Flags[0]_i_52_n_0\,
      O => \Flags[0]_i_40_n_0\
    );
\Flags[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \Regfile[1][6]_i_7_n_0\,
      I1 => \Regfile[0][1]_i_9_n_0\,
      I2 => \R__0\(7),
      I3 => \R__0\(8),
      I4 => \Mult[14]_i_11_n_0\,
      I5 => \Regfile[1][4]_i_4_n_0\,
      O => \Flags[0]_i_41_n_0\
    );
\Flags[0]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF8F"
    )
        port map (
      I0 => R,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Regfile[1][7]_i_14_n_0\,
      O => \Flags[0]_i_42_n_0\
    );
\Flags[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Flags[0]_i_53_n_0\,
      I3 => \Regfile_reg[0]__0\(7),
      I4 => \Regfile_reg[0]__0\(5),
      I5 => \Regfile_reg[0]__0\(4),
      O => \Flags[0]_i_43_n_0\
    );
\Flags[0]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Regfile_reg[0][7]_i_20_n_5\,
      I1 => \Regfile_reg[0][7]_i_20_n_4\,
      I2 => \Regfile_reg[0][7]_i_20_n_7\,
      I3 => \Regfile_reg[0][7]_i_20_n_6\,
      I4 => \Flags[0]_i_56_n_0\,
      O => \Flags[0]_i_45_n_0\
    );
\Flags[0]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => \Flags[0]_i_57_n_0\,
      I1 => \Flags_reg[2]_i_13_n_7\,
      I2 => \Flags_reg[2]_i_13_n_5\,
      I3 => \Flags_reg[2]_i_10_n_6\,
      I4 => \Flags_reg[2]_i_10_n_4\,
      I5 => \Regfile[1][7]_i_5_n_0\,
      O => \Flags[0]_i_46_n_0\
    );
\Flags[0]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_5\,
      I1 => \Regfile_reg[0][4]_i_10_n_6\,
      I2 => \Regfile_reg[0][4]_i_10_n_4\,
      I3 => \Regfile_reg[0][4]_i_10_n_7\,
      O => \Flags[0]_i_47_n_0\
    );
\Flags[0]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Regfile[0][7]_i_6_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      O => \Flags[0]_i_48_n_0\
    );
\Flags[0]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E400"
    )
        port map (
      I0 => \Regfile[0][7]_i_4_n_0\,
      I1 => \Mult[14]_i_21_n_0\,
      I2 => \Mult[14]_i_20_n_0\,
      I3 => \Regfile_reg[0]__0\(6),
      O => \Flags[0]_i_49_n_0\
    );
\Flags[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4FFF4FFF4"
    )
        port map (
      I0 => \Flags[0]_i_15_n_0\,
      I1 => \Flags[0]_i_16_n_0\,
      I2 => \Flags[0]_i_17_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Flags[0]_i_18_n_0\,
      I5 => \Flags[0]_i_9_n_0\,
      O => \Flags[0]_i_5_n_0\
    );
\Flags[0]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D800"
    )
        port map (
      I0 => \Regfile[0][7]_i_4_n_0\,
      I1 => \Regfile[0][4]_i_18_n_0\,
      I2 => \Regfile[0][4]_i_17_n_0\,
      I3 => \Regfile_reg[0]__0\(4),
      O => \Flags[0]_i_50_n_0\
    );
\Flags[0]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Mult_reg_n_0_[3]\,
      I1 => \Mult_reg_n_0_[2]\,
      I2 => \Mult_reg_n_0_[1]\,
      I3 => \Mult_reg_n_0_[0]\,
      O => \Flags[0]_i_51_n_0\
    );
\Flags[0]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data6(0),
      I1 => data6(1),
      I2 => data6(2),
      I3 => data6(3),
      I4 => \Flags[0]_i_58_n_0\,
      O => \Flags[0]_i_52_n_0\
    );
\Flags[0]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \Regfile_reg[0]__0\(0),
      I3 => \Regfile_reg[0]__0\(6),
      O => \Flags[0]_i_53_n_0\
    );
\Flags[0]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Regfile_reg[0]__0\(0),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[0]__0\(3),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[0]__0\(2),
      O => \Flags[0]_i_54_n_0\
    );
\Flags[0]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(5),
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[0]__0\(7),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Flags[0]_i_55_n_0\
    );
\Flags[0]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_5_n_4\,
      I1 => \Regfile_reg[0][1]_i_5_n_5\,
      I2 => \Regfile_reg[0][1]_i_5_n_6\,
      I3 => \Regfile_reg[0][1]_i_5_n_7\,
      O => \Flags[0]_i_56_n_0\
    );
\Flags[0]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Flags_reg[2]_i_10_n_7\,
      I1 => \Flags_reg[2]_i_10_n_5\,
      I2 => \Flags_reg[2]_i_13_n_6\,
      I3 => \Flags_reg[2]_i_13_n_4\,
      O => \Flags[0]_i_57_n_0\
    );
\Flags[0]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data6(6),
      I1 => data6(5),
      I2 => data6(7),
      I3 => data6(4),
      O => \Flags[0]_i_58_n_0\
    );
\Flags[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAFEFEAA"
    )
        port map (
      I0 => \Flags[0]_i_19_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      I5 => \Regfile[1][7]_i_11_n_0\,
      O => \Flags[0]_i_6_n_0\
    );
\Flags[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      O => \Flags[0]_i_7_n_0\
    );
\Flags[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \Flags[0]_i_20_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Regfile_reg[0]__0\(6),
      I3 => \Flags[0]_i_21_n_0\,
      I4 => \Flags[0]_i_22_n_0\,
      I5 => \Flags[0]_i_23_n_0\,
      O => \Flags[0]_i_8_n_0\
    );
\Flags[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \Regfile[1][2]_i_3_n_0\,
      I1 => \Regfile[1][0]_i_2_n_0\,
      I2 => \Regfile[0][3]_i_4_n_0\,
      I3 => \Flags[0]_i_24_n_0\,
      O => \Flags[0]_i_9_n_0\
    );
\Flags[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF40000"
    )
        port map (
      I0 => \Flags[1]_i_2_n_0\,
      I1 => \Flags[1]_i_3_n_0\,
      I2 => \Flags[1]_i_4_n_0\,
      I3 => \Flags[1]_i_5_n_0\,
      I4 => \Flags[1]_i_6_n_0\,
      I5 => R,
      O => \Flags[1]_i_1_n_0\
    );
\Flags[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile[0][5]_i_5_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      O => \Flags[1]_i_10_n_0\
    );
\Flags[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70700070"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Flags_reg[1]_i_14_n_3\,
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \Regfile[1][7]_i_5_n_0\,
      I4 => \Flags_reg[1]_i_15_n_3\,
      O => \Flags[1]_i_11_n_0\
    );
\Flags[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile[0][7]_i_18_n_0\,
      I1 => \R__0\(8),
      O => \Flags[1]_i_12_n_0\
    );
\Flags[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111000"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile_reg[0][4]_i_10_n_4\,
      I3 => \Flags[1]_i_16_n_0\,
      I4 => \Flags_reg[1]_i_15_n_3\,
      O => \Flags[1]_i_13_n_0\
    );
\Flags[1]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_5\,
      I1 => \Flags[0]_i_38_n_0\,
      I2 => \Regfile_reg[0][4]_i_10_n_6\,
      O => \Flags[1]_i_16_n_0\
    );
\Flags[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5F4F5F4F5F5F5"
    )
        port map (
      I0 => \Regfile[1][7]_i_6_n_0\,
      I1 => \Flags[1]_i_7_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[0][7]_i_8_n_0\,
      I4 => \Regfile[0][1]_i_4_n_0\,
      I5 => \Flags[1]_i_8_n_0\,
      O => \Flags[1]_i_2_n_0\
    );
\Flags[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF08FF08FF08FF"
    )
        port map (
      I0 => R,
      I1 => \Flags[1]_i_8_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Mult[15]_i_3_n_0\,
      I5 => \Flags[7]_i_2_n_0\,
      O => \Flags[1]_i_3_n_0\
    );
\Flags[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AAAAAA20AA20"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Flags_reg[1]_i_9_n_3\,
      I2 => \Flags[1]_i_10_n_0\,
      I3 => \Flags[1]_i_11_n_0\,
      I4 => \Regfile[0][7]_i_11_n_0\,
      I5 => \Flags[1]_i_8_n_0\,
      O => \Flags[1]_i_4_n_0\
    );
\Flags[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAA8A8A8A8"
    )
        port map (
      I0 => \Regfile[0][5]_i_5_n_0\,
      I1 => \Flags[1]_i_12_n_0\,
      I2 => \Flags[1]_i_13_n_0\,
      I3 => \Regfile[0][1]_i_11_n_0\,
      I4 => \Regfile[2][1]_i_2_n_0\,
      I5 => \Flags[2]_i_8_n_0\,
      O => \Flags[1]_i_5_n_0\
    );
\Flags[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0703333C330C330"
    )
        port map (
      I0 => \Regfile[1][7]_i_8_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Flags[1]_i_6_n_0\
    );
\Flags[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Regfile[0][7]_i_30_n_0\,
      I3 => \Mult[15]_i_3_n_0\,
      O => \Flags[1]_i_7_n_0\
    );
\Flags[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \Regfile[2][6]_i_5_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Mult[15]_i_3_n_0\,
      O => \Flags[1]_i_8_n_0\
    );
\Flags[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDFDFFFFCDFD0000"
    )
        port map (
      I0 => \Flags[2]_i_2_n_0\,
      I1 => \Flags[2]_i_3_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Flags[2]_i_4_n_0\,
      I4 => \Flags[2]_i_5_n_0\,
      I5 => Flags(2),
      O => \Flags[2]_i_1_n_0\
    );
\Flags[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[0][5]_i_5_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      O => \Flags[2]_i_11_n_0\
    );
\Flags[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \Regfile[0][7]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[2][7]_i_3_n_0\,
      O => \Flags[2]_i_12_n_0\
    );
\Flags[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      O => \Flags[2]_i_14_n_0\
    );
\Flags[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile_reg[0]__0\(6),
      O => \Flags[2]_i_15_n_0\
    );
\Flags[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      O => \Flags[2]_i_16_n_0\
    );
\Flags[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(4),
      O => \Flags[2]_i_17_n_0\
    );
\Flags[2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Regfile_reg[0]__0\(3),
      O => \Flags[2]_i_18_n_0\
    );
\Flags[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \R__0\(6),
      O => \Flags[2]_i_19_n_0\
    );
\Flags[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF3F55555555"
    )
        port map (
      I0 => \Regfile[0][7]_i_23_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => R,
      I3 => \Regfile[1][7]_i_14_n_0\,
      I4 => \Flags[2]_i_6_n_0\,
      I5 => \Regfile[0][5]_i_5_n_0\,
      O => \Flags[2]_i_2_n_0\
    );
\Flags[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \R__0\(7),
      I1 => \Regfile_reg[0]__0\(1),
      O => \Flags[2]_i_20_n_0\
    );
\Flags[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \Regfile_reg[0]__0\(0),
      O => \Flags[2]_i_21_n_0\
    );
\Flags[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \Flags[2]_i_7_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Flags[2]_i_8_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[0][7]_i_11_n_0\,
      O => \Flags[2]_i_3_n_0\
    );
\Flags[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FB00FB00FB"
    )
        port map (
      I0 => \Flags[2]_i_8_n_0\,
      I1 => \Regfile[0][1]_i_16_n_0\,
      I2 => \Regfile[1][7]_i_16_n_0\,
      I3 => \Flags[2]_i_9_n_0\,
      I4 => \Flags_reg[2]_i_10_n_4\,
      I5 => \Flags[2]_i_11_n_0\,
      O => \Flags[2]_i_4_n_0\
    );
\Flags[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC8CCFCCC8CCCFC"
    )
        port map (
      I0 => \Flags[2]_i_12_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][1]_i_11_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[1][7]_i_6_n_0\,
      O => \Flags[2]_i_5_n_0\
    );
\Flags[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006F60"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(7),
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][7]_i_29_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      O => \Flags[2]_i_6_n_0\
    );
\Flags[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \Flags[7]_i_3_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[1][2]_i_3_n_0\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      O => \Flags[2]_i_7_n_0\
    );
\Flags[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[1][7]_i_5_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      O => \Flags[2]_i_8_n_0\
    );
\Flags[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF04400"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile_reg[0][7]_i_20_n_4\,
      I2 => \Regfile_reg[0][4]_i_10_n_4\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Flags[2]_i_8_n_0\,
      O => \Flags[2]_i_9_n_0\
    );
\Flags[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0EFF00000E00"
    )
        port map (
      I0 => \Regfile[0][3]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Flags[7]_i_4_n_0\,
      I4 => \Flags[3]_i_2_n_0\,
      I5 => Flags(3),
      O => \Flags[3]_i_1_n_0\
    );
\Flags[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFA72FAFA"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_11_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][7]_i_4_n_0\,
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile[2][7]_i_3_n_0\,
      O => \Flags[3]_i_2_n_0\
    );
\Flags[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0DFF00000D00"
    )
        port map (
      I0 => \Regfile[2][4]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Flags[7]_i_4_n_0\,
      I4 => \Flags[4]_i_2_n_0\,
      I5 => Flags(4),
      O => \Flags[4]_i_1_n_0\
    );
\Flags[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFA72FA"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_11_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][7]_i_4_n_0\,
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile[0][7]_i_6_n_0\,
      O => \Flags[4]_i_2_n_0\
    );
\Flags[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0EFF00000E00"
    )
        port map (
      I0 => \Regfile[0][5]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Flags[7]_i_4_n_0\,
      I4 => \Flags[5]_i_2_n_0\,
      I5 => Flags(5),
      O => \Flags[5]_i_1_n_0\
    );
\Flags[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFA72FAFAFA"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_11_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][7]_i_4_n_0\,
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile[0][7]_i_6_n_0\,
      O => \Flags[5]_i_2_n_0\
    );
\Flags[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0DFF00000D00"
    )
        port map (
      I0 => \Regfile[2][6]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Flags[7]_i_4_n_0\,
      I4 => \Flags[6]_i_2_n_0\,
      I5 => Flags(6),
      O => \Flags[6]_i_1_n_0\
    );
\Flags[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFA72FA"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_11_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][7]_i_4_n_0\,
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile[2][7]_i_3_n_0\,
      O => \Flags[6]_i_2_n_0\
    );
\Flags[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF45FF00004500"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_3_n_0\,
      I3 => \Flags[7]_i_4_n_0\,
      I4 => \Flags[7]_i_5_n_0\,
      I5 => Flags(7),
      O => \Flags[7]_i_1_n_0\
    );
\Flags[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Regfile[1][7]_i_5_n_0\,
      O => \Flags[7]_i_2_n_0\
    );
\Flags[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFBFBFBFB"
    )
        port map (
      I0 => CPU_State(0),
      I1 => data2(7),
      I2 => \Regfile[0][5]_i_11_n_0\,
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(7),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Flags[7]_i_3_n_0\
    );
\Flags[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \Regfile[1][7]_i_6_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      O => \Flags[7]_i_4_n_0\
    );
\Flags[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFA72FAFAFA"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_11_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][7]_i_4_n_0\,
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile[2][7]_i_3_n_0\,
      O => \Flags[7]_i_5_n_0\
    );
\Flags_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[0]_i_1_n_0\,
      Q => Flags(0)
    );
\Flags_reg[0]_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Flags[0]_i_54_n_0\,
      I1 => \Flags[0]_i_55_n_0\,
      O => \Flags_reg[0]_i_44_n_0\,
      S => \Regfile[0][7]_i_4_n_0\
    );
\Flags_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[1]_i_1_n_0\,
      Q => R
    );
\Flags_reg[1]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \Flags_reg[2]_i_10_n_0\,
      CO(3 downto 1) => \NLW_Flags_reg[1]_i_14_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Flags_reg[1]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Flags_reg[1]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Flags_reg[1]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \Regfile_reg[0][4]_i_10_n_0\,
      CO(3 downto 1) => \NLW_Flags_reg[1]_i_15_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Flags_reg[1]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Flags_reg[1]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Flags_reg[1]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \Regfile_reg[0][7]_i_20_n_0\,
      CO(3 downto 1) => \NLW_Flags_reg[1]_i_9_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Flags_reg[1]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Flags_reg[1]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Flags_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[2]_i_1_n_0\,
      Q => Flags(2)
    );
\Flags_reg[2]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Flags_reg[2]_i_13_n_0\,
      CO(3) => \Flags_reg[2]_i_10_n_0\,
      CO(2) => \Flags_reg[2]_i_10_n_1\,
      CO(1) => \Flags_reg[2]_i_10_n_2\,
      CO(0) => \Flags_reg[2]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Regfile_reg[0]__0\(7 downto 4),
      O(3) => \Flags_reg[2]_i_10_n_4\,
      O(2) => \Flags_reg[2]_i_10_n_5\,
      O(1) => \Flags_reg[2]_i_10_n_6\,
      O(0) => \Flags_reg[2]_i_10_n_7\,
      S(3) => \Flags[2]_i_14_n_0\,
      S(2) => \Flags[2]_i_15_n_0\,
      S(1) => \Flags[2]_i_16_n_0\,
      S(0) => \Flags[2]_i_17_n_0\
    );
\Flags_reg[2]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Flags_reg[2]_i_13_n_0\,
      CO(2) => \Flags_reg[2]_i_13_n_1\,
      CO(1) => \Flags_reg[2]_i_13_n_2\,
      CO(0) => \Flags_reg[2]_i_13_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \Regfile_reg[0]__0\(3 downto 0),
      O(3) => \Flags_reg[2]_i_13_n_4\,
      O(2) => \Flags_reg[2]_i_13_n_5\,
      O(1) => \Flags_reg[2]_i_13_n_6\,
      O(0) => \Flags_reg[2]_i_13_n_7\,
      S(3) => \Flags[2]_i_18_n_0\,
      S(2) => \Flags[2]_i_19_n_0\,
      S(1) => \Flags[2]_i_20_n_0\,
      S(0) => \Flags[2]_i_21_n_0\
    );
\Flags_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[3]_i_1_n_0\,
      Q => Flags(3)
    );
\Flags_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[4]_i_1_n_0\,
      Q => Flags(4)
    );
\Flags_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[5]_i_1_n_0\,
      Q => Flags(5)
    );
\Flags_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[6]_i_1_n_0\,
      Q => Flags(6)
    );
\Flags_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Flags[7]_i_1_n_0\,
      Q => Flags(7)
    );
\ISR_Addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ISR_Addr[0]_i_3_n_0\,
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[0]_i_1_n_0\
    );
\ISR_Addr[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_6_in,
      I1 => \Pending_reg_n_0_[0]\,
      O => \ISR_Addr[0]_i_10_n_0\
    );
\ISR_Addr[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in,
      O => \ISR_Addr[0]_i_11_n_0\
    );
\ISR_Addr[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00AE"
    )
        port map (
      I0 => p_3_in,
      I1 => \Pending_reg_n_0_[6]\,
      I2 => p_2_in,
      I3 => p_4_in,
      I4 => p_5_in,
      I5 => p_6_in,
      O => \ISR_Addr[0]_i_12_n_0\
    );
\ISR_Addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => Wait_for_FSM,
      I1 => p_3_in,
      I2 => p_2_in,
      I3 => \Pending_reg_n_0_[6]\,
      I4 => p_1_in,
      I5 => \ISR_Addr[0]_i_9_n_0\,
      O => \ISR_Addr[0]_i_3_n_0\
    );
\ISR_Addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(1),
      I2 => CPU_State(0),
      I3 => CPU_State(5),
      I4 => CPU_State(2),
      I5 => CPU_State(4),
      O => \INT_Ctrl[Incr_ISR]\
    );
\ISR_Addr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888B"
    )
        port map (
      I0 => ISR_Addr_reg(3),
      I1 => \INT_Ctrl[Incr_ISR]\,
      I2 => \Pending_reg_n_0_[0]\,
      I3 => p_6_in,
      I4 => p_5_in,
      I5 => p_4_in,
      O => \ISR_Addr[0]_i_5_n_0\
    );
\ISR_Addr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B888"
    )
        port map (
      I0 => ISR_Addr_reg(2),
      I1 => \INT_Ctrl[Incr_ISR]\,
      I2 => \ISR_Addr[0]_i_10_n_0\,
      I3 => \ISR_Addr[0]_i_11_n_0\,
      I4 => p_4_in,
      I5 => p_5_in,
      O => \ISR_Addr[0]_i_6_n_0\
    );
\ISR_Addr[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888B"
    )
        port map (
      I0 => ISR_Addr_reg(1),
      I1 => \INT_Ctrl[Incr_ISR]\,
      I2 => \Pending_reg_n_0_[0]\,
      I3 => \ISR_Addr[0]_i_12_n_0\,
      O => \ISR_Addr[0]_i_7_n_0\
    );
\ISR_Addr[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => ISR_Addr_reg(0),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[0]_i_8_n_0\
    );
\ISR_Addr[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Pending_reg_n_0_[0]\,
      I1 => p_6_in,
      I2 => p_5_in,
      I3 => p_4_in,
      O => \ISR_Addr[0]_i_9_n_0\
    );
\ISR_Addr[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(15),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[12]_i_2_n_0\
    );
\ISR_Addr[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(14),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[12]_i_3_n_0\
    );
\ISR_Addr[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(13),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[12]_i_4_n_0\
    );
\ISR_Addr[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(12),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[12]_i_5_n_0\
    );
\ISR_Addr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(7),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[4]_i_2_n_0\
    );
\ISR_Addr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(6),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[4]_i_3_n_0\
    );
\ISR_Addr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(5),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[4]_i_4_n_0\
    );
\ISR_Addr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(4),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[4]_i_5_n_0\
    );
\ISR_Addr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(11),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[8]_i_2_n_0\
    );
\ISR_Addr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(10),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[8]_i_3_n_0\
    );
\ISR_Addr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(9),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[8]_i_4_n_0\
    );
\ISR_Addr[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ISR_Addr_reg(8),
      I1 => \INT_Ctrl[Incr_ISR]\,
      O => \ISR_Addr[8]_i_5_n_0\
    );
\ISR_Addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \ISR_Addr_reg[0]_i_2_n_7\,
      Q => ISR_Addr_reg(0)
    );
\ISR_Addr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ISR_Addr_reg[0]_i_2_n_0\,
      CO(2) => \ISR_Addr_reg[0]_i_2_n_1\,
      CO(1) => \ISR_Addr_reg[0]_i_2_n_2\,
      CO(0) => \ISR_Addr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \INT_Ctrl[Incr_ISR]\,
      O(3) => \ISR_Addr_reg[0]_i_2_n_4\,
      O(2) => \ISR_Addr_reg[0]_i_2_n_5\,
      O(1) => \ISR_Addr_reg[0]_i_2_n_6\,
      O(0) => \ISR_Addr_reg[0]_i_2_n_7\,
      S(3) => \ISR_Addr[0]_i_5_n_0\,
      S(2) => \ISR_Addr[0]_i_6_n_0\,
      S(1) => \ISR_Addr[0]_i_7_n_0\,
      S(0) => \ISR_Addr[0]_i_8_n_0\
    );
\ISR_Addr_reg[10]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[8]_i_1_n_5\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(10)
    );
\ISR_Addr_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[8]_i_1_n_4\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(11)
    );
\ISR_Addr_reg[12]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[12]_i_1_n_7\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(12)
    );
\ISR_Addr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ISR_Addr_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ISR_Addr_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ISR_Addr_reg[12]_i_1_n_1\,
      CO(1) => \ISR_Addr_reg[12]_i_1_n_2\,
      CO(0) => \ISR_Addr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ISR_Addr_reg[12]_i_1_n_4\,
      O(2) => \ISR_Addr_reg[12]_i_1_n_5\,
      O(1) => \ISR_Addr_reg[12]_i_1_n_6\,
      O(0) => \ISR_Addr_reg[12]_i_1_n_7\,
      S(3) => \ISR_Addr[12]_i_2_n_0\,
      S(2) => \ISR_Addr[12]_i_3_n_0\,
      S(1) => \ISR_Addr[12]_i_4_n_0\,
      S(0) => \ISR_Addr[12]_i_5_n_0\
    );
\ISR_Addr_reg[13]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[12]_i_1_n_6\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(13)
    );
\ISR_Addr_reg[14]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[12]_i_1_n_5\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(14)
    );
\ISR_Addr_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[12]_i_1_n_4\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(15)
    );
\ISR_Addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \ISR_Addr_reg[0]_i_2_n_6\,
      Q => ISR_Addr_reg(1)
    );
\ISR_Addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \ISR_Addr_reg[0]_i_2_n_5\,
      Q => ISR_Addr_reg(2)
    );
\ISR_Addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \ISR_Addr_reg[0]_i_2_n_4\,
      Q => ISR_Addr_reg(3)
    );
\ISR_Addr_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[4]_i_1_n_7\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(4)
    );
\ISR_Addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ISR_Addr_reg[0]_i_2_n_0\,
      CO(3) => \ISR_Addr_reg[4]_i_1_n_0\,
      CO(2) => \ISR_Addr_reg[4]_i_1_n_1\,
      CO(1) => \ISR_Addr_reg[4]_i_1_n_2\,
      CO(0) => \ISR_Addr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ISR_Addr_reg[4]_i_1_n_4\,
      O(2) => \ISR_Addr_reg[4]_i_1_n_5\,
      O(1) => \ISR_Addr_reg[4]_i_1_n_6\,
      O(0) => \ISR_Addr_reg[4]_i_1_n_7\,
      S(3) => \ISR_Addr[4]_i_2_n_0\,
      S(2) => \ISR_Addr[4]_i_3_n_0\,
      S(1) => \ISR_Addr[4]_i_4_n_0\,
      S(0) => \ISR_Addr[4]_i_5_n_0\
    );
\ISR_Addr_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[4]_i_1_n_6\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(5)
    );
\ISR_Addr_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[4]_i_1_n_5\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(6)
    );
\ISR_Addr_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[4]_i_1_n_4\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(7)
    );
\ISR_Addr_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[8]_i_1_n_7\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(8)
    );
\ISR_Addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ISR_Addr_reg[4]_i_1_n_0\,
      CO(3) => \ISR_Addr_reg[8]_i_1_n_0\,
      CO(2) => \ISR_Addr_reg[8]_i_1_n_1\,
      CO(1) => \ISR_Addr_reg[8]_i_1_n_2\,
      CO(0) => \ISR_Addr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ISR_Addr_reg[8]_i_1_n_4\,
      O(2) => \ISR_Addr_reg[8]_i_1_n_5\,
      O(1) => \ISR_Addr_reg[8]_i_1_n_6\,
      O(0) => \ISR_Addr_reg[8]_i_1_n_7\,
      S(3) => \ISR_Addr[8]_i_2_n_0\,
      S(2) => \ISR_Addr[8]_i_3_n_0\,
      S(1) => \ISR_Addr[8]_i_4_n_0\,
      S(0) => \ISR_Addr[8]_i_5_n_0\
    );
\ISR_Addr_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \ISR_Addr[0]_i_1_n_0\,
      D => \ISR_Addr_reg[8]_i_1_n_6\,
      PRE => Ack_Q_i_2_n_0,
      Q => ISR_Addr_reg(9)
    );
Instr_Prefetch_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0F00"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \SubOp_reg[2]_i_4_n_0\,
      I2 => \SubOp[2]_i_5_n_0\,
      I3 => Cache_Ctrl(2),
      I4 => Instr_Prefetch,
      O => Instr_Prefetch_i_1_n_0
    );
Instr_Prefetch_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => Instr_Prefetch_i_1_n_0,
      Q => Instr_Prefetch
    );
Int_Ack_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => Ack_Q1,
      Q => Int_Ack
    );
\Int_Mask[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \Int_Mask[7]_i_2_n_0\,
      I1 => SubOp(0),
      I2 => SubOp(1),
      I3 => SubOp(2),
      I4 => Opcode(4),
      I5 => \Int_Mask[7]_i_3_n_0\,
      O => \INT_Ctrl[Mask_Set]\
    );
\Int_Mask[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(2),
      I2 => CPU_State(3),
      I3 => CPU_State(0),
      I4 => CPU_State(5),
      I5 => CPU_State(4),
      O => \Int_Mask[7]_i_2_n_0\
    );
\Int_Mask[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Opcode(3),
      I1 => Opcode(2),
      I2 => Opcode(1),
      I3 => Opcode(0),
      O => \Int_Mask[7]_i_3_n_0\
    );
\Int_Mask_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => '1',
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(0)
    );
\Int_Mask_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(1),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(1)
    );
\Int_Mask_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(2),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(2)
    );
\Int_Mask_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(3),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(3)
    );
\Int_Mask_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(4),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(4)
    );
\Int_Mask_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(5),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(5)
    );
\Int_Mask_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(6),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(6)
    );
\Int_Mask_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \INT_Ctrl[Mask_Set]\,
      D => \Regfile_reg[0]__0\(7),
      PRE => Ack_Q_i_2_n_0,
      Q => Int_Mask(7)
    );
Int_Req_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Wait_for_FSM,
      I1 => Int_Ack,
      O => Int_Req0
    );
Int_Req_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => Int_Req0,
      Q => Int_Req
    );
\Interrupts_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(0),
      O => Interrupts_IBUF(0)
    );
\Interrupts_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(1),
      O => Interrupts_IBUF(1)
    );
\Interrupts_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(2),
      O => Interrupts_IBUF(2)
    );
\Interrupts_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(3),
      O => Interrupts_IBUF(3)
    );
\Interrupts_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(4),
      O => Interrupts_IBUF(4)
    );
\Interrupts_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(5),
      O => Interrupts_IBUF(5)
    );
\Interrupts_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(6),
      O => Interrupts_IBUF(6)
    );
\Interrupts_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Interrupts(7),
      O => Interrupts_IBUF(7)
    );
\Mult[10]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \Mult_reg[10]_i_13_n_6\,
      I1 => \Mult_reg[14]_i_22_n_7\,
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Regfile_reg[0]__0\(1),
      O => \Mult[10]_i_10_n_0\
    );
\Mult[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Mult_reg[14]_i_22_n_6\,
      I3 => \Mult_reg[10]_i_13_n_5\,
      O => \Mult[10]_i_11_n_0\
    );
\Mult[10]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Mult_reg[14]_i_22_n_7\,
      I3 => \Mult_reg[10]_i_13_n_6\,
      O => \Mult[10]_i_12_n_0\
    );
\Mult[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(4),
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile_reg[0]__0\(5),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Mult[10]_i_14_n_0\
    );
\Mult[10]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile_reg[0]__0\(4),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(5),
      O => \Mult[10]_i_15_n_0\
    );
\Mult[10]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile_reg[0]__0\(3),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(4),
      O => \Mult[10]_i_16_n_0\
    );
\Mult[10]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile_reg[0]__0\(2),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(3),
      O => \Mult[10]_i_17_n_0\
    );
\Mult[10]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \Mult[10]_i_14_n_0\,
      I1 => \Mult[10]_i_22_n_0\,
      I2 => \Regfile_reg[0]__0\(6),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(7),
      O => \Mult[10]_i_18_n_0\
    );
\Mult[10]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \Mult[10]_i_15_n_0\,
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \Mult[10]_i_23_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Mult[10]_i_19_n_0\
    );
\Mult[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \Mult[10]_i_10_n_0\,
      I1 => \Regfile_reg[0]__0\(3),
      I2 => \Mult[14]_i_11_n_0\,
      I3 => \Mult[10]_i_11_n_0\,
      O => \Mult[10]_i_2_n_0\
    );
\Mult[10]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \Mult[10]_i_16_n_0\,
      I1 => \Mult[10]_i_24_n_0\,
      I2 => \Regfile_reg[0]__0\(4),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(5),
      O => \Mult[10]_i_20_n_0\
    );
\Mult[10]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \Mult[10]_i_17_n_0\,
      I1 => \Regfile_reg[0]__0\(2),
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \Mult[10]_i_25_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(4),
      O => \Mult[10]_i_21_n_0\
    );
\Mult[10]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      O => \Mult[10]_i_22_n_0\
    );
\Mult[10]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      O => \Mult[10]_i_23_n_0\
    );
\Mult[10]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(3),
      O => \Mult[10]_i_24_n_0\
    );
\Mult[10]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(3),
      O => \Mult[10]_i_25_n_0\
    );
\Mult[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C880808080808080"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Mult[10]_i_12_n_0\,
      I3 => \Regfile_reg[0]__0\(1),
      I4 => \Mult_reg[3]_i_2_n_4\,
      I5 => \Mult_reg[6]_i_3_n_5\,
      O => \Mult[10]_i_3_n_0\
    );
\Mult[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807FFF007F80FF00"
    )
        port map (
      I0 => \Mult_reg[6]_i_3_n_5\,
      I1 => \Mult_reg[3]_i_2_n_4\,
      I2 => \Regfile_reg[0]__0\(1),
      I3 => \Mult[10]_i_12_n_0\,
      I4 => \Mult[14]_i_11_n_0\,
      I5 => \Regfile_reg[0]__0\(2),
      O => \Mult[10]_i_4_n_0\
    );
\Mult[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Mult_reg[6]_i_3_n_4\,
      I3 => \Mult_reg[10]_i_13_n_7\,
      O => \Mult[10]_i_5_n_0\
    );
\Mult[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696969"
    )
        port map (
      I0 => \Mult[10]_i_2_n_0\,
      I1 => \Mult[14]_i_14_n_0\,
      I2 => \Mult[14]_i_15_n_0\,
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile_reg[0]__0\(4),
      O => \Mult[10]_i_6_n_0\
    );
\Mult[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696969"
    )
        port map (
      I0 => \Mult[10]_i_3_n_0\,
      I1 => \Mult[10]_i_10_n_0\,
      I2 => \Mult[10]_i_11_n_0\,
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile_reg[0]__0\(3),
      O => \Mult[10]_i_7_n_0\
    );
\Mult[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556A6AAA"
    )
        port map (
      I0 => \Mult[10]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(0),
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Mult_reg[6]_i_3_n_4\,
      I4 => \Mult_reg[10]_i_13_n_7\,
      O => \Mult[10]_i_8_n_0\
    );
\Mult[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \Mult[10]_i_5_n_0\,
      I1 => \Mult_reg[6]_i_3_n_5\,
      I2 => \Mult_reg[3]_i_2_n_4\,
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile_reg[0]__0\(1),
      O => \Mult[10]_i_9_n_0\
    );
\Mult[14]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      O => \Mult[14]_i_10_n_0\
    );
\Mult[14]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \Mult[14]_i_20_n_0\,
      I1 => \Mult[14]_i_21_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      O => \Mult[14]_i_11_n_0\
    );
\Mult[14]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Mult_reg[15]_i_4_n_6\,
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_12_n_0\
    );
\Mult[14]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \Mult_reg[10]_i_13_n_4\,
      I1 => \Mult_reg[14]_i_22_n_1\,
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Regfile_reg[0]__0\(3),
      O => \Mult[14]_i_13_n_0\
    );
\Mult[14]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \Mult_reg[10]_i_13_n_5\,
      I1 => \Mult_reg[14]_i_22_n_6\,
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Regfile_reg[0]__0\(2),
      O => \Mult[14]_i_14_n_0\
    );
\Mult[14]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Mult_reg[14]_i_22_n_1\,
      I3 => \Mult_reg[10]_i_13_n_4\,
      O => \Mult[14]_i_15_n_0\
    );
\Mult[14]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Mult_reg[15]_i_4_n_6\,
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_16_n_0\
    );
\Mult[14]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Mult_reg[15]_i_4_n_1\,
      I1 => \Regfile_reg[0]__0\(6),
      I2 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_17_n_0\
    );
\Mult[14]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Mult_reg[15]_i_4_n_7\,
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_18_n_0\
    );
\Mult[14]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Mult_reg[15]_i_4_n_7\,
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_19_n_0\
    );
\Mult[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEC82A802A802A80"
    )
        port map (
      I0 => \Mult[14]_i_10_n_0\,
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Regfile_reg[0]__0\(6),
      I3 => \Mult_reg[15]_i_4_n_1\,
      I4 => \Mult_reg[15]_i_4_n_6\,
      I5 => \Regfile_reg[0]__0\(5),
      O => \Mult[14]_i_2_n_0\
    );
\Mult[14]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(6),
      I1 => \Regfile_reg[4]__0\(6),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[7]__0\(6),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[6]__0\(6),
      O => \Mult[14]_i_20_n_0\
    );
\Mult[14]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[1]__0\(6),
      I1 => \Regfile_reg[0]__0\(6),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[3]__0\(6),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[2]__0\(6),
      O => \Mult[14]_i_21_n_0\
    );
\Mult[14]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(7),
      I1 => \R__0\(6),
      O => \Mult[14]_i_23_n_0\
    );
\Mult[14]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040004004F440400"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(6),
      I4 => \Regfile_reg[0]__0\(7),
      I5 => \R__0\(8),
      O => \Mult[14]_i_24_n_0\
    );
\Mult[14]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(6),
      I1 => \R__0\(7),
      I2 => \R__0\(6),
      I3 => \Regfile_reg[0]__0\(7),
      O => \Mult[14]_i_25_n_0\
    );
\Mult[14]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000F0BFD340B0"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Regfile_reg[0]__0\(7),
      I3 => \R__0\(7),
      I4 => \Regfile_reg[0]__0\(6),
      I5 => \R__0\(6),
      O => \Mult[14]_i_26_n_0\
    );
\Mult[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808080808080"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(6),
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Mult[14]_i_12_n_0\,
      I3 => \Mult_reg[15]_i_4_n_7\,
      I4 => \Regfile_reg[0]__0\(4),
      I5 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_3_n_0\
    );
\Mult[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40D5D5D5D5404040"
    )
        port map (
      I0 => \Mult[14]_i_13_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Mult[14]_i_11_n_0\,
      I3 => \Mult[15]_i_3_n_0\,
      I4 => \Regfile_reg[0]__0\(4),
      I5 => \Mult_reg[15]_i_4_n_7\,
      O => \Mult[14]_i_4_n_0\
    );
\Mult[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \Mult[14]_i_14_n_0\,
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Mult[14]_i_11_n_0\,
      I3 => \Mult[14]_i_15_n_0\,
      O => \Mult[14]_i_5_n_0\
    );
\Mult[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EFA18A01EAA7800"
    )
        port map (
      I0 => \Mult[14]_i_16_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Regfile_reg[0]__0\(7),
      I4 => \Mult_reg[15]_i_4_n_1\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Mult[14]_i_6_n_0\
    );
\Mult[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969696969696"
    )
        port map (
      I0 => \Mult[14]_i_3_n_0\,
      I1 => \Mult[14]_i_10_n_0\,
      I2 => \Mult[14]_i_17_n_0\,
      I3 => \Mult_reg[15]_i_4_n_6\,
      I4 => \Regfile_reg[0]__0\(5),
      I5 => \Mult[15]_i_3_n_0\,
      O => \Mult[14]_i_7_n_0\
    );
\Mult[14]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \Mult[14]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(6),
      I2 => \Mult[14]_i_11_n_0\,
      I3 => \Mult[14]_i_12_n_0\,
      I4 => \Mult[14]_i_18_n_0\,
      O => \Mult[14]_i_8_n_0\
    );
\Mult[14]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696969"
    )
        port map (
      I0 => \Mult[14]_i_5_n_0\,
      I1 => \Mult[14]_i_13_n_0\,
      I2 => \Mult[14]_i_19_n_0\,
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile_reg[0]__0\(5),
      O => \Mult[14]_i_9_n_0\
    );
\Mult[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(5),
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile_reg[0]__0\(6),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile_reg[0]__0\(7),
      O => \Mult[15]_i_10_n_0\
    );
\Mult[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(6),
      I2 => \Regfile_reg[0]__0\(7),
      I3 => \Regfile[1][4]_i_4_n_0\,
      O => \Mult[15]_i_11_n_0\
    );
\Mult[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E73F50007800F000"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile_reg[0]__0\(7),
      I4 => \Regfile[1][4]_i_4_n_0\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Mult[15]_i_12_n_0\
    );
\Mult[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile_reg[0]__0\(6),
      I2 => \Mult_reg[15]_i_4_n_1\,
      I3 => \Regfile_reg[0]__0\(7),
      O => \Mult[15]_i_2_n_0\
    );
\Mult[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0EEEE"
    )
        port map (
      I0 => \Mult[15]_i_5_n_0\,
      I1 => \Mult[15]_i_6_n_0\,
      I2 => \Mult[15]_i_7_n_0\,
      I3 => \Mult[15]_i_8_n_0\,
      I4 => \Regfile[0][7]_i_4_n_0\,
      O => \Mult[15]_i_3_n_0\
    );
\Mult[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \Regfile_reg[2]__0\(7),
      I1 => \Regfile[2][7]_i_3_n_0\,
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile_reg[3]__0\(7),
      O => \Mult[15]_i_5_n_0\
    );
\Mult[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \Regfile_reg[1]__0\(7),
      I1 => \Regfile[0][7]_i_6_n_0\,
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile_reg[0]__0\(7),
      O => \Mult[15]_i_6_n_0\
    );
\Mult[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Regfile[0][7]_i_6_n_0\,
      I1 => \Regfile_reg[6]__0\(7),
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile_reg[7]__0\(7),
      O => \Mult[15]_i_7_n_0\
    );
\Mult[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile_reg[4]__0\(7),
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile_reg[5]__0\(7),
      O => \Mult[15]_i_8_n_0\
    );
\Mult[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      O => \Mult[15]_i_9_n_0\
    );
\Mult[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404050504F405F5F"
    )
        port map (
      I0 => \Mult[2]_i_17_n_0\,
      I1 => \Mult[2]_i_18_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Mult[2]_i_19_n_0\,
      I4 => \Regfile[0][7]_i_6_n_0\,
      I5 => \Mult[2]_i_20_n_0\,
      O => \R__0\(6)
    );
\Mult[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \R__0\(8),
      O => \Mult[2]_i_12_n_0\
    );
\Mult[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(0),
      I1 => \Regfile_reg[6]__0\(0),
      I2 => \Regfile[0][7]_i_6_n_0\,
      I3 => \Regfile_reg[5]__0\(0),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[4]__0\(0),
      O => \Mult[2]_i_13_n_0\
    );
\Mult[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[1]__0\(0),
      I1 => \Regfile_reg[0]__0\(0),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[3]__0\(0),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[2]__0\(0),
      O => \Mult[2]_i_14_n_0\
    );
\Mult[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[1]__0\(1),
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[3]__0\(1),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[2]__0\(1),
      O => \Mult[2]_i_15_n_0\
    );
\Mult[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(1),
      I1 => \Regfile_reg[4]__0\(1),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[7]__0\(1),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[6]__0\(1),
      O => \Mult[2]_i_16_n_0\
    );
\Mult[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile_reg[4]__0\(2),
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile_reg[5]__0\(2),
      O => \Mult[2]_i_17_n_0\
    );
\Mult[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(2),
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile_reg[6]__0\(2),
      O => \Mult[2]_i_18_n_0\
    );
\Mult[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \Regfile_reg[2]__0\(2),
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile_reg[3]__0\(2),
      O => \Mult[2]_i_19_n_0\
    );
\Mult[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44B444B4BB4B44B4"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \Regfile_reg[0]__0\(3),
      I2 => \Regfile_reg[0]__0\(2),
      I3 => \R__0\(7),
      I4 => \Regfile_reg[0]__0\(1),
      I5 => \R__0\(6),
      O => \Mult[2]_i_2_n_0\
    );
\Mult[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile_reg[1]__0\(2),
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile_reg[0]__0\(2),
      O => \Mult[2]_i_20_n_0\
    );
\Mult[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B44"
    )
        port map (
      I0 => \R__0\(7),
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \R__0\(6),
      I3 => \Regfile_reg[0]__0\(0),
      O => \Mult[2]_i_3_n_0\
    );
\Mult[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \R__0\(8),
      O => \Mult[2]_i_4_n_0\
    );
\Mult[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC66CC663C663C96"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Mult[2]_i_12_n_0\,
      I2 => \Regfile_reg[0]__0\(1),
      I3 => \R__0\(7),
      I4 => \Regfile_reg[0]__0\(0),
      I5 => \R__0\(6),
      O => \Mult[2]_i_5_n_0\
    );
\Mult[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22D2DD2D22D222D2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \R__0\(6),
      I2 => \Regfile_reg[0]__0\(1),
      I3 => \R__0\(7),
      I4 => \R__0\(8),
      I5 => \Regfile_reg[0]__0\(2),
      O => \Mult[2]_i_6_n_0\
    );
\Mult[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B44"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(0),
      O => \Mult[2]_i_7_n_0\
    );
\Mult[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \R__0\(8),
      O => \Mult[2]_i_8_n_0\
    );
\Mult[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Mult[2]_i_13_n_0\,
      I1 => \Regfile[0][7]_i_4_n_0\,
      I2 => \Mult[2]_i_14_n_0\,
      O => \R__0\(8)
    );
\Mult[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Mult_reg[2]_i_1_n_4\,
      I1 => \Mult_reg[3]_i_2_n_7\,
      O => multOp(3)
    );
\Mult[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(1),
      O => \Mult[3]_i_10_n_0\
    );
\Mult[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Regfile[0][4]_i_7_n_0\,
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile_reg[0]__0\(2),
      I4 => \Regfile[1][4]_i_4_n_0\,
      I5 => \Regfile_reg[0]__0\(1),
      O => \Mult[3]_i_3_n_0\
    );
\Mult[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \Regfile_reg[0]__0\(0),
      O => \Mult[3]_i_4_n_0\
    );
\Mult[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(0),
      O => \Mult[3]_i_5_n_0\
    );
\Mult[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A3F953F6AC06AC0"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Regfile[0][4]_i_7_n_0\,
      I2 => \Regfile_reg[0]__0\(3),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile_reg[0]__0\(0),
      I5 => \Mult[3]_i_10_n_0\,
      O => \Mult[3]_i_6_n_0\
    );
\Mult[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile_reg[0]__0\(1),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile_reg[0]__0\(2),
      I5 => \Regfile[0][4]_i_7_n_0\,
      O => \Mult[3]_i_7_n_0\
    );
\Mult[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Regfile[0][4]_i_7_n_0\,
      I2 => \Regfile_reg[0]__0\(0),
      I3 => \Regfile[0][4]_i_9_n_0\,
      O => \Mult[3]_i_8_n_0\
    );
\Mult[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Regfile_reg[0]__0\(0),
      O => \Mult[3]_i_9_n_0\
    );
\Mult[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040004004F440400"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \Regfile_reg[0]__0\(2),
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(3),
      I4 => \Regfile_reg[0]__0\(4),
      I5 => \R__0\(8),
      O => \Mult[6]_i_10_n_0\
    );
\Mult[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040004004F440400"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \Regfile_reg[0]__0\(1),
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(2),
      I4 => \Regfile_reg[0]__0\(3),
      I5 => \R__0\(8),
      O => \Mult[6]_i_11_n_0\
    );
\Mult[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966696696996966"
    )
        port map (
      I0 => \Mult[6]_i_8_n_0\,
      I1 => \Mult[6]_i_16_n_0\,
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(6),
      I4 => \Regfile_reg[0]__0\(7),
      I5 => \R__0\(8),
      O => \Mult[6]_i_12_n_0\
    );
\Mult[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966696696996966"
    )
        port map (
      I0 => \Mult[6]_i_9_n_0\,
      I1 => \Mult[6]_i_17_n_0\,
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(5),
      I4 => \Regfile_reg[0]__0\(6),
      I5 => \R__0\(8),
      O => \Mult[6]_i_13_n_0\
    );
\Mult[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966696696996966"
    )
        port map (
      I0 => \Mult[6]_i_10_n_0\,
      I1 => \Mult[6]_i_18_n_0\,
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(4),
      I4 => \Regfile_reg[0]__0\(5),
      I5 => \R__0\(8),
      O => \Mult[6]_i_14_n_0\
    );
\Mult[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966696696996966"
    )
        port map (
      I0 => \Mult[6]_i_11_n_0\,
      I1 => \Mult[6]_i_19_n_0\,
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(3),
      I4 => \Regfile_reg[0]__0\(4),
      I5 => \R__0\(8),
      O => \Mult[6]_i_15_n_0\
    );
\Mult[6]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(5),
      I1 => \R__0\(6),
      O => \Mult[6]_i_16_n_0\
    );
\Mult[6]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(4),
      I1 => \R__0\(6),
      O => \Mult[6]_i_17_n_0\
    );
\Mult[6]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \R__0\(6),
      O => \Mult[6]_i_18_n_0\
    );
\Mult[6]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \R__0\(6),
      O => \Mult[6]_i_19_n_0\
    );
\Mult[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Mult_reg[6]_i_3_n_5\,
      I1 => \Mult_reg[3]_i_2_n_4\,
      O => \Mult[6]_i_2_n_0\
    );
\Mult[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \Mult_reg[3]_i_2_n_4\,
      I1 => \Mult_reg[6]_i_3_n_5\,
      I2 => \Regfile_reg[0]__0\(0),
      I3 => \Mult[14]_i_11_n_0\,
      O => \Mult[6]_i_4_n_0\
    );
\Mult[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Mult_reg[6]_i_3_n_6\,
      I1 => \Mult_reg[3]_i_2_n_5\,
      O => \Mult[6]_i_5_n_0\
    );
\Mult[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Mult_reg[6]_i_3_n_7\,
      I1 => \Mult_reg[3]_i_2_n_6\,
      O => \Mult[6]_i_6_n_0\
    );
\Mult[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Mult_reg[2]_i_1_n_4\,
      I1 => \Mult_reg[3]_i_2_n_7\,
      O => \Mult[6]_i_7_n_0\
    );
\Mult[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040004004F440400"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(5),
      I4 => \Regfile_reg[0]__0\(6),
      I5 => \R__0\(8),
      O => \Mult[6]_i_8_n_0\
    );
\Mult[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040004004F440400"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \Regfile_reg[0]__0\(3),
      I2 => \R__0\(7),
      I3 => \Regfile_reg[0]__0\(4),
      I4 => \Regfile_reg[0]__0\(5),
      I5 => \R__0\(8),
      O => \Mult[6]_i_9_n_0\
    );
\Mult_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(0),
      Q => \Mult_reg_n_0_[0]\,
      R => '0'
    );
\Mult_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(10),
      Q => data6(2),
      R => '0'
    );
\Mult_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[6]_i_1_n_0\,
      CO(3) => \Mult_reg[10]_i_1_n_0\,
      CO(2) => \Mult_reg[10]_i_1_n_1\,
      CO(1) => \Mult_reg[10]_i_1_n_2\,
      CO(0) => \Mult_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[10]_i_2_n_0\,
      DI(2) => \Mult[10]_i_3_n_0\,
      DI(1) => \Mult[10]_i_4_n_0\,
      DI(0) => \Mult[10]_i_5_n_0\,
      O(3 downto 0) => multOp(10 downto 7),
      S(3) => \Mult[10]_i_6_n_0\,
      S(2) => \Mult[10]_i_7_n_0\,
      S(1) => \Mult[10]_i_8_n_0\,
      S(0) => \Mult[10]_i_9_n_0\
    );
\Mult_reg[10]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[3]_i_2_n_0\,
      CO(3) => \Mult_reg[10]_i_13_n_0\,
      CO(2) => \Mult_reg[10]_i_13_n_1\,
      CO(1) => \Mult_reg[10]_i_13_n_2\,
      CO(0) => \Mult_reg[10]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[10]_i_14_n_0\,
      DI(2) => \Mult[10]_i_15_n_0\,
      DI(1) => \Mult[10]_i_16_n_0\,
      DI(0) => \Mult[10]_i_17_n_0\,
      O(3) => \Mult_reg[10]_i_13_n_4\,
      O(2) => \Mult_reg[10]_i_13_n_5\,
      O(1) => \Mult_reg[10]_i_13_n_6\,
      O(0) => \Mult_reg[10]_i_13_n_7\,
      S(3) => \Mult[10]_i_18_n_0\,
      S(2) => \Mult[10]_i_19_n_0\,
      S(1) => \Mult[10]_i_20_n_0\,
      S(0) => \Mult[10]_i_21_n_0\
    );
\Mult_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(11),
      Q => data6(3),
      R => '0'
    );
\Mult_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(12),
      Q => data6(4),
      R => '0'
    );
\Mult_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(13),
      Q => data6(5),
      R => '0'
    );
\Mult_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(14),
      Q => data6(6),
      R => '0'
    );
\Mult_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[10]_i_1_n_0\,
      CO(3) => \Mult_reg[14]_i_1_n_0\,
      CO(2) => \Mult_reg[14]_i_1_n_1\,
      CO(1) => \Mult_reg[14]_i_1_n_2\,
      CO(0) => \Mult_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[14]_i_2_n_0\,
      DI(2) => \Mult[14]_i_3_n_0\,
      DI(1) => \Mult[14]_i_4_n_0\,
      DI(0) => \Mult[14]_i_5_n_0\,
      O(3 downto 0) => multOp(14 downto 11),
      S(3) => \Mult[14]_i_6_n_0\,
      S(2) => \Mult[14]_i_7_n_0\,
      S(1) => \Mult[14]_i_8_n_0\,
      S(0) => \Mult[14]_i_9_n_0\
    );
\Mult_reg[14]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[6]_i_3_n_0\,
      CO(3) => \NLW_Mult_reg[14]_i_22_CO_UNCONNECTED\(3),
      CO(2) => \Mult_reg[14]_i_22_n_1\,
      CO(1) => \NLW_Mult_reg[14]_i_22_CO_UNCONNECTED\(1),
      CO(0) => \Mult_reg[14]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Mult[14]_i_23_n_0\,
      DI(0) => \Mult[14]_i_24_n_0\,
      O(3 downto 2) => \NLW_Mult_reg[14]_i_22_O_UNCONNECTED\(3 downto 2),
      O(1) => \Mult_reg[14]_i_22_n_6\,
      O(0) => \Mult_reg[14]_i_22_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \Mult[14]_i_25_n_0\,
      S(0) => \Mult[14]_i_26_n_0\
    );
\Mult_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(15),
      Q => data6(7),
      R => '0'
    );
\Mult_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[14]_i_1_n_0\,
      CO(3 downto 0) => \NLW_Mult_reg[15]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Mult_reg[15]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => multOp(15),
      S(3 downto 1) => B"000",
      S(0) => \Mult[15]_i_2_n_0\
    );
\Mult_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[10]_i_13_n_0\,
      CO(3) => \NLW_Mult_reg[15]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \Mult_reg[15]_i_4_n_1\,
      CO(1) => \NLW_Mult_reg[15]_i_4_CO_UNCONNECTED\(1),
      CO(0) => \Mult_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Mult[15]_i_9_n_0\,
      DI(0) => \Mult[15]_i_10_n_0\,
      O(3 downto 2) => \NLW_Mult_reg[15]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1) => \Mult_reg[15]_i_4_n_6\,
      O(0) => \Mult_reg[15]_i_4_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \Mult[15]_i_11_n_0\,
      S(0) => \Mult[15]_i_12_n_0\
    );
\Mult_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(1),
      Q => \Mult_reg_n_0_[1]\,
      R => '0'
    );
\Mult_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(2),
      Q => \Mult_reg_n_0_[2]\,
      R => '0'
    );
\Mult_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Mult_reg[2]_i_1_n_0\,
      CO(2) => \Mult_reg[2]_i_1_n_1\,
      CO(1) => \Mult_reg[2]_i_1_n_2\,
      CO(0) => \Mult_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[2]_i_2_n_0\,
      DI(2) => \Mult[2]_i_3_n_0\,
      DI(1) => \Mult[2]_i_4_n_0\,
      DI(0) => '0',
      O(3) => \Mult_reg[2]_i_1_n_4\,
      O(2 downto 0) => multOp(2 downto 0),
      S(3) => \Mult[2]_i_5_n_0\,
      S(2) => \Mult[2]_i_6_n_0\,
      S(1) => \Mult[2]_i_7_n_0\,
      S(0) => \Mult[2]_i_8_n_0\
    );
\Mult_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Mult[2]_i_15_n_0\,
      I1 => \Mult[2]_i_16_n_0\,
      O => \R__0\(7),
      S => \Regfile[0][7]_i_4_n_0\
    );
\Mult_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(3),
      Q => \Mult_reg_n_0_[3]\,
      R => '0'
    );
\Mult_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Mult_reg[3]_i_2_n_0\,
      CO(2) => \Mult_reg[3]_i_2_n_1\,
      CO(1) => \Mult_reg[3]_i_2_n_2\,
      CO(0) => \Mult_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[3]_i_3_n_0\,
      DI(2) => \Mult[3]_i_4_n_0\,
      DI(1) => \Mult[3]_i_5_n_0\,
      DI(0) => '0',
      O(3) => \Mult_reg[3]_i_2_n_4\,
      O(2) => \Mult_reg[3]_i_2_n_5\,
      O(1) => \Mult_reg[3]_i_2_n_6\,
      O(0) => \Mult_reg[3]_i_2_n_7\,
      S(3) => \Mult[3]_i_6_n_0\,
      S(2) => \Mult[3]_i_7_n_0\,
      S(1) => \Mult[3]_i_8_n_0\,
      S(0) => \Mult[3]_i_9_n_0\
    );
\Mult_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(4),
      Q => \Mult_reg_n_0_[4]\,
      R => '0'
    );
\Mult_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(5),
      Q => \Mult_reg_n_0_[5]\,
      R => '0'
    );
\Mult_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(6),
      Q => \Mult_reg_n_0_[6]\,
      R => '0'
    );
\Mult_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Mult_reg[6]_i_1_n_0\,
      CO(2) => \Mult_reg[6]_i_1_n_1\,
      CO(1) => \Mult_reg[6]_i_1_n_2\,
      CO(0) => \Mult_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[6]_i_2_n_0\,
      DI(2) => \Mult_reg[6]_i_3_n_6\,
      DI(1) => \Mult_reg[6]_i_3_n_7\,
      DI(0) => \Mult_reg[2]_i_1_n_4\,
      O(3 downto 1) => multOp(6 downto 4),
      O(0) => \NLW_Mult_reg[6]_i_1_O_UNCONNECTED\(0),
      S(3) => \Mult[6]_i_4_n_0\,
      S(2) => \Mult[6]_i_5_n_0\,
      S(1) => \Mult[6]_i_6_n_0\,
      S(0) => \Mult[6]_i_7_n_0\
    );
\Mult_reg[6]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mult_reg[2]_i_1_n_0\,
      CO(3) => \Mult_reg[6]_i_3_n_0\,
      CO(2) => \Mult_reg[6]_i_3_n_1\,
      CO(1) => \Mult_reg[6]_i_3_n_2\,
      CO(0) => \Mult_reg[6]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \Mult[6]_i_8_n_0\,
      DI(2) => \Mult[6]_i_9_n_0\,
      DI(1) => \Mult[6]_i_10_n_0\,
      DI(0) => \Mult[6]_i_11_n_0\,
      O(3) => \Mult_reg[6]_i_3_n_4\,
      O(2) => \Mult_reg[6]_i_3_n_5\,
      O(1) => \Mult_reg[6]_i_3_n_6\,
      O(0) => \Mult_reg[6]_i_3_n_7\,
      S(3) => \Mult[6]_i_12_n_0\,
      S(2) => \Mult[6]_i_13_n_0\,
      S(1) => \Mult[6]_i_14_n_0\,
      S(0) => \Mult[6]_i_15_n_0\
    );
\Mult_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(7),
      Q => \Mult_reg_n_0_[7]\,
      R => '0'
    );
\Mult_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(8),
      Q => data6(0),
      R => '0'
    );
\Mult_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => multOp(9),
      Q => data6(1),
      R => '0'
    );
\Opcode[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(3),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(3),
      O => \Opcode[0]_i_1_n_0\
    );
\Opcode[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(4),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(4),
      O => \Opcode[1]_i_1_n_0\
    );
\Opcode[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(5),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(5),
      O => \Opcode[2]_i_1_n_0\
    );
\Opcode[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(6),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(6),
      O => \Opcode[3]_i_1_n_0\
    );
\Opcode[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(7),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(7),
      O => \Opcode[4]_i_1_n_0\
    );
\Opcode_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Opcode[0]_i_1_n_0\,
      Q => Opcode(0)
    );
\Opcode_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Opcode[1]_i_1_n_0\,
      Q => Opcode(1)
    );
\Opcode_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Opcode[2]_i_1_n_0\,
      Q => Opcode(2)
    );
\Opcode_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Opcode[3]_i_1_n_0\,
      Q => Opcode(3)
    );
\Opcode_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Opcode[4]_i_1_n_0\,
      Q => Opcode(4)
    );
\Operand1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \SubOp[2]_i_5_n_0\,
      I1 => \SubOp_reg[2]_i_4_n_0\,
      O => \Operand1[7]_i_1_n_0\
    );
\Operand1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(0),
      Q => data2(0)
    );
\Operand1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(1),
      Q => data2(1)
    );
\Operand1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(2),
      Q => data2(2)
    );
\Operand1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(3),
      Q => data2(3)
    );
\Operand1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(4),
      Q => data2(4)
    );
\Operand1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(5),
      Q => data2(5)
    );
\Operand1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(6),
      Q => data2(6)
    );
\Operand1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand1[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(7),
      Q => data2(7)
    );
\Operand2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \SubOp[2]_i_5_n_0\,
      I1 => \SubOp_reg[2]_i_4_n_0\,
      O => \Operand2[7]_i_1_n_0\
    );
\Operand2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(0),
      Q => data2(8)
    );
\Operand2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(1),
      Q => data2(9)
    );
\Operand2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(2),
      Q => data2(10)
    );
\Operand2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(3),
      Q => data2(11)
    );
\Operand2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(4),
      Q => data2(12)
    );
\Operand2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(5),
      Q => data2(13)
    );
\Operand2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(6),
      Q => data2(14)
    );
\Operand2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Operand2[7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(7),
      Q => data2(15)
    );
\Pending[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8A8800008A88"
    )
        port map (
      I0 => Int_Mask(0),
      I1 => Interrupts_IBUF(0),
      I2 => \Pending[4]_i_3_n_0\,
      I3 => \Pending[0]_i_2_n_0\,
      I4 => \Pending_reg_n_0_[0]\,
      I5 => Wait_for_FSM,
      O => \Pending[0]_i_1_n_0\
    );
\Pending[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => SubOp(0),
      I1 => SubOp(1),
      I2 => SubOp(2),
      O => \Pending[0]_i_2_n_0\
    );
\Pending[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACA"
    )
        port map (
      I0 => \Pending[1]_i_2_n_0\,
      I1 => Wait_for_FSM,
      I2 => p_6_in,
      I3 => \Pending_reg_n_0_[0]\,
      O => \Pending[1]_i_1_n_0\
    );
\Pending[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888A8888"
    )
        port map (
      I0 => Int_Mask(1),
      I1 => Interrupts_IBUF(1),
      I2 => \Pending[4]_i_3_n_0\,
      I3 => SubOp(1),
      I4 => SubOp(0),
      I5 => SubOp(2),
      O => \Pending[1]_i_2_n_0\
    );
\Pending[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747474447444"
    )
        port map (
      I0 => \Pending[2]_i_2_n_0\,
      I1 => p_5_in,
      I2 => Int_Mask(2),
      I3 => Interrupts_IBUF(2),
      I4 => \Pending[4]_i_3_n_0\,
      I5 => \Pending[2]_i_3_n_0\,
      O => \Pending[2]_i_1_n_0\
    );
\Pending[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \Pending_reg_n_0_[0]\,
      I1 => p_6_in,
      I2 => Wait_for_FSM,
      O => \Pending[2]_i_2_n_0\
    );
\Pending[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => SubOp(2),
      I1 => SubOp(1),
      I2 => SubOp(0),
      O => \Pending[2]_i_3_n_0\
    );
\Pending[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFFFCAAAA"
    )
        port map (
      I0 => \Pending[3]_i_2_n_0\,
      I1 => \Pending_reg_n_0_[0]\,
      I2 => p_6_in,
      I3 => Wait_for_FSM,
      I4 => p_4_in,
      I5 => p_5_in,
      O => \Pending[3]_i_1_n_0\
    );
\Pending[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888888888888"
    )
        port map (
      I0 => Int_Mask(3),
      I1 => Interrupts_IBUF(3),
      I2 => \Pending[4]_i_3_n_0\,
      I3 => SubOp(2),
      I4 => SubOp(1),
      I5 => SubOp(0),
      O => \Pending[3]_i_2_n_0\
    );
\Pending[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747474447444"
    )
        port map (
      I0 => \Pending[4]_i_2_n_0\,
      I1 => p_3_in,
      I2 => Int_Mask(4),
      I3 => Interrupts_IBUF(4),
      I4 => \Pending[4]_i_3_n_0\,
      I5 => \Pending[4]_i_4_n_0\,
      O => \Pending[4]_i_1_n_0\
    );
\Pending[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in,
      I2 => p_6_in,
      I3 => \Pending_reg_n_0_[0]\,
      I4 => Wait_for_FSM,
      O => \Pending[4]_i_2_n_0\
    );
\Pending[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Pending[4]_i_5_n_0\,
      I1 => \Pending[5]_i_2_n_0\,
      O => \Pending[4]_i_3_n_0\
    );
\Pending[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SubOp(0),
      I1 => SubOp(1),
      I2 => SubOp(2),
      O => \Pending[4]_i_4_n_0\
    );
\Pending[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Pending[5]_i_6_n_0\,
      I1 => SubOp(2),
      I2 => \Pending[4]_i_6_n_0\,
      O => \Pending[4]_i_5_n_0\
    );
\Pending[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Int_Mask(3),
      I1 => Int_Mask(2),
      I2 => SubOp(1),
      I3 => Int_Mask(1),
      I4 => SubOp(0),
      I5 => Int_Mask(0),
      O => \Pending[4]_i_6_n_0\
    );
\Pending[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF888F888F"
    )
        port map (
      I0 => Interrupts_IBUF(5),
      I1 => Int_Mask(5),
      I2 => \Pending[5]_i_2_n_0\,
      I3 => \Pending[5]_i_3_n_0\,
      I4 => \Pending[7]_i_2_n_0\,
      I5 => p_2_in,
      O => \Pending[5]_i_1_n_0\
    );
\Pending[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => Opcode(3),
      I1 => Opcode(2),
      I2 => Opcode(1),
      I3 => Opcode(0),
      I4 => \Pending[5]_i_4_n_0\,
      I5 => \Pending[5]_i_5_n_0\,
      O => \Pending[5]_i_2_n_0\
    );
\Pending[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \Pending[5]_i_6_n_0\,
      I1 => SubOp(2),
      I2 => SubOp(1),
      I3 => SubOp(0),
      I4 => Int_Mask(5),
      O => \Pending[5]_i_3_n_0\
    );
\Pending[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(2),
      I2 => CPU_State(1),
      I3 => Opcode(4),
      O => \Pending[5]_i_4_n_0\
    );
\Pending[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(3),
      I2 => CPU_State(5),
      I3 => \SubOp[2]_i_3_n_0\,
      O => \Pending[5]_i_5_n_0\
    );
\Pending[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Int_Mask(7),
      I1 => Int_Mask(6),
      I2 => SubOp(1),
      I3 => Int_Mask(5),
      I4 => SubOp(0),
      I5 => Int_Mask(4),
      O => \Pending[5]_i_6_n_0\
    );
\Pending[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA3A"
    )
        port map (
      I0 => \Pending[6]_i_2_n_0\,
      I1 => \Pending[7]_i_2_n_0\,
      I2 => \Pending_reg_n_0_[6]\,
      I3 => p_2_in,
      O => \Pending[6]_i_1_n_0\
    );
\Pending[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888888888888"
    )
        port map (
      I0 => Int_Mask(6),
      I1 => Interrupts_IBUF(6),
      I2 => \Pending[4]_i_3_n_0\,
      I3 => SubOp(0),
      I4 => SubOp(1),
      I5 => SubOp(2),
      O => \Pending[6]_i_2_n_0\
    );
\Pending[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => p_2_in,
      I1 => \Pending_reg_n_0_[6]\,
      I2 => \Pending[7]_i_2_n_0\,
      I3 => p_1_in,
      I4 => \Pending[7]_i_3_n_0\,
      O => \Pending[7]_i_1_n_0\
    );
\Pending[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Wait_for_FSM,
      I1 => \Pending_reg_n_0_[0]\,
      I2 => p_6_in,
      I3 => p_5_in,
      I4 => p_4_in,
      I5 => p_3_in,
      O => \Pending[7]_i_2_n_0\
    );
\Pending[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888888888888"
    )
        port map (
      I0 => Int_Mask(7),
      I1 => Interrupts_IBUF(7),
      I2 => \Pending[4]_i_3_n_0\,
      I3 => SubOp(2),
      I4 => SubOp(1),
      I5 => SubOp(0),
      O => \Pending[7]_i_3_n_0\
    );
\Pending_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[0]_i_1_n_0\,
      Q => \Pending_reg_n_0_[0]\
    );
\Pending_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[1]_i_1_n_0\,
      Q => p_6_in
    );
\Pending_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[2]_i_1_n_0\,
      Q => p_5_in
    );
\Pending_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[3]_i_1_n_0\,
      Q => p_4_in
    );
\Pending_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[4]_i_1_n_0\,
      Q => p_3_in
    );
\Pending_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[5]_i_1_n_0\,
      Q => p_2_in
    );
\Pending_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[6]_i_1_n_0\,
      Q => \Pending_reg_n_0_[6]\
    );
\Pending_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => \Pending[7]_i_1_n_0\,
      Q => p_1_in
    );
\Prefetch[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410041004100000"
    )
        port map (
      I0 => \Prefetch[7]_i_2_n_0\,
      I1 => CPU_State(1),
      I2 => CPU_State(2),
      I3 => CPU_State(0),
      I4 => CPU_State(4),
      I5 => \Prefetch[7]_i_3_n_0\,
      O => Cache_Ctrl(2)
    );
\Prefetch[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      O => \Prefetch[7]_i_2_n_0\
    );
\Prefetch[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000050000004300"
    )
        port map (
      I0 => Opcode(0),
      I1 => Opcode(1),
      I2 => Opcode(2),
      I3 => Opcode(4),
      I4 => CPU_State(2),
      I5 => Opcode(3),
      O => \Prefetch[7]_i_3_n_0\
    );
\Prefetch_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(0),
      Q => Prefetch(0)
    );
\Prefetch_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(1),
      Q => Prefetch(1)
    );
\Prefetch_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(2),
      Q => Prefetch(2)
    );
\Prefetch_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(3),
      Q => Prefetch(3)
    );
\Prefetch_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(4),
      Q => Prefetch(4)
    );
\Prefetch_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(5),
      Q => Prefetch(5)
    );
\Prefetch_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(6),
      Q => Prefetch(6)
    );
\Prefetch_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => Cache_Ctrl(2),
      CLR => Ack_Q_i_2_n_0,
      D => Rd_Data_IBUF(7),
      Q => Prefetch(7)
    );
\Program_Ctr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFC0AFA0CFCF"
    )
        port map (
      I0 => \Program_Ctr_reg[3]_i_2_n_7\,
      I1 => \Program_Ctr_reg[3]_i_3_n_7\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[0]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg_n_0_[0]\,
      O => Program_Ctr(0)
    );
\Program_Ctr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(0),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[0]_i_2_n_0\
    );
\Program_Ctr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[11]_i_2_n_5\,
      I1 => \Program_Ctr_reg[11]_i_3_n_5\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[10]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[12]_i_3_n_6\,
      O => Program_Ctr(10)
    );
\Program_Ctr[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(10),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[10]_i_2_n_0\
    );
\Program_Ctr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[11]_i_2_n_4\,
      I1 => \Program_Ctr_reg[11]_i_3_n_4\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[11]_i_4_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[12]_i_3_n_5\,
      O => Program_Ctr(11)
    );
\Program_Ctr[11]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[11]\,
      O => \Program_Ctr[11]_i_10_n_0\
    );
\Program_Ctr[11]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[10]\,
      O => \Program_Ctr[11]_i_11_n_0\
    );
\Program_Ctr[11]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[9]\,
      O => \Program_Ctr[11]_i_12_n_0\
    );
\Program_Ctr[11]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[8]\,
      O => \Program_Ctr[11]_i_13_n_0\
    );
\Program_Ctr[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \Program_Ctr[11]_i_15_n_0\,
      I1 => CPU_State(2),
      I2 => CPU_State(1),
      I3 => CPU_State(5),
      I4 => CPU_State(3),
      I5 => \Program_Ctr[11]_i_16_n_0\,
      O => \Program_Ctr[11]_i_14_n_0\
    );
\Program_Ctr[11]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => \CPU_State[1]_i_6_n_0\,
      I1 => CPU_State(2),
      I2 => CPU_State(1),
      I3 => CPU_State(0),
      O => \Program_Ctr[11]_i_15_n_0\
    );
\Program_Ctr[11]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(1),
      I2 => CPU_State(0),
      I3 => Flags(0),
      O => \Program_Ctr[11]_i_16_n_0\
    );
\Program_Ctr[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(11),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[11]_i_4_n_0\
    );
\Program_Ctr[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[8]\,
      O => \Program_Ctr[11]_i_5_n_0\
    );
\Program_Ctr[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[10]\,
      I1 => \Program_Ctr_reg_n_0_[11]\,
      O => \Program_Ctr[11]_i_6_n_0\
    );
\Program_Ctr[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[9]\,
      I1 => \Program_Ctr_reg_n_0_[10]\,
      O => \Program_Ctr[11]_i_7_n_0\
    );
\Program_Ctr[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[8]\,
      I1 => \Program_Ctr_reg_n_0_[9]\,
      O => \Program_Ctr[11]_i_8_n_0\
    );
\Program_Ctr[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22022222DDFDDDDD"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[7]\,
      I1 => \SubOp[2]_i_3_n_0\,
      I2 => data2(7),
      I3 => CPU_State(4),
      I4 => \Program_Ctr[11]_i_14_n_0\,
      I5 => \Program_Ctr_reg_n_0_[8]\,
      O => \Program_Ctr[11]_i_9_n_0\
    );
\Program_Ctr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[15]_i_7_n_7\,
      I1 => \Program_Ctr_reg[15]_i_8_n_7\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[12]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[12]_i_3_n_4\,
      O => Program_Ctr(12)
    );
\Program_Ctr[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(12),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[12]_i_2_n_0\
    );
\Program_Ctr[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[12]\,
      O => \Program_Ctr[12]_i_4_n_0\
    );
\Program_Ctr[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[11]\,
      O => \Program_Ctr[12]_i_5_n_0\
    );
\Program_Ctr[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[10]\,
      O => \Program_Ctr[12]_i_6_n_0\
    );
\Program_Ctr[12]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[9]\,
      O => \Program_Ctr[12]_i_7_n_0\
    );
\Program_Ctr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[15]_i_7_n_6\,
      I1 => \Program_Ctr_reg[15]_i_8_n_6\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[13]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[15]_i_11_n_7\,
      O => Program_Ctr(13)
    );
\Program_Ctr[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(13),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[13]_i_2_n_0\
    );
\Program_Ctr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[15]_i_7_n_5\,
      I1 => \Program_Ctr_reg[15]_i_8_n_5\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[14]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[15]_i_11_n_6\,
      O => Program_Ctr(14)
    );
\Program_Ctr[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(14),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[14]_i_2_n_0\
    );
\Program_Ctr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Program_Ctr[15]_i_3_n_0\,
      I2 => \Program_Ctr[15]_i_4_n_0\,
      I3 => \Int_Mask[7]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_5_n_0\,
      I5 => \Program_Ctr[15]_i_6_n_0\,
      O => \Program_Ctr[15]_i_1_n_0\
    );
\Program_Ctr[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEEFFFF0000"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Program_Ctr[15]_i_3_n_0\,
      I2 => \Program_Ctr[15]_i_4_n_0\,
      I3 => \Int_Mask[7]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_6_n_0\,
      I5 => \Program_Ctr[15]_i_5_n_0\,
      O => \Program_Ctr[15]_i_10_n_0\
    );
\Program_Ctr[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57577FF7"
    )
        port map (
      I0 => Opcode(4),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(2),
      I4 => Opcode(3),
      O => \Program_Ctr[15]_i_12_n_0\
    );
\Program_Ctr[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23C000CF00000000"
    )
        port map (
      I0 => \Program_Ctr[15]_i_26_n_0\,
      I1 => Opcode(3),
      I2 => Opcode(0),
      I3 => Opcode(1),
      I4 => Opcode(2),
      I5 => Opcode(4),
      O => \Program_Ctr[15]_i_13_n_0\
    );
\Program_Ctr[15]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[14]\,
      I1 => \Program_Ctr_reg_n_0_[15]\,
      O => \Program_Ctr[15]_i_14_n_0\
    );
\Program_Ctr[15]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[13]\,
      I1 => \Program_Ctr_reg_n_0_[14]\,
      O => \Program_Ctr[15]_i_15_n_0\
    );
\Program_Ctr[15]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[12]\,
      I1 => \Program_Ctr_reg_n_0_[13]\,
      O => \Program_Ctr[15]_i_16_n_0\
    );
\Program_Ctr[15]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[11]\,
      I1 => \Program_Ctr_reg_n_0_[12]\,
      O => \Program_Ctr[15]_i_17_n_0\
    );
\Program_Ctr[15]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[15]\,
      O => \Program_Ctr[15]_i_18_n_0\
    );
\Program_Ctr[15]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[14]\,
      O => \Program_Ctr[15]_i_19_n_0\
    );
\Program_Ctr[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[15]_i_7_n_4\,
      I1 => \Program_Ctr_reg[15]_i_8_n_4\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[15]_i_9_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[15]_i_11_n_5\,
      O => Program_Ctr(15)
    );
\Program_Ctr[15]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[13]\,
      O => \Program_Ctr[15]_i_20_n_0\
    );
\Program_Ctr[15]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[12]\,
      O => \Program_Ctr[15]_i_21_n_0\
    );
\Program_Ctr[15]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFB6F7F"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(2),
      I2 => CPU_State(0),
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[15]_i_22_n_0\
    );
\Program_Ctr[15]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[15]\,
      O => \Program_Ctr[15]_i_23_n_0\
    );
\Program_Ctr[15]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[14]\,
      O => \Program_Ctr[15]_i_24_n_0\
    );
\Program_Ctr[15]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[13]\,
      O => \Program_Ctr[15]_i_25_n_0\
    );
\Program_Ctr[15]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SubOp(0),
      I1 => SubOp(2),
      I2 => SubOp(1),
      O => \Program_Ctr[15]_i_26_n_0\
    );
\Program_Ctr[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1333331111232A13"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(5),
      I2 => CPU_State(0),
      I3 => CPU_State(3),
      I4 => CPU_State(4),
      I5 => CPU_State(2),
      O => \Program_Ctr[15]_i_3_n_0\
    );
\Program_Ctr[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFD6FF"
    )
        port map (
      I0 => SubOp(2),
      I1 => SubOp(1),
      I2 => SubOp(0),
      I3 => Opcode(1),
      I4 => Opcode(3),
      I5 => \Program_Ctr[15]_i_12_n_0\,
      O => \Program_Ctr[15]_i_4_n_0\
    );
\Program_Ctr[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Program_Ctr[15]_i_3_n_0\,
      I2 => \Int_Mask[7]_i_2_n_0\,
      I3 => \Program_Ctr[15]_i_13_n_0\,
      O => \Program_Ctr[15]_i_5_n_0\
    );
\Program_Ctr[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002400004000"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(5),
      I2 => CPU_State(0),
      I3 => CPU_State(3),
      I4 => CPU_State(4),
      I5 => CPU_State(2),
      O => \Program_Ctr[15]_i_6_n_0\
    );
\Program_Ctr[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(15),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[15]_i_9_n_0\
    );
\Program_Ctr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[3]_i_2_n_6\,
      I1 => \Program_Ctr_reg[3]_i_3_n_6\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[1]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[4]_i_3_n_7\,
      O => Program_Ctr(1)
    );
\Program_Ctr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(1),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[1]_i_2_n_0\
    );
\Program_Ctr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[3]_i_2_n_5\,
      I1 => \Program_Ctr_reg[3]_i_3_n_5\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[2]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[4]_i_3_n_6\,
      O => Program_Ctr(2)
    );
\Program_Ctr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040004"
    )
        port map (
      I0 => CPU_State(4),
      I1 => data2(2),
      I2 => \Program_Ctr[15]_i_22_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[2]_i_2_n_0\
    );
\Program_Ctr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[3]_i_2_n_4\,
      I1 => \Program_Ctr_reg[3]_i_3_n_4\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[3]_i_4_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[4]_i_3_n_5\,
      O => Program_Ctr(3)
    );
\Program_Ctr[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Program_Ctr[3]_i_16_n_0\,
      I1 => \Program_Ctr_reg_n_0_[1]\,
      O => \Program_Ctr[3]_i_10_n_0\
    );
\Program_Ctr[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[0]\,
      I1 => \Program_Ctr[3]_i_15_n_0\,
      I2 => data2(0),
      O => \Program_Ctr[3]_i_11_n_0\
    );
\Program_Ctr[3]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[3]\,
      O => \Program_Ctr[3]_i_12_n_0\
    );
\Program_Ctr[3]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[2]\,
      O => \Program_Ctr[3]_i_13_n_0\
    );
\Program_Ctr[3]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[1]\,
      O => \Program_Ctr[3]_i_14_n_0\
    );
\Program_Ctr[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFFFFFFF"
    )
        port map (
      I0 => \Program_Ctr[11]_i_15_n_0\,
      I1 => Flags(0),
      I2 => CPU_State(0),
      I3 => CPU_State(1),
      I4 => CPU_State(2),
      I5 => \Pending[5]_i_5_n_0\,
      O => \Program_Ctr[3]_i_15_n_0\
    );
\Program_Ctr[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data2(1),
      I1 => \Program_Ctr[3]_i_15_n_0\,
      O => \Program_Ctr[3]_i_16_n_0\
    );
\Program_Ctr[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040004"
    )
        port map (
      I0 => CPU_State(4),
      I1 => data2(3),
      I2 => \Program_Ctr[15]_i_22_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[3]_i_4_n_0\
    );
\Program_Ctr[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAAA"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[2]\,
      I1 => CPU_State(4),
      I2 => data2(2),
      I3 => \Program_Ctr[11]_i_14_n_0\,
      I4 => \SubOp[2]_i_3_n_0\,
      O => \Program_Ctr[3]_i_5_n_0\
    );
\Program_Ctr[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6555"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[2]\,
      I1 => CPU_State(4),
      I2 => data2(2),
      I3 => \Program_Ctr[11]_i_14_n_0\,
      I4 => \SubOp[2]_i_3_n_0\,
      O => \Program_Ctr[3]_i_6_n_0\
    );
\Program_Ctr[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data2(1),
      I1 => \Program_Ctr[3]_i_15_n_0\,
      O => \Program_Ctr[3]_i_7_n_0\
    );
\Program_Ctr[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6656666699A99999"
    )
        port map (
      I0 => \Program_Ctr[3]_i_5_n_0\,
      I1 => \SubOp[2]_i_3_n_0\,
      I2 => data2(3),
      I3 => CPU_State(4),
      I4 => \Program_Ctr[11]_i_14_n_0\,
      I5 => \Program_Ctr_reg_n_0_[3]\,
      O => \Program_Ctr[3]_i_8_n_0\
    );
\Program_Ctr[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEA55155515AAEA"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Program_Ctr[11]_i_14_n_0\,
      I2 => data2(2),
      I3 => CPU_State(4),
      I4 => \Program_Ctr_reg_n_0_[2]\,
      I5 => \Program_Ctr[3]_i_16_n_0\,
      O => \Program_Ctr[3]_i_9_n_0\
    );
\Program_Ctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[7]_i_2_n_7\,
      I1 => \Program_Ctr_reg[7]_i_3_n_7\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[4]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[4]_i_3_n_4\,
      O => Program_Ctr(4)
    );
\Program_Ctr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040004"
    )
        port map (
      I0 => CPU_State(4),
      I1 => data2(4),
      I2 => \Program_Ctr[15]_i_22_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[4]_i_2_n_0\
    );
\Program_Ctr[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[4]\,
      O => \Program_Ctr[4]_i_4_n_0\
    );
\Program_Ctr[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[3]\,
      O => \Program_Ctr[4]_i_5_n_0\
    );
\Program_Ctr[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[2]\,
      O => \Program_Ctr[4]_i_6_n_0\
    );
\Program_Ctr[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[1]\,
      O => \Program_Ctr[4]_i_7_n_0\
    );
\Program_Ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[7]_i_2_n_6\,
      I1 => \Program_Ctr_reg[7]_i_3_n_6\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[5]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[8]_i_3_n_7\,
      O => Program_Ctr(5)
    );
\Program_Ctr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040004"
    )
        port map (
      I0 => CPU_State(4),
      I1 => data2(5),
      I2 => \Program_Ctr[15]_i_22_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[5]_i_2_n_0\
    );
\Program_Ctr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[7]_i_2_n_5\,
      I1 => \Program_Ctr_reg[7]_i_3_n_5\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[6]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[8]_i_3_n_6\,
      O => Program_Ctr(6)
    );
\Program_Ctr[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040004"
    )
        port map (
      I0 => CPU_State(4),
      I1 => data2(6),
      I2 => \Program_Ctr[15]_i_22_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[6]_i_2_n_0\
    );
\Program_Ctr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[7]_i_2_n_4\,
      I1 => \Program_Ctr_reg[7]_i_3_n_4\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[7]_i_4_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[8]_i_3_n_5\,
      O => Program_Ctr(7)
    );
\Program_Ctr[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6656666699A99999"
    )
        port map (
      I0 => \Program_Ctr[7]_i_6_n_0\,
      I1 => \SubOp[2]_i_3_n_0\,
      I2 => data2(6),
      I3 => CPU_State(4),
      I4 => \Program_Ctr[11]_i_14_n_0\,
      I5 => \Program_Ctr_reg_n_0_[6]\,
      O => \Program_Ctr[7]_i_10_n_0\
    );
\Program_Ctr[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6656666699A99999"
    )
        port map (
      I0 => \Program_Ctr[7]_i_7_n_0\,
      I1 => \SubOp[2]_i_3_n_0\,
      I2 => data2(5),
      I3 => CPU_State(4),
      I4 => \Program_Ctr[11]_i_14_n_0\,
      I5 => \Program_Ctr_reg_n_0_[5]\,
      O => \Program_Ctr[7]_i_11_n_0\
    );
\Program_Ctr[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6656666699A99999"
    )
        port map (
      I0 => \Program_Ctr[7]_i_8_n_0\,
      I1 => \SubOp[2]_i_3_n_0\,
      I2 => data2(4),
      I3 => CPU_State(4),
      I4 => \Program_Ctr[11]_i_14_n_0\,
      I5 => \Program_Ctr_reg_n_0_[4]\,
      O => \Program_Ctr[7]_i_12_n_0\
    );
\Program_Ctr[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[7]\,
      O => \Program_Ctr[7]_i_13_n_0\
    );
\Program_Ctr[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[6]\,
      O => \Program_Ctr[7]_i_14_n_0\
    );
\Program_Ctr[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[5]\,
      O => \Program_Ctr[7]_i_15_n_0\
    );
\Program_Ctr[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[4]\,
      O => \Program_Ctr[7]_i_16_n_0\
    );
\Program_Ctr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040004"
    )
        port map (
      I0 => CPU_State(4),
      I1 => data2(7),
      I2 => \Program_Ctr[15]_i_22_n_0\,
      I3 => CPU_State(3),
      I4 => CPU_State(5),
      O => \Program_Ctr[7]_i_4_n_0\
    );
\Program_Ctr[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEAA"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[6]\,
      I1 => \Program_Ctr[11]_i_14_n_0\,
      I2 => CPU_State(4),
      I3 => data2(6),
      I4 => \SubOp[2]_i_3_n_0\,
      O => \Program_Ctr[7]_i_5_n_0\
    );
\Program_Ctr[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEAA"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[5]\,
      I1 => \Program_Ctr[11]_i_14_n_0\,
      I2 => CPU_State(4),
      I3 => data2(5),
      I4 => \SubOp[2]_i_3_n_0\,
      O => \Program_Ctr[7]_i_6_n_0\
    );
\Program_Ctr[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEAA"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[4]\,
      I1 => \Program_Ctr[11]_i_14_n_0\,
      I2 => CPU_State(4),
      I3 => data2(4),
      I4 => \SubOp[2]_i_3_n_0\,
      O => \Program_Ctr[7]_i_7_n_0\
    );
\Program_Ctr[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEAA"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[3]\,
      I1 => \Program_Ctr[11]_i_14_n_0\,
      I2 => CPU_State(4),
      I3 => data2(3),
      I4 => \SubOp[2]_i_3_n_0\,
      O => \Program_Ctr[7]_i_8_n_0\
    );
\Program_Ctr[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6656666699A99999"
    )
        port map (
      I0 => \Program_Ctr[7]_i_5_n_0\,
      I1 => \SubOp[2]_i_3_n_0\,
      I2 => data2(7),
      I3 => CPU_State(4),
      I4 => \Program_Ctr[11]_i_14_n_0\,
      I5 => \Program_Ctr_reg_n_0_[7]\,
      O => \Program_Ctr[7]_i_9_n_0\
    );
\Program_Ctr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[11]_i_2_n_7\,
      I1 => \Program_Ctr_reg[11]_i_3_n_7\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[8]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[8]_i_3_n_4\,
      O => Program_Ctr(8)
    );
\Program_Ctr[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(8),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[8]_i_2_n_0\
    );
\Program_Ctr[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[8]\,
      O => \Program_Ctr[8]_i_4_n_0\
    );
\Program_Ctr[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[7]\,
      O => \Program_Ctr[8]_i_5_n_0\
    );
\Program_Ctr[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[6]\,
      O => \Program_Ctr[8]_i_6_n_0\
    );
\Program_Ctr[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Program_Ctr_reg_n_0_[5]\,
      O => \Program_Ctr[8]_i_7_n_0\
    );
\Program_Ctr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0CFC0"
    )
        port map (
      I0 => \Program_Ctr_reg[11]_i_2_n_6\,
      I1 => \Program_Ctr_reg[11]_i_3_n_6\,
      I2 => \Program_Ctr[15]_i_5_n_0\,
      I3 => \Program_Ctr[9]_i_2_n_0\,
      I4 => \Program_Ctr[15]_i_10_n_0\,
      I5 => \Program_Ctr_reg[12]_i_3_n_7\,
      O => Program_Ctr(9)
    );
\Program_Ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004500"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => data2(9),
      I4 => \Program_Ctr[15]_i_22_n_0\,
      O => \Program_Ctr[9]_i_2_n_0\
    );
\Program_Ctr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(0),
      Q => \Program_Ctr_reg_n_0_[0]\
    );
\Program_Ctr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(10),
      Q => \Program_Ctr_reg_n_0_[10]\
    );
\Program_Ctr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(11),
      Q => \Program_Ctr_reg_n_0_[11]\
    );
\Program_Ctr_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[7]_i_2_n_0\,
      CO(3) => \Program_Ctr_reg[11]_i_2_n_0\,
      CO(2) => \Program_Ctr_reg[11]_i_2_n_1\,
      CO(1) => \Program_Ctr_reg[11]_i_2_n_2\,
      CO(0) => \Program_Ctr_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr_reg_n_0_[10]\,
      DI(2) => \Program_Ctr_reg_n_0_[9]\,
      DI(1) => \Program_Ctr_reg_n_0_[8]\,
      DI(0) => \Program_Ctr[11]_i_5_n_0\,
      O(3) => \Program_Ctr_reg[11]_i_2_n_4\,
      O(2) => \Program_Ctr_reg[11]_i_2_n_5\,
      O(1) => \Program_Ctr_reg[11]_i_2_n_6\,
      O(0) => \Program_Ctr_reg[11]_i_2_n_7\,
      S(3) => \Program_Ctr[11]_i_6_n_0\,
      S(2) => \Program_Ctr[11]_i_7_n_0\,
      S(1) => \Program_Ctr[11]_i_8_n_0\,
      S(0) => \Program_Ctr[11]_i_9_n_0\
    );
\Program_Ctr_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[7]_i_3_n_0\,
      CO(3) => \Program_Ctr_reg[11]_i_3_n_0\,
      CO(2) => \Program_Ctr_reg[11]_i_3_n_1\,
      CO(1) => \Program_Ctr_reg[11]_i_3_n_2\,
      CO(0) => \Program_Ctr_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr_reg_n_0_[11]\,
      DI(2) => \Program_Ctr_reg_n_0_[10]\,
      DI(1) => \Program_Ctr_reg_n_0_[9]\,
      DI(0) => \Program_Ctr_reg_n_0_[8]\,
      O(3) => \Program_Ctr_reg[11]_i_3_n_4\,
      O(2) => \Program_Ctr_reg[11]_i_3_n_5\,
      O(1) => \Program_Ctr_reg[11]_i_3_n_6\,
      O(0) => \Program_Ctr_reg[11]_i_3_n_7\,
      S(3) => \Program_Ctr[11]_i_10_n_0\,
      S(2) => \Program_Ctr[11]_i_11_n_0\,
      S(1) => \Program_Ctr[11]_i_12_n_0\,
      S(0) => \Program_Ctr[11]_i_13_n_0\
    );
\Program_Ctr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(12),
      Q => \Program_Ctr_reg_n_0_[12]\
    );
\Program_Ctr_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[8]_i_3_n_0\,
      CO(3) => \Program_Ctr_reg[12]_i_3_n_0\,
      CO(2) => \Program_Ctr_reg[12]_i_3_n_1\,
      CO(1) => \Program_Ctr_reg[12]_i_3_n_2\,
      CO(0) => \Program_Ctr_reg[12]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr_reg_n_0_[12]\,
      DI(2) => \Program_Ctr_reg_n_0_[11]\,
      DI(1) => \Program_Ctr_reg_n_0_[10]\,
      DI(0) => \Program_Ctr_reg_n_0_[9]\,
      O(3) => \Program_Ctr_reg[12]_i_3_n_4\,
      O(2) => \Program_Ctr_reg[12]_i_3_n_5\,
      O(1) => \Program_Ctr_reg[12]_i_3_n_6\,
      O(0) => \Program_Ctr_reg[12]_i_3_n_7\,
      S(3) => \Program_Ctr[12]_i_4_n_0\,
      S(2) => \Program_Ctr[12]_i_5_n_0\,
      S(1) => \Program_Ctr[12]_i_6_n_0\,
      S(0) => \Program_Ctr[12]_i_7_n_0\
    );
\Program_Ctr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(13),
      Q => \Program_Ctr_reg_n_0_[13]\
    );
\Program_Ctr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(14),
      Q => \Program_Ctr_reg_n_0_[14]\
    );
\Program_Ctr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(15),
      Q => \Program_Ctr_reg_n_0_[15]\
    );
\Program_Ctr_reg[15]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[12]_i_3_n_0\,
      CO(3 downto 2) => \NLW_Program_Ctr_reg[15]_i_11_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Program_Ctr_reg[15]_i_11_n_2\,
      CO(0) => \Program_Ctr_reg[15]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Program_Ctr_reg_n_0_[14]\,
      DI(0) => \Program_Ctr_reg_n_0_[13]\,
      O(3) => \NLW_Program_Ctr_reg[15]_i_11_O_UNCONNECTED\(3),
      O(2) => \Program_Ctr_reg[15]_i_11_n_5\,
      O(1) => \Program_Ctr_reg[15]_i_11_n_6\,
      O(0) => \Program_Ctr_reg[15]_i_11_n_7\,
      S(3) => '0',
      S(2) => \Program_Ctr[15]_i_23_n_0\,
      S(1) => \Program_Ctr[15]_i_24_n_0\,
      S(0) => \Program_Ctr[15]_i_25_n_0\
    );
\Program_Ctr_reg[15]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[11]_i_2_n_0\,
      CO(3) => \NLW_Program_Ctr_reg[15]_i_7_CO_UNCONNECTED\(3),
      CO(2) => \Program_Ctr_reg[15]_i_7_n_1\,
      CO(1) => \Program_Ctr_reg[15]_i_7_n_2\,
      CO(0) => \Program_Ctr_reg[15]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Program_Ctr_reg_n_0_[13]\,
      DI(1) => \Program_Ctr_reg_n_0_[12]\,
      DI(0) => \Program_Ctr_reg_n_0_[11]\,
      O(3) => \Program_Ctr_reg[15]_i_7_n_4\,
      O(2) => \Program_Ctr_reg[15]_i_7_n_5\,
      O(1) => \Program_Ctr_reg[15]_i_7_n_6\,
      O(0) => \Program_Ctr_reg[15]_i_7_n_7\,
      S(3) => \Program_Ctr[15]_i_14_n_0\,
      S(2) => \Program_Ctr[15]_i_15_n_0\,
      S(1) => \Program_Ctr[15]_i_16_n_0\,
      S(0) => \Program_Ctr[15]_i_17_n_0\
    );
\Program_Ctr_reg[15]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[11]_i_3_n_0\,
      CO(3) => \NLW_Program_Ctr_reg[15]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \Program_Ctr_reg[15]_i_8_n_1\,
      CO(1) => \Program_Ctr_reg[15]_i_8_n_2\,
      CO(0) => \Program_Ctr_reg[15]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Program_Ctr_reg_n_0_[14]\,
      DI(1) => \Program_Ctr_reg_n_0_[13]\,
      DI(0) => \Program_Ctr_reg_n_0_[12]\,
      O(3) => \Program_Ctr_reg[15]_i_8_n_4\,
      O(2) => \Program_Ctr_reg[15]_i_8_n_5\,
      O(1) => \Program_Ctr_reg[15]_i_8_n_6\,
      O(0) => \Program_Ctr_reg[15]_i_8_n_7\,
      S(3) => \Program_Ctr[15]_i_18_n_0\,
      S(2) => \Program_Ctr[15]_i_19_n_0\,
      S(1) => \Program_Ctr[15]_i_20_n_0\,
      S(0) => \Program_Ctr[15]_i_21_n_0\
    );
\Program_Ctr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(1),
      Q => \Program_Ctr_reg_n_0_[1]\
    );
\Program_Ctr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(2),
      Q => \Program_Ctr_reg_n_0_[2]\
    );
\Program_Ctr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(3),
      Q => \Program_Ctr_reg_n_0_[3]\
    );
\Program_Ctr_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Program_Ctr_reg[3]_i_2_n_0\,
      CO(2) => \Program_Ctr_reg[3]_i_2_n_1\,
      CO(1) => \Program_Ctr_reg[3]_i_2_n_2\,
      CO(0) => \Program_Ctr_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr[3]_i_5_n_0\,
      DI(2) => \Program_Ctr[3]_i_6_n_0\,
      DI(1) => \Program_Ctr[3]_i_7_n_0\,
      DI(0) => \Program_Ctr_reg_n_0_[0]\,
      O(3) => \Program_Ctr_reg[3]_i_2_n_4\,
      O(2) => \Program_Ctr_reg[3]_i_2_n_5\,
      O(1) => \Program_Ctr_reg[3]_i_2_n_6\,
      O(0) => \Program_Ctr_reg[3]_i_2_n_7\,
      S(3) => \Program_Ctr[3]_i_8_n_0\,
      S(2) => \Program_Ctr[3]_i_9_n_0\,
      S(1) => \Program_Ctr[3]_i_10_n_0\,
      S(0) => \Program_Ctr[3]_i_11_n_0\
    );
\Program_Ctr_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Program_Ctr_reg[3]_i_3_n_0\,
      CO(2) => \Program_Ctr_reg[3]_i_3_n_1\,
      CO(1) => \Program_Ctr_reg[3]_i_3_n_2\,
      CO(0) => \Program_Ctr_reg[3]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr_reg_n_0_[3]\,
      DI(2) => \Program_Ctr_reg_n_0_[2]\,
      DI(1) => \Program_Ctr_reg_n_0_[1]\,
      DI(0) => '0',
      O(3) => \Program_Ctr_reg[3]_i_3_n_4\,
      O(2) => \Program_Ctr_reg[3]_i_3_n_5\,
      O(1) => \Program_Ctr_reg[3]_i_3_n_6\,
      O(0) => \Program_Ctr_reg[3]_i_3_n_7\,
      S(3) => \Program_Ctr[3]_i_12_n_0\,
      S(2) => \Program_Ctr[3]_i_13_n_0\,
      S(1) => \Program_Ctr[3]_i_14_n_0\,
      S(0) => \Program_Ctr_reg_n_0_[0]\
    );
\Program_Ctr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(4),
      Q => \Program_Ctr_reg_n_0_[4]\
    );
\Program_Ctr_reg[4]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Program_Ctr_reg[4]_i_3_n_0\,
      CO(2) => \Program_Ctr_reg[4]_i_3_n_1\,
      CO(1) => \Program_Ctr_reg[4]_i_3_n_2\,
      CO(0) => \Program_Ctr_reg[4]_i_3_n_3\,
      CYINIT => \Program_Ctr_reg_n_0_[0]\,
      DI(3) => \Program_Ctr_reg_n_0_[4]\,
      DI(2) => \Program_Ctr_reg_n_0_[3]\,
      DI(1) => \Program_Ctr_reg_n_0_[2]\,
      DI(0) => \Program_Ctr_reg_n_0_[1]\,
      O(3) => \Program_Ctr_reg[4]_i_3_n_4\,
      O(2) => \Program_Ctr_reg[4]_i_3_n_5\,
      O(1) => \Program_Ctr_reg[4]_i_3_n_6\,
      O(0) => \Program_Ctr_reg[4]_i_3_n_7\,
      S(3) => \Program_Ctr[4]_i_4_n_0\,
      S(2) => \Program_Ctr[4]_i_5_n_0\,
      S(1) => \Program_Ctr[4]_i_6_n_0\,
      S(0) => \Program_Ctr[4]_i_7_n_0\
    );
\Program_Ctr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(5),
      Q => \Program_Ctr_reg_n_0_[5]\
    );
\Program_Ctr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(6),
      Q => \Program_Ctr_reg_n_0_[6]\
    );
\Program_Ctr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(7),
      Q => \Program_Ctr_reg_n_0_[7]\
    );
\Program_Ctr_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[3]_i_2_n_0\,
      CO(3) => \Program_Ctr_reg[7]_i_2_n_0\,
      CO(2) => \Program_Ctr_reg[7]_i_2_n_1\,
      CO(1) => \Program_Ctr_reg[7]_i_2_n_2\,
      CO(0) => \Program_Ctr_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr[7]_i_5_n_0\,
      DI(2) => \Program_Ctr[7]_i_6_n_0\,
      DI(1) => \Program_Ctr[7]_i_7_n_0\,
      DI(0) => \Program_Ctr[7]_i_8_n_0\,
      O(3) => \Program_Ctr_reg[7]_i_2_n_4\,
      O(2) => \Program_Ctr_reg[7]_i_2_n_5\,
      O(1) => \Program_Ctr_reg[7]_i_2_n_6\,
      O(0) => \Program_Ctr_reg[7]_i_2_n_7\,
      S(3) => \Program_Ctr[7]_i_9_n_0\,
      S(2) => \Program_Ctr[7]_i_10_n_0\,
      S(1) => \Program_Ctr[7]_i_11_n_0\,
      S(0) => \Program_Ctr[7]_i_12_n_0\
    );
\Program_Ctr_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[3]_i_3_n_0\,
      CO(3) => \Program_Ctr_reg[7]_i_3_n_0\,
      CO(2) => \Program_Ctr_reg[7]_i_3_n_1\,
      CO(1) => \Program_Ctr_reg[7]_i_3_n_2\,
      CO(0) => \Program_Ctr_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr_reg_n_0_[7]\,
      DI(2) => \Program_Ctr_reg_n_0_[6]\,
      DI(1) => \Program_Ctr_reg_n_0_[5]\,
      DI(0) => \Program_Ctr_reg_n_0_[4]\,
      O(3) => \Program_Ctr_reg[7]_i_3_n_4\,
      O(2) => \Program_Ctr_reg[7]_i_3_n_5\,
      O(1) => \Program_Ctr_reg[7]_i_3_n_6\,
      O(0) => \Program_Ctr_reg[7]_i_3_n_7\,
      S(3) => \Program_Ctr[7]_i_13_n_0\,
      S(2) => \Program_Ctr[7]_i_14_n_0\,
      S(1) => \Program_Ctr[7]_i_15_n_0\,
      S(0) => \Program_Ctr[7]_i_16_n_0\
    );
\Program_Ctr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(8),
      Q => \Program_Ctr_reg_n_0_[8]\
    );
\Program_Ctr_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Program_Ctr_reg[4]_i_3_n_0\,
      CO(3) => \Program_Ctr_reg[8]_i_3_n_0\,
      CO(2) => \Program_Ctr_reg[8]_i_3_n_1\,
      CO(1) => \Program_Ctr_reg[8]_i_3_n_2\,
      CO(0) => \Program_Ctr_reg[8]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \Program_Ctr_reg_n_0_[8]\,
      DI(2) => \Program_Ctr_reg_n_0_[7]\,
      DI(1) => \Program_Ctr_reg_n_0_[6]\,
      DI(0) => \Program_Ctr_reg_n_0_[5]\,
      O(3) => \Program_Ctr_reg[8]_i_3_n_4\,
      O(2) => \Program_Ctr_reg[8]_i_3_n_5\,
      O(1) => \Program_Ctr_reg[8]_i_3_n_6\,
      O(0) => \Program_Ctr_reg[8]_i_3_n_7\,
      S(3) => \Program_Ctr[8]_i_4_n_0\,
      S(2) => \Program_Ctr[8]_i_5_n_0\,
      S(1) => \Program_Ctr[8]_i_6_n_0\,
      S(0) => \Program_Ctr[8]_i_7_n_0\
    );
\Program_Ctr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Program_Ctr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => Program_Ctr(9),
      Q => \Program_Ctr_reg_n_0_[9]\
    );
\Rd_Data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(0),
      O => Rd_Data_IBUF(0)
    );
\Rd_Data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(1),
      O => Rd_Data_IBUF(1)
    );
\Rd_Data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(2),
      O => Rd_Data_IBUF(2)
    );
\Rd_Data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(3),
      O => Rd_Data_IBUF(3)
    );
\Rd_Data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(4),
      O => Rd_Data_IBUF(4)
    );
\Rd_Data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(5),
      O => Rd_Data_IBUF(5)
    );
\Rd_Data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(6),
      O => Rd_Data_IBUF(6)
    );
\Rd_Data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Rd_Data(7),
      O => Rd_Data_IBUF(7)
    );
Rd_Enable_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Rd_Enable_OBUF,
      O => Rd_Enable
    );
Rd_Enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Rd_Enable_i_3_n_0,
      I1 => Rd_Enable_i_4_n_0,
      I2 => Rd_Enable_i_5_n_0,
      O => Rd_Enable_i_1_n_0
    );
Rd_Enable_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000100"
    )
        port map (
      I0 => Opcode(0),
      I1 => Opcode(1),
      I2 => Opcode(2),
      I3 => Opcode(4),
      I4 => Opcode(3),
      O => Rd_Enable_i_10_n_0
    );
Rd_Enable_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(2),
      I2 => CPU_State(3),
      O => Rd_Enable_i_11_n_0
    );
Rd_Enable_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF3FFFFFFF3FFFCF"
    )
        port map (
      I0 => Rd_Enable_i_13_n_0,
      I1 => Opcode(3),
      I2 => Opcode(4),
      I3 => Opcode(2),
      I4 => Opcode(1),
      I5 => Opcode(0),
      O => Rd_Enable_i_12_n_0
    );
Rd_Enable_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => SubOp(0),
      I1 => SubOp(1),
      I2 => SubOp(2),
      O => Rd_Enable_i_13_n_0
    );
Rd_Enable_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset_IBUF,
      O => Rd_Enable_i_2_n_0
    );
Rd_Enable_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000004055555555"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => Rd_Enable_i_6_n_0,
      I2 => CPU_State(0),
      I3 => CPU_State(3),
      I4 => CPU_State(2),
      I5 => Rd_Enable_i_7_n_0,
      O => Rd_Enable_i_3_n_0
    );
Rd_Enable_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA000000"
    )
        port map (
      I0 => CPU_State(5),
      I1 => Rd_Enable_i_8_n_0,
      I2 => CPU_State(0),
      I3 => Rd_Enable_i_9_n_0,
      I4 => CPU_State(1),
      I5 => \SubOp[2]_i_3_n_0\,
      O => Rd_Enable_i_4_n_0
    );
Rd_Enable_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005054000000000"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => Rd_Enable_i_10_n_0,
      I2 => CPU_State(1),
      I3 => CPU_State(5),
      I4 => CPU_State(4),
      I5 => Rd_Enable_i_11_n_0,
      O => Rd_Enable_i_5_n_0
    );
Rd_Enable_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5503000300005500"
    )
        port map (
      I0 => CPU_State(5),
      I1 => CPU_State(3),
      I2 => Rd_Enable_i_12_n_0,
      I3 => CPU_State(4),
      I4 => CPU_State(2),
      I5 => CPU_State(1),
      O => Rd_Enable_i_6_n_0
    );
Rd_Enable_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(2),
      I2 => CPU_State(5),
      I3 => CPU_State(3),
      I4 => CPU_State(4),
      O => Rd_Enable_i_7_n_0
    );
Rd_Enable_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \Int_Mask[7]_i_3_n_0\,
      I1 => Opcode(4),
      I2 => SubOp(0),
      I3 => SubOp(1),
      I4 => SubOp(2),
      O => Rd_Enable_i_8_n_0
    );
Rd_Enable_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(4),
      I2 => CPU_State(3),
      O => Rd_Enable_i_9_n_0
    );
Rd_Enable_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      D => Rd_Enable_i_1_n_0,
      PRE => Rd_Enable_i_2_n_0,
      Q => Rd_Enable_OBUF
    );
\Regfile[0][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77747474"
    )
        port map (
      I0 => \Regfile[1][0]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[1][0]_i_3_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => \Mult_reg_n_0_[0]\,
      O => \Regfile[0][0]_i_2_n_0\
    );
\Regfile[0][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888FFFFFFFF"
    )
        port map (
      I0 => \Regfile[0][5]_i_5_n_0\,
      I1 => \Regfile[0][0]_i_4_n_0\,
      I2 => \Regfile_reg[0][1]_i_5_n_7\,
      I3 => \Regfile[0][1]_i_4_n_0\,
      I4 => \Regfile[0][0]_i_5_n_0\,
      I5 => \Regfile[0][0]_i_6_n_0\,
      O => \Regfile[0][0]_i_3_n_0\
    );
\Regfile[0][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000B0F0B0F0B000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \R__0\(8),
      I2 => \Regfile[0][0]_i_7_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile_reg[0][1]_i_19_n_7\,
      I5 => R,
      O => \Regfile[0][0]_i_4_n_0\
    );
\Regfile[0][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09F90000"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \R__0\(8),
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \R__0\(7),
      I4 => \Regfile[0][7]_i_18_n_0\,
      O => \Regfile[0][0]_i_5_n_0\
    );
\Regfile[0][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FEF2F2F2FEFEFE"
    )
        port map (
      I0 => \Regfile[0][0]_i_8_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile_reg[0][1]_i_19_n_7\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \R__0\(8),
      O => \Regfile[0][0]_i_6_n_0\
    );
\Regfile[0][0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      O => \Regfile[0][0]_i_7_n_0\
    );
\Regfile[0][0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FF0503F"
    )
        port map (
      I0 => R,
      I1 => \Regfile_reg[0]__0\(0),
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \R__0\(8),
      O => \Regfile[0][0]_i_8_n_0\
    );
\Regfile[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAFEAE"
    )
        port map (
      I0 => \Regfile[0][1]_i_2_n_0\,
      I1 => \Regfile[0][1]_i_3_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile_reg[0][1]_i_5_n_6\,
      I4 => \Regfile[0][1]_i_6_n_0\,
      I5 => \Regfile[0][1]_i_7_n_0\,
      O => \Regfile[0]\(1)
    );
\Regfile[0][1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_19_n_6\,
      I1 => \Regfile_reg[0][1]_i_19_n_7\,
      I2 => R,
      O => \Regfile[0][1]_i_10_n_0\
    );
\Regfile[0][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DF557FFF"
    )
        port map (
      I0 => \Int_Mask[7]_i_2_n_0\,
      I1 => Opcode(2),
      I2 => \Regfile[0][1]_i_20_n_0\,
      I3 => Opcode(4),
      I4 => Opcode(3),
      I5 => \Regfile[0][1]_i_21_n_0\,
      O => \Regfile[0][1]_i_11_n_0\
    );
\Regfile[0][1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Regfile_reg[0]__0\(3),
      O => \Regfile[0][1]_i_12_n_0\
    );
\Regfile[0][1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \R__0\(6),
      O => \Regfile[0][1]_i_13_n_0\
    );
\Regfile[0][1]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \R__0\(7),
      I1 => \Regfile_reg[0]__0\(1),
      O => \Regfile[0][1]_i_14_n_0\
    );
\Regfile[0][1]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => R,
      O => \Regfile[0][1]_i_15_n_0\
    );
\Regfile[0][1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile[0][7]_i_8_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      O => \Regfile[0][1]_i_16_n_0\
    );
\Regfile[0][1]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3CC407"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \R__0\(8),
      I4 => \R__0\(7),
      O => \Regfile[0][1]_i_17_n_0\
    );
\Regfile[0][1]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \R__0\(7),
      O => \Regfile[0][1]_i_18_n_0\
    );
\Regfile[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000544455555444"
    )
        port map (
      I0 => \Regfile[0][7]_i_8_n_0\,
      I1 => \Regfile[0][1]_i_8_n_0\,
      I2 => \Mult_reg_n_0_[1]\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[2][1]_i_2_n_0\,
      O => \Regfile[0][1]_i_2_n_0\
    );
\Regfile[0][1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030383030303"
    )
        port map (
      I0 => Opcode(2),
      I1 => Opcode(1),
      I2 => Opcode(0),
      I3 => SubOp(2),
      I4 => SubOp(1),
      I5 => SubOp(0),
      O => \Regfile[0][1]_i_20_n_0\
    );
\Regfile[0][1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000140"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(5),
      I2 => CPU_State(1),
      I3 => CPU_State(4),
      I4 => CPU_State(2),
      I5 => CPU_State(3),
      O => \Regfile[0][1]_i_21_n_0\
    );
\Regfile[0][1]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Regfile[0][4]_i_7_n_0\,
      O => \Regfile[0][1]_i_22_n_0\
    );
\Regfile[0][1]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Regfile[0][1]_i_9_n_0\,
      O => \Regfile[0][1]_i_23_n_0\
    );
\Regfile[0][1]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \R__0\(7),
      O => \Regfile[0][1]_i_24_n_0\
    );
\Regfile[0][1]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \R__0\(8),
      O => \Regfile[0][1]_i_25_n_0\
    );
\Regfile[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBF33FB8BBC00C"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile_reg[0]__0\(1),
      I3 => \R__0\(7),
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][1]_i_10_n_0\,
      O => \Regfile[0][1]_i_3_n_0\
    );
\Regfile[0][1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Regfile[0][1]_i_11_n_0\,
      O => \Regfile[0][1]_i_4_n_0\
    );
\Regfile[0][1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Regfile[0][7]_i_11_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      O => \Regfile[0][1]_i_6_n_0\
    );
\Regfile[0][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A202A2020202A2"
    )
        port map (
      I0 => \Regfile[0][1]_i_16_n_0\,
      I1 => \Regfile[0][1]_i_17_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile[0][1]_i_18_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile_reg[0][1]_i_19_n_6\,
      O => \Regfile[0][1]_i_7_n_0\
    );
\Regfile[0][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000CEE0CFF0C11"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[2][1]_i_2_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \R__0\(8),
      I5 => \R__0\(7),
      O => \Regfile[0][1]_i_8_n_0\
    );
\Regfile[0][1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD0CFC0DFDFCFC0"
    )
        port map (
      I0 => \Mult[2]_i_18_n_0\,
      I1 => \Mult[2]_i_17_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Mult[2]_i_20_n_0\,
      I4 => \Regfile[0][7]_i_6_n_0\,
      I5 => \Mult[2]_i_19_n_0\,
      O => \Regfile[0][1]_i_9_n_0\
    );
\Regfile[0][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77747474"
    )
        port map (
      I0 => \Regfile[1][2]_i_3_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[1][2]_i_4_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => \Mult_reg_n_0_[2]\,
      O => \Regfile[0][2]_i_2_n_0\
    );
\Regfile[0][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_5_n_5\,
      I1 => \Regfile[0][2]_i_4_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[0][2]_i_5_n_0\,
      I4 => \Regfile[0][1]_i_4_n_0\,
      I5 => \Regfile[0][2]_i_6_n_0\,
      O => \Regfile[0][2]_i_3_n_0\
    );
\Regfile[0][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB83FF3BBB80CC0"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile_reg[0]__0\(2),
      I3 => \Regfile[0][1]_i_9_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][2]_i_7_n_0\,
      O => \Regfile[0][2]_i_4_n_0\
    );
\Regfile[0][2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88B8B8B"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_19_n_5\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \R__0\(6),
      I3 => \R__0\(7),
      I4 => \R__0\(8),
      O => \Regfile[0][2]_i_5_n_0\
    );
\Regfile[0][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => \R__0\(7),
      I1 => \Mult[6]_i_19_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][1]_i_9_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][2]_i_8_n_0\,
      O => \Regfile[0][2]_i_6_n_0\
    );
\Regfile[0][2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_19_n_5\,
      I1 => \Regfile_reg[0][1]_i_19_n_6\,
      I2 => R,
      I3 => \Regfile_reg[0][1]_i_19_n_7\,
      O => \Regfile[0][2]_i_7_n_0\
    );
\Regfile[0][2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \R__0\(7),
      I2 => \R__0\(8),
      O => \Regfile[0][2]_i_8_n_0\
    );
\Regfile[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile[0][3]_i_2_n_0\,
      I1 => \Regfile[0][3]_i_3_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][3]_i_4_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[0][3]_i_5_n_0\,
      O => \Regfile[0]\(3)
    );
\Regfile[0][3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FFC000C011C0EE"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][3]_i_4_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile[2][3]_i_3_n_0\,
      O => \Regfile[0][3]_i_10_n_0\
    );
\Regfile[0][3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_19_n_4\,
      I1 => \Regfile_reg[0][1]_i_19_n_7\,
      I2 => R,
      I3 => \Regfile_reg[0][1]_i_19_n_6\,
      I4 => \Regfile_reg[0][1]_i_19_n_5\,
      O => \Regfile[0][3]_i_11_n_0\
    );
\Regfile[0][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_5_n_4\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][3]_i_6_n_0\,
      O => \Regfile[0][3]_i_2_n_0\
    );
\Regfile[0][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Regfile[0][3]_i_7_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][3]_i_8_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[0][3]_i_9_n_0\,
      O => \Regfile[0][3]_i_3_n_0\
    );
\Regfile[0][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF040404040404"
    )
        port map (
      I0 => \Regfile[0][5]_i_11_n_0\,
      I1 => data2(3),
      I2 => CPU_State(0),
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(3),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[0][3]_i_4_n_0\
    );
\Regfile[0][3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \Regfile[0][7]_i_18_n_0\,
      I1 => \Mult_reg_n_0_[3]\,
      I2 => \Regfile[0][3]_i_10_n_0\,
      O => \Regfile[0][3]_i_5_n_0\
    );
\Regfile[0][3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB83FF3BBB80CC0"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile_reg[0]__0\(3),
      I3 => \Regfile[0][4]_i_7_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][3]_i_11_n_0\,
      O => \Regfile[0][3]_i_6_n_0\
    );
\Regfile[0][3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \Regfile_reg[0][1]_i_19_n_4\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile[0][4]_i_7_n_0\,
      I3 => \Regfile[0][4]_i_8_n_0\,
      O => \Regfile[0][3]_i_7_n_0\
    );
\Regfile[0][3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile[0][4]_i_7_n_0\,
      I3 => \Regfile_reg[0]__0\(3),
      O => \Regfile[0][3]_i_8_n_0\
    );
\Regfile[0][3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => \Regfile[1][7]_i_6_n_0\,
      I1 => \Regfile[0][4]_i_7_n_0\,
      I2 => \Regfile[2][3]_i_3_n_0\,
      O => \Regfile[0][3]_i_9_n_0\
    );
\Regfile[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \Regfile[0][4]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][4]_i_3_n_0\,
      I3 => \Regfile[0][4]_i_4_n_0\,
      I4 => \Regfile[0][7]_i_8_n_0\,
      I5 => \Regfile[0][4]_i_5_n_0\,
      O => \Regfile[0]\(4)
    );
\Regfile[0][4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \R__0\(7),
      I2 => \R__0\(6),
      I3 => \Regfile[0][4]_i_7_n_0\,
      O => \Regfile[0][4]_i_11_n_0\
    );
\Regfile[0][4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07F7"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \Regfile[0][4]_i_7_n_0\,
      O => \Regfile[0][4]_i_12_n_0\
    );
\Regfile[0][4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F30303F0F00050A"
    )
        port map (
      I0 => R,
      I1 => \Regfile[2][4]_i_2_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_11_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Regfile[0][4]_i_13_n_0\
    );
\Regfile[0][4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_7\,
      I1 => \Regfile_reg[0][1]_i_19_n_5\,
      I2 => \Regfile_reg[0][1]_i_19_n_6\,
      I3 => R,
      I4 => \Regfile_reg[0][1]_i_19_n_7\,
      I5 => \Regfile_reg[0][1]_i_19_n_4\,
      O => \Regfile[0][4]_i_14_n_0\
    );
\Regfile[0][4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(3),
      I1 => \Regfile_reg[2]__0\(3),
      I2 => \Regfile[0][7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(3),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[0]__0\(3),
      O => \Regfile[0][4]_i_15_n_0\
    );
\Regfile[0][4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(3),
      I1 => \Regfile_reg[4]__0\(3),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[7]__0\(3),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[6]__0\(3),
      O => \Regfile[0][4]_i_16_n_0\
    );
\Regfile[0][4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[1]__0\(4),
      I1 => \Regfile_reg[0]__0\(4),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[3]__0\(4),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[2]__0\(4),
      O => \Regfile[0][4]_i_17_n_0\
    );
\Regfile[0][4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(4),
      I1 => \Regfile_reg[4]__0\(4),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[7]__0\(4),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[6]__0\(4),
      O => \Regfile[0][4]_i_18_n_0\
    );
\Regfile[0][4]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(7),
      I1 => \Mult[15]_i_3_n_0\,
      O => \Regfile[0][4]_i_19_n_0\
    );
\Regfile[0][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile_reg[0][7]_i_20_n_7\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][4]_i_6_n_0\,
      O => \Regfile[0][4]_i_2_n_0\
    );
\Regfile[0][4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(6),
      I1 => \Regfile[0][7]_i_4_n_0\,
      I2 => \Mult[14]_i_21_n_0\,
      I3 => \Mult[14]_i_20_n_0\,
      O => \Regfile[0][4]_i_20_n_0\
    );
\Regfile[0][4]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"596A"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(5),
      I1 => \Regfile[0][7]_i_4_n_0\,
      I2 => \Regfile[1][4]_i_8_n_0\,
      I3 => \Regfile[1][4]_i_7_n_0\,
      O => \Regfile[0][4]_i_21_n_0\
    );
\Regfile[0][4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"596A"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(4),
      I1 => \Regfile[0][7]_i_4_n_0\,
      I2 => \Regfile[0][4]_i_18_n_0\,
      I3 => \Regfile[0][4]_i_17_n_0\,
      O => \Regfile[0][4]_i_22_n_0\
    );
\Regfile[0][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8020000A802"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][4]_i_7_n_0\,
      I2 => \Regfile[0][4]_i_8_n_0\,
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile_reg[0][4]_i_10_n_7\,
      O => \Regfile[0][4]_i_3_n_0\
    );
\Regfile[0][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A090F0F0A09"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile[0][4]_i_11_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      I5 => \Regfile[0][4]_i_12_n_0\,
      O => \Regfile[0][4]_i_4_n_0\
    );
\Regfile[0][4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77747474"
    )
        port map (
      I0 => \Regfile[2][4]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][4]_i_13_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => \Mult_reg_n_0_[4]\,
      O => \Regfile[0][4]_i_5_n_0\
    );
\Regfile[0][4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB83FF3BBB80CC0"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile_reg[0]__0\(4),
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][4]_i_14_n_0\,
      O => \Regfile[0][4]_i_6_n_0\
    );
\Regfile[0][4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \Regfile[0][4]_i_15_n_0\,
      I1 => \Regfile[0][4]_i_16_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      O => \Regfile[0][4]_i_7_n_0\
    );
\Regfile[0][4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \R__0\(7),
      I2 => \R__0\(8),
      O => \Regfile[0][4]_i_8_n_0\
    );
\Regfile[0][4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \Regfile[0][4]_i_17_n_0\,
      I1 => \Regfile[0][4]_i_18_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      O => \Regfile[0][4]_i_9_n_0\
    );
\Regfile[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile[0][5]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_3_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[0][5]_i_4_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[0][5]_i_6_n_0\,
      O => \Regfile[0]\(5)
    );
\Regfile[0][5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => \Regfile[1][7]_i_6_n_0\,
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile[2][5]_i_3_n_0\,
      O => \Regfile[0][5]_i_10_n_0\
    );
\Regfile[0][5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7FFFBFD"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(2),
      I2 => CPU_State(5),
      I3 => CPU_State(3),
      I4 => CPU_State(1),
      O => \Regfile[0][5]_i_11_n_0\
    );
\Regfile[0][5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \Regfile[0][5]_i_17_n_0\,
      I1 => SubOp(2),
      I2 => SubOp(1),
      I3 => SubOp(0),
      I4 => Opcode(3),
      I5 => Opcode(4),
      O => \Regfile[0][5]_i_12_n_0\
    );
\Regfile[0][5]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(5),
      I2 => CPU_State(0),
      I3 => CPU_State(3),
      I4 => CPU_State(2),
      O => \Regfile[0][5]_i_13_n_0\
    );
\Regfile[0][5]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000030"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(0),
      I2 => CPU_State(5),
      I3 => CPU_State(2),
      I4 => CPU_State(4),
      O => \Regfile[0][5]_i_14_n_0\
    );
\Regfile[0][5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FFC000C011C0EE"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][5]_i_4_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[1][4]_i_4_n_0\,
      I5 => \Regfile[2][5]_i_3_n_0\,
      O => \Regfile[0][5]_i_15_n_0\
    );
\Regfile[0][5]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_6\,
      I1 => \Flags[0]_i_38_n_0\,
      O => \Regfile[0][5]_i_16_n_0\
    );
\Regfile[0][5]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Opcode(2),
      I1 => Opcode(1),
      I2 => Opcode(0),
      O => \Regfile[0][5]_i_17_n_0\
    );
\Regfile[0][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile_reg[0][7]_i_20_n_6\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][5]_i_7_n_0\,
      O => \Regfile[0][5]_i_2_n_0\
    );
\Regfile[0][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Regfile[0][5]_i_8_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][5]_i_9_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[0][5]_i_10_n_0\,
      O => \Regfile[0][5]_i_3_n_0\
    );
\Regfile[0][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF040404040404"
    )
        port map (
      I0 => \Regfile[0][5]_i_11_n_0\,
      I1 => data2(5),
      I2 => CPU_State(0),
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(5),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[0][5]_i_4_n_0\
    );
\Regfile[0][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF040000"
    )
        port map (
      I0 => Opcode(4),
      I1 => Opcode(0),
      I2 => \Regfile[0][5]_i_13_n_0\,
      I3 => \Regfile[0][5]_i_14_n_0\,
      I4 => CPU_State(1),
      I5 => \SubOp[2]_i_3_n_0\,
      O => \Regfile[0][5]_i_5_n_0\
    );
\Regfile[0][5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \Regfile[0][7]_i_18_n_0\,
      I1 => \Mult_reg_n_0_[5]\,
      I2 => \Regfile[0][5]_i_15_n_0\,
      O => \Regfile[0][5]_i_6_n_0\
    );
\Regfile[0][5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB83FF3BBB80CC0"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile_reg[0]__0\(5),
      I3 => \Regfile[1][4]_i_4_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][5]_i_16_n_0\,
      O => \Regfile[0][5]_i_7_n_0\
    );
\Regfile[0][5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_6\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \Regfile[0][7]_i_30_n_0\,
      O => \Regfile[0][5]_i_8_n_0\
    );
\Regfile[0][5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile[1][7]_i_6_n_0\,
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \Regfile_reg[0]__0\(5),
      O => \Regfile[0][5]_i_9_n_0\
    );
\Regfile[0][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777444"
    )
        port map (
      I0 => \Regfile[2][6]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_18_n_0\,
      I3 => \Mult_reg_n_0_[6]\,
      I4 => \Regfile[0][6]_i_4_n_0\,
      O => \Regfile[0][6]_i_2_n_0\
    );
\Regfile[0][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[0][7]_i_20_n_5\,
      I1 => \Regfile[0][6]_i_5_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[0][6]_i_6_n_0\,
      I4 => \Regfile[0][1]_i_4_n_0\,
      I5 => \Regfile[0][6]_i_7_n_0\,
      O => \Regfile[0][6]_i_3_n_0\
    );
\Regfile[0][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7340407373404370"
    )
        port map (
      I0 => \Regfile[2][6]_i_2_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile[2][6]_i_5_n_0\,
      I5 => R,
      O => \Regfile[0][6]_i_4_n_0\
    );
\Regfile[0][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB83FF3BBB80CC0"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile_reg[0]__0\(6),
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile[1][7]_i_6_n_0\,
      I5 => \Regfile[0][6]_i_8_n_0\,
      O => \Regfile[0][6]_i_5_n_0\
    );
\Regfile[0][6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9A009A"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile[0][7]_i_30_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile_reg[0][4]_i_10_n_5\,
      O => \Regfile[0][6]_i_6_n_0\
    );
\Regfile[0][6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB3BF83BC000C300"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(6),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \Regfile[1][4]_i_4_n_0\,
      I4 => \Regfile[2][5]_i_3_n_0\,
      I5 => \Mult[14]_i_11_n_0\,
      O => \Regfile[0][6]_i_7_n_0\
    );
\Regfile[0][6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_5\,
      I1 => \Flags[0]_i_38_n_0\,
      I2 => \Regfile_reg[0][4]_i_10_n_6\,
      O => \Regfile[0][6]_i_8_n_0\
    );
\Regfile[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \Regfile[0][7]_i_3_n_0\,
      I1 => \Regfile[0][7]_i_4_n_0\,
      I2 => \Regfile[0][7]_i_5_n_0\,
      I3 => \Regfile[0][7]_i_6_n_0\,
      I4 => \Regfile[0][7]_i_7_n_0\,
      O => \Regfile[0][7]_i_1_n_0\
    );
\Regfile[0][7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[0][7]_i_20_n_4\,
      I1 => \Regfile[0][7]_i_21_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[0][7]_i_22_n_0\,
      I4 => \Regfile[0][1]_i_4_n_0\,
      I5 => \Regfile[0][7]_i_23_n_0\,
      O => \Regfile[0][7]_i_10_n_0\
    );
\Regfile[0][7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010000"
    )
        port map (
      I0 => \Regfile[0][7]_i_24_n_0\,
      I1 => CPU_State(4),
      I2 => CPU_State(3),
      I3 => \CPU_State[2]_i_6_n_0\,
      I4 => CPU_State(5),
      I5 => CPU_State(0),
      O => \Regfile[0][7]_i_11_n_0\
    );
\Regfile[0][7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880808808"
    )
        port map (
      I0 => \Regfile[0][7]_i_14_n_0\,
      I1 => Opcode(4),
      I2 => Opcode(3),
      I3 => Opcode(1),
      I4 => Opcode(2),
      I5 => Opcode(0),
      O => \Regfile[0][7]_i_12_n_0\
    );
\Regfile[0][7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010C000000000020"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(2),
      I2 => CPU_State(5),
      I3 => CPU_State(3),
      I4 => CPU_State(4),
      I5 => CPU_State(0),
      O => \Regfile[0][7]_i_13_n_0\
    );
\Regfile[0][7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000221000100000"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(3),
      I2 => CPU_State(1),
      I3 => CPU_State(2),
      I4 => CPU_State(5),
      I5 => CPU_State(0),
      O => \Regfile[0][7]_i_14_n_0\
    );
\Regfile[0][7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFEFDFFFFFFBF"
    )
        port map (
      I0 => CPU_State(5),
      I1 => CPU_State(3),
      I2 => CPU_State(2),
      I3 => CPU_State(0),
      I4 => CPU_State(4),
      I5 => CPU_State(1),
      O => \Regfile[0][7]_i_15_n_0\
    );
\Regfile[0][7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0144FFFF"
    )
        port map (
      I0 => Opcode(0),
      I1 => Opcode(2),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(4),
      O => \Regfile[0][7]_i_16_n_0\
    );
\Regfile[0][7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A208AAAAA208"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      I2 => \Regfile[2][6]_i_5_n_0\,
      I3 => \Mult[15]_i_3_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      I5 => \Flags[7]_i_3_n_0\,
      O => \Regfile[0][7]_i_17_n_0\
    );
\Regfile[0][7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile[0][1]_i_11_n_0\,
      O => \Regfile[0][7]_i_18_n_0\
    );
\Regfile[0][7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BF40"
    )
        port map (
      I0 => \Regfile[2][6]_i_5_n_0\,
      I1 => R,
      I2 => \Mult[14]_i_11_n_0\,
      I3 => \Mult[15]_i_3_n_0\,
      I4 => \Regfile[0][1]_i_4_n_0\,
      I5 => \Flags[7]_i_2_n_0\,
      O => \Regfile[0][7]_i_19_n_0\
    );
\Regfile[0][7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBB8830FCFC30"
    )
        port map (
      I0 => R,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][7]_i_29_n_0\,
      I3 => \Regfile_reg[0]__0\(7),
      I4 => \Mult[15]_i_3_n_0\,
      I5 => \Regfile[1][7]_i_6_n_0\,
      O => \Regfile[0][7]_i_21_n_0\
    );
\Regfile[0][7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000A9AAA9AA"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Mult[14]_i_11_n_0\,
      I3 => \Regfile[0][7]_i_30_n_0\,
      I4 => \Regfile_reg[0][4]_i_10_n_4\,
      I5 => \Regfile[1][7]_i_6_n_0\,
      O => \Regfile[0][7]_i_22_n_0\
    );
\Regfile[0][7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB3BF83BC000C300"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(7),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[1][7]_i_6_n_0\,
      I3 => \Mult[14]_i_11_n_0\,
      I4 => \Regfile[2][6]_i_5_n_0\,
      I5 => \Mult[15]_i_3_n_0\,
      O => \Regfile[0][7]_i_23_n_0\
    );
\Regfile[0][7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222202222"
    )
        port map (
      I0 => Opcode(4),
      I1 => CPU_State(5),
      I2 => Opcode(0),
      I3 => Opcode(3),
      I4 => Opcode(2),
      I5 => Opcode(1),
      O => \Regfile[0][7]_i_24_n_0\
    );
\Regfile[0][7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile_reg[0]__0\(7),
      O => \Regfile[0][7]_i_25_n_0\
    );
\Regfile[0][7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile_reg[0]__0\(6),
      O => \Regfile[0][7]_i_26_n_0\
    );
\Regfile[0][7]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile_reg[0]__0\(5),
      O => \Regfile[0][7]_i_27_n_0\
    );
\Regfile[0][7]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile_reg[0]__0\(4),
      O => \Regfile[0][7]_i_28_n_0\
    );
\Regfile[0][7]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \Regfile_reg[0][4]_i_10_n_4\,
      I1 => \Regfile_reg[0][4]_i_10_n_6\,
      I2 => \Flags[0]_i_38_n_0\,
      I3 => \Regfile_reg[0][4]_i_10_n_5\,
      O => \Regfile[0][7]_i_29_n_0\
    );
\Regfile[0][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCF8BCFCCCC03"
    )
        port map (
      I0 => \Regfile[0][7]_i_11_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][7]_i_8_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Flags[7]_i_2_n_0\,
      O => \Regfile[0][7]_i_3_n_0\
    );
\Regfile[0][7]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \R__0\(8),
      I1 => \R__0\(7),
      I2 => \Regfile[0][1]_i_9_n_0\,
      I3 => \Regfile[0][4]_i_9_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      O => \Regfile[0][7]_i_30_n_0\
    );
\Regfile[0][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0F0C00004040404"
    )
        port map (
      I0 => \Regfile[0][7]_i_12_n_0\,
      I1 => SubOp(2),
      I2 => \Regfile[0][7]_i_13_n_0\,
      I3 => \Regfile[0][7]_i_14_n_0\,
      I4 => \SubOp_p1_reg_n_0_[2]\,
      I5 => \Regfile[0][7]_i_15_n_0\,
      O => \Regfile[0][7]_i_4_n_0\
    );
\Regfile[0][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F000F8FAF8FA"
    )
        port map (
      I0 => SubOp(0),
      I1 => \Regfile[0][7]_i_16_n_0\,
      I2 => \Regfile[0][7]_i_13_n_0\,
      I3 => \Regfile[0][7]_i_14_n_0\,
      I4 => \SubOp_p1_reg_n_0_[0]\,
      I5 => \Regfile[0][7]_i_15_n_0\,
      O => \Regfile[0][7]_i_5_n_0\
    );
\Regfile[0][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0C8F8CCC0C8F8C"
    )
        port map (
      I0 => \SubOp_p1_reg_n_0_[1]\,
      I1 => \Regfile[0][7]_i_13_n_0\,
      I2 => \Regfile[0][7]_i_15_n_0\,
      I3 => SubOp(1),
      I4 => \Regfile[0][7]_i_14_n_0\,
      I5 => \Regfile[0][7]_i_16_n_0\,
      O => \Regfile[0][7]_i_6_n_0\
    );
\Regfile[0][7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03444CC0"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      O => \Regfile[0][7]_i_7_n_0\
    );
\Regfile[0][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile[0][7]_i_11_n_0\,
      I1 => \SubOp[2]_i_3_n_0\,
      O => \Regfile[0][7]_i_8_n_0\
    );
\Regfile[0][7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777777747474"
    )
        port map (
      I0 => \Flags[7]_i_3_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_17_n_0\,
      I3 => \Mult_reg_n_0_[7]\,
      I4 => \Regfile[0][7]_i_18_n_0\,
      I5 => \Regfile[0][7]_i_19_n_0\,
      O => \Regfile[0][7]_i_9_n_0\
    );
\Regfile[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \Regfile[0][7]_i_8_n_0\,
      I1 => \Regfile[1][0]_i_2_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[1][0]_i_3_n_0\,
      I4 => \Regfile[1][0]_i_4_n_0\,
      I5 => \Regfile[1][0]_i_5_n_0\,
      O => \Regfile[1]\(0)
    );
\Regfile[1][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFBFBFBFB"
    )
        port map (
      I0 => CPU_State(0),
      I1 => data2(0),
      I2 => \Regfile[0][5]_i_11_n_0\,
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(0),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[1][0]_i_2_n_0\
    );
\Regfile[1][0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CEE0C11"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[1][0]_i_2_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \R__0\(8),
      O => \Regfile[1][0]_i_3_n_0\
    );
\Regfile[1][0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data6(0),
      I1 => \Regfile[0][7]_i_18_n_0\,
      O => \Regfile[1][0]_i_4_n_0\
    );
\Regfile[1][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00AE00AE00"
    )
        port map (
      I0 => \Regfile[1][0]_i_6_n_0\,
      I1 => \R__0\(8),
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][7]_i_8_n_0\,
      I4 => \R__0\(7),
      I5 => \Regfile[0][5]_i_5_n_0\,
      O => \Regfile[1][0]_i_5_n_0\
    );
\Regfile[1][0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F202020"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(0),
      I1 => \Regfile[1][7]_i_5_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => R,
      O => \Regfile[1][0]_i_6_n_0\
    );
\Regfile[1][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Regfile[1][1]_i_2_n_0\,
      I1 => \Regfile[1][1]_i_3_n_0\,
      O => \Regfile[1]\(1)
    );
\Regfile[1][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \Regfile[1][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      I3 => \Regfile[0][1]_i_9_n_0\,
      O => \Regfile[1][1]_i_2_n_0\
    );
\Regfile[1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F8FFF8"
    )
        port map (
      I0 => data6(1),
      I1 => \Regfile[0][7]_i_18_n_0\,
      I2 => \Regfile[0][1]_i_8_n_0\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Regfile[2][1]_i_2_n_0\,
      I5 => \Regfile[0][7]_i_8_n_0\,
      O => \Regfile[1][1]_i_3_n_0\
    );
\Regfile[1][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA03C"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(1),
      I1 => \Regfile[0][1]_i_18_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Flags[1]_i_12_n_0\,
      O => \Regfile[1][1]_i_4_n_0\
    );
\Regfile[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBB8BBB8BBB8B88"
    )
        port map (
      I0 => \Regfile[1][2]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[1][2]_i_3_n_0\,
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Regfile[1][2]_i_4_n_0\,
      I5 => \Regfile[1][2]_i_5_n_0\,
      O => \Regfile[1]\(2)
    );
\Regfile[1][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[1][2]_i_6_n_0\,
      O => \Regfile[1][2]_i_2_n_0\
    );
\Regfile[1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFBFBFBFB"
    )
        port map (
      I0 => CPU_State(0),
      I1 => data2(2),
      I2 => \Regfile[0][5]_i_11_n_0\,
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(2),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[1][2]_i_3_n_0\
    );
\Regfile[1][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"530F5300"
    )
        port map (
      I0 => \Regfile[1][2]_i_3_n_0\,
      I1 => \Regfile[1][2]_i_7_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][1]_i_4_n_0\,
      I4 => \Regfile[1][2]_i_8_n_0\,
      O => \Regfile[1][2]_i_4_n_0\
    );
\Regfile[1][2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data6(2),
      I1 => \Regfile[0][7]_i_18_n_0\,
      O => \Regfile[1][2]_i_5_n_0\
    );
\Regfile[1][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C83B0BF808FB3BC"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(2),
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \R__0\(6),
      I4 => \R__0\(7),
      I5 => \R__0\(8),
      O => \Regfile[1][2]_i_6_n_0\
    );
\Regfile[1][2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \R__0\(7),
      I2 => \R__0\(8),
      O => \Regfile[1][2]_i_7_n_0\
    );
\Regfile[1][2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \R__0\(8),
      I2 => \R__0\(7),
      I3 => R,
      O => \Regfile[1][2]_i_8_n_0\
    );
\Regfile[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][3]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[1][3]_i_3_n_0\,
      O => \Regfile[1]\(3)
    );
\Regfile[1][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[1][3]_i_4_n_0\,
      I3 => \Regfile[0][1]_i_4_n_0\,
      I4 => \Regfile[1][3]_i_5_n_0\,
      O => \Regfile[1][3]_i_2_n_0\
    );
\Regfile[1][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \Regfile[0][3]_i_4_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][3]_i_10_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => data6(3),
      O => \Regfile[1][3]_i_3_n_0\
    );
\Regfile[1][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(3),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][4]_i_7_n_0\,
      I3 => \Regfile[0][4]_i_8_n_0\,
      O => \Regfile[1][3]_i_4_n_0\
    );
\Regfile[1][3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \Regfile[0][1]_i_9_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][4]_i_7_n_0\,
      I3 => \Regfile[2][3]_i_3_n_0\,
      O => \Regfile[1][3]_i_5_n_0\
    );
\Regfile[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][4]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[1][4]_i_3_n_0\,
      O => \Regfile[1]\(4)
    );
\Regfile[1][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA303F"
    )
        port map (
      I0 => \Regfile[1][4]_i_4_n_0\,
      I1 => \Regfile[1][4]_i_5_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile[1][4]_i_6_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      O => \Regfile[1][4]_i_2_n_0\
    );
\Regfile[1][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77747474"
    )
        port map (
      I0 => \Regfile[2][4]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][4]_i_13_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => data6(4),
      O => \Regfile[1][4]_i_3_n_0\
    );
\Regfile[1][4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \Regfile[1][4]_i_7_n_0\,
      I1 => \Regfile[1][4]_i_8_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      O => \Regfile[1][4]_i_4_n_0\
    );
\Regfile[1][4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47474774"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(4),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile[0][4]_i_8_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      O => \Regfile[1][4]_i_5_n_0\
    );
\Regfile[1][4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B4B"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile[0][4]_i_9_n_0\,
      I2 => \Regfile[0][4]_i_7_n_0\,
      I3 => \Regfile[2][3]_i_3_n_0\,
      O => \Regfile[1][4]_i_6_n_0\
    );
\Regfile[1][4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(5),
      I1 => \Regfile_reg[2]__0\(5),
      I2 => \Regfile[0][7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(5),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[0]__0\(5),
      O => \Regfile[1][4]_i_7_n_0\
    );
\Regfile[1][4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(5),
      I1 => \Regfile_reg[4]__0\(5),
      I2 => \Regfile[2][7]_i_3_n_0\,
      I3 => \Regfile_reg[7]__0\(5),
      I4 => \Regfile[0][7]_i_5_n_0\,
      I5 => \Regfile_reg[6]__0\(5),
      O => \Regfile[1][4]_i_8_n_0\
    );
\Regfile[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][5]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[1][5]_i_3_n_0\,
      O => \Regfile[1]\(5)
    );
\Regfile[1][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[1][5]_i_4_n_0\,
      I3 => \Regfile[0][1]_i_4_n_0\,
      I4 => \Regfile[1][5]_i_5_n_0\,
      O => \Regfile[1][5]_i_2_n_0\
    );
\Regfile[1][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \Regfile[0][5]_i_4_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][5]_i_15_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => data6(5),
      O => \Regfile[1][5]_i_3_n_0\
    );
\Regfile[1][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(5),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[1][4]_i_4_n_0\,
      I3 => \Regfile[0][7]_i_30_n_0\,
      O => \Regfile[1][5]_i_4_n_0\
    );
\Regfile[1][5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4B4"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \Regfile[0][4]_i_9_n_0\,
      I3 => \Regfile[0][4]_i_11_n_0\,
      O => \Regfile[1][5]_i_5_n_0\
    );
\Regfile[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][6]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[1][6]_i_3_n_0\,
      O => \Regfile[1]\(6)
    );
\Regfile[1][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \Regfile[1][6]_i_4_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Mult[15]_i_3_n_0\,
      O => \Regfile[1][6]_i_2_n_0\
    );
\Regfile[1][6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77747474"
    )
        port map (
      I0 => \Regfile[2][6]_i_2_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][6]_i_4_n_0\,
      I3 => \Regfile[0][7]_i_18_n_0\,
      I4 => data6(6),
      O => \Regfile[1][6]_i_3_n_0\
    );
\Regfile[1][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(6),
      I1 => \Regfile[1][6]_i_5_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile[1][4]_i_4_n_0\,
      I4 => \Flags[7]_i_2_n_0\,
      I5 => \Regfile[1][6]_i_6_n_0\,
      O => \Regfile[1][6]_i_4_n_0\
    );
\Regfile[1][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555556555"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile[1][4]_i_4_n_0\,
      I2 => \R__0\(8),
      I3 => \R__0\(7),
      I4 => \Regfile[0][1]_i_9_n_0\,
      I5 => \Regfile[1][6]_i_7_n_0\,
      O => \Regfile[1][6]_i_5_n_0\
    );
\Regfile[1][6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5559555555555555"
    )
        port map (
      I0 => \Mult[14]_i_11_n_0\,
      I1 => \Regfile[0][4]_i_9_n_0\,
      I2 => \Regfile[1][6]_i_8_n_0\,
      I3 => \R__0\(6),
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile[1][4]_i_4_n_0\,
      O => \Regfile[1][6]_i_6_n_0\
    );
\Regfile[1][6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5FF353"
    )
        port map (
      I0 => \Regfile[0][4]_i_16_n_0\,
      I1 => \Regfile[0][4]_i_15_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[0][4]_i_18_n_0\,
      I4 => \Regfile[0][4]_i_17_n_0\,
      O => \Regfile[1][6]_i_7_n_0\
    );
\Regfile[1][6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \Mult[2]_i_14_n_0\,
      I1 => \Mult[2]_i_13_n_0\,
      I2 => \Mult[2]_i_15_n_0\,
      I3 => \Regfile[0][7]_i_4_n_0\,
      I4 => \Mult[2]_i_16_n_0\,
      O => \Regfile[1][6]_i_8_n_0\
    );
\Regfile[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F00EECCFFCC"
    )
        port map (
      I0 => \Regfile[1][7]_i_3_n_0\,
      I1 => \Regfile[1][7]_i_4_n_0\,
      I2 => \Regfile[1][7]_i_5_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile[1][7]_i_7_n_0\,
      I5 => \Regfile[1][7]_i_8_n_0\,
      O => \Regfile[1][7]_i_1_n_0\
    );
\Regfile[1][7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777777747474"
    )
        port map (
      I0 => \Flags[7]_i_3_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_17_n_0\,
      I3 => data6(7),
      I4 => \Regfile[0][7]_i_18_n_0\,
      I5 => \Regfile[0][7]_i_19_n_0\,
      O => \Regfile[1][7]_i_10_n_0\
    );
\Regfile[1][7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile[0][5]_i_5_n_0\,
      I1 => \Regfile[0][1]_i_11_n_0\,
      O => \Regfile[1][7]_i_11_n_0\
    );
\Regfile[1][7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010000000100"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(5),
      I2 => CPU_State(1),
      I3 => CPU_State(4),
      I4 => CPU_State(2),
      I5 => CPU_State(3),
      O => \Regfile[1][7]_i_12_n_0\
    );
\Regfile[1][7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => SubOp(0),
      I1 => SubOp(1),
      I2 => SubOp(2),
      I3 => Opcode(0),
      I4 => Opcode(1),
      I5 => Opcode(2),
      O => \Regfile[1][7]_i_13_n_0\
    );
\Regfile[1][7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF8BBBFCFFFF"
    )
        port map (
      I0 => \Regfile[1][7]_i_17_n_0\,
      I1 => \Regfile[1][7]_i_18_n_0\,
      I2 => CPU_State(5),
      I3 => CPU_State(2),
      I4 => CPU_State(4),
      I5 => CPU_State(1),
      O => \Regfile[1][7]_i_14_n_0\
    );
\Regfile[1][7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14BB"
    )
        port map (
      I0 => \Flags[7]_i_2_n_0\,
      I1 => \Mult[15]_i_3_n_0\,
      I2 => \Regfile[2][6]_i_5_n_0\,
      I3 => \Mult[14]_i_11_n_0\,
      O => \Regfile[1][7]_i_15_n_0\
    );
\Regfile[1][7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4747477447474747"
    )
        port map (
      I0 => \Regfile_reg[0]__0\(7),
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Mult[15]_i_3_n_0\,
      I3 => \Regfile[1][4]_i_4_n_0\,
      I4 => \Mult[14]_i_11_n_0\,
      I5 => \Regfile[0][7]_i_30_n_0\,
      O => \Regfile[1][7]_i_16_n_0\
    );
\Regfile[1][7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF0D"
    )
        port map (
      I0 => Opcode(1),
      I1 => Opcode(4),
      I2 => CPU_State(4),
      I3 => CPU_State(5),
      I4 => CPU_State(3),
      O => \Regfile[1][7]_i_17_n_0\
    );
\Regfile[1][7]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(1),
      I2 => CPU_State(3),
      O => \Regfile[1][7]_i_18_n_0\
    );
\Regfile[1][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][7]_i_9_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[1][7]_i_10_n_0\,
      O => \Regfile[1]\(7)
    );
\Regfile[1][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \Regfile[0][7]_i_11_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[1][7]_i_11_n_0\,
      O => \Regfile[1][7]_i_3_n_0\
    );
\Regfile[1][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EF0EEE"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][7]_i_11_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[1][7]_i_6_n_0\,
      O => \Regfile[1][7]_i_4_n_0\
    );
\Regfile[1][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400545555555555"
    )
        port map (
      I0 => \Regfile[1][7]_i_12_n_0\,
      I1 => Opcode(3),
      I2 => \Regfile[1][7]_i_13_n_0\,
      I3 => Opcode(4),
      I4 => Opcode(2),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[1][7]_i_5_n_0\
    );
\Regfile[1][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Regfile[1][7]_i_14_n_0\,
      O => \Regfile[1][7]_i_6_n_0\
    );
\Regfile[1][7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \Regfile[0][7]_i_8_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[0][5]_i_5_n_0\,
      O => \Regfile[1][7]_i_7_n_0\
    );
\Regfile[1][7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \Regfile[0][7]_i_4_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_6_n_0\,
      O => \Regfile[1][7]_i_8_n_0\
    );
\Regfile[1][7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDFD0131"
    )
        port map (
      I0 => \Regfile[1][7]_i_15_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Regfile[0][1]_i_4_n_0\,
      I3 => \Regfile[1][7]_i_16_n_0\,
      I4 => R,
      O => \Regfile[1][7]_i_9_n_0\
    );
\Regfile[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Regfile[1][0]_i_5_n_0\,
      I1 => \Regfile[2][0]_i_2_n_0\,
      O => \Regfile[2]\(0)
    );
\Regfile[2][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000C9FFC9"
    )
        port map (
      I0 => \Regfile[2][0]_i_3_n_0\,
      I1 => \R__0\(8),
      I2 => R,
      I3 => \Regfile[2][6]_i_3_n_0\,
      I4 => \Regfile[1][0]_i_2_n_0\,
      I5 => \Regfile[0][7]_i_8_n_0\,
      O => \Regfile[2][0]_i_2_n_0\
    );
\Regfile[2][0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      O => \Regfile[2][0]_i_3_n_0\
    );
\Regfile[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBAAAA"
    )
        port map (
      I0 => \Regfile[1][1]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[2][1]_i_2_n_0\,
      I3 => \Regfile[2][6]_i_3_n_0\,
      I4 => \Regfile[2][1]_i_3_n_0\,
      O => \Regfile[2]\(1)
    );
\Regfile[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFBFBFBFB"
    )
        port map (
      I0 => CPU_State(0),
      I1 => data2(1),
      I2 => \Regfile[0][5]_i_11_n_0\,
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(1),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[2][1]_i_2_n_0\
    );
\Regfile[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF39FF3CFF39"
    )
        port map (
      I0 => R,
      I1 => \R__0\(7),
      I2 => \R__0\(8),
      I3 => \Regfile[0][5]_i_5_n_0\,
      I4 => \Regfile[0][1]_i_4_n_0\,
      I5 => \Flags[7]_i_2_n_0\,
      O => \Regfile[2][1]_i_3_n_0\
    );
\Regfile[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][2]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[2][2]_i_2_n_0\,
      O => \Regfile[2]\(2)
    );
\Regfile[2][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555773F5555440C"
    )
        port map (
      I0 => \Regfile[1][2]_i_3_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[1][2]_i_7_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[1][2]_i_8_n_0\,
      O => \Regfile[2][2]_i_2_n_0\
    );
\Regfile[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBB888"
    )
        port map (
      I0 => \Regfile[1][3]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[0][3]_i_4_n_0\,
      I3 => \Regfile[2][6]_i_3_n_0\,
      I4 => \Regfile[2][3]_i_2_n_0\,
      O => \Regfile[2]\(3)
    );
\Regfile[2][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000333110022"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[2][3]_i_3_n_0\,
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Regfile[2][3]_i_2_n_0\
    );
\Regfile[2][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \R__0\(6),
      I1 => \R__0\(7),
      I2 => \R__0\(8),
      O => \Regfile[2][3]_i_3_n_0\
    );
\Regfile[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \Regfile[1][4]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[2][4]_i_2_n_0\,
      I3 => \Regfile[2][6]_i_3_n_0\,
      I4 => \Regfile[2][4]_i_3_n_0\,
      O => \Regfile[2]\(4)
    );
\Regfile[2][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFBFBFBFB"
    )
        port map (
      I0 => CPU_State(0),
      I1 => data2(4),
      I2 => \Regfile[0][5]_i_11_n_0\,
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(4),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[2][4]_i_2_n_0\
    );
\Regfile[2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000333110022"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[0][4]_i_11_n_0\,
      I4 => \Regfile[0][4]_i_9_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Regfile[2][4]_i_3_n_0\
    );
\Regfile[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBB888"
    )
        port map (
      I0 => \Regfile[1][5]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[0][5]_i_4_n_0\,
      I3 => \Regfile[2][6]_i_3_n_0\,
      I4 => \Regfile[2][5]_i_2_n_0\,
      O => \Regfile[2]\(5)
    );
\Regfile[2][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000333110022"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[2][5]_i_3_n_0\,
      I4 => \Regfile[1][4]_i_4_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Regfile[2][5]_i_2_n_0\
    );
\Regfile[2][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => \Regfile[0][4]_i_7_n_0\,
      I1 => \R__0\(6),
      I2 => \R__0\(7),
      I3 => \R__0\(8),
      I4 => \Regfile[0][4]_i_9_n_0\,
      O => \Regfile[2][5]_i_3_n_0\
    );
\Regfile[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \Regfile[1][6]_i_2_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[2][6]_i_2_n_0\,
      I3 => \Regfile[2][6]_i_3_n_0\,
      I4 => \Regfile[2][6]_i_4_n_0\,
      O => \Regfile[2]\(6)
    );
\Regfile[2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FBFBFBFBFBFB"
    )
        port map (
      I0 => CPU_State(0),
      I1 => data2(6),
      I2 => \Regfile[0][5]_i_11_n_0\,
      I3 => \Regfile[0][5]_i_12_n_0\,
      I4 => Int_Mask(6),
      I5 => \Int_Mask[7]_i_2_n_0\,
      O => \Regfile[2][6]_i_2_n_0\
    );
\Regfile[2][6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => \Regfile[0][1]_i_4_n_0\,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      O => \Regfile[2][6]_i_3_n_0\
    );
\Regfile[2][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000333110022"
    )
        port map (
      I0 => R,
      I1 => \Regfile[0][5]_i_5_n_0\,
      I2 => \Flags[7]_i_2_n_0\,
      I3 => \Regfile[2][6]_i_5_n_0\,
      I4 => \Mult[14]_i_11_n_0\,
      I5 => \Regfile[0][1]_i_4_n_0\,
      O => \Regfile[2][6]_i_4_n_0\
    );
\Regfile[2][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \Regfile[0][4]_i_9_n_0\,
      I1 => \R__0\(8),
      I2 => \R__0\(7),
      I3 => \R__0\(6),
      I4 => \Regfile[0][4]_i_7_n_0\,
      I5 => \Regfile[1][4]_i_4_n_0\,
      O => \Regfile[2][6]_i_5_n_0\
    );
\Regfile[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[2][7]_i_4_n_0\,
      O => \Regfile[2][7]_i_1_n_0\
    );
\Regfile[2][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Regfile[1][7]_i_9_n_0\,
      I1 => \Regfile[0][7]_i_8_n_0\,
      I2 => \Regfile[2][7]_i_5_n_0\,
      O => \Regfile[2]\(7)
    );
\Regfile[2][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3377FF7703003333"
    )
        port map (
      I0 => \SubOp_p1_reg_n_0_[1]\,
      I1 => \Regfile[0][7]_i_13_n_0\,
      I2 => \Regfile[0][7]_i_16_n_0\,
      I3 => \Regfile[0][7]_i_14_n_0\,
      I4 => SubOp(1),
      I5 => \Regfile[0][7]_i_15_n_0\,
      O => \Regfile[2][7]_i_3_n_0\
    );
\Regfile[2][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BFFF"
    )
        port map (
      I0 => \Regfile[1][7]_i_11_n_0\,
      I1 => \Flags[7]_i_2_n_0\,
      I2 => \Regfile[0][7]_i_11_n_0\,
      I3 => \Regfile[1][7]_i_6_n_0\,
      I4 => \Regfile[2][7]_i_6_n_0\,
      I5 => \Regfile[1][7]_i_4_n_0\,
      O => \Regfile[2][7]_i_4_n_0\
    );
\Regfile[2][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555773F5555440C"
    )
        port map (
      I0 => \Flags[7]_i_3_n_0\,
      I1 => \Regfile[0][1]_i_4_n_0\,
      I2 => \Regfile[2][7]_i_7_n_0\,
      I3 => \Flags[7]_i_2_n_0\,
      I4 => \Regfile[0][5]_i_5_n_0\,
      I5 => \Regfile[2][7]_i_8_n_0\,
      O => \Regfile[2][7]_i_5_n_0\
    );
\Regfile[2][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001A0000000000"
    )
        port map (
      I0 => CPU_State(2),
      I1 => CPU_State(1),
      I2 => CPU_State(3),
      I3 => CPU_State(0),
      I4 => CPU_State(5),
      I5 => CPU_State(4),
      O => \Regfile[2][7]_i_6_n_0\
    );
\Regfile[2][7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Regfile[2][6]_i_5_n_0\,
      I2 => \Mult[14]_i_11_n_0\,
      O => \Regfile[2][7]_i_7_n_0\
    );
\Regfile[2][7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \Mult[15]_i_3_n_0\,
      I1 => \Mult[14]_i_11_n_0\,
      I2 => R,
      I3 => \Regfile[2][6]_i_5_n_0\,
      O => \Regfile[2][7]_i_8_n_0\
    );
\Regfile[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[2][7]_i_4_n_0\,
      O => \Regfile[3][7]_i_1_n_0\
    );
\Regfile[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \Regfile[0][7]_i_6_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[2][7]_i_4_n_0\,
      O => \Regfile[4][7]_i_1_n_0\
    );
\Regfile[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \Regfile[0][7]_i_6_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[2][7]_i_4_n_0\,
      O => \Regfile[5][7]_i_1_n_0\
    );
\Regfile[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[2][7]_i_4_n_0\,
      O => \Regfile[6][7]_i_1_n_0\
    );
\Regfile[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \Regfile[2][7]_i_3_n_0\,
      I1 => \Regfile[0][7]_i_5_n_0\,
      I2 => \Regfile[0][7]_i_4_n_0\,
      I3 => \Regfile[2][7]_i_4_n_0\,
      O => \Regfile[7][7]_i_1_n_0\
    );
\Regfile_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(0),
      Q => \Regfile_reg[0]__0\(0)
    );
\Regfile_reg[0][0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Regfile[0][0]_i_2_n_0\,
      I1 => \Regfile[0][0]_i_3_n_0\,
      O => \Regfile[0]\(0),
      S => \Regfile[0][7]_i_8_n_0\
    );
\Regfile_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(1),
      Q => \Regfile_reg[0]__0\(1)
    );
\Regfile_reg[0][1]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Regfile_reg[0][1]_i_19_n_0\,
      CO(2) => \Regfile_reg[0][1]_i_19_n_1\,
      CO(1) => \Regfile_reg[0][1]_i_19_n_2\,
      CO(0) => \Regfile_reg[0][1]_i_19_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Regfile_reg[0]__0\(3 downto 0),
      O(3) => \Regfile_reg[0][1]_i_19_n_4\,
      O(2) => \Regfile_reg[0][1]_i_19_n_5\,
      O(1) => \Regfile_reg[0][1]_i_19_n_6\,
      O(0) => \Regfile_reg[0][1]_i_19_n_7\,
      S(3) => \Regfile[0][1]_i_22_n_0\,
      S(2) => \Regfile[0][1]_i_23_n_0\,
      S(1) => \Regfile[0][1]_i_24_n_0\,
      S(0) => \Regfile[0][1]_i_25_n_0\
    );
\Regfile_reg[0][1]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Regfile_reg[0][1]_i_5_n_0\,
      CO(2) => \Regfile_reg[0][1]_i_5_n_1\,
      CO(1) => \Regfile_reg[0][1]_i_5_n_2\,
      CO(0) => \Regfile_reg[0][1]_i_5_n_3\,
      CYINIT => \R__0\(8),
      DI(3 downto 0) => \Regfile_reg[0]__0\(3 downto 0),
      O(3) => \Regfile_reg[0][1]_i_5_n_4\,
      O(2) => \Regfile_reg[0][1]_i_5_n_5\,
      O(1) => \Regfile_reg[0][1]_i_5_n_6\,
      O(0) => \Regfile_reg[0][1]_i_5_n_7\,
      S(3) => \Regfile[0][1]_i_12_n_0\,
      S(2) => \Regfile[0][1]_i_13_n_0\,
      S(1) => \Regfile[0][1]_i_14_n_0\,
      S(0) => \Regfile[0][1]_i_15_n_0\
    );
\Regfile_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(2),
      Q => \Regfile_reg[0]__0\(2)
    );
\Regfile_reg[0][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Regfile[0][2]_i_2_n_0\,
      I1 => \Regfile[0][2]_i_3_n_0\,
      O => \Regfile[0]\(2),
      S => \Regfile[0][7]_i_8_n_0\
    );
\Regfile_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(3),
      Q => \Regfile_reg[0]__0\(3)
    );
\Regfile_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(4),
      Q => \Regfile_reg[0]__0\(4)
    );
\Regfile_reg[0][4]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Regfile_reg[0][1]_i_19_n_0\,
      CO(3) => \Regfile_reg[0][4]_i_10_n_0\,
      CO(2) => \Regfile_reg[0][4]_i_10_n_1\,
      CO(1) => \Regfile_reg[0][4]_i_10_n_2\,
      CO(0) => \Regfile_reg[0][4]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Regfile_reg[0]__0\(7 downto 4),
      O(3) => \Regfile_reg[0][4]_i_10_n_4\,
      O(2) => \Regfile_reg[0][4]_i_10_n_5\,
      O(1) => \Regfile_reg[0][4]_i_10_n_6\,
      O(0) => \Regfile_reg[0][4]_i_10_n_7\,
      S(3) => \Regfile[0][4]_i_19_n_0\,
      S(2) => \Regfile[0][4]_i_20_n_0\,
      S(1) => \Regfile[0][4]_i_21_n_0\,
      S(0) => \Regfile[0][4]_i_22_n_0\
    );
\Regfile_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(5),
      Q => \Regfile_reg[0]__0\(5)
    );
\Regfile_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(6),
      Q => \Regfile_reg[0]__0\(6)
    );
\Regfile_reg[0][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Regfile[0][6]_i_2_n_0\,
      I1 => \Regfile[0][6]_i_3_n_0\,
      O => \Regfile[0]\(6),
      S => \Regfile[0][7]_i_8_n_0\
    );
\Regfile_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[0][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[0]\(7),
      Q => \Regfile_reg[0]__0\(7)
    );
\Regfile_reg[0][7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Regfile[0][7]_i_9_n_0\,
      I1 => \Regfile[0][7]_i_10_n_0\,
      O => \Regfile[0]\(7),
      S => \Regfile[0][7]_i_8_n_0\
    );
\Regfile_reg[0][7]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \Regfile_reg[0][1]_i_5_n_0\,
      CO(3) => \Regfile_reg[0][7]_i_20_n_0\,
      CO(2) => \Regfile_reg[0][7]_i_20_n_1\,
      CO(1) => \Regfile_reg[0][7]_i_20_n_2\,
      CO(0) => \Regfile_reg[0][7]_i_20_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Regfile_reg[0]__0\(7 downto 4),
      O(3) => \Regfile_reg[0][7]_i_20_n_4\,
      O(2) => \Regfile_reg[0][7]_i_20_n_5\,
      O(1) => \Regfile_reg[0][7]_i_20_n_6\,
      O(0) => \Regfile_reg[0][7]_i_20_n_7\,
      S(3) => \Regfile[0][7]_i_25_n_0\,
      S(2) => \Regfile[0][7]_i_26_n_0\,
      S(1) => \Regfile[0][7]_i_27_n_0\,
      S(0) => \Regfile[0][7]_i_28_n_0\
    );
\Regfile_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(0),
      Q => \Regfile_reg[1]__0\(0)
    );
\Regfile_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(1),
      Q => \Regfile_reg[1]__0\(1)
    );
\Regfile_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(2),
      Q => \Regfile_reg[1]__0\(2)
    );
\Regfile_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(3),
      Q => \Regfile_reg[1]__0\(3)
    );
\Regfile_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(4),
      Q => \Regfile_reg[1]__0\(4)
    );
\Regfile_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(5),
      Q => \Regfile_reg[1]__0\(5)
    );
\Regfile_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(6),
      Q => \Regfile_reg[1]__0\(6)
    );
\Regfile_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[1][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[1]\(7),
      Q => \Regfile_reg[1]__0\(7)
    );
\Regfile_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(0),
      Q => \Regfile_reg[2]__0\(0)
    );
\Regfile_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(1),
      Q => \Regfile_reg[2]__0\(1)
    );
\Regfile_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(2),
      Q => \Regfile_reg[2]__0\(2)
    );
\Regfile_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(3),
      Q => \Regfile_reg[2]__0\(3)
    );
\Regfile_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(4),
      Q => \Regfile_reg[2]__0\(4)
    );
\Regfile_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(5),
      Q => \Regfile_reg[2]__0\(5)
    );
\Regfile_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(6),
      Q => \Regfile_reg[2]__0\(6)
    );
\Regfile_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[2][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(7),
      Q => \Regfile_reg[2]__0\(7)
    );
\Regfile_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(0),
      Q => \Regfile_reg[3]__0\(0)
    );
\Regfile_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(1),
      Q => \Regfile_reg[3]__0\(1)
    );
\Regfile_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(2),
      Q => \Regfile_reg[3]__0\(2)
    );
\Regfile_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(3),
      Q => \Regfile_reg[3]__0\(3)
    );
\Regfile_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(4),
      Q => \Regfile_reg[3]__0\(4)
    );
\Regfile_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(5),
      Q => \Regfile_reg[3]__0\(5)
    );
\Regfile_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(6),
      Q => \Regfile_reg[3]__0\(6)
    );
\Regfile_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[3][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(7),
      Q => \Regfile_reg[3]__0\(7)
    );
\Regfile_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(0),
      Q => \Regfile_reg[4]__0\(0)
    );
\Regfile_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(1),
      Q => \Regfile_reg[4]__0\(1)
    );
\Regfile_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(2),
      Q => \Regfile_reg[4]__0\(2)
    );
\Regfile_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(3),
      Q => \Regfile_reg[4]__0\(3)
    );
\Regfile_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(4),
      Q => \Regfile_reg[4]__0\(4)
    );
\Regfile_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(5),
      Q => \Regfile_reg[4]__0\(5)
    );
\Regfile_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(6),
      Q => \Regfile_reg[4]__0\(6)
    );
\Regfile_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[4][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(7),
      Q => \Regfile_reg[4]__0\(7)
    );
\Regfile_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(0),
      Q => \Regfile_reg[5]__0\(0)
    );
\Regfile_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(1),
      Q => \Regfile_reg[5]__0\(1)
    );
\Regfile_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(2),
      Q => \Regfile_reg[5]__0\(2)
    );
\Regfile_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(3),
      Q => \Regfile_reg[5]__0\(3)
    );
\Regfile_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(4),
      Q => \Regfile_reg[5]__0\(4)
    );
\Regfile_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(5),
      Q => \Regfile_reg[5]__0\(5)
    );
\Regfile_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(6),
      Q => \Regfile_reg[5]__0\(6)
    );
\Regfile_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[5][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(7),
      Q => \Regfile_reg[5]__0\(7)
    );
\Regfile_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(0),
      Q => \Regfile_reg[6]__0\(0)
    );
\Regfile_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(1),
      Q => \Regfile_reg[6]__0\(1)
    );
\Regfile_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(2),
      Q => \Regfile_reg[6]__0\(2)
    );
\Regfile_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(3),
      Q => \Regfile_reg[6]__0\(3)
    );
\Regfile_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(4),
      Q => \Regfile_reg[6]__0\(4)
    );
\Regfile_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(5),
      Q => \Regfile_reg[6]__0\(5)
    );
\Regfile_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(6),
      Q => \Regfile_reg[6]__0\(6)
    );
\Regfile_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[6][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(7),
      Q => \Regfile_reg[6]__0\(7)
    );
\Regfile_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(0),
      Q => \Regfile_reg[7]__0\(0)
    );
\Regfile_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(1),
      Q => \Regfile_reg[7]__0\(1)
    );
\Regfile_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(2),
      Q => \Regfile_reg[7]__0\(2)
    );
\Regfile_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(3),
      Q => \Regfile_reg[7]__0\(3)
    );
\Regfile_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(4),
      Q => \Regfile_reg[7]__0\(4)
    );
\Regfile_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(5),
      Q => \Regfile_reg[7]__0\(5)
    );
\Regfile_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(6),
      Q => \Regfile_reg[7]__0\(6)
    );
\Regfile_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Regfile[7][7]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Regfile[2]\(7),
      Q => \Regfile_reg[7]__0\(7)
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
\Stack_Ptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Stack_Ptr(0),
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[0]_i_1_n_0\
    );
\Stack_Ptr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Stack_Ptr_reg[12]_i_2_n_6\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[10]_i_1_n_0\
    );
\Stack_Ptr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Stack_Ptr_reg[12]_i_2_n_5\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[11]_i_1_n_0\
    );
\Stack_Ptr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Stack_Ptr_reg[12]_i_2_n_4\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[12]_i_1_n_0\
    );
\Stack_Ptr[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(11),
      I1 => Stack_Ptr(12),
      O => \Stack_Ptr[12]_i_3_n_0\
    );
\Stack_Ptr[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(10),
      I1 => Stack_Ptr(11),
      O => \Stack_Ptr[12]_i_4_n_0\
    );
\Stack_Ptr[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(9),
      I1 => Stack_Ptr(10),
      O => \Stack_Ptr[12]_i_5_n_0\
    );
\Stack_Ptr[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(8),
      I1 => Stack_Ptr(9),
      O => \Stack_Ptr[12]_i_6_n_0\
    );
\Stack_Ptr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Stack_Ptr_reg[15]_i_5_n_7\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[13]_i_1_n_0\
    );
\Stack_Ptr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Stack_Ptr_reg[15]_i_5_n_6\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[14]_i_1_n_0\
    );
\Stack_Ptr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Stack_Ptr[15]_i_3_n_0\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[15]_i_1_n_0\
    );
\Stack_Ptr[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(14),
      I1 => Stack_Ptr(15),
      O => \Stack_Ptr[15]_i_10_n_0\
    );
\Stack_Ptr[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(13),
      I1 => Stack_Ptr(14),
      O => \Stack_Ptr[15]_i_11_n_0\
    );
\Stack_Ptr[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(12),
      I1 => Stack_Ptr(13),
      O => \Stack_Ptr[15]_i_12_n_0\
    );
\Stack_Ptr[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => CPU_State(0),
      I1 => CPU_State(5),
      I2 => CPU_State(3),
      I3 => CPU_State(4),
      I4 => CPU_State(2),
      I5 => CPU_State(1),
      O => \Stack_Ptr[15]_i_13_n_0\
    );
\Stack_Ptr[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(3),
      I2 => CPU_State(1),
      I3 => CPU_State(2),
      O => \Stack_Ptr[15]_i_14_n_0\
    );
\Stack_Ptr[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFB"
    )
        port map (
      I0 => \CPU_State[1]_i_9_n_0\,
      I1 => Opcode(0),
      I2 => Opcode(3),
      I3 => Opcode(1),
      I4 => Opcode(2),
      I5 => \Pending[5]_i_4_n_0\,
      O => \Stack_Ptr[15]_i_15_n_0\
    );
\Stack_Ptr[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Stack_Ptr_reg[15]_i_5_n_5\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[15]_i_2_n_0\
    );
\Stack_Ptr[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444454544454444"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Stack_Ptr[15]_i_6_n_0\,
      I2 => \Stack_Ptr[15]_i_7_n_0\,
      I3 => CPU_State(0),
      I4 => CPU_State(2),
      I5 => CPU_State(1),
      O => \Stack_Ptr[15]_i_3_n_0\
    );
\Stack_Ptr[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000051005"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \Stack_Ptr[15]_i_8_n_0\,
      I2 => CPU_State(3),
      I3 => CPU_State(4),
      I4 => \CPU_State[2]_i_6_n_0\,
      I5 => \Stack_Ptr[15]_i_9_n_0\,
      O => \Stack_Ptr[15]_i_4_n_0\
    );
\Stack_Ptr[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \Stack_Ptr[15]_i_13_n_0\,
      I1 => \Stack_Ptr[15]_i_14_n_0\,
      I2 => SubOp(2),
      I3 => SubOp(1),
      I4 => SubOp(0),
      I5 => \CPU_State[5]_i_6_n_0\,
      O => \Stack_Ptr[15]_i_6_n_0\
    );
\Stack_Ptr[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => CPU_State(4),
      I1 => CPU_State(3),
      I2 => CPU_State(5),
      O => \Stack_Ptr[15]_i_7_n_0\
    );
\Stack_Ptr[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CPU_State(5),
      I1 => CPU_State(0),
      O => \Stack_Ptr[15]_i_8_n_0\
    );
\Stack_Ptr[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82028282AAAAAAAA"
    )
        port map (
      I0 => \Stack_Ptr[15]_i_15_n_0\,
      I1 => CPU_State(1),
      I2 => CPU_State(2),
      I3 => CPU_State(0),
      I4 => \Pending[2]_i_3_n_0\,
      I5 => CPU_State(5),
      O => \Stack_Ptr[15]_i_9_n_0\
    );
\Stack_Ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[4]_i_2_n_7\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[1]_i_1_n_0\
    );
\Stack_Ptr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[4]_i_2_n_6\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[2]_i_1_n_0\
    );
\Stack_Ptr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[4]_i_2_n_5\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[3]_i_1_n_0\
    );
\Stack_Ptr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[4]_i_2_n_4\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[4]_i_1_n_0\
    );
\Stack_Ptr[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Stack_Ptr(1),
      O => \Stack_Ptr[4]_i_3_n_0\
    );
\Stack_Ptr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(3),
      I1 => Stack_Ptr(4),
      O => \Stack_Ptr[4]_i_4_n_0\
    );
\Stack_Ptr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(2),
      I1 => Stack_Ptr(3),
      O => \Stack_Ptr[4]_i_5_n_0\
    );
\Stack_Ptr[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(1),
      I1 => Stack_Ptr(2),
      O => \Stack_Ptr[4]_i_6_n_0\
    );
\Stack_Ptr[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Stack_Ptr(1),
      I1 => \Stack_Ptr[15]_i_3_n_0\,
      O => \Stack_Ptr[4]_i_7_n_0\
    );
\Stack_Ptr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[8]_i_2_n_7\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[5]_i_1_n_0\
    );
\Stack_Ptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[8]_i_2_n_6\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[6]_i_1_n_0\
    );
\Stack_Ptr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[8]_i_2_n_5\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[7]_i_1_n_0\
    );
\Stack_Ptr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[8]_i_2_n_4\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[8]_i_1_n_0\
    );
\Stack_Ptr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(7),
      I1 => Stack_Ptr(8),
      O => \Stack_Ptr[8]_i_3_n_0\
    );
\Stack_Ptr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(6),
      I1 => Stack_Ptr(7),
      O => \Stack_Ptr[8]_i_4_n_0\
    );
\Stack_Ptr[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(5),
      I1 => Stack_Ptr(6),
      O => \Stack_Ptr[8]_i_5_n_0\
    );
\Stack_Ptr[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Stack_Ptr(4),
      I1 => Stack_Ptr(5),
      O => \Stack_Ptr[8]_i_6_n_0\
    );
\Stack_Ptr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \Stack_Ptr_reg[12]_i_2_n_7\,
      I1 => \Stack_Ptr[15]_i_4_n_0\,
      O => \Stack_Ptr[9]_i_1_n_0\
    );
\Stack_Ptr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[0]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(0)
    );
\Stack_Ptr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Stack_Ptr[10]_i_1_n_0\,
      Q => Stack_Ptr(10)
    );
\Stack_Ptr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Stack_Ptr[11]_i_1_n_0\,
      Q => Stack_Ptr(11)
    );
\Stack_Ptr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Stack_Ptr[12]_i_1_n_0\,
      Q => Stack_Ptr(12)
    );
\Stack_Ptr_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Stack_Ptr_reg[8]_i_2_n_0\,
      CO(3) => \Stack_Ptr_reg[12]_i_2_n_0\,
      CO(2) => \Stack_Ptr_reg[12]_i_2_n_1\,
      CO(1) => \Stack_Ptr_reg[12]_i_2_n_2\,
      CO(0) => \Stack_Ptr_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Stack_Ptr(11 downto 8),
      O(3) => \Stack_Ptr_reg[12]_i_2_n_4\,
      O(2) => \Stack_Ptr_reg[12]_i_2_n_5\,
      O(1) => \Stack_Ptr_reg[12]_i_2_n_6\,
      O(0) => \Stack_Ptr_reg[12]_i_2_n_7\,
      S(3) => \Stack_Ptr[12]_i_3_n_0\,
      S(2) => \Stack_Ptr[12]_i_4_n_0\,
      S(1) => \Stack_Ptr[12]_i_5_n_0\,
      S(0) => \Stack_Ptr[12]_i_6_n_0\
    );
\Stack_Ptr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Stack_Ptr[13]_i_1_n_0\,
      Q => Stack_Ptr(13)
    );
\Stack_Ptr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Stack_Ptr[14]_i_1_n_0\,
      Q => Stack_Ptr(14)
    );
\Stack_Ptr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \Stack_Ptr[15]_i_2_n_0\,
      Q => Stack_Ptr(15)
    );
\Stack_Ptr_reg[15]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Stack_Ptr_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_Stack_Ptr_reg[15]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Stack_Ptr_reg[15]_i_5_n_2\,
      CO(0) => \Stack_Ptr_reg[15]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Stack_Ptr(13 downto 12),
      O(3) => \NLW_Stack_Ptr_reg[15]_i_5_O_UNCONNECTED\(3),
      O(2) => \Stack_Ptr_reg[15]_i_5_n_5\,
      O(1) => \Stack_Ptr_reg[15]_i_5_n_6\,
      O(0) => \Stack_Ptr_reg[15]_i_5_n_7\,
      S(3) => '0',
      S(2) => \Stack_Ptr[15]_i_10_n_0\,
      S(1) => \Stack_Ptr[15]_i_11_n_0\,
      S(0) => \Stack_Ptr[15]_i_12_n_0\
    );
\Stack_Ptr_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[1]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(1)
    );
\Stack_Ptr_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[2]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(2)
    );
\Stack_Ptr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[3]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(3)
    );
\Stack_Ptr_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[4]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(4)
    );
\Stack_Ptr_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Stack_Ptr_reg[4]_i_2_n_0\,
      CO(2) => \Stack_Ptr_reg[4]_i_2_n_1\,
      CO(1) => \Stack_Ptr_reg[4]_i_2_n_2\,
      CO(0) => \Stack_Ptr_reg[4]_i_2_n_3\,
      CYINIT => Stack_Ptr(0),
      DI(3 downto 1) => Stack_Ptr(3 downto 1),
      DI(0) => \Stack_Ptr[4]_i_3_n_0\,
      O(3) => \Stack_Ptr_reg[4]_i_2_n_4\,
      O(2) => \Stack_Ptr_reg[4]_i_2_n_5\,
      O(1) => \Stack_Ptr_reg[4]_i_2_n_6\,
      O(0) => \Stack_Ptr_reg[4]_i_2_n_7\,
      S(3) => \Stack_Ptr[4]_i_4_n_0\,
      S(2) => \Stack_Ptr[4]_i_5_n_0\,
      S(1) => \Stack_Ptr[4]_i_6_n_0\,
      S(0) => \Stack_Ptr[4]_i_7_n_0\
    );
\Stack_Ptr_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[5]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(5)
    );
\Stack_Ptr_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[6]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(6)
    );
\Stack_Ptr_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[7]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(7)
    );
\Stack_Ptr_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[8]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(8)
    );
\Stack_Ptr_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Stack_Ptr_reg[4]_i_2_n_0\,
      CO(3) => \Stack_Ptr_reg[8]_i_2_n_0\,
      CO(2) => \Stack_Ptr_reg[8]_i_2_n_1\,
      CO(1) => \Stack_Ptr_reg[8]_i_2_n_2\,
      CO(0) => \Stack_Ptr_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Stack_Ptr(7 downto 4),
      O(3) => \Stack_Ptr_reg[8]_i_2_n_4\,
      O(2) => \Stack_Ptr_reg[8]_i_2_n_5\,
      O(1) => \Stack_Ptr_reg[8]_i_2_n_6\,
      O(0) => \Stack_Ptr_reg[8]_i_2_n_7\,
      S(3) => \Stack_Ptr[8]_i_3_n_0\,
      S(2) => \Stack_Ptr[8]_i_4_n_0\,
      S(1) => \Stack_Ptr[8]_i_5_n_0\,
      S(0) => \Stack_Ptr[8]_i_6_n_0\
    );
\Stack_Ptr_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \Stack_Ptr[15]_i_1_n_0\,
      D => \Stack_Ptr[9]_i_1_n_0\,
      PRE => Ack_Q_i_2_n_0,
      Q => Stack_Ptr(9)
    );
\SubOp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => Instr_Prefetch,
      I1 => Prefetch(0),
      I2 => Rd_Data_IBUF(0),
      O => \SubOp[0]_i_1_n_0\
    );
\SubOp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(1),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(1),
      O => \SubOp[1]_i_1_n_0\
    );
\SubOp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \SubOp_reg[2]_i_4_n_0\,
      I2 => \SubOp[2]_i_5_n_0\,
      O => \SubOp[2]_i_1_n_0\
    );
\SubOp[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(4),
      O => \SubOp[2]_i_10_n_0\
    );
\SubOp[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00080000000F00"
    )
        port map (
      I0 => Opcode(0),
      I1 => Opcode(3),
      I2 => \SubOp[2]_i_17_n_0\,
      I3 => Opcode(4),
      I4 => Opcode(1),
      I5 => \SubOp[2]_i_18_n_0\,
      O => \SubOp[2]_i_11_n_0\
    );
\SubOp[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(5),
      O => \SubOp[2]_i_12_n_0\
    );
\SubOp[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFF96FF00FF"
    )
        port map (
      I0 => SubOp(1),
      I1 => SubOp(2),
      I2 => SubOp(0),
      I3 => Opcode(0),
      I4 => Opcode(1),
      I5 => Opcode(3),
      O => \SubOp[2]_i_13_n_0\
    );
\SubOp[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_State(5),
      I1 => Opcode(4),
      O => \SubOp[2]_i_14_n_0\
    );
\SubOp[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003005050FF5"
    )
        port map (
      I0 => \CPU_State[0]_i_3_n_0\,
      I1 => CPU_State(2),
      I2 => CPU_State(3),
      I3 => CPU_State(1),
      I4 => CPU_State(0),
      I5 => CPU_State(5),
      O => \SubOp[2]_i_15_n_0\
    );
\SubOp[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0348004803480348"
    )
        port map (
      I0 => CPU_State(5),
      I1 => CPU_State(1),
      I2 => CPU_State(2),
      I3 => CPU_State(3),
      I4 => \Pending[2]_i_3_n_0\,
      I5 => CPU_State(0),
      O => \SubOp[2]_i_16_n_0\
    );
\SubOp[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(2),
      O => \SubOp[2]_i_17_n_0\
    );
\SubOp[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F0000FFFFFFFF"
    )
        port map (
      I0 => \SubOp[2]_i_19_n_0\,
      I1 => SubOp(2),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(0),
      I5 => Opcode(2),
      O => \SubOp[2]_i_18_n_0\
    );
\SubOp[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SubOp(1),
      I1 => SubOp(0),
      O => \SubOp[2]_i_19_n_0\
    );
\SubOp[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Prefetch(2),
      I1 => Instr_Prefetch,
      I2 => Rd_Data_IBUF(2),
      O => \SubOp[2]_i_2_n_0\
    );
\SubOp[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000008"
    )
        port map (
      I0 => Int_Req,
      I1 => CPU_State(1),
      I2 => CPU_State(2),
      I3 => CPU_State(3),
      I4 => \SubOp[2]_i_6_n_0\,
      I5 => CPU_State(4),
      O => \SubOp[2]_i_3_n_0\
    );
\SubOp[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444444454445444"
    )
        port map (
      I0 => \SubOp[2]_i_3_n_0\,
      I1 => \SubOp[2]_i_9_n_0\,
      I2 => CPU_State(0),
      I3 => \SubOp[2]_i_10_n_0\,
      I4 => \SubOp[2]_i_11_n_0\,
      I5 => \SubOp[2]_i_12_n_0\,
      O => \SubOp[2]_i_5_n_0\
    );
\SubOp[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_State(5),
      I1 => CPU_State(0),
      O => \SubOp[2]_i_6_n_0\
    );
\SubOp[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777FF7F"
    )
        port map (
      I0 => CPU_State(1),
      I1 => Rd_Enable_i_11_n_0,
      I2 => Opcode(2),
      I3 => \SubOp[2]_i_13_n_0\,
      I4 => \SubOp[2]_i_14_n_0\,
      I5 => \SubOp[2]_i_15_n_0\,
      O => \SubOp[2]_i_7_n_0\
    );
\SubOp[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFA"
    )
        port map (
      I0 => CPU_State(1),
      I1 => CPU_State(0),
      I2 => CPU_State(3),
      I3 => CPU_State(2),
      I4 => CPU_State(5),
      O => \SubOp[2]_i_8_n_0\
    );
\SubOp[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF090000000900"
    )
        port map (
      I0 => CPU_State(3),
      I1 => CPU_State(2),
      I2 => CPU_State(1),
      I3 => CPU_State(4),
      I4 => \SubOp[2]_i_6_n_0\,
      I5 => \SubOp[2]_i_16_n_0\,
      O => \SubOp[2]_i_9_n_0\
    );
\SubOp_p1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => Rd_Data_IBUF(0),
      I1 => Prefetch(0),
      I2 => Instr_Prefetch,
      O => \SubOp_p1[0]_i_1_n_0\
    );
\SubOp_p1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => Prefetch(0),
      I1 => Prefetch(1),
      I2 => Instr_Prefetch,
      I3 => Rd_Data_IBUF(0),
      I4 => Rd_Data_IBUF(1),
      O => \SubOp_p1[1]_i_1_n_0\
    );
\SubOp_p1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => Prefetch(2),
      I1 => Prefetch(1),
      I2 => Prefetch(0),
      I3 => Instr_Prefetch,
      I4 => \SubOp_p1[2]_i_2_n_0\,
      O => \SubOp_p1[2]_i_1_n_0\
    );
\SubOp_p1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Rd_Data_IBUF(2),
      I1 => Rd_Data_IBUF(1),
      I2 => Rd_Data_IBUF(0),
      O => \SubOp_p1[2]_i_2_n_0\
    );
\SubOp_p1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \SubOp_p1[0]_i_1_n_0\,
      Q => \SubOp_p1_reg_n_0_[0]\
    );
\SubOp_p1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \SubOp_p1[1]_i_1_n_0\,
      Q => \SubOp_p1_reg_n_0_[1]\
    );
\SubOp_p1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \SubOp_p1[2]_i_1_n_0\,
      Q => \SubOp_p1_reg_n_0_[2]\
    );
\SubOp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \SubOp[0]_i_1_n_0\,
      Q => SubOp(0)
    );
\SubOp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \SubOp[1]_i_1_n_0\,
      Q => SubOp(1)
    );
\SubOp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => \SubOp[2]_i_1_n_0\,
      CLR => Ack_Q_i_2_n_0,
      D => \SubOp[2]_i_2_n_0\,
      Q => SubOp(2)
    );
\SubOp_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SubOp[2]_i_7_n_0\,
      I1 => \SubOp[2]_i_8_n_0\,
      O => \SubOp_reg[2]_i_4_n_0\,
      S => CPU_State(4)
    );
Wait_for_FSM_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => Int_Ack,
      I1 => Wait_for_FSM_i_2_n_0,
      I2 => Wait_for_FSM,
      O => Wait_for_FSM_i_1_n_0
    );
Wait_for_FSM_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \ISR_Addr[0]_i_9_n_0\,
      I1 => p_1_in,
      I2 => \Pending_reg_n_0_[6]\,
      I3 => p_2_in,
      I4 => p_3_in,
      O => Wait_for_FSM_i_2_n_0
    );
Wait_for_FSM_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Ack_Q_i_2_n_0,
      D => Wait_for_FSM_i_1_n_0,
      Q => Wait_for_FSM
    );
\Wr_Data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0E0E0"
    )
        port map (
      I0 => \Wr_Data[0]_i_2_n_0\,
      I1 => \Wr_Data[0]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Rd_Enable_i_5_n_0,
      I4 => Flags(0),
      O => \Wr_Data[0]_i_1_n_0\
    );
\Wr_Data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C8888CC0C8888"
    )
        port map (
      I0 => \Wr_Data[0]_i_4_n_0\,
      I1 => Rd_Enable_i_5_n_0,
      I2 => \Wr_Data[0]_i_5_n_0\,
      I3 => \Wr_Data[7]_i_6_n_0\,
      I4 => \Wr_Data[7]_i_7_n_0\,
      I5 => \Wr_Data[0]_i_6_n_0\,
      O => \Wr_Data[0]_i_2_n_0\
    );
\Wr_Data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[8]\,
      I5 => \Program_Ctr_reg_n_0_[0]\,
      O => \Wr_Data[0]_i_3_n_0\
    );
\Wr_Data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(0),
      I1 => \Regfile_reg[2]__0\(0),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(0),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(0),
      O => \Wr_Data[0]_i_4_n_0\
    );
\Wr_Data[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(0),
      I1 => \Wr_Data[7]_i_9_n_0\,
      I2 => \Regfile_reg[4]__0\(0),
      O => \Wr_Data[0]_i_5_n_0\
    );
\Wr_Data[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(0),
      I1 => \Wr_Data[7]_i_9_n_0\,
      I2 => \Regfile_reg[6]__0\(0),
      O => \Wr_Data[0]_i_6_n_0\
    );
\Wr_Data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFC0D0C0"
    )
        port map (
      I0 => \Wr_Data_reg[1]_i_2_n_0\,
      I1 => \Wr_Data[1]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Rd_Enable_i_5_n_0,
      I4 => R,
      O => \Wr_Data[1]_i_1_n_0\
    );
\Wr_Data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[9]\,
      I5 => \Program_Ctr_reg_n_0_[1]\,
      O => \Wr_Data[1]_i_3_n_0\
    );
\Wr_Data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(1),
      I1 => \Regfile_reg[2]__0\(1),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(1),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(1),
      O => \Wr_Data[1]_i_4_n_0\
    );
\Wr_Data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(1),
      I1 => \Regfile_reg[6]__0\(1),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[5]__0\(1),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[4]__0\(1),
      O => \Wr_Data[1]_i_5_n_0\
    );
\Wr_Data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0E0E0"
    )
        port map (
      I0 => \Wr_Data[2]_i_2_n_0\,
      I1 => \Wr_Data[2]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Flags(2),
      I4 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[2]_i_1_n_0\
    );
\Wr_Data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[10]\,
      I5 => \Program_Ctr_reg_n_0_[2]\,
      O => \Wr_Data[2]_i_2_n_0\
    );
\Wr_Data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C8888CC0C8888"
    )
        port map (
      I0 => \Wr_Data[2]_i_4_n_0\,
      I1 => Rd_Enable_i_5_n_0,
      I2 => \Wr_Data[2]_i_5_n_0\,
      I3 => \Wr_Data[7]_i_6_n_0\,
      I4 => \Wr_Data[7]_i_7_n_0\,
      I5 => \Wr_Data[2]_i_6_n_0\,
      O => \Wr_Data[2]_i_3_n_0\
    );
\Wr_Data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(2),
      I1 => \Regfile_reg[2]__0\(2),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(2),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(2),
      O => \Wr_Data[2]_i_4_n_0\
    );
\Wr_Data[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(2),
      I1 => \Wr_Data[7]_i_9_n_0\,
      I2 => \Regfile_reg[4]__0\(2),
      O => \Wr_Data[2]_i_5_n_0\
    );
\Wr_Data[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(2),
      I1 => \Wr_Data[7]_i_9_n_0\,
      I2 => \Regfile_reg[6]__0\(2),
      O => \Wr_Data[2]_i_6_n_0\
    );
\Wr_Data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD0C0C0"
    )
        port map (
      I0 => \Wr_Data_reg[3]_i_2_n_0\,
      I1 => \Wr_Data[3]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Flags(3),
      I4 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[3]_i_1_n_0\
    );
\Wr_Data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[11]\,
      I5 => \Program_Ctr_reg_n_0_[3]\,
      O => \Wr_Data[3]_i_3_n_0\
    );
\Wr_Data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(3),
      I1 => \Regfile_reg[2]__0\(3),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(3),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(3),
      O => \Wr_Data[3]_i_4_n_0\
    );
\Wr_Data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(3),
      I1 => \Regfile_reg[6]__0\(3),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[5]__0\(3),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[4]__0\(3),
      O => \Wr_Data[3]_i_5_n_0\
    );
\Wr_Data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0E0E0"
    )
        port map (
      I0 => \Wr_Data[4]_i_2_n_0\,
      I1 => \Wr_Data[4]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Flags(4),
      I4 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[4]_i_1_n_0\
    );
\Wr_Data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC00"
    )
        port map (
      I0 => \Wr_Data[4]_i_4_n_0\,
      I1 => \Wr_Data[4]_i_5_n_0\,
      I2 => \Wr_Data[7]_i_7_n_0\,
      I3 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[4]_i_2_n_0\
    );
\Wr_Data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[12]\,
      I5 => \Program_Ctr_reg_n_0_[4]\,
      O => \Wr_Data[4]_i_3_n_0\
    );
\Wr_Data[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(4),
      I1 => \Regfile_reg[6]__0\(4),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[5]__0\(4),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[4]__0\(4),
      O => \Wr_Data[4]_i_4_n_0\
    );
\Wr_Data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(4),
      I1 => \Regfile_reg[2]__0\(4),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(4),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(4),
      O => \Wr_Data[4]_i_5_n_0\
    );
\Wr_Data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD0C0C0"
    )
        port map (
      I0 => \Wr_Data_reg[5]_i_2_n_0\,
      I1 => \Wr_Data[5]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Flags(5),
      I4 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[5]_i_1_n_0\
    );
\Wr_Data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[13]\,
      I5 => \Program_Ctr_reg_n_0_[5]\,
      O => \Wr_Data[5]_i_3_n_0\
    );
\Wr_Data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(5),
      I1 => \Regfile_reg[2]__0\(5),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(5),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(5),
      O => \Wr_Data[5]_i_4_n_0\
    );
\Wr_Data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(5),
      I1 => \Regfile_reg[6]__0\(5),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[5]__0\(5),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[4]__0\(5),
      O => \Wr_Data[5]_i_5_n_0\
    );
\Wr_Data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD0C0C0"
    )
        port map (
      I0 => \Wr_Data_reg[6]_i_2_n_0\,
      I1 => \Wr_Data[6]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Flags(6),
      I4 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[6]_i_1_n_0\
    );
\Wr_Data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[14]\,
      I5 => \Program_Ctr_reg_n_0_[6]\,
      O => \Wr_Data[6]_i_3_n_0\
    );
\Wr_Data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(6),
      I1 => \Regfile_reg[2]__0\(6),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(6),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(6),
      O => \Wr_Data[6]_i_4_n_0\
    );
\Wr_Data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(6),
      I1 => \Regfile_reg[6]__0\(6),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[5]__0\(6),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[4]__0\(6),
      O => \Wr_Data[6]_i_5_n_0\
    );
\Wr_Data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0E0E0"
    )
        port map (
      I0 => \Wr_Data[7]_i_2_n_0\,
      I1 => \Wr_Data[7]_i_3_n_0\,
      I2 => Rd_Enable_i_3_n_0,
      I3 => Flags(7),
      I4 => Rd_Enable_i_5_n_0,
      O => \Wr_Data[7]_i_1_n_0\
    );
\Wr_Data[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Opcode(2),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => Opcode(3),
      I4 => Opcode(4),
      O => \Wr_Data[7]_i_10_n_0\
    );
\Wr_Data[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7E0000FF7EFF7E"
    )
        port map (
      I0 => Opcode(2),
      I1 => Opcode(0),
      I2 => Opcode(1),
      I3 => \Wr_Data[7]_i_12_n_0\,
      I4 => CPU_State(0),
      I5 => CPU_State(5),
      O => \Wr_Data[7]_i_11_n_0\
    );
\Wr_Data[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF70FFFFFF"
    )
        port map (
      I0 => SubOp(1),
      I1 => SubOp(2),
      I2 => Opcode(2),
      I3 => SubOp(0),
      I4 => \Wr_Data[7]_i_13_n_0\,
      I5 => \SubOp[2]_i_6_n_0\,
      O => \Wr_Data[7]_i_12_n_0\
    );
\Wr_Data[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Opcode(4),
      I1 => Opcode(3),
      O => \Wr_Data[7]_i_13_n_0\
    );
\Wr_Data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C8888CC0C8888"
    )
        port map (
      I0 => \Wr_Data[7]_i_4_n_0\,
      I1 => Rd_Enable_i_5_n_0,
      I2 => \Wr_Data[7]_i_5_n_0\,
      I3 => \Wr_Data[7]_i_6_n_0\,
      I4 => \Wr_Data[7]_i_7_n_0\,
      I5 => \Wr_Data[7]_i_8_n_0\,
      O => \Wr_Data[7]_i_2_n_0\
    );
\Wr_Data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000100FE000000"
    )
        port map (
      I0 => \Wr_Data[7]_i_9_n_0\,
      I1 => \Wr_Data[7]_i_7_n_0\,
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => Rd_Enable_i_4_n_0,
      I4 => \Program_Ctr_reg_n_0_[15]\,
      I5 => \Program_Ctr_reg_n_0_[7]\,
      O => \Wr_Data[7]_i_3_n_0\
    );
\Wr_Data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Regfile_reg[3]__0\(7),
      I1 => \Regfile_reg[2]__0\(7),
      I2 => \Wr_Data[7]_i_6_n_0\,
      I3 => \Regfile_reg[1]__0\(7),
      I4 => \Wr_Data[7]_i_9_n_0\,
      I5 => \Regfile_reg[0]__0\(7),
      O => \Wr_Data[7]_i_4_n_0\
    );
\Wr_Data[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[5]__0\(7),
      I1 => \Wr_Data[7]_i_9_n_0\,
      I2 => \Regfile_reg[4]__0\(7),
      O => \Wr_Data[7]_i_5_n_0\
    );
\Wr_Data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000020000"
    )
        port map (
      I0 => SubOp(1),
      I1 => \SubOp[2]_i_6_n_0\,
      I2 => \SubOp[2]_i_17_n_0\,
      I3 => CPU_State(1),
      I4 => CPU_State(4),
      I5 => \Wr_Data[7]_i_10_n_0\,
      O => \Wr_Data[7]_i_6_n_0\
    );
\Wr_Data[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000020000"
    )
        port map (
      I0 => SubOp(2),
      I1 => \SubOp[2]_i_6_n_0\,
      I2 => \SubOp[2]_i_17_n_0\,
      I3 => CPU_State(1),
      I4 => CPU_State(4),
      I5 => \Wr_Data[7]_i_10_n_0\,
      O => \Wr_Data[7]_i_7_n_0\
    );
\Wr_Data[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Regfile_reg[7]__0\(7),
      I1 => \Wr_Data[7]_i_9_n_0\,
      I2 => \Regfile_reg[6]__0\(7),
      O => \Wr_Data[7]_i_8_n_0\
    );
\Wr_Data[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005220022"
    )
        port map (
      I0 => CPU_State(1),
      I1 => \Wr_Data[7]_i_11_n_0\,
      I2 => \SubOp[2]_i_6_n_0\,
      I3 => CPU_State(4),
      I4 => SubOp(0),
      I5 => \SubOp[2]_i_17_n_0\,
      O => \Wr_Data[7]_i_9_n_0\
    );
\Wr_Data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(0),
      O => Wr_Data(0)
    );
\Wr_Data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(1),
      O => Wr_Data(1)
    );
\Wr_Data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(2),
      O => Wr_Data(2)
    );
\Wr_Data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(3),
      O => Wr_Data(3)
    );
\Wr_Data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(4),
      O => Wr_Data(4)
    );
\Wr_Data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(5),
      O => Wr_Data(5)
    );
\Wr_Data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(6),
      O => Wr_Data(6)
    );
\Wr_Data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Wr_Data_OBUF(7),
      O => Wr_Data(7)
    );
\Wr_Data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[0]_i_1_n_0\,
      Q => Wr_Data_OBUF(0)
    );
\Wr_Data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[1]_i_1_n_0\,
      Q => Wr_Data_OBUF(1)
    );
\Wr_Data_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Wr_Data[1]_i_4_n_0\,
      I1 => \Wr_Data[1]_i_5_n_0\,
      O => \Wr_Data_reg[1]_i_2_n_0\,
      S => \Wr_Data[7]_i_7_n_0\
    );
\Wr_Data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[2]_i_1_n_0\,
      Q => Wr_Data_OBUF(2)
    );
\Wr_Data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[3]_i_1_n_0\,
      Q => Wr_Data_OBUF(3)
    );
\Wr_Data_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Wr_Data[3]_i_4_n_0\,
      I1 => \Wr_Data[3]_i_5_n_0\,
      O => \Wr_Data_reg[3]_i_2_n_0\,
      S => \Wr_Data[7]_i_7_n_0\
    );
\Wr_Data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[4]_i_1_n_0\,
      Q => Wr_Data_OBUF(4)
    );
\Wr_Data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[5]_i_1_n_0\,
      Q => Wr_Data_OBUF(5)
    );
\Wr_Data_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Wr_Data[5]_i_4_n_0\,
      I1 => \Wr_Data[5]_i_5_n_0\,
      O => \Wr_Data_reg[5]_i_2_n_0\,
      S => \Wr_Data[7]_i_7_n_0\
    );
\Wr_Data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[6]_i_1_n_0\,
      Q => Wr_Data_OBUF(6)
    );
\Wr_Data_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Wr_Data[6]_i_4_n_0\,
      I1 => \Wr_Data[6]_i_5_n_0\,
      O => \Wr_Data_reg[6]_i_2_n_0\,
      S => \Wr_Data[7]_i_7_n_0\
    );
\Wr_Data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => \Wr_Data[7]_i_1_n_0\,
      Q => Wr_Data_OBUF(7)
    );
Wr_Enable_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Wr_Enable_OBUF,
      O => Wr_Enable
    );
Wr_Enable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Rd_Enable_i_5_n_0,
      I1 => Rd_Enable_i_4_n_0,
      O => Wr_Enable_i_1_n_0
    );
Wr_Enable_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_IBUF_BUFG,
      CE => '1',
      CLR => Rd_Enable_i_2_n_0,
      D => Wr_Enable_i_1_n_0,
      Q => Wr_Enable_OBUF
    );
end STRUCTURE;
