-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri May 13 20:49:26 2022
-- Host        : DESKTOP-9HE5DLC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Code/4K-Upsampling-System-on-Zynq/vivado/vivado.srcs/sources_1/bd/design_1/ip/design_1_Upsampling_Bayes_0_0/design_1_Upsampling_Bayes_0_0_sim_netlist.vhdl
-- Design      : design_1_Upsampling_Bayes_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pixel_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    buf_rden : in STD_LOGIC;
    buf_wren : in STD_LOGIC;
    stuck : out STD_LOGIC;
    trans_eff : out STD_LOGIC
  );
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low : entity is "S_AXIS_2_pixel_low";
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low : entity is 24;
end design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low is
  signal \FSM_sequential_buffer_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_buffer_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \buffer_count__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 23 downto 7 );
  signal pixel_out_reg0_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \pixel_out_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \^trans_eff\ : STD_LOGIC;
  signal trans_eff_reg_i_1_n_0 : STD_LOGIC;
  signal trans_eff_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[1]_i_1\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute SOFT_HLUTNM of \buffer[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \buffer[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \buffer[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \buffer[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \buffer[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \buffer[15]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pixel_out_reg[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of stuck_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of trans_eff_reg_i_1 : label is "soft_lutpair13";
begin
  trans_eff <= \^trans_eff\;
\FSM_sequential_buffer_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A70"
    )
        port map (
      I0 => buf_rden,
      I1 => \buffer_count__0\(1),
      I2 => \buffer_count__0\(0),
      I3 => buf_wren,
      O => \FSM_sequential_buffer_count[0]_i_1_n_0\
    );
\FSM_sequential_buffer_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C4C"
    )
        port map (
      I0 => buf_rden,
      I1 => \buffer_count__0\(1),
      I2 => \buffer_count__0\(0),
      I3 => buf_wren,
      O => \FSM_sequential_buffer_count[1]_i_1_n_0\
    );
\FSM_sequential_buffer_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => trans_eff_reg_i_2_n_0,
      D => \FSM_sequential_buffer_count[0]_i_1_n_0\,
      Q => \buffer_count__0\(0)
    );
\FSM_sequential_buffer_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => trans_eff_reg_i_2_n_0,
      D => \FSM_sequential_buffer_count[1]_i_1_n_0\,
      Q => \buffer_count__0\(1)
    );
\buffer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(8),
      I1 => \buffer_count__0\(1),
      I2 => data_in(16),
      I3 => \buffer_count__0\(0),
      I4 => data_in(24),
      O => \buffer\(0)
    );
\buffer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(18),
      I1 => \buffer_count__0\(1),
      I2 => data_in(26),
      O => \buffer\(10)
    );
\buffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(19),
      I1 => \buffer_count__0\(1),
      I2 => data_in(27),
      O => \buffer\(11)
    );
\buffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(20),
      I1 => \buffer_count__0\(1),
      I2 => data_in(28),
      O => \buffer\(12)
    );
\buffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(21),
      I1 => \buffer_count__0\(1),
      I2 => data_in(29),
      O => \buffer\(13)
    );
\buffer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(22),
      I1 => \buffer_count__0\(1),
      I2 => data_in(30),
      O => \buffer\(14)
    );
\buffer[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28000000"
    )
        port map (
      I0 => rst_n,
      I1 => \buffer_count__0\(0),
      I2 => \buffer_count__0\(1),
      I3 => buf_rden,
      I4 => buf_wren,
      O => \p_0_in__0\(15)
    );
\buffer[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(23),
      I1 => \buffer_count__0\(1),
      I2 => data_in(31),
      O => \buffer\(15)
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(9),
      I1 => \buffer_count__0\(1),
      I2 => data_in(17),
      I3 => \buffer_count__0\(0),
      I4 => data_in(25),
      O => \buffer\(1)
    );
\buffer[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => rst_n,
      I1 => \buffer_count__0\(0),
      I2 => \buffer_count__0\(1),
      I3 => buf_wren,
      I4 => buf_rden,
      O => \p_0_in__0\(23)
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(10),
      I1 => \buffer_count__0\(1),
      I2 => data_in(18),
      I3 => \buffer_count__0\(0),
      I4 => data_in(26),
      O => \buffer\(2)
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(11),
      I1 => \buffer_count__0\(1),
      I2 => data_in(19),
      I3 => \buffer_count__0\(0),
      I4 => data_in(27),
      O => \buffer\(3)
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(12),
      I1 => \buffer_count__0\(1),
      I2 => data_in(20),
      I3 => \buffer_count__0\(0),
      I4 => data_in(28),
      O => \buffer\(4)
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(13),
      I1 => \buffer_count__0\(1),
      I2 => data_in(21),
      I3 => \buffer_count__0\(0),
      I4 => data_in(29),
      O => \buffer\(5)
    );
\buffer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(14),
      I1 => \buffer_count__0\(1),
      I2 => data_in(22),
      I3 => \buffer_count__0\(0),
      I4 => data_in(30),
      O => \buffer\(6)
    );
\buffer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A000000"
    )
        port map (
      I0 => rst_n,
      I1 => \buffer_count__0\(0),
      I2 => \buffer_count__0\(1),
      I3 => buf_rden,
      I4 => buf_wren,
      O => \p_0_in__0\(7)
    );
\buffer[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(15),
      I1 => \buffer_count__0\(1),
      I2 => data_in(23),
      I3 => \buffer_count__0\(0),
      I4 => data_in(31),
      O => \buffer\(7)
    );
\buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(16),
      I1 => \buffer_count__0\(1),
      I2 => data_in(24),
      O => \buffer\(8)
    );
\buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(17),
      I1 => \buffer_count__0\(1),
      I2 => data_in(25),
      O => \buffer\(9)
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(0),
      Q => \buffer_reg_n_0_[0]\,
      R => '0'
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(10),
      Q => \buffer_reg_n_0_[10]\,
      R => '0'
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(11),
      Q => \buffer_reg_n_0_[11]\,
      R => '0'
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(12),
      Q => \buffer_reg_n_0_[12]\,
      R => '0'
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(13),
      Q => \buffer_reg_n_0_[13]\,
      R => '0'
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(14),
      Q => \buffer_reg_n_0_[14]\,
      R => '0'
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(15),
      Q => \buffer_reg_n_0_[15]\,
      R => '0'
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(24),
      Q => \buffer_reg_n_0_[16]\,
      R => '0'
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(25),
      Q => \buffer_reg_n_0_[17]\,
      R => '0'
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(26),
      Q => \buffer_reg_n_0_[18]\,
      R => '0'
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(27),
      Q => \buffer_reg_n_0_[19]\,
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(1),
      Q => \buffer_reg_n_0_[1]\,
      R => '0'
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(28),
      Q => \buffer_reg_n_0_[20]\,
      R => '0'
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(29),
      Q => \buffer_reg_n_0_[21]\,
      R => '0'
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(30),
      Q => \buffer_reg_n_0_[22]\,
      R => '0'
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(23),
      D => data_in(31),
      Q => \buffer_reg_n_0_[23]\,
      R => '0'
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(2),
      Q => \buffer_reg_n_0_[2]\,
      R => '0'
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(3),
      Q => \buffer_reg_n_0_[3]\,
      R => '0'
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(4),
      Q => \buffer_reg_n_0_[4]\,
      R => '0'
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(5),
      Q => \buffer_reg_n_0_[5]\,
      R => '0'
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(6),
      Q => \buffer_reg_n_0_[6]\,
      R => '0'
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(7),
      D => \buffer\(7),
      Q => \buffer_reg_n_0_[7]\,
      R => '0'
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(8),
      Q => \buffer_reg_n_0_[8]\,
      R => '0'
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \p_0_in__0\(15),
      D => \buffer\(9),
      Q => \buffer_reg_n_0_[9]\,
      R => '0'
    );
\pixel_out_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(0),
      I1 => \buffer_reg_n_0_[0]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(0)
    );
\pixel_out_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(10),
      I2 => \buffer_reg_n_0_[10]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(10)
    );
\pixel_out_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(11),
      I2 => \buffer_reg_n_0_[11]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(11)
    );
\pixel_out_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(4),
      I1 => data_in(12),
      I2 => \buffer_reg_n_0_[12]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(12)
    );
\pixel_out_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(13),
      I2 => \buffer_reg_n_0_[13]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(13)
    );
\pixel_out_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(6),
      I1 => data_in(14),
      I2 => \buffer_reg_n_0_[14]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(14)
    );
\pixel_out_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(15),
      I2 => \buffer_reg_n_0_[15]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(15)
    );
\pixel_out_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(8),
      I1 => data_in(16),
      I2 => \buffer_reg_n_0_[16]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(0),
      O => pixel_out_reg0_in(16)
    );
\pixel_out_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(9),
      I1 => data_in(17),
      I2 => \buffer_reg_n_0_[17]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(1),
      O => pixel_out_reg0_in(17)
    );
\pixel_out_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(10),
      I1 => data_in(18),
      I2 => \buffer_reg_n_0_[18]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(2),
      O => pixel_out_reg0_in(18)
    );
\pixel_out_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(11),
      I1 => data_in(19),
      I2 => \buffer_reg_n_0_[19]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(3),
      O => pixel_out_reg0_in(19)
    );
\pixel_out_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(1),
      I1 => \buffer_reg_n_0_[1]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(1)
    );
\pixel_out_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(12),
      I1 => data_in(20),
      I2 => \buffer_reg_n_0_[20]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(4),
      O => pixel_out_reg0_in(20)
    );
\pixel_out_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(13),
      I1 => data_in(21),
      I2 => \buffer_reg_n_0_[21]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(5),
      O => pixel_out_reg0_in(21)
    );
\pixel_out_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(14),
      I1 => data_in(22),
      I2 => \buffer_reg_n_0_[22]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(6),
      O => pixel_out_reg0_in(22)
    );
\pixel_out_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880000"
    )
        port map (
      I0 => rst_n,
      I1 => buf_wren,
      I2 => \buffer_count__0\(0),
      I3 => \buffer_count__0\(1),
      I4 => buf_rden,
      O => \pixel_out_reg[23]_i_1_n_0\
    );
\pixel_out_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data_in(15),
      I1 => data_in(23),
      I2 => \buffer_reg_n_0_[23]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      I5 => data_in(7),
      O => pixel_out_reg0_in(23)
    );
\pixel_out_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(2),
      I1 => \buffer_reg_n_0_[2]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(2)
    );
\pixel_out_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(3),
      I1 => \buffer_reg_n_0_[3]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(3)
    );
\pixel_out_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(4),
      I1 => \buffer_reg_n_0_[4]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(4)
    );
\pixel_out_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(5),
      I1 => \buffer_reg_n_0_[5]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(5)
    );
\pixel_out_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(6),
      I1 => \buffer_reg_n_0_[6]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(6)
    );
\pixel_out_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => data_in(7),
      I1 => \buffer_reg_n_0_[7]\,
      I2 => \buffer_count__0\(1),
      I3 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(7)
    );
\pixel_out_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(8),
      I2 => \buffer_reg_n_0_[8]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(8)
    );
\pixel_out_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AAF0CC"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(9),
      I2 => \buffer_reg_n_0_[9]\,
      I3 => \buffer_count__0\(1),
      I4 => \buffer_count__0\(0),
      O => pixel_out_reg0_in(9)
    );
\pixel_out_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(0),
      Q => pixel_out(0),
      R => '0'
    );
\pixel_out_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(10),
      Q => pixel_out(10),
      R => '0'
    );
\pixel_out_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(11),
      Q => pixel_out(11),
      R => '0'
    );
\pixel_out_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(12),
      Q => pixel_out(12),
      R => '0'
    );
\pixel_out_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(13),
      Q => pixel_out(13),
      R => '0'
    );
\pixel_out_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(14),
      Q => pixel_out(14),
      R => '0'
    );
\pixel_out_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(15),
      Q => pixel_out(15),
      R => '0'
    );
\pixel_out_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(16),
      Q => pixel_out(16),
      R => '0'
    );
\pixel_out_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(17),
      Q => pixel_out(17),
      R => '0'
    );
\pixel_out_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(18),
      Q => pixel_out(18),
      R => '0'
    );
\pixel_out_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(19),
      Q => pixel_out(19),
      R => '0'
    );
\pixel_out_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(1),
      Q => pixel_out(1),
      R => '0'
    );
\pixel_out_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(20),
      Q => pixel_out(20),
      R => '0'
    );
\pixel_out_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(21),
      Q => pixel_out(21),
      R => '0'
    );
\pixel_out_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(22),
      Q => pixel_out(22),
      R => '0'
    );
\pixel_out_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(23),
      Q => pixel_out(23),
      R => '0'
    );
\pixel_out_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(2),
      Q => pixel_out(2),
      R => '0'
    );
\pixel_out_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(3),
      Q => pixel_out(3),
      R => '0'
    );
\pixel_out_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(4),
      Q => pixel_out(4),
      R => '0'
    );
\pixel_out_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(5),
      Q => pixel_out(5),
      R => '0'
    );
\pixel_out_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(6),
      Q => pixel_out(6),
      R => '0'
    );
\pixel_out_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(7),
      Q => pixel_out(7),
      R => '0'
    );
\pixel_out_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(8),
      Q => pixel_out(8),
      R => '0'
    );
\pixel_out_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pixel_out_reg[23]_i_1_n_0\,
      D => pixel_out_reg0_in(9),
      Q => pixel_out(9),
      R => '0'
    );
stuck_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \buffer_count__0\(1),
      I1 => \buffer_count__0\(0),
      I2 => buf_rden,
      O => stuck
    );
trans_eff_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAD580"
    )
        port map (
      I0 => buf_rden,
      I1 => \buffer_count__0\(1),
      I2 => \buffer_count__0\(0),
      I3 => \^trans_eff\,
      I4 => buf_wren,
      O => trans_eff_reg_i_1_n_0
    );
trans_eff_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => trans_eff_reg_i_2_n_0
    );
