-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Oct 14 15:58:11 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl /media/psf/Home/mips_16.vhd
-- Design      : mips_16_core_top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mips_16_core_top is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    pc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mips_16_core_top : entity is true;
end mips_16_core_top;

architecture STRUCTURE of mips_16_core_top is
  signal EX_pipeline_reg_out : STD_LOGIC_VECTOR ( 37 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of EX_pipeline_reg_out : signal is "true";
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \EX_stage_inst/alu_inst/r\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ID_pipeline_reg_out : STD_LOGIC_VECTOR ( 56 downto 0 );
  attribute RTL_KEEP of ID_pipeline_reg_out : signal is "true";
  signal \ID_stage_inst/decoding_op_is_store\ : STD_LOGIC;
  signal \ID_stage_inst/ir_dest\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ID_stage_inst/ir_dest_with_bubble\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ID_stage_inst/ir_op_code\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ID_stage_inst/p_1_out\ : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal MEM_pipeline_reg_out : STD_LOGIC_VECTOR ( 36 downto 0 );
  attribute RTL_KEEP of MEM_pipeline_reg_out : signal is "true";
  signal branch_offset_imm : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP of branch_offset_imm : signal is "true";
  signal branch_taken : STD_LOGIC;
  attribute RTL_KEEP of branch_taken : signal is "true";
  signal branch_taken_inferred_i_2_n_0 : STD_LOGIC;
  signal branch_taken_inferred_i_3_n_0 : STD_LOGIC;
  signal branch_taken_inferred_i_4_n_0 : STD_LOGIC;
  signal branch_taken_inferred_i_5_n_0 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal data5 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal decoding_op_src1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of decoding_op_src1 : signal is "true";
  signal decoding_op_src2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of decoding_op_src2 : signal is "true";
  signal ex_op_dest : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of ex_op_dest : signal is "true";
  signal \hazard_detection_unit_inst/pipeline_stall_n31_out\ : STD_LOGIC;
  signal \hazard_detection_unit_inst/pipeline_stall_n3__4\ : STD_LOGIC;
  signal \hazard_detection_unit_inst/pipeline_stall_n40_out\ : STD_LOGIC;
  signal \hazard_detection_unit_inst/pipeline_stall_n42_out\ : STD_LOGIC;
  signal \hazard_detection_unit_inst/pipeline_stall_n43_out\ : STD_LOGIC;
  signal \hazard_detection_unit_inst/pipeline_stall_n4__4\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal instruction : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of instruction : signal is "true";
  signal mem_op_dest : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of mem_op_dest : signal is "true";
  signal mem_read_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pc[3]_i_2_n_0\ : STD_LOGIC;
  signal \pc[3]_i_3_n_0\ : STD_LOGIC;
  signal \pc[3]_i_4_n_0\ : STD_LOGIC;
  signal \pc[3]_i_5_n_0\ : STD_LOGIC;
  signal \pc[7]_i_2_n_0\ : STD_LOGIC;
  signal \pc[7]_i_3_n_0\ : STD_LOGIC;
  signal \pc[7]_i_4_n_0\ : STD_LOGIC;
  signal \pc[7]_i_5_n_0\ : STD_LOGIC;
  signal pc_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pc__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pc_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[22]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[23]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[24]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[24]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[24]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[24]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[24]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[24]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[25]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[26]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[27]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[28]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[29]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[30]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[31]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[32]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[33]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_13_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[34]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[35]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[35]_i_3_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[35]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[35]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[35]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[35]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_13_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_3_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_4_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_6_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[36]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_10_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_11_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_12_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_13_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_14_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_15_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_2__0_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_2_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_3_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_4_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_5_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_7_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_8_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[37]_i_9_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[54]_i_1_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[55]_i_1_n_0\ : STD_LOGIC;
  signal \pipeline_reg_out[56]_i_1_n_0\ : STD_LOGIC;
  signal pipeline_stall_n : STD_LOGIC;
  attribute RTL_KEEP of pipeline_stall_n : signal is "true";
  signal pipeline_stall_n1 : STD_LOGIC;
  signal pipeline_stall_n15_out : STD_LOGIC;
  signal \reg_array[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_array[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_array[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_array[4][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_array[5][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_array[6][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_array_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_array_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_array_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_array_reg[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_array_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_array_reg[6]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_array_reg[7]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_read_addr_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of reg_read_addr_1 : signal is "true";
  signal reg_read_addr_2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of reg_read_addr_2 : signal is "true";
  signal reg_read_data_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of reg_read_data_1 : signal is "true";
  signal reg_read_data_1_inferred_i_17_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_18_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_19_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_20_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_21_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_22_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_23_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_24_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_25_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_26_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_27_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_28_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_29_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_30_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_31_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_32_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_33_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_34_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_35_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_36_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_37_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_38_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_39_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_40_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_41_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_42_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_43_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_44_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_45_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_46_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_47_n_0 : STD_LOGIC;
  signal reg_read_data_1_inferred_i_48_n_0 : STD_LOGIC;
  signal reg_read_data_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of reg_read_data_2 : signal is "true";
  signal reg_read_data_2_inferred_i_17_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_18_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_19_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_20_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_21_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_22_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_23_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_24_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_25_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_26_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_27_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_28_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_29_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_30_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_31_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_32_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_33_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_34_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_35_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_36_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_37_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_38_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_39_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_40_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_41_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_42_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_43_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_44_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_45_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_46_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_47_n_0 : STD_LOGIC;
  signal reg_read_data_2_inferred_i_48_n_0 : STD_LOGIC;
  signal reg_write_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of reg_write_data : signal is "true";
  signal reg_write_dest : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of reg_write_dest : signal is "true";
  signal reg_write_en : STD_LOGIC;
  attribute RTL_KEEP of reg_write_en : signal is "true";
  signal \register_file_inst/reg_array\ : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal wb_op_dest : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of wb_op_dest : signal is "true";
  signal \NLW_EX_stage_inst/alu_inst/_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pc_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \EX_stage_inst/alu_inst/_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \EX_stage_inst/alu_inst/_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \EX_stage_inst/alu_inst/_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \EX_stage_inst/alu_inst/_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \pc_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \pc_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
\EX_stage_inst/alu_inst/_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_0\,
      CO(2) => \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_1\,
      CO(1) => \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_2\,
      CO(0) => \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_3\,
      CYINIT => ID_pipeline_reg_out(38),
      DI(3 downto 1) => ID_pipeline_reg_out(41 downto 39),
      DI(0) => ID_pipeline_reg_out(54),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\EX_stage_inst/alu_inst/_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \EX_stage_inst/alu_inst/_inferred__0/i__carry_n_0\,
      CO(3) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_0\,
      CO(2) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_1\,
      CO(1) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_2\,
      CO(0) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ID_pipeline_reg_out(45 downto 42),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\EX_stage_inst/alu_inst/_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \EX_stage_inst/alu_inst/_inferred__0/i__carry__0_n_0\,
      CO(3) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_0\,
      CO(2) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_1\,
      CO(1) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_2\,
      CO(0) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ID_pipeline_reg_out(49 downto 46),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\EX_stage_inst/alu_inst/_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EX_stage_inst/alu_inst/_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_EX_stage_inst/alu_inst/_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__2_n_1\,
      CO(1) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__2_n_2\,
      CO(0) => \EX_stage_inst/alu_inst/_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => ID_pipeline_reg_out(52 downto 50),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\EX_stage_inst/pipeline_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(0),
      Q => EX_pipeline_reg_out(0),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(10),
      Q => EX_pipeline_reg_out(10),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(11),
      Q => EX_pipeline_reg_out(11),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(12),
      Q => EX_pipeline_reg_out(12),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(13),
      Q => EX_pipeline_reg_out(13),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(14),
      Q => EX_pipeline_reg_out(14),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(15),
      Q => EX_pipeline_reg_out(15),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(16),
      Q => EX_pipeline_reg_out(16),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(17),
      Q => EX_pipeline_reg_out(17),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(18),
      Q => EX_pipeline_reg_out(18),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(19),
      Q => EX_pipeline_reg_out(19),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(1),
      Q => EX_pipeline_reg_out(1),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(20),
      Q => EX_pipeline_reg_out(20),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(21),
      Q => EX_pipeline_reg_out(21),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(0),
      Q => EX_pipeline_reg_out(22),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(1),
      Q => EX_pipeline_reg_out(23),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(2),
      Q => EX_pipeline_reg_out(24),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(3),
      Q => EX_pipeline_reg_out(25),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(4),
      Q => EX_pipeline_reg_out(26),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(5),
      Q => EX_pipeline_reg_out(27),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(6),
      Q => EX_pipeline_reg_out(28),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(7),
      Q => EX_pipeline_reg_out(29),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(2),
      Q => EX_pipeline_reg_out(2),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(8),
      Q => EX_pipeline_reg_out(30),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(9),
      Q => EX_pipeline_reg_out(31),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(10),
      Q => EX_pipeline_reg_out(32),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(11),
      Q => EX_pipeline_reg_out(33),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(12),
      Q => EX_pipeline_reg_out(34),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(13),
      Q => EX_pipeline_reg_out(35),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(14),
      Q => EX_pipeline_reg_out(36),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \EX_stage_inst/alu_inst/r\(15),
      Q => EX_pipeline_reg_out(37),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(3),
      Q => EX_pipeline_reg_out(3),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(4),
      Q => EX_pipeline_reg_out(4),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(5),
      Q => EX_pipeline_reg_out(5),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(6),
      Q => EX_pipeline_reg_out(6),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(7),
      Q => EX_pipeline_reg_out(7),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(8),
      Q => EX_pipeline_reg_out(8),
      R => rst_IBUF
    );
\EX_stage_inst/pipeline_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ID_pipeline_reg_out(9),
      Q => EX_pipeline_reg_out(9),
      R => rst_IBUF
    );
\ID_stage_inst/instruction_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(0),
      Q => branch_offset_imm(0)
    );
\ID_stage_inst/instruction_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(10),
      Q => \ID_stage_inst/ir_dest\(1)
    );
\ID_stage_inst/instruction_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(11),
      Q => \ID_stage_inst/ir_dest\(2)
    );
\ID_stage_inst/instruction_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(12),
      Q => \ID_stage_inst/ir_op_code\(0)
    );
\ID_stage_inst/instruction_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(13),
      Q => \ID_stage_inst/ir_op_code\(1)
    );
\ID_stage_inst/instruction_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(14),
      Q => \ID_stage_inst/ir_op_code\(2)
    );
\ID_stage_inst/instruction_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(15),
      Q => \ID_stage_inst/ir_op_code\(3)
    );
\ID_stage_inst/instruction_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(1),
      Q => branch_offset_imm(1)
    );
\ID_stage_inst/instruction_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(2),
      Q => branch_offset_imm(2)
    );
\ID_stage_inst/instruction_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(3),
      Q => branch_offset_imm(3)
    );
\ID_stage_inst/instruction_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(4),
      Q => branch_offset_imm(4)
    );
\ID_stage_inst/instruction_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(5),
      Q => branch_offset_imm(5)
    );
\ID_stage_inst/instruction_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(6),
      Q => reg_read_addr_1(0)
    );
\ID_stage_inst/instruction_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(7),
      Q => reg_read_addr_1(1)
    );
\ID_stage_inst/instruction_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(8),
      Q => reg_read_addr_1(2)
    );
\ID_stage_inst/instruction_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => instruction(9),
      Q => \ID_stage_inst/ir_dest\(0)
    );
\ID_stage_inst/pipeline_reg_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(0),
      Q => ID_pipeline_reg_out(0)
    );
\ID_stage_inst/pipeline_reg_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(5),
      Q => ID_pipeline_reg_out(10)
    );
\ID_stage_inst/pipeline_reg_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(6),
      Q => ID_pipeline_reg_out(11)
    );
\ID_stage_inst/pipeline_reg_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(7),
      Q => ID_pipeline_reg_out(12)
    );
\ID_stage_inst/pipeline_reg_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(8),
      Q => ID_pipeline_reg_out(13)
    );
\ID_stage_inst/pipeline_reg_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(9),
      Q => ID_pipeline_reg_out(14)
    );
\ID_stage_inst/pipeline_reg_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(10),
      Q => ID_pipeline_reg_out(15)
    );
\ID_stage_inst/pipeline_reg_out_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(11),
      Q => ID_pipeline_reg_out(16)
    );
\ID_stage_inst/pipeline_reg_out_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(12),
      Q => ID_pipeline_reg_out(17)
    );
\ID_stage_inst/pipeline_reg_out_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(13),
      Q => ID_pipeline_reg_out(18)
    );
\ID_stage_inst/pipeline_reg_out_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(14),
      Q => ID_pipeline_reg_out(19)
    );
\ID_stage_inst/pipeline_reg_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/ir_dest_with_bubble\(0),
      Q => ID_pipeline_reg_out(1)
    );
\ID_stage_inst/pipeline_reg_out_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(15),
      Q => ID_pipeline_reg_out(20)
    );
\ID_stage_inst/pipeline_reg_out_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/decoding_op_is_store\,
      Q => ID_pipeline_reg_out(21)
    );
\ID_stage_inst/pipeline_reg_out_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(22),
      Q => ID_pipeline_reg_out(22)
    );
\ID_stage_inst/pipeline_reg_out_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(23),
      Q => ID_pipeline_reg_out(23)
    );
\ID_stage_inst/pipeline_reg_out_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(24),
      Q => ID_pipeline_reg_out(24)
    );
\ID_stage_inst/pipeline_reg_out_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(25),
      Q => ID_pipeline_reg_out(25)
    );
\ID_stage_inst/pipeline_reg_out_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(26),
      Q => ID_pipeline_reg_out(26)
    );
\ID_stage_inst/pipeline_reg_out_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(27),
      Q => ID_pipeline_reg_out(27)
    );
\ID_stage_inst/pipeline_reg_out_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(28),
      Q => ID_pipeline_reg_out(28)
    );
\ID_stage_inst/pipeline_reg_out_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(29),
      Q => ID_pipeline_reg_out(29)
    );
\ID_stage_inst/pipeline_reg_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/ir_dest_with_bubble\(1),
      Q => ID_pipeline_reg_out(2)
    );
\ID_stage_inst/pipeline_reg_out_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(30),
      Q => ID_pipeline_reg_out(30)
    );
\ID_stage_inst/pipeline_reg_out_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(31),
      Q => ID_pipeline_reg_out(31)
    );
\ID_stage_inst/pipeline_reg_out_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(32),
      Q => ID_pipeline_reg_out(32)
    );
\ID_stage_inst/pipeline_reg_out_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(33),
      Q => ID_pipeline_reg_out(33)
    );
\ID_stage_inst/pipeline_reg_out_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(34),
      Q => ID_pipeline_reg_out(34)
    );
\ID_stage_inst/pipeline_reg_out_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(35),
      Q => ID_pipeline_reg_out(35)
    );
\ID_stage_inst/pipeline_reg_out_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(36),
      Q => ID_pipeline_reg_out(36)
    );
\ID_stage_inst/pipeline_reg_out_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(37),
      Q => ID_pipeline_reg_out(37)
    );
\ID_stage_inst/pipeline_reg_out_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(0),
      Q => ID_pipeline_reg_out(38)
    );
\ID_stage_inst/pipeline_reg_out_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(1),
      Q => ID_pipeline_reg_out(39)
    );
\ID_stage_inst/pipeline_reg_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/ir_dest_with_bubble\(2),
      Q => ID_pipeline_reg_out(3)
    );
\ID_stage_inst/pipeline_reg_out_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(2),
      Q => ID_pipeline_reg_out(40)
    );
\ID_stage_inst/pipeline_reg_out_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(3),
      Q => ID_pipeline_reg_out(41)
    );
\ID_stage_inst/pipeline_reg_out_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(4),
      Q => ID_pipeline_reg_out(42)
    );
\ID_stage_inst/pipeline_reg_out_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(5),
      Q => ID_pipeline_reg_out(43)
    );
\ID_stage_inst/pipeline_reg_out_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(6),
      Q => ID_pipeline_reg_out(44)
    );
\ID_stage_inst/pipeline_reg_out_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(7),
      Q => ID_pipeline_reg_out(45)
    );
\ID_stage_inst/pipeline_reg_out_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(8),
      Q => ID_pipeline_reg_out(46)
    );
\ID_stage_inst/pipeline_reg_out_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(9),
      Q => ID_pipeline_reg_out(47)
    );
\ID_stage_inst/pipeline_reg_out_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(10),
      Q => ID_pipeline_reg_out(48)
    );
\ID_stage_inst/pipeline_reg_out_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(11),
      Q => ID_pipeline_reg_out(49)
    );
\ID_stage_inst/pipeline_reg_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \ID_stage_inst/p_1_out\(4),
      Q => ID_pipeline_reg_out(4)
    );
\ID_stage_inst/pipeline_reg_out_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(12),
      Q => ID_pipeline_reg_out(50)
    );
\ID_stage_inst/pipeline_reg_out_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(13),
      Q => ID_pipeline_reg_out(51)
    );
\ID_stage_inst/pipeline_reg_out_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(14),
      Q => ID_pipeline_reg_out(52)
    );
\ID_stage_inst/pipeline_reg_out_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_1(15),
      Q => ID_pipeline_reg_out(53)
    );
\ID_stage_inst/pipeline_reg_out_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \pipeline_reg_out[54]_i_1_n_0\,
      Q => ID_pipeline_reg_out(54)
    );
\ID_stage_inst/pipeline_reg_out_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \pipeline_reg_out[55]_i_1_n_0\,
      Q => ID_pipeline_reg_out(55)
    );
\ID_stage_inst/pipeline_reg_out_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \pipeline_reg_out[56]_i_1_n_0\,
      Q => ID_pipeline_reg_out(56)
    );
\ID_stage_inst/pipeline_reg_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(0),
      Q => ID_pipeline_reg_out(5)
    );
\ID_stage_inst/pipeline_reg_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(1),
      Q => ID_pipeline_reg_out(6)
    );
\ID_stage_inst/pipeline_reg_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(2),
      Q => ID_pipeline_reg_out(7)
    );
\ID_stage_inst/pipeline_reg_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(3),
      Q => ID_pipeline_reg_out(8)
    );
\ID_stage_inst/pipeline_reg_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => reg_read_data_2(4),
      Q => ID_pipeline_reg_out(9)
    );
\IF_stage_inst/pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(0),
      Q => pc_OBUF(0)
    );
\IF_stage_inst/pc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(1),
      Q => pc_OBUF(1)
    );
\IF_stage_inst/pc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(2),
      Q => pc_OBUF(2)
    );
\IF_stage_inst/pc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(3),
      Q => pc_OBUF(3)
    );
\IF_stage_inst/pc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(4),
      Q => pc_OBUF(4)
    );
\IF_stage_inst/pc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(5),
      Q => pc_OBUF(5)
    );
\IF_stage_inst/pc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(6),
      Q => pc_OBUF(6)
    );
\IF_stage_inst/pc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pipeline_stall_n,
      CLR => rst_IBUF,
      D => \pc__0\(7),
      Q => pc_OBUF(7)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_0_0\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(5),
      O => mem_read_data(0),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_10_10\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(15),
      O => mem_read_data(10),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_11_11\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(16),
      O => mem_read_data(11),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_12_12\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(17),
      O => mem_read_data(12),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_13_13\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(18),
      O => mem_read_data(13),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_14_14\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(19),
      O => mem_read_data(14),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_15_15\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(20),
      O => mem_read_data(15),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_1_1\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(6),
      O => mem_read_data(1),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_2_2\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(7),
      O => mem_read_data(2),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_3_3\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(8),
      O => mem_read_data(3),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_4_4\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(9),
      O => mem_read_data(4),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_5_5\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(10),
      O => mem_read_data(5),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_6_6\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(11),
      O => mem_read_data(6),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_7_7\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(12),
      O => mem_read_data(7),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_8_8\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(13),
      O => mem_read_data(8),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/dmem/ram_reg_0_255_9_9\: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => EX_pipeline_reg_out(29 downto 22),
      D => EX_pipeline_reg_out(14),
      O => mem_read_data(9),
      WCLK => clk_IBUF_BUFG,
      WE => EX_pipeline_reg_out(21)
    );
\MEM_stage_inst/pipeline_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(0),
      Q => MEM_pipeline_reg_out(0),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(5),
      Q => MEM_pipeline_reg_out(10),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(6),
      Q => MEM_pipeline_reg_out(11),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(7),
      Q => MEM_pipeline_reg_out(12),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(8),
      Q => MEM_pipeline_reg_out(13),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(9),
      Q => MEM_pipeline_reg_out(14),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(10),
      Q => MEM_pipeline_reg_out(15),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(11),
      Q => MEM_pipeline_reg_out(16),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(12),
      Q => MEM_pipeline_reg_out(17),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(13),
      Q => MEM_pipeline_reg_out(18),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(14),
      Q => MEM_pipeline_reg_out(19),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(1),
      Q => MEM_pipeline_reg_out(1),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(15),
      Q => MEM_pipeline_reg_out(20),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(22),
      Q => MEM_pipeline_reg_out(21),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(23),
      Q => MEM_pipeline_reg_out(22),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(24),
      Q => MEM_pipeline_reg_out(23),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(25),
      Q => MEM_pipeline_reg_out(24),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(26),
      Q => MEM_pipeline_reg_out(25),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(27),
      Q => MEM_pipeline_reg_out(26),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(28),
      Q => MEM_pipeline_reg_out(27),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(29),
      Q => MEM_pipeline_reg_out(28),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(30),
      Q => MEM_pipeline_reg_out(29),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(2),
      Q => MEM_pipeline_reg_out(2),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(31),
      Q => MEM_pipeline_reg_out(30),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(32),
      Q => MEM_pipeline_reg_out(31),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(33),
      Q => MEM_pipeline_reg_out(32),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(34),
      Q => MEM_pipeline_reg_out(33),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(35),
      Q => MEM_pipeline_reg_out(34),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(36),
      Q => MEM_pipeline_reg_out(35),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(37),
      Q => MEM_pipeline_reg_out(36),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(3),
      Q => MEM_pipeline_reg_out(3),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => EX_pipeline_reg_out(4),
      Q => MEM_pipeline_reg_out(4),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(0),
      Q => MEM_pipeline_reg_out(5),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(1),
      Q => MEM_pipeline_reg_out(6),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(2),
      Q => MEM_pipeline_reg_out(7),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(3),
      Q => MEM_pipeline_reg_out(8),
      R => rst_IBUF
    );
\MEM_stage_inst/pipeline_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mem_read_data(4),
      Q => MEM_pipeline_reg_out(9),
      R => rst_IBUF
    );
\WB_stage_inst/reg_write_data_inferred_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(20),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(36),
      O => reg_write_data(15)
    );
\WB_stage_inst/reg_write_data_inferred_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(11),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(27),
      O => reg_write_data(6)
    );
\WB_stage_inst/reg_write_data_inferred_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(10),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(26),
      O => reg_write_data(5)
    );
\WB_stage_inst/reg_write_data_inferred_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(9),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(25),
      O => reg_write_data(4)
    );
\WB_stage_inst/reg_write_data_inferred_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(8),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(24),
      O => reg_write_data(3)
    );
\WB_stage_inst/reg_write_data_inferred_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(7),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(23),
      O => reg_write_data(2)
    );
\WB_stage_inst/reg_write_data_inferred_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(6),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(22),
      O => reg_write_data(1)
    );
\WB_stage_inst/reg_write_data_inferred_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(5),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(21),
      O => reg_write_data(0)
    );
\WB_stage_inst/reg_write_data_inferred_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(19),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(35),
      O => reg_write_data(14)
    );
\WB_stage_inst/reg_write_data_inferred_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(18),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(34),
      O => reg_write_data(13)
    );
\WB_stage_inst/reg_write_data_inferred_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(17),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(33),
      O => reg_write_data(12)
    );
\WB_stage_inst/reg_write_data_inferred_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(16),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(32),
      O => reg_write_data(11)
    );
\WB_stage_inst/reg_write_data_inferred_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(15),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(31),
      O => reg_write_data(10)
    );
\WB_stage_inst/reg_write_data_inferred_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(14),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(30),
      O => reg_write_data(9)
    );
\WB_stage_inst/reg_write_data_inferred_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(13),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(29),
      O => reg_write_data(8)
    );
\WB_stage_inst/reg_write_data_inferred_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MEM_pipeline_reg_out(12),
      I1 => MEM_pipeline_reg_out(0),
      I2 => MEM_pipeline_reg_out(28),
      O => reg_write_data(7)
    );
branch_taken_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => branch_taken_inferred_i_2_n_0,
      I1 => branch_taken_inferred_i_3_n_0,
      I2 => branch_taken_inferred_i_4_n_0,
      I3 => branch_taken_inferred_i_5_n_0,
      O => branch_taken
    );
branch_taken_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => reg_read_data_1(2),
      I1 => reg_read_data_1(3),
      I2 => reg_read_data_1(0),
      I3 => reg_read_data_1(1),
      I4 => reg_read_data_1(5),
      I5 => reg_read_data_1(4),
      O => branch_taken_inferred_i_2_n_0
    );
branch_taken_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => reg_read_data_1(14),
      I1 => reg_read_data_1(15),
      I2 => reg_read_data_1(12),
      I3 => reg_read_data_1(13),
      I4 => \ID_stage_inst/ir_op_code\(3),
      I5 => \ID_stage_inst/ir_op_code\(2),
      O => branch_taken_inferred_i_3_n_0
    );
branch_taken_inferred_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => reg_read_data_1(8),
      I1 => reg_read_data_1(9),
      I2 => reg_read_data_1(6),
      I3 => reg_read_data_1(7),
      I4 => reg_read_data_1(11),
      I5 => reg_read_data_1(10),
      O => branch_taken_inferred_i_4_n_0
    );