trans_eff_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => trans_eff_reg_i_2_n_0,
      D => trans_eff_reg_i_1_n_0,
      Q => \^trans_eff\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS is
  port (
    M_AXIS_send_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    wren : in STD_LOGIC;
    stuck : out STD_LOGIC;
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIS_TSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 128;
  attribute C_M_START_COUNT : integer;
  attribute C_M_START_COUNT of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 16;
  attribute IDLE : string;
  attribute IDLE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "2'b00";
  attribute INIT_COUNTER : string;
  attribute INIT_COUNTER of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "2'b01";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "Upsampling_Bayes_M00_AXIS";
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 24;
  attribute ROW_PIXEL_COUNT : integer;
  attribute ROW_PIXEL_COUNT of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 800;
  attribute ROW_SEND_COUNT : integer;
  attribute ROW_SEND_COUNT of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 600;
  attribute ROW_SEND_COUNT_BITS : integer;
  attribute ROW_SEND_COUNT_BITS of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 10;
  attribute SEND_STREAM : string;
  attribute SEND_STREAM of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "2'b10";
  attribute WAIT_COUNT_BITS : integer;
  attribute WAIT_COUNT_BITS of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 4;
  attribute WORD_OF_OUTPUT_BUFFER : integer;
  attribute WORD_OF_OUTPUT_BUFFER of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 3;
  attribute bit_num : integer;
  attribute bit_num of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 2;
end design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal axis_tlast_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_delay_i_2_n_0 : STD_LOGIC;
  signal axis_tvalid_delay_i_1_n_0 : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \row_send_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \row_send_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \row_send_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \row_send_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \row_send_count[9]_i_5_n_0\ : STD_LOGIC;
  signal row_send_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \stream_data_out[127]_i_1_n_0\ : STD_LOGIC;
  signal \^stuck\ : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \row_send_count[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \row_send_count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \row_send_count[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \row_send_count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \row_send_count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \row_send_count[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \row_send_count[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \row_send_count[8]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \row_send_count[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \row_send_count[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of stuck_INST_0 : label is "soft_lutpair9";
begin
  M_AXIS_TLAST <= \^m_axis_tlast\;
  M_AXIS_TSTRB(15) <= \<const0>\;
  M_AXIS_TSTRB(14) <= \<const0>\;
  M_AXIS_TSTRB(13) <= \<const0>\;
  M_AXIS_TSTRB(12) <= \<const0>\;
  M_AXIS_TSTRB(11) <= \<const0>\;
  M_AXIS_TSTRB(10) <= \<const0>\;
  M_AXIS_TSTRB(9) <= \<const0>\;
  M_AXIS_TSTRB(8) <= \<const0>\;
  M_AXIS_TSTRB(7) <= \<const0>\;
  M_AXIS_TSTRB(6) <= \<const0>\;
  M_AXIS_TSTRB(5) <= \<const0>\;
  M_AXIS_TSTRB(4) <= \<const0>\;
  M_AXIS_TSTRB(3) <= \<const0>\;
  M_AXIS_TSTRB(2) <= \<const0>\;
  M_AXIS_TSTRB(1) <= \<const0>\;
  M_AXIS_TSTRB(0) <= \<const0>\;
  stuck <= \^stuck\;
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF980000"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => M_AXIS_TREADY,
      I3 => \count[3]_i_1_n_0\,
      I4 => M_AXIS_ARESETN,
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CAE0000"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I3 => \^m_axis_tlast\,
      I4 => M_AXIS_ARESETN,
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => '0'
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axis_tlast_delay_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => row_send_count_reg(2),
      I1 => row_send_count_reg(0),
      I2 => row_send_count_reg(1),
      I3 => row_send_count_reg(4),
      I4 => axis_tlast_delay_i_2_n_0,
      I5 => M_AXIS_ARESETN,
      O => axis_tlast_delay_i_1_n_0
    );
axis_tlast_delay_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => row_send_count_reg(7),
      I1 => row_send_count_reg(8),
      I2 => row_send_count_reg(3),
      I3 => row_send_count_reg(5),
      I4 => row_send_count_reg(9),
      I5 => row_send_count_reg(6),
      O => axis_tlast_delay_i_2_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => axis_tlast_delay_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => wren,
      I3 => M_AXIS_ARESETN,
      O => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => axis_tvalid_delay_i_1_n_0,
      Q => M_AXIS_TVALID,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444444444444"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => count_reg(3),
      I3 => count_reg(1),
      I4 => count_reg(0),
      I5 => count_reg(2),
      O => \count[3]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => p_0_in(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \count[3]_i_1_n_0\,
      D => p_0_in(0),
      Q => count_reg(0),
      R => \stream_data_out[127]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \count[3]_i_1_n_0\,
      D => p_0_in(1),
      Q => count_reg(1),
      R => \stream_data_out[127]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \count[3]_i_1_n_0\,
      D => p_0_in(2),
      Q => count_reg(2),
      R => \stream_data_out[127]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \count[3]_i_1_n_0\,
      D => p_0_in(3),
      Q => count_reg(3),
      R => \stream_data_out[127]_i_1_n_0\
    );
\row_send_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_send_count_reg(0),
      O => \p_0_in__0\(0)
    );
\row_send_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => row_send_count_reg(0),
      I1 => row_send_count_reg(1),
      O => \p_0_in__0\(1)
    );
\row_send_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => row_send_count_reg(1),
      I1 => row_send_count_reg(0),
      I2 => row_send_count_reg(2),
      O => \p_0_in__0\(2)
    );
\row_send_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => row_send_count_reg(2),
      I1 => row_send_count_reg(0),
      I2 => row_send_count_reg(1),
      I3 => row_send_count_reg(3),
      O => \p_0_in__0\(3)
    );
\row_send_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => row_send_count_reg(3),
      I1 => row_send_count_reg(1),
      I2 => row_send_count_reg(0),
      I3 => row_send_count_reg(2),
      I4 => row_send_count_reg(4),
      O => \p_0_in__0\(4)
    );
\row_send_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => row_send_count_reg(3),
      I1 => row_send_count_reg(2),
      I2 => row_send_count_reg(0),
      I3 => row_send_count_reg(1),
      I4 => row_send_count_reg(4),
      I5 => row_send_count_reg(5),
      O => \p_0_in__0\(5)
    );
\row_send_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => row_send_count_reg(5),
      I1 => \row_send_count[8]_i_2_n_0\,
      I2 => row_send_count_reg(3),
      I3 => row_send_count_reg(6),
      O => \p_0_in__0\(6)
    );
\row_send_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => row_send_count_reg(6),
      I1 => row_send_count_reg(3),
      I2 => \row_send_count[8]_i_2_n_0\,
      I3 => row_send_count_reg(5),
      I4 => row_send_count_reg(7),
      O => \p_0_in__0\(7)
    );
\row_send_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => row_send_count_reg(7),
      I1 => row_send_count_reg(5),
      I2 => \row_send_count[8]_i_2_n_0\,
      I3 => row_send_count_reg(3),
      I4 => row_send_count_reg(6),
      I5 => row_send_count_reg(8),
      O => \p_0_in__0\(8)
    );
\row_send_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => row_send_count_reg(2),
      I1 => row_send_count_reg(0),
      I2 => row_send_count_reg(1),
      I3 => row_send_count_reg(4),
      O => \row_send_count[8]_i_2_n_0\
    );
\row_send_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FD55DD55"
    )
        port map (
      I0 => M_AXIS_ARESETN,
      I1 => \row_send_count[9]_i_3_n_0\,
      I2 => \row_send_count[9]_i_4_n_0\,
      I3 => row_send_count_reg(9),
      I4 => row_send_count_reg(6),
      I5 => \^stuck\,
      O => \row_send_count[9]_i_1_n_0\
    );
\row_send_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => row_send_count_reg(8),
      I1 => row_send_count_reg(6),
      I2 => \row_send_count[9]_i_5_n_0\,
      I3 => row_send_count_reg(7),
      I4 => row_send_count_reg(9),
      O => \p_0_in__0\(9)
    );
\row_send_count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_send_count_reg(7),
      I1 => row_send_count_reg(8),
      O => \row_send_count[9]_i_3_n_0\
    );
\row_send_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAEAEAEAEAEAEA"
    )
        port map (
      I0 => row_send_count_reg(5),
      I1 => row_send_count_reg(3),
      I2 => row_send_count_reg(4),
      I3 => row_send_count_reg(1),
      I4 => row_send_count_reg(0),
      I5 => row_send_count_reg(2),
      O => \row_send_count[9]_i_4_n_0\
    );
\row_send_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => row_send_count_reg(3),
      I1 => row_send_count_reg(2),
      I2 => row_send_count_reg(0),
      I3 => row_send_count_reg(1),
      I4 => row_send_count_reg(4),
      I5 => row_send_count_reg(5),
      O => \row_send_count[9]_i_5_n_0\
    );
\row_send_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(0),
      Q => row_send_count_reg(0),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(1),
      Q => row_send_count_reg(1),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(2),
      Q => row_send_count_reg(2),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(3),
      Q => row_send_count_reg(3),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(4),
      Q => row_send_count_reg(4),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(5),
      Q => row_send_count_reg(5),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(6),
      Q => row_send_count_reg(6),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(7),
      Q => row_send_count_reg(7),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(8),
      Q => row_send_count_reg(8),
      R => \row_send_count[9]_i_1_n_0\
    );
\row_send_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => \p_0_in__0\(9),
      Q => row_send_count_reg(9),
      R => \row_send_count[9]_i_1_n_0\
    );
\stream_data_out[127]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXIS_ARESETN,
      O => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out[127]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => mst_exec_state(1),
      I2 => mst_exec_state(0),
      I3 => wren,
      O => tx_en
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(0),
      Q => M_AXIS_TDATA(0),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(100),
      Q => M_AXIS_TDATA(100),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(101),
      Q => M_AXIS_TDATA(101),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(102),
      Q => M_AXIS_TDATA(102),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(103),
      Q => M_AXIS_TDATA(103),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(104),
      Q => M_AXIS_TDATA(104),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(105),
      Q => M_AXIS_TDATA(105),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(106),
      Q => M_AXIS_TDATA(106),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(107),
      Q => M_AXIS_TDATA(107),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(108),
      Q => M_AXIS_TDATA(108),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(109),
      Q => M_AXIS_TDATA(109),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(10),
      Q => M_AXIS_TDATA(10),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(110),
      Q => M_AXIS_TDATA(110),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(111),
      Q => M_AXIS_TDATA(111),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(112),
      Q => M_AXIS_TDATA(112),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(113),
      Q => M_AXIS_TDATA(113),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(114),
      Q => M_AXIS_TDATA(114),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(115),
      Q => M_AXIS_TDATA(115),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(116),
      Q => M_AXIS_TDATA(116),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(117),
      Q => M_AXIS_TDATA(117),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(118),
      Q => M_AXIS_TDATA(118),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(119),
      Q => M_AXIS_TDATA(119),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(11),
      Q => M_AXIS_TDATA(11),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(120),
      Q => M_AXIS_TDATA(120),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(121),
      Q => M_AXIS_TDATA(121),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(122),
      Q => M_AXIS_TDATA(122),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(123),
      Q => M_AXIS_TDATA(123),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(124),
      Q => M_AXIS_TDATA(124),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(125),
      Q => M_AXIS_TDATA(125),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(126),
      Q => M_AXIS_TDATA(126),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(127),
      Q => M_AXIS_TDATA(127),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(12),
      Q => M_AXIS_TDATA(12),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(13),
      Q => M_AXIS_TDATA(13),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(14),
      Q => M_AXIS_TDATA(14),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(15),
      Q => M_AXIS_TDATA(15),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(16),
      Q => M_AXIS_TDATA(16),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(17),
      Q => M_AXIS_TDATA(17),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(18),
      Q => M_AXIS_TDATA(18),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(19),
      Q => M_AXIS_TDATA(19),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(1),
      Q => M_AXIS_TDATA(1),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(20),
      Q => M_AXIS_TDATA(20),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(21),
      Q => M_AXIS_TDATA(21),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(22),
      Q => M_AXIS_TDATA(22),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(23),
      Q => M_AXIS_TDATA(23),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(24),
      Q => M_AXIS_TDATA(24),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(25),
      Q => M_AXIS_TDATA(25),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(26),
      Q => M_AXIS_TDATA(26),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(27),
      Q => M_AXIS_TDATA(27),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(28),
      Q => M_AXIS_TDATA(28),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(29),
      Q => M_AXIS_TDATA(29),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(2),
      Q => M_AXIS_TDATA(2),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(30),
      Q => M_AXIS_TDATA(30),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(31),
      Q => M_AXIS_TDATA(31),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(32),
      Q => M_AXIS_TDATA(32),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(33),
      Q => M_AXIS_TDATA(33),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(34),
      Q => M_AXIS_TDATA(34),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(35),
      Q => M_AXIS_TDATA(35),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(36),
      Q => M_AXIS_TDATA(36),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(37),
      Q => M_AXIS_TDATA(37),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(38),
      Q => M_AXIS_TDATA(38),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(39),
      Q => M_AXIS_TDATA(39),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(3),
      Q => M_AXIS_TDATA(3),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(40),
      Q => M_AXIS_TDATA(40),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(41),
      Q => M_AXIS_TDATA(41),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(42),
      Q => M_AXIS_TDATA(42),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(43),
      Q => M_AXIS_TDATA(43),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(44),
      Q => M_AXIS_TDATA(44),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(45),
      Q => M_AXIS_TDATA(45),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(46),
      Q => M_AXIS_TDATA(46),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(47),
      Q => M_AXIS_TDATA(47),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(48),
      Q => M_AXIS_TDATA(48),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(49),
      Q => M_AXIS_TDATA(49),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(4),
      Q => M_AXIS_TDATA(4),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(50),
      Q => M_AXIS_TDATA(50),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(51),
      Q => M_AXIS_TDATA(51),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(52),
      Q => M_AXIS_TDATA(52),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(53),
      Q => M_AXIS_TDATA(53),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(54),
      Q => M_AXIS_TDATA(54),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(55),
      Q => M_AXIS_TDATA(55),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(56),
      Q => M_AXIS_TDATA(56),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(57),
      Q => M_AXIS_TDATA(57),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(58),
      Q => M_AXIS_TDATA(58),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(59),
      Q => M_AXIS_TDATA(59),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(5),
      Q => M_AXIS_TDATA(5),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(60),
      Q => M_AXIS_TDATA(60),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(61),
      Q => M_AXIS_TDATA(61),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(62),
      Q => M_AXIS_TDATA(62),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(63),
      Q => M_AXIS_TDATA(63),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(64),
      Q => M_AXIS_TDATA(64),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(65),
      Q => M_AXIS_TDATA(65),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(66),
      Q => M_AXIS_TDATA(66),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(67),
      Q => M_AXIS_TDATA(67),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(68),
      Q => M_AXIS_TDATA(68),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(69),
      Q => M_AXIS_TDATA(69),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(6),
      Q => M_AXIS_TDATA(6),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(70),
      Q => M_AXIS_TDATA(70),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(71),
      Q => M_AXIS_TDATA(71),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(72),
      Q => M_AXIS_TDATA(72),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(73),
      Q => M_AXIS_TDATA(73),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(74),
      Q => M_AXIS_TDATA(74),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(75),
      Q => M_AXIS_TDATA(75),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(76),
      Q => M_AXIS_TDATA(76),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(77),
      Q => M_AXIS_TDATA(77),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(78),
      Q => M_AXIS_TDATA(78),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(79),
      Q => M_AXIS_TDATA(79),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(7),
      Q => M_AXIS_TDATA(7),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(80),
      Q => M_AXIS_TDATA(80),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(81),
      Q => M_AXIS_TDATA(81),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(82),
      Q => M_AXIS_TDATA(82),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(83),
      Q => M_AXIS_TDATA(83),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(84),
      Q => M_AXIS_TDATA(84),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(85),
      Q => M_AXIS_TDATA(85),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(86),
      Q => M_AXIS_TDATA(86),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(87),
      Q => M_AXIS_TDATA(87),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(88),
      Q => M_AXIS_TDATA(88),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(89),
      Q => M_AXIS_TDATA(89),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(8),
      Q => M_AXIS_TDATA(8),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(90),
      Q => M_AXIS_TDATA(90),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(91),
      Q => M_AXIS_TDATA(91),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(92),
      Q => M_AXIS_TDATA(92),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(93),
      Q => M_AXIS_TDATA(93),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(94),
      Q => M_AXIS_TDATA(94),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(95),
      Q => M_AXIS_TDATA(95),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(96),
      Q => M_AXIS_TDATA(96),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(97),
      Q => M_AXIS_TDATA(97),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(98),
      Q => M_AXIS_TDATA(98),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(99),
      Q => M_AXIS_TDATA(99),
      R => \stream_data_out[127]_i_1_n_0\
    );
\stream_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => M_AXIS_send_data(9),
      Q => M_AXIS_TDATA(9),
      R => \stream_data_out[127]_i_1_n_0\
    );
stuck_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wren,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      I3 => M_AXIS_TREADY,
      O => \^stuck\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS is
  port (
    S_AXIS_get_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_rden : in STD_LOGIC;
    fifo_empty_flag : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC
  );
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS : entity is 32;
  attribute IDLE : string;
  attribute IDLE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS : entity is "2'b00";
  attribute NUMBER_OF_INPUT_WORDS : integer;
  attribute NUMBER_OF_INPUT_WORDS of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS : entity is 8;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS : entity is "Upsampling_Bayes_S00_AXIS";
  attribute WRITE_FIFO : string;
  attribute WRITE_FIFO of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS : entity is "2'b01";
  attribute bit_num : integer;
  attribute bit_num of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS : entity is 3;
end design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS is
  signal S_AXIS_TREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal fifo_empty_flag_INST_0_i_1_n_0 : STD_LOGIC;
  signal fifo_wren : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC;
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_pointer0 : STD_LOGIC;
  signal \read_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_pointer_reg_n_0_[3]\ : STD_LOGIC;
  signal write_pointer : STD_LOGIC;
  signal \write_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \write_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \write_pointer_reg_n_0_[3]\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_i_2_n_0 : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_stream_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXIS_TREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_pointer[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_3\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of stream_data_fifo_reg_0_7_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of stream_data_fifo_reg_0_7_0_5 : label is "stream_data_fifo";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of stream_data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of stream_data_fifo_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of stream_data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of stream_data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of stream_data_fifo_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of stream_data_fifo_reg_0_7_12_17 : label is 256;
  attribute RTL_RAM_NAME of stream_data_fifo_reg_0_7_12_17 : label is "stream_data_fifo";
  attribute ram_addr_begin of stream_data_fifo_reg_0_7_12_17 : label is 0;
  attribute ram_addr_end of stream_data_fifo_reg_0_7_12_17 : label is 7;
  attribute ram_offset of stream_data_fifo_reg_0_7_12_17 : label is 0;
  attribute ram_slice_begin of stream_data_fifo_reg_0_7_12_17 : label is 12;
  attribute ram_slice_end of stream_data_fifo_reg_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of stream_data_fifo_reg_0_7_18_23 : label is 256;
  attribute RTL_RAM_NAME of stream_data_fifo_reg_0_7_18_23 : label is "stream_data_fifo";
  attribute ram_addr_begin of stream_data_fifo_reg_0_7_18_23 : label is 0;
  attribute ram_addr_end of stream_data_fifo_reg_0_7_18_23 : label is 7;
  attribute ram_offset of stream_data_fifo_reg_0_7_18_23 : label is 0;
  attribute ram_slice_begin of stream_data_fifo_reg_0_7_18_23 : label is 18;
  attribute ram_slice_end of stream_data_fifo_reg_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_7_24_29 : label is "";
  attribute RTL_RAM_BITS of stream_data_fifo_reg_0_7_24_29 : label is 256;
  attribute RTL_RAM_NAME of stream_data_fifo_reg_0_7_24_29 : label is "stream_data_fifo";
  attribute ram_addr_begin of stream_data_fifo_reg_0_7_24_29 : label is 0;
  attribute ram_addr_end of stream_data_fifo_reg_0_7_24_29 : label is 7;
  attribute ram_offset of stream_data_fifo_reg_0_7_24_29 : label is 0;
  attribute ram_slice_begin of stream_data_fifo_reg_0_7_24_29 : label is 24;
  attribute ram_slice_end of stream_data_fifo_reg_0_7_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_7_30_31 : label is "";
  attribute RTL_RAM_BITS of stream_data_fifo_reg_0_7_30_31 : label is 256;
  attribute RTL_RAM_NAME of stream_data_fifo_reg_0_7_30_31 : label is "stream_data_fifo";
  attribute ram_addr_begin of stream_data_fifo_reg_0_7_30_31 : label is 0;
  attribute ram_addr_end of stream_data_fifo_reg_0_7_30_31 : label is 7;
  attribute ram_offset of stream_data_fifo_reg_0_7_30_31 : label is 0;
  attribute ram_slice_begin of stream_data_fifo_reg_0_7_30_31 : label is 30;
  attribute ram_slice_end of stream_data_fifo_reg_0_7_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of stream_data_fifo_reg_0_7_6_11 : label is 256;
  attribute RTL_RAM_NAME of stream_data_fifo_reg_0_7_6_11 : label is "stream_data_fifo";
  attribute ram_addr_begin of stream_data_fifo_reg_0_7_6_11 : label is 0;
  attribute ram_addr_end of stream_data_fifo_reg_0_7_6_11 : label is 7;
  attribute ram_offset of stream_data_fifo_reg_0_7_6_11 : label is 0;
  attribute ram_slice_begin of stream_data_fifo_reg_0_7_6_11 : label is 6;
  attribute ram_slice_end of stream_data_fifo_reg_0_7_6_11 : label is 11;
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of writes_done_i_2 : label is "soft_lutpair0";
begin
S_AXIS_TREADY_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED00"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[3]\,
      I1 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I2 => \write_pointer_reg_n_0_[3]\,
      I3 => mst_exec_state,
      O => S_AXIS_TREADY
    );
S_AXIS_TREADY_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7DFFDBFFBEFFE"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[2]\,
      I1 => \read_pointer_reg_n_0_[1]\,
      I2 => \write_pointer_reg_n_0_[0]\,
      I3 => \read_pointer_reg_n_0_[0]\,
      I4 => \write_pointer_reg_n_0_[1]\,
      I5 => \write_pointer_reg_n_0_[2]\,
      O => S_AXIS_TREADY_INST_0_i_1_n_0
    );
fifo_empty_flag_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[3]\,
      I1 => fifo_empty_flag_INST_0_i_1_n_0,
      I2 => \read_pointer_reg_n_0_[3]\,
      O => fifo_empty_flag
    );
fifo_empty_flag_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[2]\,
      I1 => \read_pointer_reg_n_0_[1]\,
      I2 => \write_pointer_reg_n_0_[0]\,
      I3 => \read_pointer_reg_n_0_[0]\,
      I4 => \write_pointer_reg_n_0_[1]\,
      I5 => \write_pointer_reg_n_0_[2]\,
      O => fifo_empty_flag_INST_0_i_1_n_0
    );
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => mst_exec_state,
      I2 => writes_done,
      I3 => S_AXIS_ARESETN,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => mst_exec_state,
      R => '0'
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[1]\,
      I1 => \read_pointer_reg_n_0_[0]\,
      O => \p_0_in__0\(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[2]\,
      I1 => \read_pointer_reg_n_0_[1]\,
      I2 => \read_pointer_reg_n_0_[0]\,
      O => \p_0_in__0\(2)
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXIS_ARESETN,
      O => clear
    );
\read_pointer[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DE00"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[3]\,
      I1 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I2 => \write_pointer_reg_n_0_[3]\,
      I3 => fifo_rden,
      O => read_pointer0
    );
\read_pointer[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[3]\,
      I1 => \read_pointer_reg_n_0_[1]\,
      I2 => \read_pointer_reg_n_0_[0]\,
      I3 => \read_pointer_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => read_pointer0,
      D => p_0_in(0),
      Q => \read_pointer_reg_n_0_[0]\,
      R => clear
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => read_pointer0,
      D => \p_0_in__0\(1),
      Q => \read_pointer_reg_n_0_[1]\,
      R => clear
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => read_pointer0,
      D => \p_0_in__0\(2),
      Q => \read_pointer_reg_n_0_[2]\,
      R => clear
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => read_pointer0,
      D => \p_0_in__0\(3),
      Q => \read_pointer_reg_n_0_[3]\,
      R => clear
    );
stream_data_fifo_reg_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_pointer_reg_n_0_[2]\,
      ADDRA(1) => \read_pointer_reg_n_0_[1]\,
      ADDRA(0) => \read_pointer_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_pointer_reg_n_0_[2]\,
      ADDRB(1) => \read_pointer_reg_n_0_[1]\,
      ADDRB(0) => \read_pointer_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_pointer_reg_n_0_[2]\,
      ADDRC(1) => \read_pointer_reg_n_0_[1]\,
      ADDRC(0) => \read_pointer_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_pointer_reg_n_0_[2]\,
      ADDRD(1) => \write_pointer_reg_n_0_[1]\,
      ADDRD(0) => \write_pointer_reg_n_0_[0]\,
      DIA(1 downto 0) => S_AXIS_TDATA(1 downto 0),
      DIB(1 downto 0) => S_AXIS_TDATA(3 downto 2),
      DIC(1 downto 0) => S_AXIS_TDATA(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_AXIS_get_data(1 downto 0),
      DOB(1 downto 0) => S_AXIS_get_data(3 downto 2),
      DOC(1 downto 0) => S_AXIS_get_data(5 downto 4),
      DOD(1 downto 0) => NLW_stream_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXIS_ACLK,
      WE => fifo_wren
    );
stream_data_fifo_reg_0_7_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_pointer_reg_n_0_[2]\,
      ADDRA(1) => \read_pointer_reg_n_0_[1]\,
      ADDRA(0) => \read_pointer_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_pointer_reg_n_0_[2]\,
      ADDRB(1) => \read_pointer_reg_n_0_[1]\,
      ADDRB(0) => \read_pointer_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_pointer_reg_n_0_[2]\,
      ADDRC(1) => \read_pointer_reg_n_0_[1]\,
      ADDRC(0) => \read_pointer_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_pointer_reg_n_0_[2]\,
      ADDRD(1) => \write_pointer_reg_n_0_[1]\,
      ADDRD(0) => \write_pointer_reg_n_0_[0]\,
      DIA(1 downto 0) => S_AXIS_TDATA(13 downto 12),
      DIB(1 downto 0) => S_AXIS_TDATA(15 downto 14),
      DIC(1 downto 0) => S_AXIS_TDATA(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_AXIS_get_data(13 downto 12),
      DOB(1 downto 0) => S_AXIS_get_data(15 downto 14),
      DOC(1 downto 0) => S_AXIS_get_data(17 downto 16),
      DOD(1 downto 0) => NLW_stream_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXIS_ACLK,
      WE => fifo_wren
    );
stream_data_fifo_reg_0_7_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_pointer_reg_n_0_[2]\,
      ADDRA(1) => \read_pointer_reg_n_0_[1]\,
      ADDRA(0) => \read_pointer_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_pointer_reg_n_0_[2]\,
      ADDRB(1) => \read_pointer_reg_n_0_[1]\,
      ADDRB(0) => \read_pointer_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_pointer_reg_n_0_[2]\,
      ADDRC(1) => \read_pointer_reg_n_0_[1]\,
      ADDRC(0) => \read_pointer_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_pointer_reg_n_0_[2]\,
      ADDRD(1) => \write_pointer_reg_n_0_[1]\,
      ADDRD(0) => \write_pointer_reg_n_0_[0]\,
      DIA(1 downto 0) => S_AXIS_TDATA(19 downto 18),
      DIB(1 downto 0) => S_AXIS_TDATA(21 downto 20),
      DIC(1 downto 0) => S_AXIS_TDATA(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_AXIS_get_data(19 downto 18),
      DOB(1 downto 0) => S_AXIS_get_data(21 downto 20),
      DOC(1 downto 0) => S_AXIS_get_data(23 downto 22),
      DOD(1 downto 0) => NLW_stream_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXIS_ACLK,
      WE => fifo_wren
    );