branch_taken_inferred_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005557"
    )
        port map (
      I0 => pipeline_stall_n,
      I1 => \ID_stage_inst/ir_dest\(2),
      I2 => \ID_stage_inst/ir_dest\(1),
      I3 => \ID_stage_inst/ir_dest\(0),
      I4 => \ID_stage_inst/ir_op_code\(1),
      I5 => \ID_stage_inst/ir_op_code\(0),
      O => branch_taken_inferred_i_5_n_0
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
decoding_op_src2_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2E228AAA22228"
    )
        port map (
      I0 => branch_offset_imm(5),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(1),
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_dest\(2),
      O => decoding_op_src2(2)
    );
decoding_op_src2_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2E228AAA22228"
    )
        port map (
      I0 => branch_offset_imm(4),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(1),
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_dest\(1),
      O => decoding_op_src2(1)
    );
decoding_op_src2_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2E228AAA22228"
    )
        port map (
      I0 => branch_offset_imm(3),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(1),
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_dest\(0),
      O => decoding_op_src2(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_read_addr_1(2),
      O => decoding_op_src1(2)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_read_addr_1(1),
      O => decoding_op_src1(1)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_write_dest(1),
      O => wb_op_dest(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_write_dest(0),
      O => wb_op_dest(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(15)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(14)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(13)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(12)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(11)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(10)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(9)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(8)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_read_addr_1(0),
      O => decoding_op_src1(0)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(7)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(6)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(5)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(4)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(3)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(2)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(1)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => instruction(0)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MEM_pipeline_reg_out(4),
      O => reg_write_en
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MEM_pipeline_reg_out(3),
      O => reg_write_dest(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ID_pipeline_reg_out(3),
      O => ex_op_dest(2)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MEM_pipeline_reg_out(2),
      O => reg_write_dest(1)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MEM_pipeline_reg_out(1),
      O => reg_write_dest(0)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ID_pipeline_reg_out(2),
      O => ex_op_dest(1)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ID_pipeline_reg_out(1),
      O => ex_op_dest(0)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EX_pipeline_reg_out(3),
      O => mem_op_dest(2)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EX_pipeline_reg_out(2),
      O => mem_op_dest(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EX_pipeline_reg_out(1),
      O => mem_op_dest(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_write_dest(2),
      O => wb_op_dest(2)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(29),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(45),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(28),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(44),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(27),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(43),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(26),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(42),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(33),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(49),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(32),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(48),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(31),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(47),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(30),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(46),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(37),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(53),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(36),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(52),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(35),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(51),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(34),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(50),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(25),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(41),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(40),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ID_pipeline_reg_out(23),
      I1 => ID_pipeline_reg_out(54),
      I2 => ID_pipeline_reg_out(39),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ID_pipeline_reg_out(22),
      O => \i__carry_i_4_n_0\
    );
\pc[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(3),
      I1 => branch_taken,
      I2 => pc_OBUF(3),
      O => \pc[3]_i_2_n_0\
    );
\pc[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(2),
      I1 => branch_taken,
      I2 => pc_OBUF(2),
      O => \pc[3]_i_3_n_0\
    );
\pc[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(1),
      I1 => branch_taken,
      I2 => pc_OBUF(1),
      O => \pc[3]_i_4_n_0\
    );
\pc[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => branch_taken,
      I1 => branch_offset_imm(0),
      I2 => pc_OBUF(0),
      O => \pc[3]_i_5_n_0\
    );
\pc[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(5),
      I1 => branch_taken,
      I2 => pc_OBUF(7),
      O => \pc[7]_i_2_n_0\
    );
\pc[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(5),
      I1 => branch_taken,
      I2 => pc_OBUF(6),
      O => \pc[7]_i_3_n_0\
    );
\pc[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(5),
      I1 => branch_taken,
      I2 => pc_OBUF(5),
      O => \pc[7]_i_4_n_0\
    );
\pc[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => branch_offset_imm(4),
      I1 => branch_taken,
      I2 => pc_OBUF(4),
      O => \pc[7]_i_5_n_0\
    );
\pc_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(0),
      O => pc(0)
    );
\pc_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(1),
      O => pc(1)
    );
\pc_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(2),
      O => pc(2)
    );
\pc_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(3),
      O => pc(3)
    );
\pc_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(4),
      O => pc(4)
    );
\pc_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(5),
      O => pc(5)
    );
\pc_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(6),
      O => pc(6)
    );
\pc_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_OBUF(7),
      O => pc(7)
    );
\pc_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_reg[3]_i_1_n_0\,
      CO(2) => \pc_reg[3]_i_1_n_1\,
      CO(1) => \pc_reg[3]_i_1_n_2\,
      CO(0) => \pc_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc_OBUF(3 downto 0),
      O(3 downto 0) => \pc__0\(3 downto 0),
      S(3) => \pc[3]_i_2_n_0\,
      S(2) => \pc[3]_i_3_n_0\,
      S(1) => \pc[3]_i_4_n_0\,
      S(0) => \pc[3]_i_5_n_0\
    );
\pc_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[3]_i_1_n_0\,
      CO(3) => \NLW_pc_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pc_reg[7]_i_1_n_1\,
      CO(1) => \pc_reg[7]_i_1_n_2\,
      CO(0) => \pc_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => pc_OBUF(6 downto 4),
      O(3 downto 0) => \pc__0\(7 downto 4),
      S(3) => \pc[7]_i_2_n_0\,
      S(2) => \pc[7]_i_3_n_0\,
      S(1) => \pc[7]_i_4_n_0\,
      S(0) => \pc[7]_i_5_n_0\
    );
\pipeline_reg_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \ID_stage_inst/ir_op_code\(1),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => rst_IBUF,
      I3 => pipeline_stall_n,
      O => \ID_stage_inst/p_1_out\(0)
    );
\pipeline_reg_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pipeline_stall_n,
      I1 => \ID_stage_inst/ir_dest\(0),
      O => \ID_stage_inst/ir_dest_with_bubble\(0)
    );
\pipeline_reg_out[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \ID_stage_inst/ir_op_code\(2),
      I1 => \ID_stage_inst/ir_op_code\(1),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(3),
      O => \ID_stage_inst/decoding_op_is_store\
    );
\pipeline_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(0),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(0),
      O => \ID_stage_inst/p_1_out\(22)
    );
\pipeline_reg_out[22]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(46),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(38),
      O => \pipeline_reg_out[22]_i_10_n_0\
    );
\pipeline_reg_out[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[22]_i_2_n_0\,
      I1 => data0(0),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(38),
      I5 => ID_pipeline_reg_out(22),
      O => \EX_stage_inst/alu_inst/r\(0)
    );
\pipeline_reg_out[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(0),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(0),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[22]_i_5_n_0\,
      O => \pipeline_reg_out[22]_i_2_n_0\
    );
\pipeline_reg_out[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[22]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[24]_i_6_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[23]_i_6_n_0\,
      O => data6(0)
    );
\pipeline_reg_out[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[22]_i_7_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[22]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[23]_i_7_n_0\,
      O => data5(0)
    );
\pipeline_reg_out[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008F0F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[22]_i_9_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(22),
      I4 => ID_pipeline_reg_out(38),
      O => \pipeline_reg_out[22]_i_5_n_0\
    );
\pipeline_reg_out[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(50),
      I1 => ID_pipeline_reg_out(42),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(46),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(38),
      O => \pipeline_reg_out[22]_i_6_n_0\
    );
\pipeline_reg_out[22]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_11_n_0\,
      I1 => ID_pipeline_reg_out(24),
      I2 => \pipeline_reg_out[22]_i_10_n_0\,
      O => \pipeline_reg_out[22]_i_7_n_0\
    );
\pipeline_reg_out[22]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[28]_i_11_n_0\,
      I1 => ID_pipeline_reg_out(24),
      I2 => \pipeline_reg_out[24]_i_9_n_0\,
      O => \pipeline_reg_out[22]_i_8_n_0\
    );
\pipeline_reg_out[22]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(38),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(23),
      O => \pipeline_reg_out[22]_i_9_n_0\
    );
\pipeline_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(1),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(1),
      O => \ID_stage_inst/p_1_out\(23)
    );
\pipeline_reg_out[23]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(47),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(39),
      O => \pipeline_reg_out[23]_i_10_n_0\
    );
\pipeline_reg_out[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[23]_i_2_n_0\,
      I1 => data0(1),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(39),
      I5 => ID_pipeline_reg_out(23),
      O => \EX_stage_inst/alu_inst/r\(1)
    );
\pipeline_reg_out[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(1),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(1),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[23]_i_5_n_0\,
      O => \pipeline_reg_out[23]_i_2_n_0\
    );
\pipeline_reg_out[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[24]_i_6_n_0\,
      I3 => \pipeline_reg_out[36]_i_3_n_0\,
      I4 => \pipeline_reg_out[23]_i_6_n_0\,
      I5 => ID_pipeline_reg_out(22),
      O => data6(1)
    );
\pipeline_reg_out[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[23]_i_7_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[24]_i_7_n_0\,
      O => data5(1)
    );
\pipeline_reg_out[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[23]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(23),
      I4 => ID_pipeline_reg_out(39),
      O => \pipeline_reg_out[23]_i_5_n_0\
    );
\pipeline_reg_out[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[25]_i_9_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[23]_i_9_n_0\,
      O => \pipeline_reg_out[23]_i_6_n_0\
    );
\pipeline_reg_out[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \pipeline_reg_out[25]_i_10_n_0\,
      I1 => \pipeline_reg_out[25]_i_11_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[27]_i_11_n_0\,
      I4 => ID_pipeline_reg_out(24),
      I5 => \pipeline_reg_out[23]_i_10_n_0\,
      O => \pipeline_reg_out[23]_i_7_n_0\
    );
\pipeline_reg_out[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => ID_pipeline_reg_out(38),
      I1 => ID_pipeline_reg_out(22),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(39),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(23),
      O => \pipeline_reg_out[23]_i_8_n_0\
    );
\pipeline_reg_out[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(51),
      I1 => ID_pipeline_reg_out(43),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(47),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(39),
      O => \pipeline_reg_out[23]_i_9_n_0\
    );
\pipeline_reg_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(2),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(2),
      O => \ID_stage_inst/p_1_out\(24)
    );
\pipeline_reg_out[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[24]_i_2_n_0\,
      I1 => data0(2),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(40),
      I5 => ID_pipeline_reg_out(24),
      O => \EX_stage_inst/alu_inst/r\(2)
    );
\pipeline_reg_out[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(2),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(2),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[24]_i_5_n_0\,
      O => \pipeline_reg_out[24]_i_2_n_0\
    );
\pipeline_reg_out[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[24]_i_6_n_0\,
      I3 => \pipeline_reg_out[36]_i_3_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[25]_i_6_n_0\,
      O => data6(2)
    );
\pipeline_reg_out[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[24]_i_7_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[25]_i_7_n_0\,
      O => data5(2)
    );
\pipeline_reg_out[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[24]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(24),
      I4 => ID_pipeline_reg_out(40),
      O => \pipeline_reg_out[24]_i_5_n_0\
    );
\pipeline_reg_out[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(52),
      I1 => ID_pipeline_reg_out(44),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(48),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(40),
      O => \pipeline_reg_out[24]_i_6_n_0\
    );
\pipeline_reg_out[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_10_n_0\,
      I1 => \pipeline_reg_out[26]_i_11_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[28]_i_11_n_0\,
      I4 => ID_pipeline_reg_out(24),
      I5 => \pipeline_reg_out[24]_i_9_n_0\,
      O => \pipeline_reg_out[24]_i_7_n_0\
    );
\pipeline_reg_out[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(39),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(23),
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[25]_i_12_n_0\,
      O => \pipeline_reg_out[24]_i_8_n_0\
    );
\pipeline_reg_out[24]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(48),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(40),
      O => \pipeline_reg_out[24]_i_9_n_0\
    );
\pipeline_reg_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(3),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(3),
      O => \ID_stage_inst/p_1_out\(25)
    );
\pipeline_reg_out[25]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => ID_pipeline_reg_out(25),
      I1 => ID_pipeline_reg_out(53),
      I2 => ID_pipeline_reg_out(26),
      I3 => ID_pipeline_reg_out(45),
      O => \pipeline_reg_out[25]_i_10_n_0\
    );
\pipeline_reg_out[25]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(49),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(41),
      O => \pipeline_reg_out[25]_i_11_n_0\
    );
\pipeline_reg_out[25]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => ID_pipeline_reg_out(38),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(40),
      I4 => ID_pipeline_reg_out(24),
      O => \pipeline_reg_out[25]_i_12_n_0\
    );
\pipeline_reg_out[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[25]_i_2_n_0\,
      I1 => data0(3),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(41),
      I5 => ID_pipeline_reg_out(25),
      O => \EX_stage_inst/alu_inst/r\(3)
    );