stream_data_fifo_reg_0_7_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_pointer_reg_n_0_[2]\,
      ADDRA(1) => \read_pointer_reg_n_0_[1]\,
      ADDRA(0) => \read_pointer_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_pointer_reg_n_0_[2]\,
      ADDRB(1) => \read_pointer_reg_n_0_[1]\,
      ADDRB(0) => \read_pointer_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_pointer_reg_n_0_[2]\,
      ADDRC(1) => \read_pointer_reg_n_0_[1]\,
      ADDRC(0) => \read_pointer_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_pointer_reg_n_0_[2]\,
      ADDRD(1) => \write_pointer_reg_n_0_[1]\,
      ADDRD(0) => \write_pointer_reg_n_0_[0]\,
      DIA(1 downto 0) => S_AXIS_TDATA(25 downto 24),
      DIB(1 downto 0) => S_AXIS_TDATA(27 downto 26),
      DIC(1 downto 0) => S_AXIS_TDATA(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_AXIS_get_data(25 downto 24),
      DOB(1 downto 0) => S_AXIS_get_data(27 downto 26),
      DOC(1 downto 0) => S_AXIS_get_data(29 downto 28),
      DOD(1 downto 0) => NLW_stream_data_fifo_reg_0_7_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXIS_ACLK,
      WE => fifo_wren
    );
stream_data_fifo_reg_0_7_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_pointer_reg_n_0_[2]\,
      ADDRA(1) => \read_pointer_reg_n_0_[1]\,
      ADDRA(0) => \read_pointer_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_pointer_reg_n_0_[2]\,
      ADDRB(1) => \read_pointer_reg_n_0_[1]\,
      ADDRB(0) => \read_pointer_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_pointer_reg_n_0_[2]\,
      ADDRC(1) => \read_pointer_reg_n_0_[1]\,
      ADDRC(0) => \read_pointer_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_pointer_reg_n_0_[2]\,
      ADDRD(1) => \write_pointer_reg_n_0_[1]\,
      ADDRD(0) => \write_pointer_reg_n_0_[0]\,
      DIA(1 downto 0) => S_AXIS_TDATA(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_AXIS_get_data(31 downto 30),
      DOB(1 downto 0) => NLW_stream_data_fifo_reg_0_7_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_stream_data_fifo_reg_0_7_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_stream_data_fifo_reg_0_7_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXIS_ACLK,
      WE => fifo_wren
    );
stream_data_fifo_reg_0_7_30_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808808"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => mst_exec_state,
      I2 => \write_pointer_reg_n_0_[3]\,
      I3 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I4 => \read_pointer_reg_n_0_[3]\,
      O => fifo_wren
    );
stream_data_fifo_reg_0_7_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_pointer_reg_n_0_[2]\,
      ADDRA(1) => \read_pointer_reg_n_0_[1]\,
      ADDRA(0) => \read_pointer_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_pointer_reg_n_0_[2]\,
      ADDRB(1) => \read_pointer_reg_n_0_[1]\,
      ADDRB(0) => \read_pointer_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_pointer_reg_n_0_[2]\,
      ADDRC(1) => \read_pointer_reg_n_0_[1]\,
      ADDRC(0) => \read_pointer_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_pointer_reg_n_0_[2]\,
      ADDRD(1) => \write_pointer_reg_n_0_[1]\,
      ADDRD(0) => \write_pointer_reg_n_0_[0]\,
      DIA(1 downto 0) => S_AXIS_TDATA(7 downto 6),
      DIB(1 downto 0) => S_AXIS_TDATA(9 downto 8),
      DIC(1 downto 0) => S_AXIS_TDATA(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => S_AXIS_get_data(7 downto 6),
      DOB(1 downto 0) => S_AXIS_get_data(9 downto 8),
      DOC(1 downto 0) => S_AXIS_get_data(11 downto 10),
      DOD(1 downto 0) => NLW_stream_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => S_AXIS_ACLK,
      WE => fifo_wren
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[0]\,
      O => \p_0_in__1\(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[1]\,
      I1 => \write_pointer_reg_n_0_[0]\,
      O => \p_0_in__1\(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[2]\,
      I1 => \write_pointer_reg_n_0_[1]\,
      I2 => \write_pointer_reg_n_0_[0]\,
      O => \p_0_in__1\(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EE0EAAA0AA0A"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => S_AXIS_TVALID,
      I2 => \write_pointer_reg_n_0_[3]\,
      I3 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I4 => \read_pointer_reg_n_0_[3]\,
      I5 => mst_exec_state,
      O => write_pointer
    );
\write_pointer[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[3]\,
      I1 => \write_pointer_reg_n_0_[1]\,
      I2 => \write_pointer_reg_n_0_[0]\,
      I3 => \write_pointer_reg_n_0_[2]\,
      O => \p_0_in__1\(3)
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => write_pointer,
      D => \p_0_in__1\(0),
      Q => \write_pointer_reg_n_0_[0]\,
      R => clear
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => write_pointer,
      D => \p_0_in__1\(1),
      Q => \write_pointer_reg_n_0_[1]\,
      R => clear
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => write_pointer,
      D => \p_0_in__1\(2),
      Q => \write_pointer_reg_n_0_[2]\,
      R => clear
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => write_pointer,
      D => \p_0_in__1\(3),
      Q => \write_pointer_reg_n_0_[3]\,
      R => clear
    );
writes_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEEEEEE00000000"
    )
        port map (
      I0 => writes_done,
      I1 => S_AXIS_TLAST,
      I2 => S_AXIS_TVALID,
      I3 => writes_done_i_2_n_0,
      I4 => mst_exec_state,
      I5 => S_AXIS_ARESETN,
      O => writes_done_i_1_n_0
    );
writes_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"ED"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[3]\,
      I1 => S_AXIS_TREADY_INST_0_i_1_n_0,
      I2 => \read_pointer_reg_n_0_[3]\,
      O => writes_done_i_2_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXIS_ACLK,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    pixel_in : in STD_LOGIC_VECTOR ( 96 downto 0 );
    buf_rden : in STD_LOGIC;
    buf_wren : in STD_LOGIC;
    stuck : out STD_LOGIC;
    trans_eff : out STD_LOGIC
  );
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS : entity is 128;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS : entity is "pixel_high_2_M_AXIS";
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS : entity is 24;
end design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS is
  signal \FSM_sequential_buffer_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_buffer_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buffer[63]_i_1_n_0\ : STD_LOGIC;
  signal buffer_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal data_out_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \data_out_reg[127]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_reg[95]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 31 );
  signal \^trans_eff\ : STD_LOGIC;
  signal trans_eff_reg_i_1_n_0 : STD_LOGIC;
  signal trans_eff_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[1]_i_1\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[0]\ : label is "iSTATE:11,iSTATE0:10,iSTATE1:00,iSTATE2:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[1]\ : label is "iSTATE:11,iSTATE0:10,iSTATE1:00,iSTATE2:01";
  attribute SOFT_HLUTNM of \buffer[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \buffer[10]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \buffer[11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \buffer[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \buffer[13]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \buffer[14]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \buffer[15]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \buffer[16]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \buffer[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \buffer[18]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \buffer[19]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \buffer[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \buffer[20]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \buffer[21]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \buffer[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \buffer[23]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \buffer[24]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \buffer[25]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \buffer[26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \buffer[27]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \buffer[28]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \buffer[29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \buffer[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \buffer[30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \buffer[31]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \buffer[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \buffer[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \buffer[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \buffer[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \buffer[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \buffer[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \buffer[9]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_out_reg[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out_reg[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_out_reg[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_out_reg[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_out_reg[13]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_out_reg[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_out_reg[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_out_reg[16]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_out_reg[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_out_reg[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_out_reg[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_out_reg[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out_reg[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_out_reg[21]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_out_reg[22]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_out_reg[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_out_reg[24]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_out_reg[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out_reg[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out_reg[27]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out_reg[28]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out_reg[29]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out_reg[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out_reg[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out_reg[31]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out_reg[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out_reg[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out_reg[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out_reg[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out_reg[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_out_reg[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_out_reg[9]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of stuck_INST_0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of trans_eff_reg_i_1 : label is "soft_lutpair19";
begin
  trans_eff <= \^trans_eff\;
\FSM_sequential_buffer_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5AD2"
    )
        port map (
      I0 => buf_wren,
      I1 => buffer_count(1),
      I2 => buffer_count(0),
      I3 => buf_rden,
      O => \FSM_sequential_buffer_count[0]_i_1_n_0\
    );
\FSM_sequential_buffer_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CEC"
    )
        port map (
      I0 => buf_wren,
      I1 => buffer_count(1),
      I2 => buffer_count(0),
      I3 => buf_rden,
      O => \FSM_sequential_buffer_count[1]_i_1_n_0\
    );
\FSM_sequential_buffer_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => trans_eff_reg_i_2_n_0,
      D => \FSM_sequential_buffer_count[0]_i_1_n_0\,
      Q => buffer_count(0)
    );
\FSM_sequential_buffer_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => trans_eff_reg_i_2_n_0,
      D => \FSM_sequential_buffer_count[1]_i_1_n_0\,
      Q => buffer_count(1)
    );
\buffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(64),
      I1 => buffer_count(1),
      I2 => pixel_in(32),
      O => \buffer\(0)
    );
\buffer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(74),
      I1 => buffer_count(1),
      I2 => pixel_in(42),
      O => \buffer\(10)
    );
\buffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(75),
      I1 => buffer_count(1),
      I2 => pixel_in(43),
      O => \buffer\(11)
    );
\buffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(76),
      I1 => buffer_count(1),
      I2 => pixel_in(44),
      O => \buffer\(12)
    );
\buffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(77),
      I1 => buffer_count(1),
      I2 => pixel_in(45),
      O => \buffer\(13)
    );
\buffer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(78),
      I1 => buffer_count(1),
      I2 => pixel_in(46),
      O => \buffer\(14)
    );
\buffer[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(79),
      I1 => buffer_count(1),
      I2 => pixel_in(47),
      O => \buffer\(15)
    );
\buffer[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(80),
      I1 => buffer_count(1),
      I2 => pixel_in(48),
      O => \buffer\(16)
    );
\buffer[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(81),
      I1 => buffer_count(1),
      I2 => pixel_in(49),
      O => \buffer\(17)
    );
\buffer[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(82),
      I1 => buffer_count(1),
      I2 => pixel_in(50),
      O => \buffer\(18)
    );
\buffer[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(83),
      I1 => buffer_count(1),
      I2 => pixel_in(51),
      O => \buffer\(19)
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(65),
      I1 => buffer_count(1),
      I2 => pixel_in(33),
      O => \buffer\(1)
    );
\buffer[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(84),
      I1 => buffer_count(1),
      I2 => pixel_in(52),
      O => \buffer\(20)
    );
\buffer[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(85),
      I1 => buffer_count(1),
      I2 => pixel_in(53),
      O => \buffer\(21)
    );
\buffer[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(86),
      I1 => buffer_count(1),
      I2 => pixel_in(54),
      O => \buffer\(22)
    );
\buffer[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(87),
      I1 => buffer_count(1),
      I2 => pixel_in(55),
      O => \buffer\(23)
    );
\buffer[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(88),
      I1 => buffer_count(1),
      I2 => pixel_in(56),
      O => \buffer\(24)
    );
\buffer[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(89),
      I1 => buffer_count(1),
      I2 => pixel_in(57),
      O => \buffer\(25)
    );
\buffer[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(90),
      I1 => buffer_count(1),
      I2 => pixel_in(58),
      O => \buffer\(26)
    );
\buffer[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(91),
      I1 => buffer_count(1),
      I2 => pixel_in(59),
      O => \buffer\(27)
    );
\buffer[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(92),
      I1 => buffer_count(1),
      I2 => pixel_in(60),
      O => \buffer\(28)
    );
\buffer[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(93),
      I1 => buffer_count(1),
      I2 => pixel_in(61),
      O => \buffer\(29)
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(66),
      I1 => buffer_count(1),
      I2 => pixel_in(34),
      O => \buffer\(2)
    );
\buffer[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(94),
      I1 => buffer_count(1),
      I2 => pixel_in(62),
      O => \buffer\(30)
    );
\buffer[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80A08000"
    )
        port map (
      I0 => rst_n,
      I1 => buf_rden,
      I2 => buf_wren,
      I3 => buffer_count(1),
      I4 => buffer_count(0),
      O => p_0_in(31)
    );
\buffer[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(95),
      I1 => buffer_count(1),
      I2 => pixel_in(63),
      O => \buffer\(31)
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(67),
      I1 => buffer_count(1),
      I2 => pixel_in(35),
      O => \buffer\(3)
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(68),
      I1 => buffer_count(1),
      I2 => pixel_in(36),
      O => \buffer\(4)
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(69),
      I1 => buffer_count(1),
      I2 => pixel_in(37),
      O => \buffer\(5)
    );
\buffer[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => buffer_count(0),
      I1 => buf_wren,
      I2 => buffer_count(1),
      I3 => buf_rden,
      I4 => rst_n,
      O => \buffer[63]_i_1_n_0\
    );
\buffer[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A000000"
    )
        port map (
      I0 => rst_n,
      I1 => buf_rden,
      I2 => buffer_count(1),
      I3 => buf_wren,
      I4 => buffer_count(0),
      O => p_0_in(63)
    );
\buffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(70),
      I1 => buffer_count(1),
      I2 => pixel_in(38),
      O => \buffer\(6)
    );
\buffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(71),
      I1 => buffer_count(1),
      I2 => pixel_in(39),
      O => \buffer\(7)
    );
\buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(72),
      I1 => buffer_count(1),
      I2 => pixel_in(40),
      O => \buffer\(8)
    );
\buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pixel_in(73),
      I1 => buffer_count(1),
      I2 => pixel_in(41),
      O => \buffer\(9)
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(0),
      Q => \buffer_reg_n_0_[0]\,
      R => '0'
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(10),
      Q => \buffer_reg_n_0_[10]\,
      R => '0'
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(11),
      Q => \buffer_reg_n_0_[11]\,
      R => '0'
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(12),
      Q => \buffer_reg_n_0_[12]\,
      R => '0'
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(13),
      Q => \buffer_reg_n_0_[13]\,
      R => '0'
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(14),
      Q => \buffer_reg_n_0_[14]\,
      R => '0'
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(15),
      Q => \buffer_reg_n_0_[15]\,
      R => '0'
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(16),
      Q => \buffer_reg_n_0_[16]\,
      R => '0'
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(17),
      Q => \buffer_reg_n_0_[17]\,
      R => '0'
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(18),
      Q => \buffer_reg_n_0_[18]\,
      R => '0'
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(19),
      Q => \buffer_reg_n_0_[19]\,
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(1),
      Q => \buffer_reg_n_0_[1]\,
      R => '0'
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(20),
      Q => \buffer_reg_n_0_[20]\,
      R => '0'
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(21),
      Q => \buffer_reg_n_0_[21]\,
      R => '0'
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(22),
      Q => \buffer_reg_n_0_[22]\,
      R => '0'
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(23),
      Q => \buffer_reg_n_0_[23]\,
      R => '0'
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(24),
      Q => \buffer_reg_n_0_[24]\,
      R => '0'
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(25),
      Q => \buffer_reg_n_0_[25]\,
      R => '0'
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(26),
      Q => \buffer_reg_n_0_[26]\,
      R => '0'
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(27),
      Q => \buffer_reg_n_0_[27]\,
      R => '0'
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(28),
      Q => \buffer_reg_n_0_[28]\,
      R => '0'
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(29),
      Q => \buffer_reg_n_0_[29]\,
      R => '0'
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(2),
      Q => \buffer_reg_n_0_[2]\,
      R => '0'
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(30),
      Q => \buffer_reg_n_0_[30]\,
      R => '0'
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(31),
      Q => \buffer_reg_n_0_[31]\,
      R => '0'
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(64),
      Q => \buffer_reg_n_0_[32]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(65),
      Q => \buffer_reg_n_0_[33]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(66),
      Q => \buffer_reg_n_0_[34]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(67),
      Q => \buffer_reg_n_0_[35]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(68),
      Q => \buffer_reg_n_0_[36]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(69),
      Q => \buffer_reg_n_0_[37]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(70),
      Q => \buffer_reg_n_0_[38]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(71),
      Q => \buffer_reg_n_0_[39]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(3),
      Q => \buffer_reg_n_0_[3]\,
      R => '0'
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(72),
      Q => \buffer_reg_n_0_[40]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(73),
      Q => \buffer_reg_n_0_[41]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(74),
      Q => \buffer_reg_n_0_[42]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(75),
      Q => \buffer_reg_n_0_[43]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(76),
      Q => \buffer_reg_n_0_[44]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(77),
      Q => \buffer_reg_n_0_[45]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(78),
      Q => \buffer_reg_n_0_[46]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(79),
      Q => \buffer_reg_n_0_[47]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(80),
      Q => \buffer_reg_n_0_[48]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(81),
      Q => \buffer_reg_n_0_[49]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(4),
      Q => \buffer_reg_n_0_[4]\,
      R => '0'
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(82),
      Q => \buffer_reg_n_0_[50]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(83),
      Q => \buffer_reg_n_0_[51]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(84),
      Q => \buffer_reg_n_0_[52]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(85),
      Q => \buffer_reg_n_0_[53]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(86),
      Q => \buffer_reg_n_0_[54]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(87),
      Q => \buffer_reg_n_0_[55]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(88),
      Q => \buffer_reg_n_0_[56]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(89),
      Q => \buffer_reg_n_0_[57]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(90),
      Q => \buffer_reg_n_0_[58]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(91),
      Q => \buffer_reg_n_0_[59]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(5),
      Q => \buffer_reg_n_0_[5]\,
      R => '0'
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(92),
      Q => \buffer_reg_n_0_[60]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(93),
      Q => \buffer_reg_n_0_[61]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(94),
      Q => \buffer_reg_n_0_[62]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(63),
      D => pixel_in(95),
      Q => \buffer_reg_n_0_[63]\,
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(6),
      Q => \buffer_reg_n_0_[6]\,
      R => '0'
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(7),
      Q => \buffer_reg_n_0_[7]\,
      R => '0'
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(8),
      Q => \buffer_reg_n_0_[8]\,
      R => '0'
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(31),
      D => \buffer\(9),
      Q => \buffer_reg_n_0_[9]\,
      R => '0'
    );
\data_out_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[0]\,
      I1 => buffer_count(1),
      I2 => pixel_in(0),
      O => data_out_reg(0)
    );
\data_out_reg[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(68),
      I1 => buffer_count(0),
      I2 => pixel_in(36),
      I3 => buffer_count(1),
      I4 => pixel_in(4),
      O => data_out_reg(100)
    );
\data_out_reg[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(69),
      I1 => buffer_count(0),
      I2 => pixel_in(37),
      I3 => buffer_count(1),
      I4 => pixel_in(5),
      O => data_out_reg(101)
    );
\data_out_reg[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(70),
      I1 => buffer_count(0),
      I2 => pixel_in(38),
      I3 => buffer_count(1),
      I4 => pixel_in(6),
      O => data_out_reg(102)
    );
\data_out_reg[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(71),
      I1 => buffer_count(0),
      I2 => pixel_in(39),
      I3 => buffer_count(1),
      I4 => pixel_in(7),
      O => data_out_reg(103)
    );
\data_out_reg[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(72),
      I1 => buffer_count(0),
      I2 => pixel_in(40),
      I3 => buffer_count(1),
      I4 => pixel_in(8),
      O => data_out_reg(104)
    );
\data_out_reg[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(73),
      I1 => buffer_count(0),
      I2 => pixel_in(41),
      I3 => buffer_count(1),
      I4 => pixel_in(9),
      O => data_out_reg(105)
    );
\data_out_reg[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(74),
      I1 => buffer_count(0),
      I2 => pixel_in(42),
      I3 => buffer_count(1),
      I4 => pixel_in(10),
      O => data_out_reg(106)
    );
\data_out_reg[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(75),
      I1 => buffer_count(0),
      I2 => pixel_in(43),
      I3 => buffer_count(1),
      I4 => pixel_in(11),
      O => data_out_reg(107)
    );
\data_out_reg[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(76),
      I1 => buffer_count(0),
      I2 => pixel_in(44),
      I3 => buffer_count(1),
      I4 => pixel_in(12),
      O => data_out_reg(108)
    );
\data_out_reg[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(77),
      I1 => buffer_count(0),
      I2 => pixel_in(45),
      I3 => buffer_count(1),
      I4 => pixel_in(13),
      O => data_out_reg(109)
    );
\data_out_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[10]\,
      I1 => buffer_count(1),
      I2 => pixel_in(10),
      O => data_out_reg(10)
    );
\data_out_reg[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(78),
      I1 => buffer_count(0),
      I2 => pixel_in(46),
      I3 => buffer_count(1),
      I4 => pixel_in(14),
      O => data_out_reg(110)
    );
\data_out_reg[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(79),
      I1 => buffer_count(0),
      I2 => pixel_in(47),
      I3 => buffer_count(1),
      I4 => pixel_in(15),
      O => data_out_reg(111)
    );
\data_out_reg[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(80),
      I1 => buffer_count(0),
      I2 => pixel_in(48),
      I3 => buffer_count(1),
      I4 => pixel_in(16),
      O => data_out_reg(112)
    );
\data_out_reg[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(81),
      I1 => buffer_count(0),
      I2 => pixel_in(49),
      I3 => buffer_count(1),
      I4 => pixel_in(17),
      O => data_out_reg(113)
    );
\data_out_reg[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(82),
      I1 => buffer_count(0),
      I2 => pixel_in(50),
      I3 => buffer_count(1),
      I4 => pixel_in(18),
      O => data_out_reg(114)
    );
\data_out_reg[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(83),
      I1 => buffer_count(0),
      I2 => pixel_in(51),
      I3 => buffer_count(1),
      I4 => pixel_in(19),
      O => data_out_reg(115)
    );
\data_out_reg[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(84),
      I1 => buffer_count(0),
      I2 => pixel_in(52),
      I3 => buffer_count(1),
      I4 => pixel_in(20),
      O => data_out_reg(116)
    );
\data_out_reg[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(85),
      I1 => buffer_count(0),
      I2 => pixel_in(53),
      I3 => buffer_count(1),
      I4 => pixel_in(21),
      O => data_out_reg(117)
    );
\data_out_reg[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(86),
      I1 => buffer_count(0),
      I2 => pixel_in(54),
      I3 => buffer_count(1),
      I4 => pixel_in(22),
      O => data_out_reg(118)
    );
\data_out_reg[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(87),
      I1 => buffer_count(0),
      I2 => pixel_in(55),
      I3 => buffer_count(1),
      I4 => pixel_in(23),
      O => data_out_reg(119)
    );
\data_out_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[11]\,
      I1 => buffer_count(1),
      I2 => pixel_in(11),
      O => data_out_reg(11)
    );
\data_out_reg[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(88),
      I1 => buffer_count(0),
      I2 => pixel_in(56),
      I3 => buffer_count(1),
      I4 => pixel_in(24),
      O => data_out_reg(120)
    );
\data_out_reg[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(89),
      I1 => buffer_count(0),
      I2 => pixel_in(57),
      I3 => buffer_count(1),
      I4 => pixel_in(25),
      O => data_out_reg(121)
    );
\data_out_reg[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(90),
      I1 => buffer_count(0),
      I2 => pixel_in(58),
      I3 => buffer_count(1),
      I4 => pixel_in(26),
      O => data_out_reg(122)
    );
\data_out_reg[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(91),
      I1 => buffer_count(0),
      I2 => pixel_in(59),
      I3 => buffer_count(1),
      I4 => pixel_in(27),
      O => data_out_reg(123)
    );
\data_out_reg[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(92),
      I1 => buffer_count(0),
      I2 => pixel_in(60),
      I3 => buffer_count(1),
      I4 => pixel_in(28),
      O => data_out_reg(124)
    );
\data_out_reg[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(93),
      I1 => buffer_count(0),
      I2 => pixel_in(61),
      I3 => buffer_count(1),
      I4 => pixel_in(29),
      O => data_out_reg(125)
    );
\data_out_reg[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(94),
      I1 => buffer_count(0),
      I2 => pixel_in(62),
      I3 => buffer_count(1),
      I4 => pixel_in(30),
      O => data_out_reg(126)
    );
\data_out_reg[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => rst_n,
      I1 => buf_wren,
      I2 => buffer_count(0),
      I3 => buffer_count(1),
      I4 => buf_rden,
      O => \data_out_reg[127]_i_1_n_0\
    );
\data_out_reg[127]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(95),
      I1 => buffer_count(0),
      I2 => pixel_in(63),
      I3 => buffer_count(1),
      I4 => pixel_in(31),
      O => data_out_reg(127)
    );
\data_out_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[12]\,
      I1 => buffer_count(1),
      I2 => pixel_in(12),
      O => data_out_reg(12)
    );
\data_out_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[13]\,
      I1 => buffer_count(1),
      I2 => pixel_in(13),
      O => data_out_reg(13)
    );
\data_out_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[14]\,
      I1 => buffer_count(1),
      I2 => pixel_in(14),
      O => data_out_reg(14)
    );
\data_out_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[15]\,
      I1 => buffer_count(1),
      I2 => pixel_in(15),
      O => data_out_reg(15)
    );
\data_out_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[16]\,
      I1 => buffer_count(1),
      I2 => pixel_in(16),
      O => data_out_reg(16)
    );
\data_out_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[17]\,
      I1 => buffer_count(1),
      I2 => pixel_in(17),
      O => data_out_reg(17)
    );
\data_out_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[18]\,
      I1 => buffer_count(1),
      I2 => pixel_in(18),
      O => data_out_reg(18)
    );
\data_out_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[19]\,
      I1 => buffer_count(1),
      I2 => pixel_in(19),
      O => data_out_reg(19)
    );
\data_out_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[1]\,
      I1 => buffer_count(1),
      I2 => pixel_in(1),
      O => data_out_reg(1)
    );
\data_out_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[20]\,
      I1 => buffer_count(1),
      I2 => pixel_in(20),
      O => data_out_reg(20)
    );
\data_out_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[21]\,
      I1 => buffer_count(1),
      I2 => pixel_in(21),
      O => data_out_reg(21)
    );
\data_out_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[22]\,
      I1 => buffer_count(1),
      I2 => pixel_in(22),
      O => data_out_reg(22)
    );
\data_out_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[23]\,
      I1 => buffer_count(1),
      I2 => pixel_in(23),
      O => data_out_reg(23)
    );
\data_out_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[24]\,
      I1 => buffer_count(1),
      I2 => pixel_in(24),
      O => data_out_reg(24)
    );
\data_out_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[25]\,
      I1 => buffer_count(1),
      I2 => pixel_in(25),
      O => data_out_reg(25)
    );
\data_out_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[26]\,
      I1 => buffer_count(1),
      I2 => pixel_in(26),
      O => data_out_reg(26)
    );
\data_out_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[27]\,
      I1 => buffer_count(1),
      I2 => pixel_in(27),
      O => data_out_reg(27)
    );
\data_out_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[28]\,
      I1 => buffer_count(1),
      I2 => pixel_in(28),
      O => data_out_reg(28)
    );
\data_out_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[29]\,
      I1 => buffer_count(1),
      I2 => pixel_in(29),
      O => data_out_reg(29)
    );
\data_out_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[2]\,
      I1 => buffer_count(1),
      I2 => pixel_in(2),
      O => data_out_reg(2)
    );