\pipeline_reg_out[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(3),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(3),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[25]_i_5_n_0\,
      O => \pipeline_reg_out[25]_i_2_n_0\
    );
\pipeline_reg_out[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_6_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[26]_i_7_n_0\,
      I3 => \pipeline_reg_out[36]_i_3_n_0\,
      I4 => \pipeline_reg_out[25]_i_6_n_0\,
      I5 => ID_pipeline_reg_out(22),
      O => data6(3)
    );
\pipeline_reg_out[25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[25]_i_7_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[26]_i_8_n_0\,
      O => data5(3)
    );
\pipeline_reg_out[25]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[25]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(41),
      O => \pipeline_reg_out[25]_i_5_n_0\
    );
\pipeline_reg_out[25]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[27]_i_9_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[25]_i_9_n_0\,
      O => \pipeline_reg_out[25]_i_6_n_0\
    );
\pipeline_reg_out[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \pipeline_reg_out[27]_i_10_n_0\,
      I1 => \pipeline_reg_out[27]_i_11_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[25]_i_10_n_0\,
      I4 => ID_pipeline_reg_out(24),
      I5 => \pipeline_reg_out[25]_i_11_n_0\,
      O => \pipeline_reg_out[25]_i_7_n_0\
    );
\pipeline_reg_out[25]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[25]_i_12_n_0\,
      I1 => ID_pipeline_reg_out(22),
      I2 => \pipeline_reg_out[26]_i_12_n_0\,
      O => \pipeline_reg_out[25]_i_8_n_0\
    );
\pipeline_reg_out[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(53),
      I1 => ID_pipeline_reg_out(45),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(49),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(41),
      O => \pipeline_reg_out[25]_i_9_n_0\
    );
\pipeline_reg_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(4),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(4),
      O => \ID_stage_inst/p_1_out\(26)
    );
\pipeline_reg_out[26]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D48"
    )
        port map (
      I0 => ID_pipeline_reg_out(25),
      I1 => ID_pipeline_reg_out(53),
      I2 => ID_pipeline_reg_out(26),
      I3 => ID_pipeline_reg_out(46),
      O => \pipeline_reg_out[26]_i_10_n_0\
    );
\pipeline_reg_out[26]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(50),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(42),
      O => \pipeline_reg_out[26]_i_11_n_0\
    );
\pipeline_reg_out[26]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => ID_pipeline_reg_out(39),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(41),
      I4 => ID_pipeline_reg_out(24),
      O => \pipeline_reg_out[26]_i_12_n_0\
    );
\pipeline_reg_out[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_2_n_0\,
      I1 => data0(4),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(42),
      I5 => ID_pipeline_reg_out(26),
      O => \EX_stage_inst/alu_inst/r\(4)
    );
\pipeline_reg_out[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(4),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(4),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[26]_i_5_n_0\,
      O => \pipeline_reg_out[26]_i_2_n_0\
    );
\pipeline_reg_out[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_6_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[26]_i_7_n_0\,
      I3 => \pipeline_reg_out[36]_i_3_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[27]_i_6_n_0\,
      O => data6(4)
    );
\pipeline_reg_out[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[26]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[27]_i_7_n_0\,
      O => data5(4)
    );
\pipeline_reg_out[26]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[26]_i_9_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(42),
      O => \pipeline_reg_out[26]_i_5_n_0\
    );
\pipeline_reg_out[26]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(48),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(52),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(44),
      O => \pipeline_reg_out[26]_i_6_n_0\
    );
\pipeline_reg_out[26]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(46),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(50),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(42),
      O => \pipeline_reg_out[26]_i_7_n_0\
    );
\pipeline_reg_out[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \pipeline_reg_out[28]_i_10_n_0\,
      I1 => \pipeline_reg_out[28]_i_11_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[26]_i_10_n_0\,
      I4 => ID_pipeline_reg_out(24),
      I5 => \pipeline_reg_out[26]_i_11_n_0\,
      O => \pipeline_reg_out[26]_i_8_n_0\
    );
\pipeline_reg_out[26]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[26]_i_12_n_0\,
      I1 => ID_pipeline_reg_out(22),
      I2 => \pipeline_reg_out[27]_i_12_n_0\,
      O => \pipeline_reg_out[26]_i_9_n_0\
    );
\pipeline_reg_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(5),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(27)
    );
\pipeline_reg_out[27]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D48"
    )
        port map (
      I0 => ID_pipeline_reg_out(25),
      I1 => ID_pipeline_reg_out(53),
      I2 => ID_pipeline_reg_out(26),
      I3 => ID_pipeline_reg_out(47),
      O => \pipeline_reg_out[27]_i_10_n_0\
    );
\pipeline_reg_out[27]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(51),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(43),
      O => \pipeline_reg_out[27]_i_11_n_0\
    );
\pipeline_reg_out[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(40),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(38),
      I3 => ID_pipeline_reg_out(24),
      I4 => ID_pipeline_reg_out(42),
      I5 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[27]_i_12_n_0\
    );
\pipeline_reg_out[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[27]_i_2_n_0\,
      I1 => data0(5),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(43),
      I5 => ID_pipeline_reg_out(27),
      O => \EX_stage_inst/alu_inst/r\(5)
    );
\pipeline_reg_out[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(5),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(5),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[27]_i_5_n_0\,
      O => \pipeline_reg_out[27]_i_2_n_0\
    );
\pipeline_reg_out[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[27]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[28]_i_6_n_0\,
      O => data6(5)
    );
\pipeline_reg_out[27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[27]_i_7_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[28]_i_7_n_0\,
      O => data5(5)
    );
\pipeline_reg_out[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[27]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(27),
      I4 => ID_pipeline_reg_out(43),
      O => \pipeline_reg_out[27]_i_5_n_0\
    );
\pipeline_reg_out[27]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[29]_i_10_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[27]_i_9_n_0\,
      O => \pipeline_reg_out[27]_i_6_n_0\
    );
\pipeline_reg_out[27]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pipeline_reg_out[29]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[27]_i_10_n_0\,
      I3 => ID_pipeline_reg_out(24),
      I4 => \pipeline_reg_out[27]_i_11_n_0\,
      O => \pipeline_reg_out[27]_i_7_n_0\
    );
\pipeline_reg_out[27]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[27]_i_12_n_0\,
      I1 => ID_pipeline_reg_out(22),
      I2 => \pipeline_reg_out[28]_i_8_n_0\,
      O => \pipeline_reg_out[27]_i_8_n_0\
    );
\pipeline_reg_out[27]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(47),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(51),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(43),
      O => \pipeline_reg_out[27]_i_9_n_0\
    );
\pipeline_reg_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(6),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(28)
    );
\pipeline_reg_out[28]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D48"
    )
        port map (
      I0 => ID_pipeline_reg_out(25),
      I1 => ID_pipeline_reg_out(53),
      I2 => ID_pipeline_reg_out(26),
      I3 => ID_pipeline_reg_out(48),
      O => \pipeline_reg_out[28]_i_10_n_0\
    );
\pipeline_reg_out[28]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => ID_pipeline_reg_out(52),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(44),
      O => \pipeline_reg_out[28]_i_11_n_0\
    );
\pipeline_reg_out[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[28]_i_2_n_0\,
      I1 => data0(6),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(44),
      I5 => ID_pipeline_reg_out(28),
      O => \EX_stage_inst/alu_inst/r\(6)
    );
\pipeline_reg_out[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(6),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(6),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[28]_i_5_n_0\,
      O => \pipeline_reg_out[28]_i_2_n_0\
    );
\pipeline_reg_out[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[28]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[29]_i_6_n_0\,
      O => data6(6)
    );
\pipeline_reg_out[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \pipeline_reg_out[31]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[29]_i_7_n_0\,
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => \pipeline_reg_out[28]_i_7_n_0\,
      I5 => ID_pipeline_reg_out(22),
      O => data5(6)
    );
\pipeline_reg_out[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[29]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[28]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(54),
      I5 => \pipeline_reg_out[28]_i_9_n_0\,
      O => \pipeline_reg_out[28]_i_5_n_0\
    );
\pipeline_reg_out[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(50),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(46),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[26]_i_6_n_0\,
      O => \pipeline_reg_out[28]_i_6_n_0\
    );
\pipeline_reg_out[28]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pipeline_reg_out[30]_i_11_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[28]_i_10_n_0\,
      I3 => ID_pipeline_reg_out(24),
      I4 => \pipeline_reg_out[28]_i_11_n_0\,
      O => \pipeline_reg_out[28]_i_7_n_0\
    );
\pipeline_reg_out[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(41),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(39),
      I3 => ID_pipeline_reg_out(24),
      I4 => ID_pipeline_reg_out(43),
      I5 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[28]_i_8_n_0\
    );
\pipeline_reg_out[28]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ID_pipeline_reg_out(28),
      I1 => ID_pipeline_reg_out(44),
      O => \pipeline_reg_out[28]_i_9_n_0\
    );
\pipeline_reg_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(7),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(29)
    );
\pipeline_reg_out[29]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(49),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(45),
      O => \pipeline_reg_out[29]_i_10_n_0\
    );
\pipeline_reg_out[29]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => ID_pipeline_reg_out(40),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(44),
      I3 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[29]_i_11_n_0\
    );
\pipeline_reg_out[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[29]_i_2_n_0\,
      I1 => data0(7),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(45),
      I5 => ID_pipeline_reg_out(29),
      O => \EX_stage_inst/alu_inst/r\(7)
    );
\pipeline_reg_out[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(7),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(7),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[29]_i_5_n_0\,
      O => \pipeline_reg_out[29]_i_2_n_0\
    );
\pipeline_reg_out[29]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[29]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[30]_i_6_n_0\,
      O => data6(7)
    );
\pipeline_reg_out[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \pipeline_reg_out[31]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[29]_i_7_n_0\,
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[30]_i_7_n_0\,
      O => data5(7)
    );
\pipeline_reg_out[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[30]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[29]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(54),
      I5 => \pipeline_reg_out[29]_i_9_n_0\,
      O => \pipeline_reg_out[29]_i_5_n_0\
    );
\pipeline_reg_out[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(51),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(47),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[29]_i_10_n_0\,
      O => \pipeline_reg_out[29]_i_6_n_0\
    );
\pipeline_reg_out[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00FB0B3F00F808"
    )
        port map (
      I0 => ID_pipeline_reg_out(49),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(53),
      I4 => ID_pipeline_reg_out(26),
      I5 => ID_pipeline_reg_out(45),
      O => \pipeline_reg_out[29]_i_7_n_0\
    );
\pipeline_reg_out[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(38),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(42),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[29]_i_11_n_0\,
      O => \pipeline_reg_out[29]_i_8_n_0\
    );
\pipeline_reg_out[29]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ID_pipeline_reg_out(29),
      I1 => ID_pipeline_reg_out(45),
      O => \pipeline_reg_out[29]_i_9_n_0\
    );
\pipeline_reg_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pipeline_stall_n,
      I1 => \ID_stage_inst/ir_dest\(1),
      O => \ID_stage_inst/ir_dest_with_bubble\(1)
    );
\pipeline_reg_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(8),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(30)
    );
\pipeline_reg_out[30]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => ID_pipeline_reg_out(50),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(46),
      I3 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[30]_i_10_n_0\
    );
\pipeline_reg_out[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FB0B0F00F808"
    )
        port map (
      I0 => ID_pipeline_reg_out(50),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(53),
      I4 => ID_pipeline_reg_out(26),
      I5 => ID_pipeline_reg_out(46),
      O => \pipeline_reg_out[30]_i_11_n_0\
    );
\pipeline_reg_out[30]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => ID_pipeline_reg_out(41),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(45),
      I3 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[30]_i_12_n_0\
    );
\pipeline_reg_out[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[30]_i_2_n_0\,
      I1 => data0(8),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(46),
      I5 => ID_pipeline_reg_out(30),
      O => \EX_stage_inst/alu_inst/r\(8)
    );
\pipeline_reg_out[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(8),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(8),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[30]_i_5_n_0\,
      O => \pipeline_reg_out[30]_i_2_n_0\
    );
\pipeline_reg_out[30]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[30]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[31]_i_6_n_0\,
      O => data6(8)
    );
\pipeline_reg_out[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_8_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[31]_i_7_n_0\,
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => \pipeline_reg_out[30]_i_7_n_0\,
      I5 => ID_pipeline_reg_out(22),
      O => data5(8)
    );
\pipeline_reg_out[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[31]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[30]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(54),
      I5 => \pipeline_reg_out[30]_i_9_n_0\,
      O => \pipeline_reg_out[30]_i_5_n_0\
    );
\pipeline_reg_out[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(52),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(48),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[30]_i_10_n_0\,
      O => \pipeline_reg_out[30]_i_6_n_0\
    );
\pipeline_reg_out[30]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[32]_i_11_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[30]_i_11_n_0\,
      O => \pipeline_reg_out[30]_i_7_n_0\
    );