\data_out_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[30]\,
      I1 => buffer_count(1),
      I2 => pixel_in(30),
      O => data_out_reg(30)
    );
\data_out_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[31]\,
      I1 => buffer_count(1),
      I2 => pixel_in(31),
      O => data_out_reg(31)
    );
\data_out_reg[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(0),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[32]\,
      I3 => buffer_count(1),
      I4 => pixel_in(32),
      O => data_out_reg(32)
    );
\data_out_reg[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(1),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[33]\,
      I3 => buffer_count(1),
      I4 => pixel_in(33),
      O => data_out_reg(33)
    );
\data_out_reg[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(2),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[34]\,
      I3 => buffer_count(1),
      I4 => pixel_in(34),
      O => data_out_reg(34)
    );
\data_out_reg[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(3),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[35]\,
      I3 => buffer_count(1),
      I4 => pixel_in(35),
      O => data_out_reg(35)
    );
\data_out_reg[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(4),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[36]\,
      I3 => buffer_count(1),
      I4 => pixel_in(36),
      O => data_out_reg(36)
    );
\data_out_reg[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(5),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[37]\,
      I3 => buffer_count(1),
      I4 => pixel_in(37),
      O => data_out_reg(37)
    );
\data_out_reg[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(6),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[38]\,
      I3 => buffer_count(1),
      I4 => pixel_in(38),
      O => data_out_reg(38)
    );
\data_out_reg[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(7),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[39]\,
      I3 => buffer_count(1),
      I4 => pixel_in(39),
      O => data_out_reg(39)
    );
\data_out_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[3]\,
      I1 => buffer_count(1),
      I2 => pixel_in(3),
      O => data_out_reg(3)
    );
\data_out_reg[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(8),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[40]\,
      I3 => buffer_count(1),
      I4 => pixel_in(40),
      O => data_out_reg(40)
    );
\data_out_reg[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(9),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[41]\,
      I3 => buffer_count(1),
      I4 => pixel_in(41),
      O => data_out_reg(41)
    );
\data_out_reg[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(10),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[42]\,
      I3 => buffer_count(1),
      I4 => pixel_in(42),
      O => data_out_reg(42)
    );
\data_out_reg[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(11),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[43]\,
      I3 => buffer_count(1),
      I4 => pixel_in(43),
      O => data_out_reg(43)
    );
\data_out_reg[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(12),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[44]\,
      I3 => buffer_count(1),
      I4 => pixel_in(44),
      O => data_out_reg(44)
    );
\data_out_reg[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(13),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[45]\,
      I3 => buffer_count(1),
      I4 => pixel_in(45),
      O => data_out_reg(45)
    );
\data_out_reg[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(14),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[46]\,
      I3 => buffer_count(1),
      I4 => pixel_in(46),
      O => data_out_reg(46)
    );
\data_out_reg[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(15),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[47]\,
      I3 => buffer_count(1),
      I4 => pixel_in(47),
      O => data_out_reg(47)
    );
\data_out_reg[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(16),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[48]\,
      I3 => buffer_count(1),
      I4 => pixel_in(48),
      O => data_out_reg(48)
    );
\data_out_reg[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(17),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[49]\,
      I3 => buffer_count(1),
      I4 => pixel_in(49),
      O => data_out_reg(49)
    );
\data_out_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[4]\,
      I1 => buffer_count(1),
      I2 => pixel_in(4),
      O => data_out_reg(4)
    );
\data_out_reg[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(18),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[50]\,
      I3 => buffer_count(1),
      I4 => pixel_in(50),
      O => data_out_reg(50)
    );
\data_out_reg[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(19),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[51]\,
      I3 => buffer_count(1),
      I4 => pixel_in(51),
      O => data_out_reg(51)
    );
\data_out_reg[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(20),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[52]\,
      I3 => buffer_count(1),
      I4 => pixel_in(52),
      O => data_out_reg(52)
    );
\data_out_reg[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(21),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[53]\,
      I3 => buffer_count(1),
      I4 => pixel_in(53),
      O => data_out_reg(53)
    );
\data_out_reg[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(22),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[54]\,
      I3 => buffer_count(1),
      I4 => pixel_in(54),
      O => data_out_reg(54)
    );
\data_out_reg[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(23),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[55]\,
      I3 => buffer_count(1),
      I4 => pixel_in(55),
      O => data_out_reg(55)
    );
\data_out_reg[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(24),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[56]\,
      I3 => buffer_count(1),
      I4 => pixel_in(56),
      O => data_out_reg(56)
    );
\data_out_reg[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(25),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[57]\,
      I3 => buffer_count(1),
      I4 => pixel_in(57),
      O => data_out_reg(57)
    );
\data_out_reg[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(26),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[58]\,
      I3 => buffer_count(1),
      I4 => pixel_in(58),
      O => data_out_reg(58)
    );
\data_out_reg[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(27),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[59]\,
      I3 => buffer_count(1),
      I4 => pixel_in(59),
      O => data_out_reg(59)
    );
\data_out_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[5]\,
      I1 => buffer_count(1),
      I2 => pixel_in(5),
      O => data_out_reg(5)
    );
\data_out_reg[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(28),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[60]\,
      I3 => buffer_count(1),
      I4 => pixel_in(60),
      O => data_out_reg(60)
    );
\data_out_reg[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(29),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[61]\,
      I3 => buffer_count(1),
      I4 => pixel_in(61),
      O => data_out_reg(61)
    );
\data_out_reg[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(30),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[62]\,
      I3 => buffer_count(1),
      I4 => pixel_in(62),
      O => data_out_reg(62)
    );
\data_out_reg[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(31),
      I1 => buffer_count(0),
      I2 => \buffer_reg_n_0_[63]\,
      I3 => buffer_count(1),
      I4 => pixel_in(63),
      O => data_out_reg(63)
    );
\data_out_reg[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(32),
      I1 => buffer_count(0),
      I2 => pixel_in(0),
      I3 => buffer_count(1),
      I4 => pixel_in(64),
      O => data_out_reg(64)
    );
\data_out_reg[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(33),
      I1 => buffer_count(0),
      I2 => pixel_in(1),
      I3 => buffer_count(1),
      I4 => pixel_in(65),
      O => data_out_reg(65)
    );
\data_out_reg[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(34),
      I1 => buffer_count(0),
      I2 => pixel_in(2),
      I3 => buffer_count(1),
      I4 => pixel_in(66),
      O => data_out_reg(66)
    );
\data_out_reg[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(35),
      I1 => buffer_count(0),
      I2 => pixel_in(3),
      I3 => buffer_count(1),
      I4 => pixel_in(67),
      O => data_out_reg(67)
    );
\data_out_reg[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(36),
      I1 => buffer_count(0),
      I2 => pixel_in(4),
      I3 => buffer_count(1),
      I4 => pixel_in(68),
      O => data_out_reg(68)
    );
\data_out_reg[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(37),
      I1 => buffer_count(0),
      I2 => pixel_in(5),
      I3 => buffer_count(1),
      I4 => pixel_in(69),
      O => data_out_reg(69)
    );
\data_out_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[6]\,
      I1 => buffer_count(1),
      I2 => pixel_in(6),
      O => data_out_reg(6)
    );
\data_out_reg[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(38),
      I1 => buffer_count(0),
      I2 => pixel_in(6),
      I3 => buffer_count(1),
      I4 => pixel_in(70),
      O => data_out_reg(70)
    );
\data_out_reg[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(39),
      I1 => buffer_count(0),
      I2 => pixel_in(7),
      I3 => buffer_count(1),
      I4 => pixel_in(71),
      O => data_out_reg(71)
    );
\data_out_reg[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(40),
      I1 => buffer_count(0),
      I2 => pixel_in(8),
      I3 => buffer_count(1),
      I4 => pixel_in(72),
      O => data_out_reg(72)
    );
\data_out_reg[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(41),
      I1 => buffer_count(0),
      I2 => pixel_in(9),
      I3 => buffer_count(1),
      I4 => pixel_in(73),
      O => data_out_reg(73)
    );
\data_out_reg[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(42),
      I1 => buffer_count(0),
      I2 => pixel_in(10),
      I3 => buffer_count(1),
      I4 => pixel_in(74),
      O => data_out_reg(74)
    );
\data_out_reg[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(43),
      I1 => buffer_count(0),
      I2 => pixel_in(11),
      I3 => buffer_count(1),
      I4 => pixel_in(75),
      O => data_out_reg(75)
    );
\data_out_reg[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(44),
      I1 => buffer_count(0),
      I2 => pixel_in(12),
      I3 => buffer_count(1),
      I4 => pixel_in(76),
      O => data_out_reg(76)
    );
\data_out_reg[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(45),
      I1 => buffer_count(0),
      I2 => pixel_in(13),
      I3 => buffer_count(1),
      I4 => pixel_in(77),
      O => data_out_reg(77)
    );
\data_out_reg[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(46),
      I1 => buffer_count(0),
      I2 => pixel_in(14),
      I3 => buffer_count(1),
      I4 => pixel_in(78),
      O => data_out_reg(78)
    );
\data_out_reg[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(47),
      I1 => buffer_count(0),
      I2 => pixel_in(15),
      I3 => buffer_count(1),
      I4 => pixel_in(79),
      O => data_out_reg(79)
    );
\data_out_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[7]\,
      I1 => buffer_count(1),
      I2 => pixel_in(7),
      O => data_out_reg(7)
    );
\data_out_reg[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(48),
      I1 => buffer_count(0),
      I2 => pixel_in(16),
      I3 => buffer_count(1),
      I4 => pixel_in(80),
      O => data_out_reg(80)
    );
\data_out_reg[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(49),
      I1 => buffer_count(0),
      I2 => pixel_in(17),
      I3 => buffer_count(1),
      I4 => pixel_in(81),
      O => data_out_reg(81)
    );
\data_out_reg[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(50),
      I1 => buffer_count(0),
      I2 => pixel_in(18),
      I3 => buffer_count(1),
      I4 => pixel_in(82),
      O => data_out_reg(82)
    );
\data_out_reg[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(51),
      I1 => buffer_count(0),
      I2 => pixel_in(19),
      I3 => buffer_count(1),
      I4 => pixel_in(83),
      O => data_out_reg(83)
    );
\data_out_reg[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(52),
      I1 => buffer_count(0),
      I2 => pixel_in(20),
      I3 => buffer_count(1),
      I4 => pixel_in(84),
      O => data_out_reg(84)
    );
\data_out_reg[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(53),
      I1 => buffer_count(0),
      I2 => pixel_in(21),
      I3 => buffer_count(1),
      I4 => pixel_in(85),
      O => data_out_reg(85)
    );
\data_out_reg[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(54),
      I1 => buffer_count(0),
      I2 => pixel_in(22),
      I3 => buffer_count(1),
      I4 => pixel_in(86),
      O => data_out_reg(86)
    );
\data_out_reg[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(55),
      I1 => buffer_count(0),
      I2 => pixel_in(23),
      I3 => buffer_count(1),
      I4 => pixel_in(87),
      O => data_out_reg(87)
    );
\data_out_reg[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(56),
      I1 => buffer_count(0),
      I2 => pixel_in(24),
      I3 => buffer_count(1),
      I4 => pixel_in(88),
      O => data_out_reg(88)
    );
\data_out_reg[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(57),
      I1 => buffer_count(0),
      I2 => pixel_in(25),
      I3 => buffer_count(1),
      I4 => pixel_in(89),
      O => data_out_reg(89)
    );
\data_out_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[8]\,
      I1 => buffer_count(1),
      I2 => pixel_in(8),
      O => data_out_reg(8)
    );
\data_out_reg[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(58),
      I1 => buffer_count(0),
      I2 => pixel_in(26),
      I3 => buffer_count(1),
      I4 => pixel_in(90),
      O => data_out_reg(90)
    );
\data_out_reg[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(59),
      I1 => buffer_count(0),
      I2 => pixel_in(27),
      I3 => buffer_count(1),
      I4 => pixel_in(91),
      O => data_out_reg(91)
    );
\data_out_reg[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(60),
      I1 => buffer_count(0),
      I2 => pixel_in(28),
      I3 => buffer_count(1),
      I4 => pixel_in(92),
      O => data_out_reg(92)
    );
\data_out_reg[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(61),
      I1 => buffer_count(0),
      I2 => pixel_in(29),
      I3 => buffer_count(1),
      I4 => pixel_in(93),
      O => data_out_reg(93)
    );
\data_out_reg[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(62),
      I1 => buffer_count(0),
      I2 => pixel_in(30),
      I3 => buffer_count(1),
      I4 => pixel_in(94),
      O => data_out_reg(94)
    );
\data_out_reg[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0200020"
    )
        port map (
      I0 => rst_n,
      I1 => buffer_count(0),
      I2 => buf_wren,
      I3 => buffer_count(1),
      I4 => buf_rden,
      O => \data_out_reg[95]_i_1_n_0\
    );
\data_out_reg[95]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(63),
      I1 => buffer_count(0),
      I2 => pixel_in(31),
      I3 => buffer_count(1),
      I4 => pixel_in(95),
      O => data_out_reg(95)
    );
\data_out_reg[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(64),
      I1 => buffer_count(0),
      I2 => pixel_in(32),
      I3 => buffer_count(1),
      I4 => pixel_in(0),
      O => data_out_reg(96)
    );
\data_out_reg[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(65),
      I1 => buffer_count(0),
      I2 => pixel_in(33),
      I3 => buffer_count(1),
      I4 => pixel_in(1),
      O => data_out_reg(97)
    );
\data_out_reg[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(66),
      I1 => buffer_count(0),
      I2 => pixel_in(34),
      I3 => buffer_count(1),
      I4 => pixel_in(2),
      O => data_out_reg(98)
    );