\pipeline_reg_out[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(39),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(43),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[30]_i_12_n_0\,
      O => \pipeline_reg_out[30]_i_8_n_0\
    );
\pipeline_reg_out[30]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ID_pipeline_reg_out(30),
      I1 => ID_pipeline_reg_out(46),
      O => \pipeline_reg_out[30]_i_9_n_0\
    );
\pipeline_reg_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(9),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(31)
    );
\pipeline_reg_out[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => ID_pipeline_reg_out(51),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(47),
      I3 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[31]_i_10_n_0\
    );
\pipeline_reg_out[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[31]_i_2_n_0\,
      I1 => data0(9),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(47),
      I5 => ID_pipeline_reg_out(31),
      O => \EX_stage_inst/alu_inst/r\(9)
    );
\pipeline_reg_out[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(9),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(9),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[31]_i_5_n_0\,
      O => \pipeline_reg_out[31]_i_2_n_0\
    );
\pipeline_reg_out[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[31]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[32]_i_6_n_0\,
      O => data6(9)
    );
\pipeline_reg_out[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_8_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[31]_i_7_n_0\,
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[32]_i_7_n_0\,
      O => data5(9)
    );
\pipeline_reg_out[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[32]_i_9_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[31]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(54),
      I5 => \pipeline_reg_out[31]_i_9_n_0\,
      O => \pipeline_reg_out[31]_i_5_n_0\
    );
\pipeline_reg_out[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(53),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(49),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[31]_i_10_n_0\,
      O => \pipeline_reg_out[31]_i_6_n_0\
    );
\pipeline_reg_out[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FB0B0F00F808"
    )
        port map (
      I0 => ID_pipeline_reg_out(51),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(53),
      I4 => ID_pipeline_reg_out(26),
      I5 => ID_pipeline_reg_out(47),
      O => \pipeline_reg_out[31]_i_7_n_0\
    );
\pipeline_reg_out[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(40),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(44),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[33]_i_10_n_0\,
      O => \pipeline_reg_out[31]_i_8_n_0\
    );
\pipeline_reg_out[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ID_pipeline_reg_out(31),
      I1 => ID_pipeline_reg_out(47),
      O => \pipeline_reg_out[31]_i_9_n_0\
    );
\pipeline_reg_out[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(10),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(32)
    );
\pipeline_reg_out[32]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ID_pipeline_reg_out(32),
      I1 => ID_pipeline_reg_out(48),
      O => \pipeline_reg_out[32]_i_10_n_0\
    );
\pipeline_reg_out[32]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FB0B0F00F808"
    )
        port map (
      I0 => ID_pipeline_reg_out(52),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(53),
      I4 => ID_pipeline_reg_out(26),
      I5 => ID_pipeline_reg_out(48),
      O => \pipeline_reg_out[32]_i_11_n_0\
    );
\pipeline_reg_out[32]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[32]_i_2_n_0\,
      I1 => data0(10),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(48),
      I5 => ID_pipeline_reg_out(32),
      O => \EX_stage_inst/alu_inst/r\(10)
    );
\pipeline_reg_out[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(10),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(10),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[32]_i_5_n_0\,
      O => \pipeline_reg_out[32]_i_2_n_0\
    );
\pipeline_reg_out[32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[32]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[33]_i_6_n_0\,
      O => data6(10)
    );
\pipeline_reg_out[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[33]_i_8_n_0\,
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => \pipeline_reg_out[32]_i_7_n_0\,
      I5 => ID_pipeline_reg_out(22),
      O => data5(10)
    );
\pipeline_reg_out[32]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[32]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[32]_i_9_n_0\,
      I4 => ID_pipeline_reg_out(54),
      I5 => \pipeline_reg_out[32]_i_10_n_0\,
      O => \pipeline_reg_out[32]_i_5_n_0\
    );
\pipeline_reg_out[32]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(50),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(52),
      I3 => ID_pipeline_reg_out(24),
      I4 => ID_pipeline_reg_out(48),
      I5 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[32]_i_6_n_0\
    );
\pipeline_reg_out[32]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[34]_i_12_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[32]_i_11_n_0\,
      O => \pipeline_reg_out[32]_i_7_n_0\
    );
\pipeline_reg_out[32]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_10_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[35]_i_7_n_0\,
      O => \pipeline_reg_out[32]_i_8_n_0\
    );
\pipeline_reg_out[32]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => ID_pipeline_reg_out(41),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(45),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[34]_i_13_n_0\,
      O => \pipeline_reg_out[32]_i_9_n_0\
    );
\pipeline_reg_out[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(11),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(33)
    );
\pipeline_reg_out[33]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(42),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(38),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(46),
      O => \pipeline_reg_out[33]_i_10_n_0\
    );
\pipeline_reg_out[33]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_2_n_0\,
      I1 => data0(11),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(49),
      I5 => ID_pipeline_reg_out(33),
      O => \EX_stage_inst/alu_inst/r\(11)
    );
\pipeline_reg_out[33]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(11),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(11),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[33]_i_5_n_0\,
      O => \pipeline_reg_out[33]_i_2_n_0\
    );
\pipeline_reg_out[33]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[33]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[34]_i_6_n_0\,
      O => data6(11)
    );
\pipeline_reg_out[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[33]_i_8_n_0\,
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[34]_i_8_n_0\,
      O => data5(11)
    );
\pipeline_reg_out[33]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[33]_i_9_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(33),
      I4 => ID_pipeline_reg_out(49),
      O => \pipeline_reg_out[33]_i_5_n_0\
    );
\pipeline_reg_out[33]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(51),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(24),
      I4 => ID_pipeline_reg_out(49),
      I5 => ID_pipeline_reg_out(25),
      O => \pipeline_reg_out[33]_i_6_n_0\
    );
\pipeline_reg_out[33]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F110E0"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(51),
      O => \pipeline_reg_out[33]_i_7_n_0\
    );
\pipeline_reg_out[33]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30F130E0"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(49),
      O => \pipeline_reg_out[33]_i_8_n_0\
    );
\pipeline_reg_out[33]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \pipeline_reg_out[33]_i_10_n_0\,
      I1 => \pipeline_reg_out[35]_i_7_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[34]_i_13_n_0\,
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[36]_i_13_n_0\,
      O => \pipeline_reg_out[33]_i_9_n_0\
    );
\pipeline_reg_out[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(12),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(34)
    );
\pipeline_reg_out[34]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \pipeline_reg_out[34]_i_13_n_0\,
      I1 => \pipeline_reg_out[36]_i_13_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[35]_i_7_n_0\,
      I4 => ID_pipeline_reg_out(23),
      I5 => \pipeline_reg_out[35]_i_8_n_0\,
      O => \pipeline_reg_out[34]_i_10_n_0\
    );
\pipeline_reg_out[34]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F110E0"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(52),
      O => \pipeline_reg_out[34]_i_11_n_0\
    );
\pipeline_reg_out[34]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F110E0"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(25),
      I2 => ID_pipeline_reg_out(53),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(50),
      O => \pipeline_reg_out[34]_i_12_n_0\
    );
\pipeline_reg_out[34]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(43),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(39),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(47),
      O => \pipeline_reg_out[34]_i_13_n_0\
    );
\pipeline_reg_out[34]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[34]_i_2_n_0\,
      I1 => data0(12),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(50),
      I5 => ID_pipeline_reg_out(34),
      O => \EX_stage_inst/alu_inst/r\(12)
    );
\pipeline_reg_out[34]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(12),
      I1 => ID_pipeline_reg_out(54),
      I2 => data5(12),
      I3 => ID_pipeline_reg_out(55),
      I4 => \pipeline_reg_out[34]_i_5_n_0\,
      O => \pipeline_reg_out[34]_i_2_n_0\
    );
\pipeline_reg_out[34]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[34]_i_6_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[34]_i_7_n_0\,
      O => data6(12)
    );
\pipeline_reg_out[34]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[34]_i_8_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[34]_i_9_n_0\,
      O => data5(12)
    );
\pipeline_reg_out[34]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[34]_i_10_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => ID_pipeline_reg_out(34),
      I4 => ID_pipeline_reg_out(50),
      O => \pipeline_reg_out[34]_i_5_n_0\
    );
\pipeline_reg_out[34]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => ID_pipeline_reg_out(52),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(50),
      I4 => ID_pipeline_reg_out(24),
      O => \pipeline_reg_out[34]_i_6_n_0\
    );
\pipeline_reg_out[34]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => ID_pipeline_reg_out(53),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(51),
      I4 => ID_pipeline_reg_out(24),
      O => \pipeline_reg_out[34]_i_7_n_0\
    );
\pipeline_reg_out[34]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[34]_i_11_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[34]_i_12_n_0\,
      O => \pipeline_reg_out[34]_i_8_n_0\
    );
\pipeline_reg_out[34]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300FF010300FE00"
    )
        port map (
      I0 => ID_pipeline_reg_out(23),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(53),
      I4 => ID_pipeline_reg_out(26),
      I5 => ID_pipeline_reg_out(51),
      O => \pipeline_reg_out[34]_i_9_n_0\
    );
\pipeline_reg_out[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(13),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(35)
    );
\pipeline_reg_out[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[35]_i_2_n_0\,
      I1 => data0(13),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(51),
      I5 => ID_pipeline_reg_out(35),
      O => \EX_stage_inst/alu_inst/r\(13)
    );
\pipeline_reg_out[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \pipeline_reg_out[35]_i_3_n_0\,
      I1 => ID_pipeline_reg_out(55),
      I2 => data4(13),
      I3 => ID_pipeline_reg_out(54),
      I4 => ID_pipeline_reg_out(35),
      I5 => ID_pipeline_reg_out(51),
      O => \pipeline_reg_out[35]_i_2_n_0\
    );
\pipeline_reg_out[35]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[35]_i_5_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => \pipeline_reg_out[37]_i_8_n_0\,
      I4 => \pipeline_reg_out[35]_i_6_n_0\,
      O => \pipeline_reg_out[35]_i_3_n_0\
    );
\pipeline_reg_out[35]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \pipeline_reg_out[35]_i_7_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[35]_i_8_n_0\,
      I3 => \pipeline_reg_out[36]_i_3_n_0\,
      I4 => \pipeline_reg_out[36]_i_11_n_0\,
      I5 => ID_pipeline_reg_out(22),
      O => data4(13)
    );
\pipeline_reg_out[35]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(52),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(23),
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[34]_i_7_n_0\,
      O => \pipeline_reg_out[35]_i_5_n_0\
    );
\pipeline_reg_out[35]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_9_n_0\,
      I1 => ID_pipeline_reg_out(22),
      I2 => \pipeline_reg_out[34]_i_9_n_0\,
      O => \pipeline_reg_out[35]_i_6_n_0\
    );
\pipeline_reg_out[35]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(44),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(40),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(48),
      O => \pipeline_reg_out[35]_i_7_n_0\
    );
\pipeline_reg_out[35]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(38),
      I1 => ID_pipeline_reg_out(46),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(42),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(50),
      O => \pipeline_reg_out[35]_i_8_n_0\
    );
\pipeline_reg_out[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(14),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(36)
    );
\pipeline_reg_out[36]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1F0000"
    )
        port map (
      I0 => ID_pipeline_reg_out(23),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(26),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(53),
      O => \pipeline_reg_out[36]_i_10_n_0\
    );
\pipeline_reg_out[36]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_13_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[37]_i_11_n_0\,
      O => \pipeline_reg_out[36]_i_11_n_0\
    );
\pipeline_reg_out[36]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ID_pipeline_reg_out(36),
      I1 => ID_pipeline_reg_out(52),
      O => \pipeline_reg_out[36]_i_12_n_0\
    );
\pipeline_reg_out[36]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => ID_pipeline_reg_out(45),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(41),
      I3 => ID_pipeline_reg_out(25),
      I4 => ID_pipeline_reg_out(49),
      O => \pipeline_reg_out[36]_i_13_n_0\
    );
\pipeline_reg_out[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_2_n_0\,
      I1 => data0(14),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(52),
      I5 => ID_pipeline_reg_out(36),
      O => \EX_stage_inst/alu_inst/r\(14)
    );
\pipeline_reg_out[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[36]_i_4_n_0\,
      I2 => ID_pipeline_reg_out(54),
      I3 => data5(14),
      I4 => ID_pipeline_reg_out(55),
      I5 => \pipeline_reg_out[36]_i_6_n_0\,
      O => \pipeline_reg_out[36]_i_2_n_0\
    );
\pipeline_reg_out[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ID_pipeline_reg_out(35),
      I1 => ID_pipeline_reg_out(34),
      I2 => ID_pipeline_reg_out(37),
      I3 => ID_pipeline_reg_out(36),
      I4 => \pipeline_reg_out[36]_i_7_n_0\,
      I5 => \pipeline_reg_out[36]_i_8_n_0\,
      O => \pipeline_reg_out[36]_i_3_n_0\
    );