\data_out_reg[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => pixel_in(67),
      I1 => buffer_count(0),
      I2 => pixel_in(35),
      I3 => buffer_count(1),
      I4 => pixel_in(3),
      O => data_out_reg(99)
    );
\data_out_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \buffer_reg_n_0_[9]\,
      I1 => buffer_count(1),
      I2 => pixel_in(9),
      O => data_out_reg(9)
    );
\data_out_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(0),
      Q => data_out(0),
      R => '0'
    );
\data_out_reg_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(100),
      Q => data_out(100),
      R => '0'
    );
\data_out_reg_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(101),
      Q => data_out(101),
      R => '0'
    );
\data_out_reg_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(102),
      Q => data_out(102),
      R => '0'
    );
\data_out_reg_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(103),
      Q => data_out(103),
      R => '0'
    );
\data_out_reg_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(104),
      Q => data_out(104),
      R => '0'
    );
\data_out_reg_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(105),
      Q => data_out(105),
      R => '0'
    );
\data_out_reg_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(106),
      Q => data_out(106),
      R => '0'
    );
\data_out_reg_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(107),
      Q => data_out(107),
      R => '0'
    );
\data_out_reg_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(108),
      Q => data_out(108),
      R => '0'
    );
\data_out_reg_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(109),
      Q => data_out(109),
      R => '0'
    );
\data_out_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(10),
      Q => data_out(10),
      R => '0'
    );
\data_out_reg_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(110),
      Q => data_out(110),
      R => '0'
    );
\data_out_reg_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(111),
      Q => data_out(111),
      R => '0'
    );
\data_out_reg_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(112),
      Q => data_out(112),
      R => '0'
    );
\data_out_reg_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(113),
      Q => data_out(113),
      R => '0'
    );
\data_out_reg_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(114),
      Q => data_out(114),
      R => '0'
    );
\data_out_reg_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(115),
      Q => data_out(115),
      R => '0'
    );
\data_out_reg_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(116),
      Q => data_out(116),
      R => '0'
    );
\data_out_reg_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(117),
      Q => data_out(117),
      R => '0'
    );
\data_out_reg_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(118),
      Q => data_out(118),
      R => '0'
    );
\data_out_reg_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(119),
      Q => data_out(119),
      R => '0'
    );
\data_out_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(11),
      Q => data_out(11),
      R => '0'
    );
\data_out_reg_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(120),
      Q => data_out(120),
      R => '0'
    );
\data_out_reg_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(121),
      Q => data_out(121),
      R => '0'
    );
\data_out_reg_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(122),
      Q => data_out(122),
      R => '0'
    );
\data_out_reg_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(123),
      Q => data_out(123),
      R => '0'
    );
\data_out_reg_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(124),
      Q => data_out(124),
      R => '0'
    );
\data_out_reg_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(125),
      Q => data_out(125),
      R => '0'
    );
\data_out_reg_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(126),
      Q => data_out(126),
      R => '0'
    );
\data_out_reg_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(127),
      Q => data_out(127),
      R => '0'
    );
\data_out_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(12),
      Q => data_out(12),
      R => '0'
    );
\data_out_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(13),
      Q => data_out(13),
      R => '0'
    );
\data_out_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(14),
      Q => data_out(14),
      R => '0'
    );
\data_out_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(15),
      Q => data_out(15),
      R => '0'
    );
\data_out_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(16),
      Q => data_out(16),
      R => '0'
    );
\data_out_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(17),
      Q => data_out(17),
      R => '0'
    );
\data_out_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(18),
      Q => data_out(18),
      R => '0'
    );
\data_out_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(19),
      Q => data_out(19),
      R => '0'
    );
\data_out_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(1),
      Q => data_out(1),
      R => '0'
    );
\data_out_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(20),
      Q => data_out(20),
      R => '0'
    );
\data_out_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(21),
      Q => data_out(21),
      R => '0'
    );
\data_out_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(22),
      Q => data_out(22),
      R => '0'
    );
\data_out_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(23),
      Q => data_out(23),
      R => '0'
    );
\data_out_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(24),
      Q => data_out(24),
      R => '0'
    );
\data_out_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(25),
      Q => data_out(25),
      R => '0'
    );
\data_out_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(26),
      Q => data_out(26),
      R => '0'
    );
\data_out_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(27),
      Q => data_out(27),
      R => '0'
    );
\data_out_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(28),
      Q => data_out(28),
      R => '0'
    );
\data_out_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(29),
      Q => data_out(29),
      R => '0'
    );
\data_out_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(2),
      Q => data_out(2),
      R => '0'
    );
\data_out_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(30),
      Q => data_out(30),
      R => '0'
    );
\data_out_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(31),
      Q => data_out(31),
      R => '0'
    );
\data_out_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(32),
      Q => data_out(32),
      R => '0'
    );
\data_out_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(33),
      Q => data_out(33),
      R => '0'
    );
\data_out_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(34),
      Q => data_out(34),
      R => '0'
    );
\data_out_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(35),
      Q => data_out(35),
      R => '0'
    );
\data_out_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(36),
      Q => data_out(36),
      R => '0'
    );
\data_out_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(37),
      Q => data_out(37),
      R => '0'
    );
\data_out_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(38),
      Q => data_out(38),
      R => '0'
    );
\data_out_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(39),
      Q => data_out(39),
      R => '0'
    );
\data_out_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(3),
      Q => data_out(3),
      R => '0'
    );
\data_out_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(40),
      Q => data_out(40),
      R => '0'
    );
\data_out_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(41),
      Q => data_out(41),
      R => '0'
    );
\data_out_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(42),
      Q => data_out(42),
      R => '0'
    );
\data_out_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(43),
      Q => data_out(43),
      R => '0'
    );
\data_out_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(44),
      Q => data_out(44),
      R => '0'
    );
\data_out_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(45),
      Q => data_out(45),
      R => '0'
    );
\data_out_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(46),
      Q => data_out(46),
      R => '0'
    );
\data_out_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(47),
      Q => data_out(47),
      R => '0'
    );
\data_out_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(48),
      Q => data_out(48),
      R => '0'
    );
\data_out_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(49),
      Q => data_out(49),
      R => '0'
    );
\data_out_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(4),
      Q => data_out(4),
      R => '0'
    );
\data_out_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(50),
      Q => data_out(50),
      R => '0'
    );
\data_out_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(51),
      Q => data_out(51),
      R => '0'
    );
\data_out_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(52),
      Q => data_out(52),
      R => '0'
    );
\data_out_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(53),
      Q => data_out(53),
      R => '0'
    );
\data_out_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(54),
      Q => data_out(54),
      R => '0'
    );
\data_out_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(55),
      Q => data_out(55),
      R => '0'
    );
\data_out_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(56),
      Q => data_out(56),
      R => '0'
    );
\data_out_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(57),
      Q => data_out(57),
      R => '0'
    );
\data_out_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(58),
      Q => data_out(58),
      R => '0'
    );
\data_out_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(59),
      Q => data_out(59),
      R => '0'
    );
\data_out_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(5),
      Q => data_out(5),
      R => '0'
    );
\data_out_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(60),
      Q => data_out(60),
      R => '0'
    );
\data_out_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(61),
      Q => data_out(61),
      R => '0'
    );
\data_out_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(62),
      Q => data_out(62),
      R => '0'
    );
\data_out_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(63),
      Q => data_out(63),
      R => '0'
    );
\data_out_reg_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(64),
      Q => data_out(64),
      R => '0'
    );
\data_out_reg_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(65),
      Q => data_out(65),
      R => '0'
    );
\data_out_reg_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(66),
      Q => data_out(66),
      R => '0'
    );
\data_out_reg_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(67),
      Q => data_out(67),
      R => '0'
    );
\data_out_reg_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(68),
      Q => data_out(68),
      R => '0'
    );
\data_out_reg_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(69),
      Q => data_out(69),
      R => '0'
    );
\data_out_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(6),
      Q => data_out(6),
      R => '0'
    );
\data_out_reg_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(70),
      Q => data_out(70),
      R => '0'
    );
\data_out_reg_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(71),
      Q => data_out(71),
      R => '0'
    );
\data_out_reg_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(72),
      Q => data_out(72),
      R => '0'
    );
\data_out_reg_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(73),
      Q => data_out(73),
      R => '0'
    );
\data_out_reg_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(74),
      Q => data_out(74),
      R => '0'
    );
\data_out_reg_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(75),
      Q => data_out(75),
      R => '0'
    );
\data_out_reg_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(76),
      Q => data_out(76),
      R => '0'
    );
\data_out_reg_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(77),
      Q => data_out(77),
      R => '0'
    );
\data_out_reg_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(78),
      Q => data_out(78),
      R => '0'
    );
\data_out_reg_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(79),
      Q => data_out(79),
      R => '0'
    );
\data_out_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(7),
      Q => data_out(7),
      R => '0'
    );
\data_out_reg_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(80),
      Q => data_out(80),
      R => '0'
    );
\data_out_reg_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(81),
      Q => data_out(81),
      R => '0'
    );
\data_out_reg_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(82),
      Q => data_out(82),
      R => '0'
    );
\data_out_reg_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(83),
      Q => data_out(83),
      R => '0'
    );
\data_out_reg_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(84),
      Q => data_out(84),
      R => '0'
    );
\data_out_reg_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(85),
      Q => data_out(85),
      R => '0'
    );
\data_out_reg_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(86),
      Q => data_out(86),
      R => '0'
    );
\data_out_reg_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(87),
      Q => data_out(87),
      R => '0'
    );
\data_out_reg_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(88),
      Q => data_out(88),
      R => '0'
    );
\data_out_reg_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(89),
      Q => data_out(89),
      R => '0'
    );
\data_out_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(8),
      Q => data_out(8),
      R => '0'
    );
\data_out_reg_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(90),
      Q => data_out(90),
      R => '0'
    );
\data_out_reg_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(91),
      Q => data_out(91),
      R => '0'
    );
\data_out_reg_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(92),
      Q => data_out(92),
      R => '0'
    );
\data_out_reg_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(93),
      Q => data_out(93),
      R => '0'
    );
\data_out_reg_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(94),
      Q => data_out(94),
      R => '0'
    );
\data_out_reg_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(95),
      Q => data_out(95),
      R => '0'
    );
\data_out_reg_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(96),
      Q => data_out(96),
      R => '0'
    );
\data_out_reg_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(97),
      Q => data_out(97),
      R => '0'
    );
\data_out_reg_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(98),
      Q => data_out(98),
      R => '0'
    );
\data_out_reg_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[127]_i_1_n_0\,
      D => data_out_reg(99),
      Q => data_out(99),
      R => '0'
    );
\data_out_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out_reg[95]_i_1_n_0\,
      D => data_out_reg(9),
      Q => data_out(9),
      R => '0'
    );
stuck_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => buffer_count(1),
      I1 => buf_rden,
      O => stuck
    );
trans_eff_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2F2E202"
    )
        port map (
      I0 => \^trans_eff\,
      I1 => buf_rden,
      I2 => buf_wren,
      I3 => buffer_count(1),
      I4 => buffer_count(0),
      O => trans_eff_reg_i_1_n_0
    );
trans_eff_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => trans_eff_reg_i_2_n_0
    );
trans_eff_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => trans_eff_reg_i_2_n_0,
      D => trans_eff_reg_i_1_n_0,
      Q => \^trans_eff\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Upsampling_Bayes_0_0_Upsampling_Bayes is
  port (
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes : entity is "Upsampling_Bayes";
end design_1_Upsampling_Bayes_0_0_Upsampling_Bayes;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes is
  signal S_AXIS_2_pixel_low_0_i_1_n_0 : STD_LOGIC;
  signal S_AXIS_2_pixel_low_0_i_2_n_0 : STD_LOGIC;
  signal Upsampling_Bayes_S00_AXIS_inst_i_1_n_0 : STD_LOGIC;
  signal axis2pixel_eff : STD_LOGIC;
  signal axis2pixel_stuck : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of axis2pixel_stuck : signal is std.standard.true;
  signal m_axis_send_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of m_axis_send_data : signal is std.standard.true;
  signal m_axis_stuck : STD_LOGIC;
  signal pixel2axis_eff : STD_LOGIC;
  signal pixel2axis_stuck : STD_LOGIC;
  signal pixel_high : STD_LOGIC_VECTOR ( 95 downto 0 );
  attribute MARK_DEBUG of pixel_high : signal is std.standard.true;
  signal pixel_high_2_M_AXIS_0_i_1_n_0 : STD_LOGIC;
  signal pixel_low : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of pixel_low : signal is std.standard.true;
  signal s_axis_empty : STD_LOGIC;
  attribute MARK_DEBUG of s_axis_empty : signal is std.standard.true;
  signal s_axis_get_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of s_axis_get_data : signal is std.standard.true;
  signal sr_busy : STD_LOGIC;
  attribute MARK_DEBUG of sr_busy : signal is std.standard.true;
  signal NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of S_AXIS_2_pixel_low_0 : label is 32;
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of S_AXIS_2_pixel_low_0 : label is 24;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of Upsampling_Bayes_M00_AXIS_inst : label is 128;
  attribute C_M_START_COUNT : integer;
  attribute C_M_START_COUNT of Upsampling_Bayes_M00_AXIS_inst : label is 16;
  attribute IDLE : string;
  attribute IDLE of Upsampling_Bayes_M00_AXIS_inst : label is "2'b00";
  attribute INIT_COUNTER : string;
  attribute INIT_COUNTER of Upsampling_Bayes_M00_AXIS_inst : label is "2'b01";
  attribute PIXEL_WIDTH of Upsampling_Bayes_M00_AXIS_inst : label is 24;
  attribute ROW_PIXEL_COUNT : integer;
  attribute ROW_PIXEL_COUNT of Upsampling_Bayes_M00_AXIS_inst : label is 800;
  attribute ROW_SEND_COUNT : integer;
  attribute ROW_SEND_COUNT of Upsampling_Bayes_M00_AXIS_inst : label is 600;
  attribute ROW_SEND_COUNT_BITS : integer;
  attribute ROW_SEND_COUNT_BITS of Upsampling_Bayes_M00_AXIS_inst : label is 10;
  attribute SEND_STREAM : string;
  attribute SEND_STREAM of Upsampling_Bayes_M00_AXIS_inst : label is "2'b10";
  attribute WAIT_COUNT_BITS : integer;
  attribute WAIT_COUNT_BITS of Upsampling_Bayes_M00_AXIS_inst : label is 4;
  attribute WORD_OF_OUTPUT_BUFFER : integer;
  attribute WORD_OF_OUTPUT_BUFFER of Upsampling_Bayes_M00_AXIS_inst : label is 3;
  attribute bit_num : integer;
  attribute bit_num of Upsampling_Bayes_M00_AXIS_inst : label is 2;
  attribute C_S_AXIS_TDATA_WIDTH of Upsampling_Bayes_S00_AXIS_inst : label is 32;
  attribute IDLE of Upsampling_Bayes_S00_AXIS_inst : label is "2'b00";
  attribute NUMBER_OF_INPUT_WORDS : integer;
  attribute NUMBER_OF_INPUT_WORDS of Upsampling_Bayes_S00_AXIS_inst : label is 8;
  attribute WRITE_FIFO : string;
  attribute WRITE_FIFO of Upsampling_Bayes_S00_AXIS_inst : label is "2'b01";
  attribute bit_num of Upsampling_Bayes_S00_AXIS_inst : label is 3;
  attribute C_M_AXIS_TDATA_WIDTH of pixel_high_2_M_AXIS_0 : label is 128;
  attribute PIXEL_WIDTH of pixel_high_2_M_AXIS_0 : label is 24;
begin
S_AXIS_2_pixel_low_0: entity work.design_1_Upsampling_Bayes_0_0_S_AXIS_2_pixel_low
     port map (
      buf_rden => S_AXIS_2_pixel_low_0_i_1_n_0,
      buf_wren => S_AXIS_2_pixel_low_0_i_2_n_0,
      clk => clk,
      data_in(31 downto 0) => s_axis_get_data(31 downto 0),
      pixel_out(23 downto 0) => pixel_low(23 downto 0),
      rst_n => rst_n,
      stuck => axis2pixel_stuck,
      trans_eff => axis2pixel_eff
    );
S_AXIS_2_pixel_low_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel2axis_stuck,
      O => S_AXIS_2_pixel_low_0_i_1_n_0
    );