\pipeline_reg_out[36]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => ID_pipeline_reg_out(53),
      I1 => ID_pipeline_reg_out(22),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(52),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(23),
      O => \pipeline_reg_out[36]_i_4_n_0\
    );
\pipeline_reg_out[36]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_8_n_0\,
      I1 => \pipeline_reg_out[36]_i_9_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[36]_i_10_n_0\,
      O => data5(14)
    );
\pipeline_reg_out[36]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[37]_i_12_n_0\,
      I2 => ID_pipeline_reg_out(22),
      I3 => \pipeline_reg_out[36]_i_11_n_0\,
      I4 => ID_pipeline_reg_out(54),
      I5 => \pipeline_reg_out[36]_i_12_n_0\,
      O => \pipeline_reg_out[36]_i_6_n_0\
    );
\pipeline_reg_out[36]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ID_pipeline_reg_out(28),
      I1 => ID_pipeline_reg_out(29),
      I2 => ID_pipeline_reg_out(26),
      I3 => ID_pipeline_reg_out(27),
      O => \pipeline_reg_out[36]_i_7_n_0\
    );
\pipeline_reg_out[36]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ID_pipeline_reg_out(32),
      I1 => ID_pipeline_reg_out(33),
      I2 => ID_pipeline_reg_out(30),
      I3 => ID_pipeline_reg_out(31),
      O => \pipeline_reg_out[36]_i_8_n_0\
    );
\pipeline_reg_out[36]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FF010100FE00"
    )
        port map (
      I0 => ID_pipeline_reg_out(23),
      I1 => ID_pipeline_reg_out(24),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(53),
      I4 => ID_pipeline_reg_out(26),
      I5 => ID_pipeline_reg_out(52),
      O => \pipeline_reg_out[36]_i_9_n_0\
    );
\pipeline_reg_out[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_read_data_2(15),
      I1 => \pipeline_reg_out[37]_i_2_n_0\,
      I2 => branch_offset_imm(5),
      O => \ID_stage_inst/p_1_out\(37)
    );
\pipeline_reg_out[37]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(41),
      I1 => ID_pipeline_reg_out(49),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(45),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(53),
      O => \pipeline_reg_out[37]_i_10_n_0\
    );
\pipeline_reg_out[37]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(39),
      I1 => ID_pipeline_reg_out(47),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(43),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(51),
      O => \pipeline_reg_out[37]_i_11_n_0\
    );
\pipeline_reg_out[37]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipeline_reg_out[35]_i_8_n_0\,
      I1 => ID_pipeline_reg_out(23),
      I2 => \pipeline_reg_out[37]_i_15_n_0\,
      O => \pipeline_reg_out[37]_i_12_n_0\
    );
\pipeline_reg_out[37]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ID_pipeline_reg_out(29),
      I1 => ID_pipeline_reg_out(30),
      I2 => ID_pipeline_reg_out(27),
      I3 => ID_pipeline_reg_out(28),
      O => \pipeline_reg_out[37]_i_13_n_0\
    );
\pipeline_reg_out[37]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ID_pipeline_reg_out(33),
      I1 => ID_pipeline_reg_out(34),
      I2 => ID_pipeline_reg_out(31),
      I3 => ID_pipeline_reg_out(32),
      O => \pipeline_reg_out[37]_i_14_n_0\
    );
\pipeline_reg_out[37]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ID_pipeline_reg_out(40),
      I1 => ID_pipeline_reg_out(48),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(44),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(52),
      O => \pipeline_reg_out[37]_i_15_n_0\
    );
\pipeline_reg_out[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC0AFC0A0C0"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_2__0_n_0\,
      I1 => data0(15),
      I2 => \pipeline_reg_out[37]_i_3_n_0\,
      I3 => \pipeline_reg_out[37]_i_4_n_0\,
      I4 => ID_pipeline_reg_out(53),
      I5 => ID_pipeline_reg_out(37),
      O => \EX_stage_inst/alu_inst/r\(15)
    );
\pipeline_reg_out[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDFDFDFDFFF"
    )
        port map (
      I0 => \ID_stage_inst/ir_op_code\(3),
      I1 => rst_IBUF,
      I2 => pipeline_stall_n,
      I3 => \ID_stage_inst/ir_op_code\(2),
      I4 => \ID_stage_inst/ir_op_code\(0),
      I5 => \ID_stage_inst/ir_op_code\(1),
      O => \pipeline_reg_out[37]_i_2_n_0\
    );
\pipeline_reg_out[37]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \pipeline_reg_out[37]_i_5_n_0\,
      I1 => ID_pipeline_reg_out(55),
      I2 => data4(15),
      I3 => ID_pipeline_reg_out(54),
      I4 => ID_pipeline_reg_out(37),
      I5 => ID_pipeline_reg_out(53),
      O => \pipeline_reg_out[37]_i_2__0_n_0\
    );
\pipeline_reg_out[37]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ID_pipeline_reg_out(56),
      I1 => ID_pipeline_reg_out(55),
      O => \pipeline_reg_out[37]_i_3_n_0\
    );
\pipeline_reg_out[37]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ID_pipeline_reg_out(56),
      I1 => ID_pipeline_reg_out(55),
      I2 => ID_pipeline_reg_out(54),
      O => \pipeline_reg_out[37]_i_4_n_0\
    );
\pipeline_reg_out[37]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FF200020002000"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => ID_pipeline_reg_out(22),
      I2 => \pipeline_reg_out[37]_i_7_n_0\,
      I3 => ID_pipeline_reg_out(54),
      I4 => \pipeline_reg_out[37]_i_8_n_0\,
      I5 => \pipeline_reg_out[37]_i_9_n_0\,
      O => \pipeline_reg_out[37]_i_5_n_0\
    );
\pipeline_reg_out[37]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \pipeline_reg_out[36]_i_3_n_0\,
      I1 => \pipeline_reg_out[37]_i_10_n_0\,
      I2 => ID_pipeline_reg_out(23),
      I3 => \pipeline_reg_out[37]_i_11_n_0\,
      I4 => ID_pipeline_reg_out(22),
      I5 => \pipeline_reg_out[37]_i_12_n_0\,
      O => data4(15)
    );
\pipeline_reg_out[37]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ID_pipeline_reg_out(24),
      I1 => ID_pipeline_reg_out(53),
      I2 => ID_pipeline_reg_out(25),
      I3 => ID_pipeline_reg_out(23),
      O => \pipeline_reg_out[37]_i_7_n_0\
    );
\pipeline_reg_out[37]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ID_pipeline_reg_out(36),
      I1 => ID_pipeline_reg_out(35),
      I2 => ID_pipeline_reg_out(37),
      I3 => \pipeline_reg_out[37]_i_13_n_0\,
      I4 => \pipeline_reg_out[37]_i_14_n_0\,
      O => \pipeline_reg_out[37]_i_8_n_0\
    );
\pipeline_reg_out[37]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01FF00000000"
    )
        port map (
      I0 => ID_pipeline_reg_out(22),
      I1 => ID_pipeline_reg_out(23),
      I2 => ID_pipeline_reg_out(24),
      I3 => ID_pipeline_reg_out(26),
      I4 => ID_pipeline_reg_out(25),
      I5 => ID_pipeline_reg_out(53),
      O => \pipeline_reg_out[37]_i_9_n_0\
    );
\pipeline_reg_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pipeline_stall_n,
      I1 => \ID_stage_inst/ir_dest\(2),
      O => \ID_stage_inst/ir_dest_with_bubble\(2)
    );
\pipeline_reg_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300070003000E00"
    )
        port map (
      I0 => \ID_stage_inst/ir_op_code\(0),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => rst_IBUF,
      I3 => pipeline_stall_n,
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_op_code\(1),
      O => \ID_stage_inst/p_1_out\(4)
    );
\pipeline_reg_out[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0307030F"
    )
        port map (
      I0 => \ID_stage_inst/ir_op_code\(1),
      I1 => pipeline_stall_n,
      I2 => rst_IBUF,
      I3 => \ID_stage_inst/ir_op_code\(0),
      I4 => \ID_stage_inst/ir_op_code\(3),
      O => \pipeline_reg_out[54]_i_1_n_0\
    );
\pipeline_reg_out[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005D77"
    )
        port map (
      I0 => pipeline_stall_n,
      I1 => \ID_stage_inst/ir_op_code\(1),
      I2 => \ID_stage_inst/ir_op_code\(3),
      I3 => \ID_stage_inst/ir_op_code\(0),
      I4 => rst_IBUF,
      O => \pipeline_reg_out[55]_i_1_n_0\
    );
\pipeline_reg_out[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A900FF"
    )
        port map (
      I0 => \ID_stage_inst/ir_op_code\(2),
      I1 => \ID_stage_inst/ir_op_code\(0),
      I2 => \ID_stage_inst/ir_op_code\(1),
      I3 => rst_IBUF,
      I4 => pipeline_stall_n,
      O => \pipeline_reg_out[56]_i_1_n_0\
    );
pipeline_stall_n_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pipeline_stall_n15_out,
      I1 => pipeline_stall_n1,
      O => pipeline_stall_n
    );
pipeline_stall_n_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFE00"
    )
        port map (
      I0 => decoding_op_src2(2),
      I1 => decoding_op_src2(0),
      I2 => decoding_op_src2(1),
      I3 => \hazard_detection_unit_inst/pipeline_stall_n31_out\,
      I4 => \hazard_detection_unit_inst/pipeline_stall_n42_out\,
      I5 => \hazard_detection_unit_inst/pipeline_stall_n43_out\,
      O => pipeline_stall_n15_out
    );
pipeline_stall_n_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFE00"
    )
        port map (
      I0 => decoding_op_src1(2),
      I1 => decoding_op_src1(0),
      I2 => decoding_op_src1(1),
      I3 => \hazard_detection_unit_inst/pipeline_stall_n3__4\,
      I4 => \hazard_detection_unit_inst/pipeline_stall_n4__4\,
      I5 => \hazard_detection_unit_inst/pipeline_stall_n40_out\,
      O => pipeline_stall_n1
    );
pipeline_stall_n_inferred_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => decoding_op_src2(0),
      I1 => wb_op_dest(0),
      I2 => wb_op_dest(2),
      I3 => decoding_op_src2(2),
      I4 => wb_op_dest(1),
      I5 => decoding_op_src2(1),
      O => \hazard_detection_unit_inst/pipeline_stall_n31_out\
    );
pipeline_stall_n_inferred_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => decoding_op_src2(0),
      I1 => mem_op_dest(0),
      I2 => mem_op_dest(2),
      I3 => decoding_op_src2(2),
      I4 => mem_op_dest(1),
      I5 => decoding_op_src2(1),
      O => \hazard_detection_unit_inst/pipeline_stall_n42_out\
    );
pipeline_stall_n_inferred_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => decoding_op_src2(0),
      I1 => ex_op_dest(0),
      I2 => ex_op_dest(2),
      I3 => decoding_op_src2(2),
      I4 => ex_op_dest(1),
      I5 => decoding_op_src2(1),
      O => \hazard_detection_unit_inst/pipeline_stall_n43_out\
    );
pipeline_stall_n_inferred_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => decoding_op_src1(0),
      I1 => wb_op_dest(0),
      I2 => wb_op_dest(2),
      I3 => decoding_op_src1(2),
      I4 => wb_op_dest(1),
      I5 => decoding_op_src1(1),
      O => \hazard_detection_unit_inst/pipeline_stall_n3__4\
    );
pipeline_stall_n_inferred_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => decoding_op_src1(0),
      I1 => mem_op_dest(0),
      I2 => mem_op_dest(2),
      I3 => decoding_op_src1(2),
      I4 => mem_op_dest(1),
      I5 => decoding_op_src1(1),
      O => \hazard_detection_unit_inst/pipeline_stall_n4__4\
    );
pipeline_stall_n_inferred_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => decoding_op_src1(0),
      I1 => ex_op_dest(0),
      I2 => ex_op_dest(2),
      I3 => decoding_op_src1(2),
      I4 => ex_op_dest(1),
      I5 => decoding_op_src1(1),
      O => \hazard_detection_unit_inst/pipeline_stall_n40_out\
    );
\reg_array[1][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(1),
      I2 => reg_write_dest(2),
      I3 => reg_write_dest(0),
      O => \reg_array[1][15]_i_1_n_0\
    );
\reg_array[2][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(0),
      I2 => reg_write_dest(2),
      I3 => reg_write_dest(1),
      O => \reg_array[2][15]_i_1_n_0\
    );
\reg_array[3][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(1),
      I2 => reg_write_dest(0),
      I3 => reg_write_dest(2),
      O => \reg_array[3][15]_i_1_n_0\
    );
\reg_array[4][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(1),
      I2 => reg_write_dest(0),
      I3 => reg_write_dest(2),
      O => \reg_array[4][15]_i_1_n_0\
    );
\reg_array[5][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(2),
      I2 => reg_write_dest(0),
      I3 => reg_write_dest(1),
      O => \reg_array[5][15]_i_1_n_0\
    );
\reg_array[6][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(1),
      I2 => reg_write_dest(2),
      I3 => reg_write_dest(0),
      O => \reg_array[6][15]_i_1_n_0\
    );
\reg_array[7][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => reg_write_en,
      I1 => reg_write_dest(2),
      I2 => reg_write_dest(0),
      I3 => reg_write_dest(1),
      O => \register_file_inst/reg_array\
    );
reg_read_addr_2_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAA2AAA"
    )
        port map (
      I0 => branch_offset_imm(5),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(1),
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_dest\(2),
      O => reg_read_addr_2(2)
    );
reg_read_addr_2_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAA2AAA"
    )
        port map (
      I0 => branch_offset_imm(4),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(1),
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_dest\(1),
      O => reg_read_addr_2(1)
    );
reg_read_addr_2_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAA2AAA"
    )
        port map (
      I0 => branch_offset_imm(3),
      I1 => \ID_stage_inst/ir_op_code\(3),
      I2 => \ID_stage_inst/ir_op_code\(0),
      I3 => \ID_stage_inst/ir_op_code\(1),
      I4 => \ID_stage_inst/ir_op_code\(2),
      I5 => \ID_stage_inst/ir_dest\(0),
      O => reg_read_addr_2(0)
    );
reg_read_data_1_inferred_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_17_n_0,
      I1 => reg_read_data_1_inferred_i_18_n_0,
      O => reg_read_data_1(15),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_35_n_0,
      I1 => reg_read_data_1_inferred_i_36_n_0,
      O => reg_read_data_1(6),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_37_n_0,
      I1 => reg_read_data_1_inferred_i_38_n_0,
      O => reg_read_data_1(5),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_39_n_0,
      I1 => reg_read_data_1_inferred_i_40_n_0,
      O => reg_read_data_1(4),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_41_n_0,
      I1 => reg_read_data_1_inferred_i_42_n_0,
      O => reg_read_data_1(3),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_43_n_0,
      I1 => reg_read_data_1_inferred_i_44_n_0,
      O => reg_read_data_1(2),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_45_n_0,
      I1 => reg_read_data_1_inferred_i_46_n_0,
      O => reg_read_data_1(1),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_47_n_0,
      I1 => reg_read_data_1_inferred_i_48_n_0,
      O => reg_read_data_1(0),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(15),
      I1 => \reg_array_reg[2]\(15),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(15),
      O => reg_read_data_1_inferred_i_17_n_0
    );
reg_read_data_1_inferred_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(15),
      I1 => \reg_array_reg[3]\(15),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(15),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(15),
      O => reg_read_data_1_inferred_i_18_n_0
    );
reg_read_data_1_inferred_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(14),
      I1 => \reg_array_reg[2]\(14),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(14),
      O => reg_read_data_1_inferred_i_19_n_0
    );
reg_read_data_1_inferred_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_19_n_0,
      I1 => reg_read_data_1_inferred_i_20_n_0,
      O => reg_read_data_1(14),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(14),
      I1 => \reg_array_reg[3]\(14),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(14),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(14),
      O => reg_read_data_1_inferred_i_20_n_0
    );
reg_read_data_1_inferred_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(13),
      I1 => \reg_array_reg[2]\(13),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(13),
      O => reg_read_data_1_inferred_i_21_n_0
    );
reg_read_data_1_inferred_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(13),
      I1 => \reg_array_reg[3]\(13),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(13),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(13),
      O => reg_read_data_1_inferred_i_22_n_0
    );
reg_read_data_1_inferred_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(12),
      I1 => \reg_array_reg[2]\(12),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(12),
      O => reg_read_data_1_inferred_i_23_n_0
    );
reg_read_data_1_inferred_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(12),
      I1 => \reg_array_reg[3]\(12),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(12),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(12),
      O => reg_read_data_1_inferred_i_24_n_0
    );
reg_read_data_1_inferred_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(11),
      I1 => \reg_array_reg[2]\(11),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(11),
      O => reg_read_data_1_inferred_i_25_n_0
    );
reg_read_data_1_inferred_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(11),
      I1 => \reg_array_reg[3]\(11),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(11),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(11),
      O => reg_read_data_1_inferred_i_26_n_0
    );
reg_read_data_1_inferred_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(10),
      I1 => \reg_array_reg[2]\(10),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(10),
      O => reg_read_data_1_inferred_i_27_n_0
    );
reg_read_data_1_inferred_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(10),
      I1 => \reg_array_reg[3]\(10),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(10),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(10),
      O => reg_read_data_1_inferred_i_28_n_0
    );
reg_read_data_1_inferred_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(9),
      I1 => \reg_array_reg[2]\(9),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(9),
      O => reg_read_data_1_inferred_i_29_n_0
    );
reg_read_data_1_inferred_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_21_n_0,
      I1 => reg_read_data_1_inferred_i_22_n_0,
      O => reg_read_data_1(13),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(9),
      I1 => \reg_array_reg[3]\(9),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(9),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(9),
      O => reg_read_data_1_inferred_i_30_n_0
    );
reg_read_data_1_inferred_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(8),
      I1 => \reg_array_reg[2]\(8),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(8),
      O => reg_read_data_1_inferred_i_31_n_0
    );
reg_read_data_1_inferred_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(8),
      I1 => \reg_array_reg[3]\(8),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(8),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(8),
      O => reg_read_data_1_inferred_i_32_n_0
    );
reg_read_data_1_inferred_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(7),
      I1 => \reg_array_reg[2]\(7),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(7),
      O => reg_read_data_1_inferred_i_33_n_0
    );
reg_read_data_1_inferred_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(7),
      I1 => \reg_array_reg[3]\(7),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(7),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(7),
      O => reg_read_data_1_inferred_i_34_n_0
    );
reg_read_data_1_inferred_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(6),
      I1 => \reg_array_reg[2]\(6),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(6),
      O => reg_read_data_1_inferred_i_35_n_0
    );
reg_read_data_1_inferred_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(6),
      I1 => \reg_array_reg[3]\(6),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(6),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(6),
      O => reg_read_data_1_inferred_i_36_n_0
    );
reg_read_data_1_inferred_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(5),
      I1 => \reg_array_reg[2]\(5),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(5),
      O => reg_read_data_1_inferred_i_37_n_0
    );
reg_read_data_1_inferred_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(5),
      I1 => \reg_array_reg[3]\(5),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(5),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(5),
      O => reg_read_data_1_inferred_i_38_n_0
    );
reg_read_data_1_inferred_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(4),
      I1 => \reg_array_reg[2]\(4),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(4),
      O => reg_read_data_1_inferred_i_39_n_0
    );
reg_read_data_1_inferred_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_23_n_0,
      I1 => reg_read_data_1_inferred_i_24_n_0,
      O => reg_read_data_1(12),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(4),
      I1 => \reg_array_reg[3]\(4),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(4),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(4),
      O => reg_read_data_1_inferred_i_40_n_0
    );
reg_read_data_1_inferred_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(3),
      I1 => \reg_array_reg[2]\(3),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(3),
      O => reg_read_data_1_inferred_i_41_n_0
    );
reg_read_data_1_inferred_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(3),
      I1 => \reg_array_reg[3]\(3),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(3),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(3),
      O => reg_read_data_1_inferred_i_42_n_0
    );
reg_read_data_1_inferred_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(2),
      I1 => \reg_array_reg[2]\(2),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(2),
      O => reg_read_data_1_inferred_i_43_n_0
    );
reg_read_data_1_inferred_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(2),
      I1 => \reg_array_reg[3]\(2),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(2),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(2),
      O => reg_read_data_1_inferred_i_44_n_0
    );
reg_read_data_1_inferred_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(1),
      I1 => \reg_array_reg[2]\(1),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(1),
      O => reg_read_data_1_inferred_i_45_n_0
    );
reg_read_data_1_inferred_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(1),
      I1 => \reg_array_reg[3]\(1),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(1),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(1),
      O => reg_read_data_1_inferred_i_46_n_0
    );
reg_read_data_1_inferred_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(0),
      I1 => \reg_array_reg[2]\(0),
      I2 => reg_read_addr_1(1),
      I3 => reg_read_addr_1(2),
      I4 => \reg_array_reg[4]\(0),
      O => reg_read_data_1_inferred_i_47_n_0
    );
reg_read_data_1_inferred_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(0),
      I1 => \reg_array_reg[3]\(0),
      I2 => reg_read_addr_1(1),
      I3 => \reg_array_reg[5]\(0),
      I4 => reg_read_addr_1(2),
      I5 => \reg_array_reg[1]\(0),
      O => reg_read_data_1_inferred_i_48_n_0
    );
reg_read_data_1_inferred_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_25_n_0,
      I1 => reg_read_data_1_inferred_i_26_n_0,
      O => reg_read_data_1(11),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_27_n_0,
      I1 => reg_read_data_1_inferred_i_28_n_0,
      O => reg_read_data_1(10),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_29_n_0,
      I1 => reg_read_data_1_inferred_i_30_n_0,
      O => reg_read_data_1(9),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_31_n_0,
      I1 => reg_read_data_1_inferred_i_32_n_0,
      O => reg_read_data_1(8),
      S => reg_read_addr_1(0)
    );
reg_read_data_1_inferred_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_1_inferred_i_33_n_0,
      I1 => reg_read_data_1_inferred_i_34_n_0,
      O => reg_read_data_1(7),
      S => reg_read_addr_1(0)
    );
reg_read_data_2_inferred_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_17_n_0,
      I1 => reg_read_data_2_inferred_i_18_n_0,
      O => reg_read_data_2(15),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_35_n_0,
      I1 => reg_read_data_2_inferred_i_36_n_0,
      O => reg_read_data_2(6),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_37_n_0,
      I1 => reg_read_data_2_inferred_i_38_n_0,
      O => reg_read_data_2(5),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_39_n_0,
      I1 => reg_read_data_2_inferred_i_40_n_0,
      O => reg_read_data_2(4),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_41_n_0,
      I1 => reg_read_data_2_inferred_i_42_n_0,
      O => reg_read_data_2(3),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_43_n_0,
      I1 => reg_read_data_2_inferred_i_44_n_0,
      O => reg_read_data_2(2),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_45_n_0,
      I1 => reg_read_data_2_inferred_i_46_n_0,
      O => reg_read_data_2(1),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_47_n_0,
      I1 => reg_read_data_2_inferred_i_48_n_0,
      O => reg_read_data_2(0),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(15),
      I1 => \reg_array_reg[2]\(15),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(15),
      O => reg_read_data_2_inferred_i_17_n_0
    );
reg_read_data_2_inferred_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(15),
      I1 => \reg_array_reg[3]\(15),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(15),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(15),
      O => reg_read_data_2_inferred_i_18_n_0
    );
reg_read_data_2_inferred_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(14),
      I1 => \reg_array_reg[2]\(14),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(14),
      O => reg_read_data_2_inferred_i_19_n_0
    );
reg_read_data_2_inferred_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_19_n_0,
      I1 => reg_read_data_2_inferred_i_20_n_0,
      O => reg_read_data_2(14),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(14),
      I1 => \reg_array_reg[3]\(14),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(14),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(14),
      O => reg_read_data_2_inferred_i_20_n_0
    );
reg_read_data_2_inferred_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(13),
      I1 => \reg_array_reg[2]\(13),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(13),
      O => reg_read_data_2_inferred_i_21_n_0
    );
reg_read_data_2_inferred_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(13),
      I1 => \reg_array_reg[3]\(13),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(13),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(13),
      O => reg_read_data_2_inferred_i_22_n_0
    );
reg_read_data_2_inferred_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(12),
      I1 => \reg_array_reg[2]\(12),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(12),
      O => reg_read_data_2_inferred_i_23_n_0
    );
reg_read_data_2_inferred_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(12),
      I1 => \reg_array_reg[3]\(12),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(12),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(12),
      O => reg_read_data_2_inferred_i_24_n_0
    );
reg_read_data_2_inferred_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(11),
      I1 => \reg_array_reg[2]\(11),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(11),
      O => reg_read_data_2_inferred_i_25_n_0
    );
reg_read_data_2_inferred_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(11),
      I1 => \reg_array_reg[3]\(11),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(11),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(11),
      O => reg_read_data_2_inferred_i_26_n_0
    );
reg_read_data_2_inferred_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(10),
      I1 => \reg_array_reg[2]\(10),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(10),
      O => reg_read_data_2_inferred_i_27_n_0
    );
reg_read_data_2_inferred_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(10),
      I1 => \reg_array_reg[3]\(10),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(10),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(10),
      O => reg_read_data_2_inferred_i_28_n_0
    );
reg_read_data_2_inferred_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(9),
      I1 => \reg_array_reg[2]\(9),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(9),
      O => reg_read_data_2_inferred_i_29_n_0
    );