S_AXIS_2_pixel_low_0_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_empty,
      O => S_AXIS_2_pixel_low_0_i_2_n_0
    );
Upsampling_Bayes_M00_AXIS_inst: entity work.design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS
     port map (
      M_AXIS_ACLK => m00_axis_aclk,
      M_AXIS_ARESETN => m00_axis_aresetn,
      M_AXIS_TDATA(127 downto 0) => m00_axis_tdata(127 downto 0),
      M_AXIS_TLAST => m00_axis_tlast,
      M_AXIS_TREADY => m00_axis_tready,
      M_AXIS_TSTRB(15 downto 0) => NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED(15 downto 0),
      M_AXIS_TVALID => m00_axis_tvalid,
      M_AXIS_send_data(127 downto 0) => m_axis_send_data(127 downto 0),
      stuck => m_axis_stuck,
      wren => pixel2axis_eff
    );
Upsampling_Bayes_S00_AXIS_inst: entity work.design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_S00_AXIS
     port map (
      S_AXIS_ACLK => s00_axis_aclk,
      S_AXIS_ARESETN => s00_axis_aresetn,
      S_AXIS_TDATA(31 downto 0) => s00_axis_tdata(31 downto 0),
      S_AXIS_TLAST => s00_axis_tlast,
      S_AXIS_TREADY => s00_axis_tready,
      S_AXIS_TSTRB(3 downto 0) => B"0000",
      S_AXIS_TVALID => s00_axis_tvalid,
      S_AXIS_get_data(31 downto 0) => s_axis_get_data(31 downto 0),
      fifo_empty_flag => s_axis_empty,
      fifo_rden => Upsampling_Bayes_S00_AXIS_inst_i_1_n_0
    );
Upsampling_Bayes_S00_AXIS_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis2pixel_stuck,
      O => Upsampling_Bayes_S00_AXIS_inst_i_1_n_0
    );
insti_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sr_busy
    );
pixel_high_2_M_AXIS_0: entity work.design_1_Upsampling_Bayes_0_0_pixel_high_2_M_AXIS
     port map (
      buf_rden => pixel_high_2_M_AXIS_0_i_1_n_0,
      buf_wren => axis2pixel_eff,
      clk => clk,
      data_out(127 downto 0) => m_axis_send_data(127 downto 0),
      pixel_in(96) => '0',
      pixel_in(95 downto 0) => pixel_high(95 downto 0),
      rst_n => rst_n,
      stuck => pixel2axis_stuck,
      trans_eff => pixel2axis_eff
    );
pixel_high_2_M_AXIS_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_stuck,
      O => pixel_high_2_M_AXIS_0_i_1_n_0
    );
pixel_high_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(23),
      O => pixel_high(95)
    );
\pixel_high_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(22),
      O => pixel_high(94)
    );
\pixel_high_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(21),
      O => pixel_high(93)
    );
\pixel_high_inst__10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(12),
      O => pixel_high(84)
    );
\pixel_high_inst__11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(11),
      O => pixel_high(83)
    );
\pixel_high_inst__12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(10),
      O => pixel_high(82)
    );
\pixel_high_inst__13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(9),
      O => pixel_high(81)
    );
\pixel_high_inst__14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(8),
      O => pixel_high(80)
    );
\pixel_high_inst__15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(7),
      O => pixel_high(79)
    );
\pixel_high_inst__16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(6),
      O => pixel_high(78)
    );
\pixel_high_inst__17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(5),
      O => pixel_high(77)
    );
\pixel_high_inst__18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(4),
      O => pixel_high(76)
    );
\pixel_high_inst__19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(3),
      O => pixel_high(75)
    );
\pixel_high_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(20),
      O => pixel_high(92)
    );
\pixel_high_inst__20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(2),
      O => pixel_high(74)
    );
\pixel_high_inst__21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(1),
      O => pixel_high(73)
    );
\pixel_high_inst__22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(0),
      O => pixel_high(72)
    );
\pixel_high_inst__23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(23),
      O => pixel_high(71)
    );
\pixel_high_inst__24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(22),
      O => pixel_high(70)
    );
\pixel_high_inst__25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(21),
      O => pixel_high(69)
    );
\pixel_high_inst__26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(20),
      O => pixel_high(68)
    );
\pixel_high_inst__27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(19),
      O => pixel_high(67)
    );
\pixel_high_inst__28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(18),
      O => pixel_high(66)
    );
\pixel_high_inst__29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(17),
      O => pixel_high(65)
    );
\pixel_high_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(19),
      O => pixel_high(91)
    );
\pixel_high_inst__30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(16),
      O => pixel_high(64)
    );
\pixel_high_inst__31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(15),
      O => pixel_high(63)
    );
\pixel_high_inst__32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(14),
      O => pixel_high(62)
    );
\pixel_high_inst__33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(13),
      O => pixel_high(61)
    );
\pixel_high_inst__34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(12),
      O => pixel_high(60)
    );
\pixel_high_inst__35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(11),
      O => pixel_high(59)
    );
\pixel_high_inst__36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(10),
      O => pixel_high(58)
    );
\pixel_high_inst__37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(9),
      O => pixel_high(57)
    );
\pixel_high_inst__38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(8),
      O => pixel_high(56)
    );
\pixel_high_inst__39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(7),
      O => pixel_high(55)
    );
\pixel_high_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(18),
      O => pixel_high(90)
    );
\pixel_high_inst__40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(6),
      O => pixel_high(54)
    );
\pixel_high_inst__41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(5),
      O => pixel_high(53)
    );
\pixel_high_inst__42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(4),
      O => pixel_high(52)
    );
\pixel_high_inst__43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(3),
      O => pixel_high(51)
    );
\pixel_high_inst__44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(2),
      O => pixel_high(50)
    );
\pixel_high_inst__45\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(1),
      O => pixel_high(49)
    );
\pixel_high_inst__46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(0),
      O => pixel_high(48)
    );
\pixel_high_inst__47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(23),
      O => pixel_high(47)
    );
\pixel_high_inst__48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(22),
      O => pixel_high(46)
    );
\pixel_high_inst__49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(21),
      O => pixel_high(45)
    );
\pixel_high_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(17),
      O => pixel_high(89)
    );
\pixel_high_inst__50\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(20),
      O => pixel_high(44)
    );
\pixel_high_inst__51\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(19),
      O => pixel_high(43)
    );
\pixel_high_inst__52\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(18),
      O => pixel_high(42)
    );
\pixel_high_inst__53\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(17),
      O => pixel_high(41)
    );
\pixel_high_inst__54\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(16),
      O => pixel_high(40)
    );
\pixel_high_inst__55\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(15),
      O => pixel_high(39)
    );
\pixel_high_inst__56\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(14),
      O => pixel_high(38)
    );
\pixel_high_inst__57\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(13),
      O => pixel_high(37)
    );
\pixel_high_inst__58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(12),
      O => pixel_high(36)
    );
\pixel_high_inst__59\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(11),
      O => pixel_high(35)
    );
\pixel_high_inst__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(16),
      O => pixel_high(88)
    );
\pixel_high_inst__60\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(10),
      O => pixel_high(34)
    );
\pixel_high_inst__61\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(9),
      O => pixel_high(33)
    );
\pixel_high_inst__62\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(8),
      O => pixel_high(32)
    );
\pixel_high_inst__63\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(7),
      O => pixel_high(31)
    );
\pixel_high_inst__64\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(6),
      O => pixel_high(30)
    );
\pixel_high_inst__65\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(5),
      O => pixel_high(29)
    );
\pixel_high_inst__66\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(4),
      O => pixel_high(28)
    );
\pixel_high_inst__67\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(3),
      O => pixel_high(27)
    );
\pixel_high_inst__68\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(2),
      O => pixel_high(26)
    );
\pixel_high_inst__69\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(1),
      O => pixel_high(25)
    );
\pixel_high_inst__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(15),
      O => pixel_high(87)
    );
\pixel_high_inst__70\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(0),
      O => pixel_high(24)
    );
\pixel_high_inst__71\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(23),
      O => pixel_high(23)
    );
\pixel_high_inst__72\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(22),
      O => pixel_high(22)
    );
\pixel_high_inst__73\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(21),
      O => pixel_high(21)
    );
\pixel_high_inst__74\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(20),
      O => pixel_high(20)
    );
\pixel_high_inst__75\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(19),
      O => pixel_high(19)
    );
\pixel_high_inst__76\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(18),
      O => pixel_high(18)
    );
\pixel_high_inst__77\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(17),
      O => pixel_high(17)
    );
\pixel_high_inst__78\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(16),
      O => pixel_high(16)
    );
\pixel_high_inst__79\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(15),
      O => pixel_high(15)
    );
\pixel_high_inst__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(14),
      O => pixel_high(86)
    );
\pixel_high_inst__80\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(14),
      O => pixel_high(14)
    );
\pixel_high_inst__81\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(13),
      O => pixel_high(13)
    );
\pixel_high_inst__82\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(12),
      O => pixel_high(12)
    );
\pixel_high_inst__83\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(11),
      O => pixel_high(11)
    );
\pixel_high_inst__84\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(10),
      O => pixel_high(10)
    );
\pixel_high_inst__85\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(9),
      O => pixel_high(9)
    );
\pixel_high_inst__86\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(8),
      O => pixel_high(8)
    );
\pixel_high_inst__87\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(7),
      O => pixel_high(7)
    );
\pixel_high_inst__88\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(6),
      O => pixel_high(6)
    );
\pixel_high_inst__89\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(5),
      O => pixel_high(5)
    );
\pixel_high_inst__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(13),
      O => pixel_high(85)
    );
\pixel_high_inst__90\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(4),
      O => pixel_high(4)
    );
\pixel_high_inst__91\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(3),
      O => pixel_high(3)
    );
\pixel_high_inst__92\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(2),
      O => pixel_high(2)
    );
\pixel_high_inst__93\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(1),
      O => pixel_high(1)
    );
\pixel_high_inst__94\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_low(0),
      O => pixel_high(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Upsampling_Bayes_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Upsampling_Bayes_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Upsampling_Bayes_0_0 : entity is "design_1_Upsampling_Bayes_0_0,Upsampling_Bayes,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Upsampling_Bayes_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Upsampling_Bayes_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Upsampling_Bayes_0_0 : entity is "Upsampling_Bayes,Vivado 2019.2";
end design_1_Upsampling_Bayes_0_0;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:s00_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m00_axis TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 m00_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m00_axis TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s00_axis TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 s00_axis TREADY";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s00_axis TVALID";
  attribute X_INTERFACE_PARAMETER of s00_axis_tvalid : signal is "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m00_axis TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m00_axis TSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s00_axis TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s00_axis TSTRB";
begin
  m00_axis_tstrb(15) <= \<const1>\;
  m00_axis_tstrb(14) <= \<const1>\;
  m00_axis_tstrb(13) <= \<const1>\;
  m00_axis_tstrb(12) <= \<const1>\;
  m00_axis_tstrb(11) <= \<const1>\;
  m00_axis_tstrb(10) <= \<const1>\;
  m00_axis_tstrb(9) <= \<const1>\;
  m00_axis_tstrb(8) <= \<const1>\;
  m00_axis_tstrb(7) <= \<const1>\;
  m00_axis_tstrb(6) <= \<const1>\;
  m00_axis_tstrb(5) <= \<const1>\;
  m00_axis_tstrb(4) <= \<const1>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_Upsampling_Bayes_0_0_Upsampling_Bayes
     port map (
      clk => clk,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(127 downto 0) => m00_axis_tdata(127 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      rst_n => rst_n,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