reg_read_data_2_inferred_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_21_n_0,
      I1 => reg_read_data_2_inferred_i_22_n_0,
      O => reg_read_data_2(13),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(9),
      I1 => \reg_array_reg[3]\(9),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(9),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(9),
      O => reg_read_data_2_inferred_i_30_n_0
    );
reg_read_data_2_inferred_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(8),
      I1 => \reg_array_reg[2]\(8),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(8),
      O => reg_read_data_2_inferred_i_31_n_0
    );
reg_read_data_2_inferred_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(8),
      I1 => \reg_array_reg[3]\(8),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(8),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(8),
      O => reg_read_data_2_inferred_i_32_n_0
    );
reg_read_data_2_inferred_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(7),
      I1 => \reg_array_reg[2]\(7),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(7),
      O => reg_read_data_2_inferred_i_33_n_0
    );
reg_read_data_2_inferred_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(7),
      I1 => \reg_array_reg[3]\(7),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(7),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(7),
      O => reg_read_data_2_inferred_i_34_n_0
    );
reg_read_data_2_inferred_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(6),
      I1 => \reg_array_reg[2]\(6),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(6),
      O => reg_read_data_2_inferred_i_35_n_0
    );
reg_read_data_2_inferred_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(6),
      I1 => \reg_array_reg[3]\(6),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(6),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(6),
      O => reg_read_data_2_inferred_i_36_n_0
    );
reg_read_data_2_inferred_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(5),
      I1 => \reg_array_reg[2]\(5),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(5),
      O => reg_read_data_2_inferred_i_37_n_0
    );
reg_read_data_2_inferred_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(5),
      I1 => \reg_array_reg[3]\(5),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(5),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(5),
      O => reg_read_data_2_inferred_i_38_n_0
    );
reg_read_data_2_inferred_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(4),
      I1 => \reg_array_reg[2]\(4),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(4),
      O => reg_read_data_2_inferred_i_39_n_0
    );
reg_read_data_2_inferred_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_23_n_0,
      I1 => reg_read_data_2_inferred_i_24_n_0,
      O => reg_read_data_2(12),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(4),
      I1 => \reg_array_reg[3]\(4),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(4),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(4),
      O => reg_read_data_2_inferred_i_40_n_0
    );
reg_read_data_2_inferred_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(3),
      I1 => \reg_array_reg[2]\(3),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(3),
      O => reg_read_data_2_inferred_i_41_n_0
    );
reg_read_data_2_inferred_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(3),
      I1 => \reg_array_reg[3]\(3),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(3),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(3),
      O => reg_read_data_2_inferred_i_42_n_0
    );
reg_read_data_2_inferred_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(2),
      I1 => \reg_array_reg[2]\(2),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(2),
      O => reg_read_data_2_inferred_i_43_n_0
    );
reg_read_data_2_inferred_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(2),
      I1 => \reg_array_reg[3]\(2),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(2),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(2),
      O => reg_read_data_2_inferred_i_44_n_0
    );
reg_read_data_2_inferred_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(1),
      I1 => \reg_array_reg[2]\(1),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(1),
      O => reg_read_data_2_inferred_i_45_n_0
    );
reg_read_data_2_inferred_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(1),
      I1 => \reg_array_reg[3]\(1),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(1),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(1),
      O => reg_read_data_2_inferred_i_46_n_0
    );
reg_read_data_2_inferred_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \reg_array_reg[6]\(0),
      I1 => \reg_array_reg[2]\(0),
      I2 => reg_read_addr_2(1),
      I3 => reg_read_addr_2(2),
      I4 => \reg_array_reg[4]\(0),
      O => reg_read_data_2_inferred_i_47_n_0
    );
reg_read_data_2_inferred_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_array_reg[7]\(0),
      I1 => \reg_array_reg[3]\(0),
      I2 => reg_read_addr_2(1),
      I3 => \reg_array_reg[5]\(0),
      I4 => reg_read_addr_2(2),
      I5 => \reg_array_reg[1]\(0),
      O => reg_read_data_2_inferred_i_48_n_0
    );
reg_read_data_2_inferred_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_25_n_0,
      I1 => reg_read_data_2_inferred_i_26_n_0,
      O => reg_read_data_2(11),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_27_n_0,
      I1 => reg_read_data_2_inferred_i_28_n_0,
      O => reg_read_data_2(10),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_29_n_0,
      I1 => reg_read_data_2_inferred_i_30_n_0,
      O => reg_read_data_2(9),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_31_n_0,
      I1 => reg_read_data_2_inferred_i_32_n_0,
      O => reg_read_data_2(8),
      S => reg_read_addr_2(0)
    );
reg_read_data_2_inferred_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_read_data_2_inferred_i_33_n_0,
      I1 => reg_read_data_2_inferred_i_34_n_0,
      O => reg_read_data_2(7),
      S => reg_read_addr_2(0)
    );
\register_file_inst/reg_array_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[1]\(0)
    );
\register_file_inst/reg_array_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[1]\(10)
    );
\register_file_inst/reg_array_reg[1][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[1]\(11)
    );
\register_file_inst/reg_array_reg[1][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[1]\(12)
    );
\register_file_inst/reg_array_reg[1][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[1]\(13)
    );
\register_file_inst/reg_array_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[1]\(14)
    );
\register_file_inst/reg_array_reg[1][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[1]\(15)
    );
\register_file_inst/reg_array_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[1]\(1)
    );
\register_file_inst/reg_array_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[1]\(2)
    );
\register_file_inst/reg_array_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[1]\(3)
    );
\register_file_inst/reg_array_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[1]\(4)
    );
\register_file_inst/reg_array_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[1]\(5)
    );
\register_file_inst/reg_array_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[1]\(6)
    );
\register_file_inst/reg_array_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[1]\(7)
    );
\register_file_inst/reg_array_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[1]\(8)
    );
\register_file_inst/reg_array_reg[1][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[1][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[1]\(9)
    );
\register_file_inst/reg_array_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[2]\(0)
    );
\register_file_inst/reg_array_reg[2][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[2]\(10)
    );
\register_file_inst/reg_array_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[2]\(11)
    );
\register_file_inst/reg_array_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[2]\(12)
    );
\register_file_inst/reg_array_reg[2][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[2]\(13)
    );
\register_file_inst/reg_array_reg[2][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[2]\(14)
    );
\register_file_inst/reg_array_reg[2][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[2]\(15)
    );
\register_file_inst/reg_array_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[2]\(1)
    );
\register_file_inst/reg_array_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[2]\(2)
    );
\register_file_inst/reg_array_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[2]\(3)
    );
\register_file_inst/reg_array_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[2]\(4)
    );
\register_file_inst/reg_array_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[2]\(5)
    );
\register_file_inst/reg_array_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[2]\(6)
    );
\register_file_inst/reg_array_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[2]\(7)
    );
\register_file_inst/reg_array_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[2]\(8)
    );
\register_file_inst/reg_array_reg[2][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[2][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[2]\(9)
    );
\register_file_inst/reg_array_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[3]\(0)
    );
\register_file_inst/reg_array_reg[3][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[3]\(10)
    );
\register_file_inst/reg_array_reg[3][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[3]\(11)
    );
\register_file_inst/reg_array_reg[3][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[3]\(12)
    );
\register_file_inst/reg_array_reg[3][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[3]\(13)
    );
\register_file_inst/reg_array_reg[3][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[3]\(14)
    );
\register_file_inst/reg_array_reg[3][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[3]\(15)
    );
\register_file_inst/reg_array_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[3]\(1)
    );
\register_file_inst/reg_array_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[3]\(2)
    );
\register_file_inst/reg_array_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[3]\(3)
    );
\register_file_inst/reg_array_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[3]\(4)
    );
\register_file_inst/reg_array_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[3]\(5)
    );
\register_file_inst/reg_array_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[3]\(6)
    );
\register_file_inst/reg_array_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[3]\(7)
    );
\register_file_inst/reg_array_reg[3][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[3]\(8)
    );
\register_file_inst/reg_array_reg[3][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[3][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[3]\(9)
    );
\register_file_inst/reg_array_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[4]\(0)
    );
\register_file_inst/reg_array_reg[4][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[4]\(10)
    );
\register_file_inst/reg_array_reg[4][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[4]\(11)
    );
\register_file_inst/reg_array_reg[4][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[4]\(12)
    );
\register_file_inst/reg_array_reg[4][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[4]\(13)
    );
\register_file_inst/reg_array_reg[4][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[4]\(14)
    );
\register_file_inst/reg_array_reg[4][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[4]\(15)
    );
\register_file_inst/reg_array_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[4]\(1)
    );
\register_file_inst/reg_array_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[4]\(2)
    );
\register_file_inst/reg_array_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[4]\(3)
    );
\register_file_inst/reg_array_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[4]\(4)
    );
\register_file_inst/reg_array_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[4]\(5)
    );
\register_file_inst/reg_array_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[4]\(6)
    );
\register_file_inst/reg_array_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[4]\(7)
    );
\register_file_inst/reg_array_reg[4][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[4]\(8)
    );
\register_file_inst/reg_array_reg[4][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[4][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[4]\(9)
    );
\register_file_inst/reg_array_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[5]\(0)
    );
\register_file_inst/reg_array_reg[5][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[5]\(10)
    );
\register_file_inst/reg_array_reg[5][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[5]\(11)
    );
\register_file_inst/reg_array_reg[5][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[5]\(12)
    );
\register_file_inst/reg_array_reg[5][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[5]\(13)
    );
\register_file_inst/reg_array_reg[5][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[5]\(14)
    );
\register_file_inst/reg_array_reg[5][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[5]\(15)
    );
\register_file_inst/reg_array_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[5]\(1)
    );
\register_file_inst/reg_array_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[5]\(2)
    );
\register_file_inst/reg_array_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[5]\(3)
    );
\register_file_inst/reg_array_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[5]\(4)
    );
\register_file_inst/reg_array_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[5]\(5)
    );
\register_file_inst/reg_array_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[5]\(6)
    );
\register_file_inst/reg_array_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[5]\(7)
    );
\register_file_inst/reg_array_reg[5][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[5]\(8)
    );
\register_file_inst/reg_array_reg[5][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[5][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[5]\(9)
    );
\register_file_inst/reg_array_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[6]\(0)
    );
\register_file_inst/reg_array_reg[6][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[6]\(10)
    );
\register_file_inst/reg_array_reg[6][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[6]\(11)
    );
\register_file_inst/reg_array_reg[6][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[6]\(12)
    );
\register_file_inst/reg_array_reg[6][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[6]\(13)
    );
\register_file_inst/reg_array_reg[6][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[6]\(14)
    );
\register_file_inst/reg_array_reg[6][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[6]\(15)
    );
\register_file_inst/reg_array_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[6]\(1)
    );
\register_file_inst/reg_array_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[6]\(2)
    );
\register_file_inst/reg_array_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[6]\(3)
    );
\register_file_inst/reg_array_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[6]\(4)
    );
\register_file_inst/reg_array_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[6]\(5)
    );
\register_file_inst/reg_array_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[6]\(6)
    );
\register_file_inst/reg_array_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[6]\(7)
    );
\register_file_inst/reg_array_reg[6][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[6]\(8)
    );
\register_file_inst/reg_array_reg[6][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_array[6][15]_i_1_n_0\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[6]\(9)
    );
\register_file_inst/reg_array_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(0),
      Q => \reg_array_reg[7]\(0)
    );
\register_file_inst/reg_array_reg[7][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(10),
      Q => \reg_array_reg[7]\(10)
    );
\register_file_inst/reg_array_reg[7][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(11),
      Q => \reg_array_reg[7]\(11)
    );
\register_file_inst/reg_array_reg[7][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(12),
      Q => \reg_array_reg[7]\(12)
    );
\register_file_inst/reg_array_reg[7][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(13),
      Q => \reg_array_reg[7]\(13)
    );
\register_file_inst/reg_array_reg[7][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(14),
      Q => \reg_array_reg[7]\(14)
    );
\register_file_inst/reg_array_reg[7][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(15),
      Q => \reg_array_reg[7]\(15)
    );
\register_file_inst/reg_array_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(1),
      Q => \reg_array_reg[7]\(1)
    );
\register_file_inst/reg_array_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(2),
      Q => \reg_array_reg[7]\(2)
    );
\register_file_inst/reg_array_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(3),
      Q => \reg_array_reg[7]\(3)
    );
\register_file_inst/reg_array_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(4),
      Q => \reg_array_reg[7]\(4)
    );
\register_file_inst/reg_array_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(5),
      Q => \reg_array_reg[7]\(5)
    );
\register_file_inst/reg_array_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(6),
      Q => \reg_array_reg[7]\(6)
    );
\register_file_inst/reg_array_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(7),
      Q => \reg_array_reg[7]\(7)
    );
\register_file_inst/reg_array_reg[7][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(8),
      Q => \reg_array_reg[7]\(8)
    );
\register_file_inst/reg_array_reg[7][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \register_file_inst/reg_array\,
      CLR => rst_IBUF,
      D => reg_write_data(9),
      Q => \reg_array_reg[7]\(9)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
