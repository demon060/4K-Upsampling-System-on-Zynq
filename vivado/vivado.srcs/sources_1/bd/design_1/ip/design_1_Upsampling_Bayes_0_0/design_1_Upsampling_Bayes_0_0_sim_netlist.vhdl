-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May  1 22:05:28 2022
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
entity design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pixel_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stuck : out STD_LOGIC;
    trans_eff : out STD_LOGIC;
    buf_rden : in STD_LOGIC;
    buf_wren : in STD_LOGIC
  );
  attribute AXIS_TDATA_WIDTH : integer;
  attribute AXIS_TDATA_WIDTH of design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer : entity is "AXIS_to_pixel_buffer";
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer : entity is 24;
end design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer is
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
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[1]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute SOFT_HLUTNM of \buffer[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \buffer[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \buffer[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \buffer[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \buffer[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \buffer[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pixel_out_reg[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of stuck_INST_0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of trans_eff_reg_i_1 : label is "soft_lutpair11";
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
    M_AXIS_send_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    fifo_wren : in STD_LOGIC;
    fifo_full : out STD_LOGIC;
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 32;
  attribute C_M_START_COUNT : integer;
  attribute C_M_START_COUNT of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 32;
  attribute IDLE : string;
  attribute IDLE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "2'b00";
  attribute INIT_COUNTER : string;
  attribute INIT_COUNTER of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "2'b01";
  attribute NUMBER_OF_OUTPUT_WORDS : integer;
  attribute NUMBER_OF_OUTPUT_WORDS of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 3;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "Upsampling_Bayes_M00_AXIS";
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 24;
  attribute SEND_STREAM : string;
  attribute SEND_STREAM of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is "2'b10";
  attribute WAIT_COUNT_BITS : integer;
  attribute WAIT_COUNT_BITS of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 5;
  attribute bit_num : integer;
  attribute bit_num of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS : entity is 2;
end design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS;

architecture STRUCTURE of design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal axis_tlast : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid_delay_i_3_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \fifo_full_status[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_full_status[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_full_status_reg_n_0_[0]\ : STD_LOGIC;
  signal fifo_write_selector : STD_LOGIC;
  signal fifo_write_selector_i_1_n_0 : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_pointer : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal stream_data_fifo_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_fifo_0[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_fifo_0_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_fifo_0_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_fifo_0_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stream_data_fifo_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_fifo_1[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_fifo_1_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_fifo_1_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_fifo_1_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stream_data_out[31]_i_3_n_0\ : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_i_2_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of axis_tlast_delay_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of fifo_full_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stream_data_out[31]_i_3\ : label is "soft_lutpair5";
begin
  M_AXIS_TSTRB(3) <= \<const0>\;
  M_AXIS_TSTRB(2) <= \<const0>\;
  M_AXIS_TSTRB(1) <= \<const0>\;
  M_AXIS_TSTRB(0) <= \<const0>\;
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A0"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => tx_done_reg_n_0,
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(4),
      I4 => count_reg(2),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => axis_tvalid_delay_i_1_n_0
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axis_tlast_delay_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(0),
      O => axis_tlast
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => axis_tlast,
      Q => M_AXIS_TLAST,
      R => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXIS_ARESETN,
      O => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000404040000000"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => axis_tvalid_delay_i_3_n_0,
      I3 => \fifo_full_status_reg_n_0_[0]\,
      I4 => fifo_write_selector,
      I5 => p_0_in,
      O => axis_tvalid
    );
axis_tvalid_delay_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(0),
      O => axis_tvalid_delay_i_3_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => axis_tvalid,
      Q => M_AXIS_TVALID,
      R => axis_tvalid_delay_i_1_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \p_0_in__0\(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \p_0_in__0\(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      O => \p_0_in__0\(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      O => count
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \p_0_in__0\(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => count,
      D => \p_0_in__0\(0),
      Q => count_reg(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => count,
      D => \p_0_in__0\(1),
      Q => count_reg(1),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => count,
      D => \p_0_in__0\(3),
      Q => count_reg(3),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => count,
      D => \p_0_in__0\(4),
      Q => count_reg(4),
      R => axis_tvalid_delay_i_1_n_0
    );
fifo_full_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \fifo_full_status_reg_n_0_[0]\,
      I1 => p_0_in,
      O => fifo_full
    );
\fifo_full_status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EAEAEAE00000000"
    )
        port map (
      I0 => \fifo_full_status_reg_n_0_[0]\,
      I1 => fifo_wren,
      I2 => fifo_write_selector,
      I3 => read_pointer(1),
      I4 => read_pointer(0),
      I5 => M_AXIS_ARESETN,
      O => \fifo_full_status[0]_i_1_n_0\
    );
\fifo_full_status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F0F70000000000"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(0),
      I2 => fifo_write_selector,
      I3 => p_0_in,
      I4 => fifo_wren,
      I5 => M_AXIS_ARESETN,
      O => \fifo_full_status[1]_i_1_n_0\
    );
\fifo_full_status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \fifo_full_status[0]_i_1_n_0\,
      Q => \fifo_full_status_reg_n_0_[0]\,
      R => '0'
    );
\fifo_full_status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \fifo_full_status[1]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
fifo_write_selector_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AA9AAA9AAA9A"
    )
        port map (
      I0 => fifo_write_selector,
      I1 => p_0_in,
      I2 => fifo_wren,
      I3 => \fifo_full_status_reg_n_0_[0]\,
      I4 => read_pointer(0),
      I5 => read_pointer(1),
      O => fifo_write_selector_i_1_n_0
    );
fifo_write_selector_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => fifo_write_selector_i_1_n_0,
      Q => fifo_write_selector,
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4344444444444444"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(0),
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      I4 => \stream_data_out[31]_i_3_n_0\,
      I5 => M_AXIS_TREADY,
      O => \read_pointer[0]_i_1_n_0\
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2622222222222222"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(0),
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      I4 => \stream_data_out[31]_i_3_n_0\,
      I5 => M_AXIS_TREADY,
      O => \read_pointer[1]_i_1_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \read_pointer[0]_i_1_n_0\,
      Q => read_pointer(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => \read_pointer[1]_i_1_n_0\,
      Q => read_pointer(1),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_fifo_0[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => M_AXIS_ARESETN,
      I1 => fifo_write_selector,
      I2 => fifo_wren,
      I3 => \fifo_full_status_reg_n_0_[0]\,
      O => \stream_data_fifo_0[2][31]_i_1_n_0\
    );
\stream_data_fifo_0_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(0),
      Q => \stream_data_fifo_0_reg[0]\(0),
      R => '0'
    );
\stream_data_fifo_0_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(10),
      Q => \stream_data_fifo_0_reg[0]\(10),
      R => '0'
    );
\stream_data_fifo_0_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(11),
      Q => \stream_data_fifo_0_reg[0]\(11),
      R => '0'
    );
\stream_data_fifo_0_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(12),
      Q => \stream_data_fifo_0_reg[0]\(12),
      R => '0'
    );
\stream_data_fifo_0_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(13),
      Q => \stream_data_fifo_0_reg[0]\(13),
      R => '0'
    );
\stream_data_fifo_0_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(14),
      Q => \stream_data_fifo_0_reg[0]\(14),
      R => '0'
    );
\stream_data_fifo_0_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(15),
      Q => \stream_data_fifo_0_reg[0]\(15),
      R => '0'
    );
\stream_data_fifo_0_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(16),
      Q => \stream_data_fifo_0_reg[0]\(16),
      R => '0'
    );
\stream_data_fifo_0_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(17),
      Q => \stream_data_fifo_0_reg[0]\(17),
      R => '0'
    );
\stream_data_fifo_0_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(18),
      Q => \stream_data_fifo_0_reg[0]\(18),
      R => '0'
    );
\stream_data_fifo_0_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(19),
      Q => \stream_data_fifo_0_reg[0]\(19),
      R => '0'
    );
\stream_data_fifo_0_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(1),
      Q => \stream_data_fifo_0_reg[0]\(1),
      R => '0'
    );
\stream_data_fifo_0_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(20),
      Q => \stream_data_fifo_0_reg[0]\(20),
      R => '0'
    );
\stream_data_fifo_0_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(21),
      Q => \stream_data_fifo_0_reg[0]\(21),
      R => '0'
    );
\stream_data_fifo_0_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(22),
      Q => \stream_data_fifo_0_reg[0]\(22),
      R => '0'
    );
\stream_data_fifo_0_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(23),
      Q => \stream_data_fifo_0_reg[0]\(23),
      R => '0'
    );
\stream_data_fifo_0_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(24),
      Q => \stream_data_fifo_0_reg[0]\(24),
      R => '0'
    );
\stream_data_fifo_0_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(25),
      Q => \stream_data_fifo_0_reg[0]\(25),
      R => '0'
    );
\stream_data_fifo_0_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(26),
      Q => \stream_data_fifo_0_reg[0]\(26),
      R => '0'
    );
\stream_data_fifo_0_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(27),
      Q => \stream_data_fifo_0_reg[0]\(27),
      R => '0'
    );
\stream_data_fifo_0_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(28),
      Q => \stream_data_fifo_0_reg[0]\(28),
      R => '0'
    );
\stream_data_fifo_0_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(29),
      Q => \stream_data_fifo_0_reg[0]\(29),
      R => '0'
    );
\stream_data_fifo_0_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(2),
      Q => \stream_data_fifo_0_reg[0]\(2),
      R => '0'
    );
\stream_data_fifo_0_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(30),
      Q => \stream_data_fifo_0_reg[0]\(30),
      R => '0'
    );
\stream_data_fifo_0_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(31),
      Q => \stream_data_fifo_0_reg[0]\(31),
      R => '0'
    );
\stream_data_fifo_0_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(3),
      Q => \stream_data_fifo_0_reg[0]\(3),
      R => '0'
    );
\stream_data_fifo_0_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(4),
      Q => \stream_data_fifo_0_reg[0]\(4),
      R => '0'
    );
\stream_data_fifo_0_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(5),
      Q => \stream_data_fifo_0_reg[0]\(5),
      R => '0'
    );
\stream_data_fifo_0_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(6),
      Q => \stream_data_fifo_0_reg[0]\(6),
      R => '0'
    );
\stream_data_fifo_0_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(7),
      Q => \stream_data_fifo_0_reg[0]\(7),
      R => '0'
    );
\stream_data_fifo_0_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(8),
      Q => \stream_data_fifo_0_reg[0]\(8),
      R => '0'
    );
\stream_data_fifo_0_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(9),
      Q => \stream_data_fifo_0_reg[0]\(9),
      R => '0'
    );
\stream_data_fifo_0_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(32),
      Q => \stream_data_fifo_0_reg[1]\(0),
      R => '0'
    );
\stream_data_fifo_0_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(42),
      Q => \stream_data_fifo_0_reg[1]\(10),
      R => '0'
    );
\stream_data_fifo_0_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(43),
      Q => \stream_data_fifo_0_reg[1]\(11),
      R => '0'
    );
\stream_data_fifo_0_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(44),
      Q => \stream_data_fifo_0_reg[1]\(12),
      R => '0'
    );
\stream_data_fifo_0_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(45),
      Q => \stream_data_fifo_0_reg[1]\(13),
      R => '0'
    );
\stream_data_fifo_0_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(46),
      Q => \stream_data_fifo_0_reg[1]\(14),
      R => '0'
    );
\stream_data_fifo_0_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(47),
      Q => \stream_data_fifo_0_reg[1]\(15),
      R => '0'
    );
\stream_data_fifo_0_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(48),
      Q => \stream_data_fifo_0_reg[1]\(16),
      R => '0'
    );
\stream_data_fifo_0_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(49),
      Q => \stream_data_fifo_0_reg[1]\(17),
      R => '0'
    );
\stream_data_fifo_0_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(50),
      Q => \stream_data_fifo_0_reg[1]\(18),
      R => '0'
    );
\stream_data_fifo_0_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(51),
      Q => \stream_data_fifo_0_reg[1]\(19),
      R => '0'
    );
\stream_data_fifo_0_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(33),
      Q => \stream_data_fifo_0_reg[1]\(1),
      R => '0'
    );
\stream_data_fifo_0_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(52),
      Q => \stream_data_fifo_0_reg[1]\(20),
      R => '0'
    );
\stream_data_fifo_0_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(53),
      Q => \stream_data_fifo_0_reg[1]\(21),
      R => '0'
    );
\stream_data_fifo_0_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(54),
      Q => \stream_data_fifo_0_reg[1]\(22),
      R => '0'
    );
\stream_data_fifo_0_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(55),
      Q => \stream_data_fifo_0_reg[1]\(23),
      R => '0'
    );
\stream_data_fifo_0_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(56),
      Q => \stream_data_fifo_0_reg[1]\(24),
      R => '0'
    );
\stream_data_fifo_0_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(57),
      Q => \stream_data_fifo_0_reg[1]\(25),
      R => '0'
    );
\stream_data_fifo_0_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(58),
      Q => \stream_data_fifo_0_reg[1]\(26),
      R => '0'
    );
\stream_data_fifo_0_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(59),
      Q => \stream_data_fifo_0_reg[1]\(27),
      R => '0'
    );
\stream_data_fifo_0_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(60),
      Q => \stream_data_fifo_0_reg[1]\(28),
      R => '0'
    );
\stream_data_fifo_0_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(61),
      Q => \stream_data_fifo_0_reg[1]\(29),
      R => '0'
    );
\stream_data_fifo_0_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(34),
      Q => \stream_data_fifo_0_reg[1]\(2),
      R => '0'
    );
\stream_data_fifo_0_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(62),
      Q => \stream_data_fifo_0_reg[1]\(30),
      R => '0'
    );
\stream_data_fifo_0_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(63),
      Q => \stream_data_fifo_0_reg[1]\(31),
      R => '0'
    );
\stream_data_fifo_0_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(35),
      Q => \stream_data_fifo_0_reg[1]\(3),
      R => '0'
    );
\stream_data_fifo_0_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(36),
      Q => \stream_data_fifo_0_reg[1]\(4),
      R => '0'
    );
\stream_data_fifo_0_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(37),
      Q => \stream_data_fifo_0_reg[1]\(5),
      R => '0'
    );
\stream_data_fifo_0_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(38),
      Q => \stream_data_fifo_0_reg[1]\(6),
      R => '0'
    );
\stream_data_fifo_0_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(39),
      Q => \stream_data_fifo_0_reg[1]\(7),
      R => '0'
    );
\stream_data_fifo_0_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(40),
      Q => \stream_data_fifo_0_reg[1]\(8),
      R => '0'
    );
\stream_data_fifo_0_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(41),
      Q => \stream_data_fifo_0_reg[1]\(9),
      R => '0'
    );
\stream_data_fifo_0_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(64),
      Q => \stream_data_fifo_0_reg[2]\(0),
      R => '0'
    );
\stream_data_fifo_0_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(74),
      Q => \stream_data_fifo_0_reg[2]\(10),
      R => '0'
    );
\stream_data_fifo_0_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(75),
      Q => \stream_data_fifo_0_reg[2]\(11),
      R => '0'
    );
\stream_data_fifo_0_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(76),
      Q => \stream_data_fifo_0_reg[2]\(12),
      R => '0'
    );
\stream_data_fifo_0_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(77),
      Q => \stream_data_fifo_0_reg[2]\(13),
      R => '0'
    );
\stream_data_fifo_0_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(78),
      Q => \stream_data_fifo_0_reg[2]\(14),
      R => '0'
    );
\stream_data_fifo_0_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(79),
      Q => \stream_data_fifo_0_reg[2]\(15),
      R => '0'
    );
\stream_data_fifo_0_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(80),
      Q => \stream_data_fifo_0_reg[2]\(16),
      R => '0'
    );
\stream_data_fifo_0_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(81),
      Q => \stream_data_fifo_0_reg[2]\(17),
      R => '0'
    );
\stream_data_fifo_0_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(82),
      Q => \stream_data_fifo_0_reg[2]\(18),
      R => '0'
    );
\stream_data_fifo_0_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(83),
      Q => \stream_data_fifo_0_reg[2]\(19),
      R => '0'
    );
\stream_data_fifo_0_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(65),
      Q => \stream_data_fifo_0_reg[2]\(1),
      R => '0'
    );
\stream_data_fifo_0_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(84),
      Q => \stream_data_fifo_0_reg[2]\(20),
      R => '0'
    );
\stream_data_fifo_0_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(85),
      Q => \stream_data_fifo_0_reg[2]\(21),
      R => '0'
    );
\stream_data_fifo_0_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(86),
      Q => \stream_data_fifo_0_reg[2]\(22),
      R => '0'
    );
\stream_data_fifo_0_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(87),
      Q => \stream_data_fifo_0_reg[2]\(23),
      R => '0'
    );
\stream_data_fifo_0_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(88),
      Q => \stream_data_fifo_0_reg[2]\(24),
      R => '0'
    );
\stream_data_fifo_0_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(89),
      Q => \stream_data_fifo_0_reg[2]\(25),
      R => '0'
    );
\stream_data_fifo_0_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(90),
      Q => \stream_data_fifo_0_reg[2]\(26),
      R => '0'
    );
\stream_data_fifo_0_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(91),
      Q => \stream_data_fifo_0_reg[2]\(27),
      R => '0'
    );
\stream_data_fifo_0_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(92),
      Q => \stream_data_fifo_0_reg[2]\(28),
      R => '0'
    );
\stream_data_fifo_0_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(93),
      Q => \stream_data_fifo_0_reg[2]\(29),
      R => '0'
    );
\stream_data_fifo_0_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(66),
      Q => \stream_data_fifo_0_reg[2]\(2),
      R => '0'
    );
\stream_data_fifo_0_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(94),
      Q => \stream_data_fifo_0_reg[2]\(30),
      R => '0'
    );
\stream_data_fifo_0_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(95),
      Q => \stream_data_fifo_0_reg[2]\(31),
      R => '0'
    );
\stream_data_fifo_0_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(67),
      Q => \stream_data_fifo_0_reg[2]\(3),
      R => '0'
    );
\stream_data_fifo_0_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(68),
      Q => \stream_data_fifo_0_reg[2]\(4),
      R => '0'
    );
\stream_data_fifo_0_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(69),
      Q => \stream_data_fifo_0_reg[2]\(5),
      R => '0'
    );
\stream_data_fifo_0_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(70),
      Q => \stream_data_fifo_0_reg[2]\(6),
      R => '0'
    );
\stream_data_fifo_0_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(71),
      Q => \stream_data_fifo_0_reg[2]\(7),
      R => '0'
    );
\stream_data_fifo_0_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(72),
      Q => \stream_data_fifo_0_reg[2]\(8),
      R => '0'
    );
\stream_data_fifo_0_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_0[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(73),
      Q => \stream_data_fifo_0_reg[2]\(9),
      R => '0'
    );
\stream_data_fifo_1[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => M_AXIS_ARESETN,
      I1 => fifo_wren,
      I2 => p_0_in,
      I3 => fifo_write_selector,
      O => \stream_data_fifo_1[2][31]_i_1_n_0\
    );
\stream_data_fifo_1_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(0),
      Q => \stream_data_fifo_1_reg[0]\(0),
      R => '0'
    );
\stream_data_fifo_1_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(10),
      Q => \stream_data_fifo_1_reg[0]\(10),
      R => '0'
    );
\stream_data_fifo_1_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(11),
      Q => \stream_data_fifo_1_reg[0]\(11),
      R => '0'
    );
\stream_data_fifo_1_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(12),
      Q => \stream_data_fifo_1_reg[0]\(12),
      R => '0'
    );
\stream_data_fifo_1_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(13),
      Q => \stream_data_fifo_1_reg[0]\(13),
      R => '0'
    );
\stream_data_fifo_1_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(14),
      Q => \stream_data_fifo_1_reg[0]\(14),
      R => '0'
    );
\stream_data_fifo_1_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(15),
      Q => \stream_data_fifo_1_reg[0]\(15),
      R => '0'
    );
\stream_data_fifo_1_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(16),
      Q => \stream_data_fifo_1_reg[0]\(16),
      R => '0'
    );
\stream_data_fifo_1_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(17),
      Q => \stream_data_fifo_1_reg[0]\(17),
      R => '0'
    );
\stream_data_fifo_1_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(18),
      Q => \stream_data_fifo_1_reg[0]\(18),
      R => '0'
    );
\stream_data_fifo_1_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(19),
      Q => \stream_data_fifo_1_reg[0]\(19),
      R => '0'
    );
\stream_data_fifo_1_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(1),
      Q => \stream_data_fifo_1_reg[0]\(1),
      R => '0'
    );
\stream_data_fifo_1_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(20),
      Q => \stream_data_fifo_1_reg[0]\(20),
      R => '0'
    );
\stream_data_fifo_1_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(21),
      Q => \stream_data_fifo_1_reg[0]\(21),
      R => '0'
    );
\stream_data_fifo_1_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(22),
      Q => \stream_data_fifo_1_reg[0]\(22),
      R => '0'
    );
\stream_data_fifo_1_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(23),
      Q => \stream_data_fifo_1_reg[0]\(23),
      R => '0'
    );
\stream_data_fifo_1_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(24),
      Q => \stream_data_fifo_1_reg[0]\(24),
      R => '0'
    );
\stream_data_fifo_1_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(25),
      Q => \stream_data_fifo_1_reg[0]\(25),
      R => '0'
    );
\stream_data_fifo_1_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(26),
      Q => \stream_data_fifo_1_reg[0]\(26),
      R => '0'
    );
\stream_data_fifo_1_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(27),
      Q => \stream_data_fifo_1_reg[0]\(27),
      R => '0'
    );
\stream_data_fifo_1_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(28),
      Q => \stream_data_fifo_1_reg[0]\(28),
      R => '0'
    );
\stream_data_fifo_1_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(29),
      Q => \stream_data_fifo_1_reg[0]\(29),
      R => '0'
    );
\stream_data_fifo_1_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(2),
      Q => \stream_data_fifo_1_reg[0]\(2),
      R => '0'
    );
\stream_data_fifo_1_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(30),
      Q => \stream_data_fifo_1_reg[0]\(30),
      R => '0'
    );
\stream_data_fifo_1_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(31),
      Q => \stream_data_fifo_1_reg[0]\(31),
      R => '0'
    );
\stream_data_fifo_1_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(3),
      Q => \stream_data_fifo_1_reg[0]\(3),
      R => '0'
    );
\stream_data_fifo_1_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(4),
      Q => \stream_data_fifo_1_reg[0]\(4),
      R => '0'
    );
\stream_data_fifo_1_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(5),
      Q => \stream_data_fifo_1_reg[0]\(5),
      R => '0'
    );
\stream_data_fifo_1_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(6),
      Q => \stream_data_fifo_1_reg[0]\(6),
      R => '0'
    );
\stream_data_fifo_1_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(7),
      Q => \stream_data_fifo_1_reg[0]\(7),
      R => '0'
    );
\stream_data_fifo_1_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(8),
      Q => \stream_data_fifo_1_reg[0]\(8),
      R => '0'
    );
\stream_data_fifo_1_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(9),
      Q => \stream_data_fifo_1_reg[0]\(9),
      R => '0'
    );
\stream_data_fifo_1_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(32),
      Q => \stream_data_fifo_1_reg[1]\(0),
      R => '0'
    );
\stream_data_fifo_1_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(42),
      Q => \stream_data_fifo_1_reg[1]\(10),
      R => '0'
    );
\stream_data_fifo_1_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(43),
      Q => \stream_data_fifo_1_reg[1]\(11),
      R => '0'
    );
\stream_data_fifo_1_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(44),
      Q => \stream_data_fifo_1_reg[1]\(12),
      R => '0'
    );
\stream_data_fifo_1_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(45),
      Q => \stream_data_fifo_1_reg[1]\(13),
      R => '0'
    );
\stream_data_fifo_1_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(46),
      Q => \stream_data_fifo_1_reg[1]\(14),
      R => '0'
    );
\stream_data_fifo_1_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(47),
      Q => \stream_data_fifo_1_reg[1]\(15),
      R => '0'
    );
\stream_data_fifo_1_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(48),
      Q => \stream_data_fifo_1_reg[1]\(16),
      R => '0'
    );
\stream_data_fifo_1_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(49),
      Q => \stream_data_fifo_1_reg[1]\(17),
      R => '0'
    );
\stream_data_fifo_1_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(50),
      Q => \stream_data_fifo_1_reg[1]\(18),
      R => '0'
    );
\stream_data_fifo_1_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(51),
      Q => \stream_data_fifo_1_reg[1]\(19),
      R => '0'
    );
\stream_data_fifo_1_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(33),
      Q => \stream_data_fifo_1_reg[1]\(1),
      R => '0'
    );
\stream_data_fifo_1_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(52),
      Q => \stream_data_fifo_1_reg[1]\(20),
      R => '0'
    );
\stream_data_fifo_1_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(53),
      Q => \stream_data_fifo_1_reg[1]\(21),
      R => '0'
    );
\stream_data_fifo_1_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(54),
      Q => \stream_data_fifo_1_reg[1]\(22),
      R => '0'
    );
\stream_data_fifo_1_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(55),
      Q => \stream_data_fifo_1_reg[1]\(23),
      R => '0'
    );
\stream_data_fifo_1_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(56),
      Q => \stream_data_fifo_1_reg[1]\(24),
      R => '0'
    );
\stream_data_fifo_1_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(57),
      Q => \stream_data_fifo_1_reg[1]\(25),
      R => '0'
    );
\stream_data_fifo_1_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(58),
      Q => \stream_data_fifo_1_reg[1]\(26),
      R => '0'
    );
\stream_data_fifo_1_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(59),
      Q => \stream_data_fifo_1_reg[1]\(27),
      R => '0'
    );
\stream_data_fifo_1_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(60),
      Q => \stream_data_fifo_1_reg[1]\(28),
      R => '0'
    );
\stream_data_fifo_1_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(61),
      Q => \stream_data_fifo_1_reg[1]\(29),
      R => '0'
    );
\stream_data_fifo_1_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(34),
      Q => \stream_data_fifo_1_reg[1]\(2),
      R => '0'
    );
\stream_data_fifo_1_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(62),
      Q => \stream_data_fifo_1_reg[1]\(30),
      R => '0'
    );
\stream_data_fifo_1_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(63),
      Q => \stream_data_fifo_1_reg[1]\(31),
      R => '0'
    );
\stream_data_fifo_1_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(35),
      Q => \stream_data_fifo_1_reg[1]\(3),
      R => '0'
    );
\stream_data_fifo_1_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(36),
      Q => \stream_data_fifo_1_reg[1]\(4),
      R => '0'
    );
\stream_data_fifo_1_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(37),
      Q => \stream_data_fifo_1_reg[1]\(5),
      R => '0'
    );
\stream_data_fifo_1_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(38),
      Q => \stream_data_fifo_1_reg[1]\(6),
      R => '0'
    );
\stream_data_fifo_1_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(39),
      Q => \stream_data_fifo_1_reg[1]\(7),
      R => '0'
    );
\stream_data_fifo_1_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(40),
      Q => \stream_data_fifo_1_reg[1]\(8),
      R => '0'
    );
\stream_data_fifo_1_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(41),
      Q => \stream_data_fifo_1_reg[1]\(9),
      R => '0'
    );
\stream_data_fifo_1_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(64),
      Q => \stream_data_fifo_1_reg[2]\(0),
      R => '0'
    );
\stream_data_fifo_1_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(74),
      Q => \stream_data_fifo_1_reg[2]\(10),
      R => '0'
    );
\stream_data_fifo_1_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(75),
      Q => \stream_data_fifo_1_reg[2]\(11),
      R => '0'
    );
\stream_data_fifo_1_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(76),
      Q => \stream_data_fifo_1_reg[2]\(12),
      R => '0'
    );
\stream_data_fifo_1_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(77),
      Q => \stream_data_fifo_1_reg[2]\(13),
      R => '0'
    );
\stream_data_fifo_1_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(78),
      Q => \stream_data_fifo_1_reg[2]\(14),
      R => '0'
    );
\stream_data_fifo_1_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(79),
      Q => \stream_data_fifo_1_reg[2]\(15),
      R => '0'
    );
\stream_data_fifo_1_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(80),
      Q => \stream_data_fifo_1_reg[2]\(16),
      R => '0'
    );
\stream_data_fifo_1_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(81),
      Q => \stream_data_fifo_1_reg[2]\(17),
      R => '0'
    );
\stream_data_fifo_1_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(82),
      Q => \stream_data_fifo_1_reg[2]\(18),
      R => '0'
    );
\stream_data_fifo_1_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(83),
      Q => \stream_data_fifo_1_reg[2]\(19),
      R => '0'
    );
\stream_data_fifo_1_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(65),
      Q => \stream_data_fifo_1_reg[2]\(1),
      R => '0'
    );
\stream_data_fifo_1_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(84),
      Q => \stream_data_fifo_1_reg[2]\(20),
      R => '0'
    );
\stream_data_fifo_1_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(85),
      Q => \stream_data_fifo_1_reg[2]\(21),
      R => '0'
    );
\stream_data_fifo_1_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(86),
      Q => \stream_data_fifo_1_reg[2]\(22),
      R => '0'
    );
\stream_data_fifo_1_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(87),
      Q => \stream_data_fifo_1_reg[2]\(23),
      R => '0'
    );
\stream_data_fifo_1_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(88),
      Q => \stream_data_fifo_1_reg[2]\(24),
      R => '0'
    );
\stream_data_fifo_1_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(89),
      Q => \stream_data_fifo_1_reg[2]\(25),
      R => '0'
    );
\stream_data_fifo_1_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(90),
      Q => \stream_data_fifo_1_reg[2]\(26),
      R => '0'
    );
\stream_data_fifo_1_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(91),
      Q => \stream_data_fifo_1_reg[2]\(27),
      R => '0'
    );
\stream_data_fifo_1_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(92),
      Q => \stream_data_fifo_1_reg[2]\(28),
      R => '0'
    );
\stream_data_fifo_1_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(93),
      Q => \stream_data_fifo_1_reg[2]\(29),
      R => '0'
    );
\stream_data_fifo_1_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(66),
      Q => \stream_data_fifo_1_reg[2]\(2),
      R => '0'
    );
\stream_data_fifo_1_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(94),
      Q => \stream_data_fifo_1_reg[2]\(30),
      R => '0'
    );
\stream_data_fifo_1_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(95),
      Q => \stream_data_fifo_1_reg[2]\(31),
      R => '0'
    );
\stream_data_fifo_1_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(67),
      Q => \stream_data_fifo_1_reg[2]\(3),
      R => '0'
    );
\stream_data_fifo_1_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(68),
      Q => \stream_data_fifo_1_reg[2]\(4),
      R => '0'
    );
\stream_data_fifo_1_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(69),
      Q => \stream_data_fifo_1_reg[2]\(5),
      R => '0'
    );
\stream_data_fifo_1_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(70),
      Q => \stream_data_fifo_1_reg[2]\(6),
      R => '0'
    );
\stream_data_fifo_1_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(71),
      Q => \stream_data_fifo_1_reg[2]\(7),
      R => '0'
    );
\stream_data_fifo_1_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(72),
      Q => \stream_data_fifo_1_reg[2]\(8),
      R => '0'
    );
\stream_data_fifo_1_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => \stream_data_fifo_1[2][31]_i_1_n_0\,
      D => M_AXIS_send_data(73),
      Q => \stream_data_fifo_1_reg[2]\(9),
      R => '0'
    );
\stream_data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(0),
      I1 => \stream_data_fifo_1_reg[2]\(0),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(0),
      O => stream_data_fifo_1(0)
    );
\stream_data_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(0),
      I1 => \stream_data_fifo_0_reg[2]\(0),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(0),
      O => stream_data_fifo_0(0)
    );
\stream_data_out[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(10),
      I1 => \stream_data_fifo_1_reg[2]\(10),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(10),
      O => stream_data_fifo_1(10)
    );
\stream_data_out[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(10),
      I1 => \stream_data_fifo_0_reg[2]\(10),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(10),
      O => stream_data_fifo_0(10)
    );
\stream_data_out[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(11),
      I1 => \stream_data_fifo_1_reg[2]\(11),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(11),
      O => stream_data_fifo_1(11)
    );
\stream_data_out[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(11),
      I1 => \stream_data_fifo_0_reg[2]\(11),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(11),
      O => stream_data_fifo_0(11)
    );
\stream_data_out[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(12),
      I1 => \stream_data_fifo_1_reg[2]\(12),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(12),
      O => stream_data_fifo_1(12)
    );
\stream_data_out[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(12),
      I1 => \stream_data_fifo_0_reg[2]\(12),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(12),
      O => stream_data_fifo_0(12)
    );
\stream_data_out[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(13),
      I1 => \stream_data_fifo_1_reg[2]\(13),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(13),
      O => stream_data_fifo_1(13)
    );
\stream_data_out[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(13),
      I1 => \stream_data_fifo_0_reg[2]\(13),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(13),
      O => stream_data_fifo_0(13)
    );
\stream_data_out[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(14),
      I1 => \stream_data_fifo_1_reg[2]\(14),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(14),
      O => stream_data_fifo_1(14)
    );
\stream_data_out[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(14),
      I1 => \stream_data_fifo_0_reg[2]\(14),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(14),
      O => stream_data_fifo_0(14)
    );
\stream_data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(15),
      I1 => \stream_data_fifo_1_reg[2]\(15),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(15),
      O => stream_data_fifo_1(15)
    );
\stream_data_out[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(15),
      I1 => \stream_data_fifo_0_reg[2]\(15),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(15),
      O => stream_data_fifo_0(15)
    );
\stream_data_out[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(16),
      I1 => \stream_data_fifo_1_reg[2]\(16),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(16),
      O => stream_data_fifo_1(16)
    );
\stream_data_out[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(16),
      I1 => \stream_data_fifo_0_reg[2]\(16),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(16),
      O => stream_data_fifo_0(16)
    );
\stream_data_out[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(17),
      I1 => \stream_data_fifo_1_reg[2]\(17),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(17),
      O => stream_data_fifo_1(17)
    );
\stream_data_out[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(17),
      I1 => \stream_data_fifo_0_reg[2]\(17),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(17),
      O => stream_data_fifo_0(17)
    );
\stream_data_out[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(18),
      I1 => \stream_data_fifo_1_reg[2]\(18),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(18),
      O => stream_data_fifo_1(18)
    );
\stream_data_out[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(18),
      I1 => \stream_data_fifo_0_reg[2]\(18),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(18),
      O => stream_data_fifo_0(18)
    );
\stream_data_out[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(19),
      I1 => \stream_data_fifo_1_reg[2]\(19),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(19),
      O => stream_data_fifo_1(19)
    );
\stream_data_out[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(19),
      I1 => \stream_data_fifo_0_reg[2]\(19),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(19),
      O => stream_data_fifo_0(19)
    );
\stream_data_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(1),
      I1 => \stream_data_fifo_1_reg[2]\(1),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(1),
      O => stream_data_fifo_1(1)
    );
\stream_data_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(1),
      I1 => \stream_data_fifo_0_reg[2]\(1),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(1),
      O => stream_data_fifo_0(1)
    );
\stream_data_out[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(20),
      I1 => \stream_data_fifo_1_reg[2]\(20),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(20),
      O => stream_data_fifo_1(20)
    );
\stream_data_out[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(20),
      I1 => \stream_data_fifo_0_reg[2]\(20),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(20),
      O => stream_data_fifo_0(20)
    );
\stream_data_out[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(21),
      I1 => \stream_data_fifo_1_reg[2]\(21),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(21),
      O => stream_data_fifo_1(21)
    );
\stream_data_out[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(21),
      I1 => \stream_data_fifo_0_reg[2]\(21),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(21),
      O => stream_data_fifo_0(21)
    );
\stream_data_out[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(22),
      I1 => \stream_data_fifo_1_reg[2]\(22),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(22),
      O => stream_data_fifo_1(22)
    );
\stream_data_out[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(22),
      I1 => \stream_data_fifo_0_reg[2]\(22),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(22),
      O => stream_data_fifo_0(22)
    );
\stream_data_out[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(23),
      I1 => \stream_data_fifo_1_reg[2]\(23),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(23),
      O => stream_data_fifo_1(23)
    );
\stream_data_out[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(23),
      I1 => \stream_data_fifo_0_reg[2]\(23),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(23),
      O => stream_data_fifo_0(23)
    );
\stream_data_out[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(24),
      I1 => \stream_data_fifo_1_reg[2]\(24),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(24),
      O => stream_data_fifo_1(24)
    );
\stream_data_out[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(24),
      I1 => \stream_data_fifo_0_reg[2]\(24),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(24),
      O => stream_data_fifo_0(24)
    );
\stream_data_out[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(25),
      I1 => \stream_data_fifo_1_reg[2]\(25),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(25),
      O => stream_data_fifo_1(25)
    );
\stream_data_out[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(25),
      I1 => \stream_data_fifo_0_reg[2]\(25),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(25),
      O => stream_data_fifo_0(25)
    );
\stream_data_out[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(26),
      I1 => \stream_data_fifo_1_reg[2]\(26),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(26),
      O => stream_data_fifo_1(26)
    );
\stream_data_out[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(26),
      I1 => \stream_data_fifo_0_reg[2]\(26),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(26),
      O => stream_data_fifo_0(26)
    );
\stream_data_out[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(27),
      I1 => \stream_data_fifo_1_reg[2]\(27),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(27),
      O => stream_data_fifo_1(27)
    );
\stream_data_out[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(27),
      I1 => \stream_data_fifo_0_reg[2]\(27),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(27),
      O => stream_data_fifo_0(27)
    );
\stream_data_out[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(28),
      I1 => \stream_data_fifo_1_reg[2]\(28),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(28),
      O => stream_data_fifo_1(28)
    );
\stream_data_out[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(28),
      I1 => \stream_data_fifo_0_reg[2]\(28),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(28),
      O => stream_data_fifo_0(28)
    );
\stream_data_out[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(29),
      I1 => \stream_data_fifo_1_reg[2]\(29),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(29),
      O => stream_data_fifo_1(29)
    );
\stream_data_out[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(29),
      I1 => \stream_data_fifo_0_reg[2]\(29),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(29),
      O => stream_data_fifo_0(29)
    );
\stream_data_out[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(2),
      I1 => \stream_data_fifo_1_reg[2]\(2),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(2),
      O => stream_data_fifo_1(2)
    );
\stream_data_out[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(2),
      I1 => \stream_data_fifo_0_reg[2]\(2),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(2),
      O => stream_data_fifo_0(2)
    );
\stream_data_out[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(30),
      I1 => \stream_data_fifo_1_reg[2]\(30),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(30),
      O => stream_data_fifo_1(30)
    );
\stream_data_out[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(30),
      I1 => \stream_data_fifo_0_reg[2]\(30),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(30),
      O => stream_data_fifo_0(30)
    );
\stream_data_out[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => \stream_data_out[31]_i_3_n_0\,
      I2 => mst_exec_state(1),
      I3 => mst_exec_state(0),
      O => tx_en
    );
\stream_data_out[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E2E2E2"
    )
        port map (
      I0 => p_0_in,
      I1 => fifo_write_selector,
      I2 => \fifo_full_status_reg_n_0_[0]\,
      I3 => read_pointer(0),
      I4 => read_pointer(1),
      O => \stream_data_out[31]_i_3_n_0\
    );
\stream_data_out[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(31),
      I1 => \stream_data_fifo_1_reg[2]\(31),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(31),
      O => stream_data_fifo_1(31)
    );
\stream_data_out[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(31),
      I1 => \stream_data_fifo_0_reg[2]\(31),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(31),
      O => stream_data_fifo_0(31)
    );
\stream_data_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(3),
      I1 => \stream_data_fifo_1_reg[2]\(3),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(3),
      O => stream_data_fifo_1(3)
    );
\stream_data_out[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(3),
      I1 => \stream_data_fifo_0_reg[2]\(3),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(3),
      O => stream_data_fifo_0(3)
    );
\stream_data_out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(4),
      I1 => \stream_data_fifo_1_reg[2]\(4),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(4),
      O => stream_data_fifo_1(4)
    );
\stream_data_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(4),
      I1 => \stream_data_fifo_0_reg[2]\(4),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(4),
      O => stream_data_fifo_0(4)
    );
\stream_data_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(5),
      I1 => \stream_data_fifo_1_reg[2]\(5),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(5),
      O => stream_data_fifo_1(5)
    );
\stream_data_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(5),
      I1 => \stream_data_fifo_0_reg[2]\(5),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(5),
      O => stream_data_fifo_0(5)
    );
\stream_data_out[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(6),
      I1 => \stream_data_fifo_1_reg[2]\(6),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(6),
      O => stream_data_fifo_1(6)
    );
\stream_data_out[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(6),
      I1 => \stream_data_fifo_0_reg[2]\(6),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(6),
      O => stream_data_fifo_0(6)
    );
\stream_data_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(7),
      I1 => \stream_data_fifo_1_reg[2]\(7),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(7),
      O => stream_data_fifo_1(7)
    );
\stream_data_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(7),
      I1 => \stream_data_fifo_0_reg[2]\(7),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(7),
      O => stream_data_fifo_0(7)
    );
\stream_data_out[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(8),
      I1 => \stream_data_fifo_1_reg[2]\(8),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(8),
      O => stream_data_fifo_1(8)
    );
\stream_data_out[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(8),
      I1 => \stream_data_fifo_0_reg[2]\(8),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(8),
      O => stream_data_fifo_0(8)
    );
\stream_data_out[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_1_reg[0]\(9),
      I1 => \stream_data_fifo_1_reg[2]\(9),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_1_reg[1]\(9),
      O => stream_data_fifo_1(9)
    );
\stream_data_out[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFA0C0A"
    )
        port map (
      I0 => \stream_data_fifo_0_reg[0]\(9),
      I1 => \stream_data_fifo_0_reg[2]\(9),
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \stream_data_fifo_0_reg[1]\(9),
      O => stream_data_fifo_0(9)
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(0),
      Q => M_AXIS_TDATA(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(0),
      I1 => stream_data_fifo_0(0),
      O => p_1_in(0),
      S => fifo_write_selector
    );
\stream_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(10),
      Q => M_AXIS_TDATA(10),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(10),
      I1 => stream_data_fifo_0(10),
      O => p_1_in(10),
      S => fifo_write_selector
    );
\stream_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(11),
      Q => M_AXIS_TDATA(11),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(11),
      I1 => stream_data_fifo_0(11),
      O => p_1_in(11),
      S => fifo_write_selector
    );
\stream_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(12),
      Q => M_AXIS_TDATA(12),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(12),
      I1 => stream_data_fifo_0(12),
      O => p_1_in(12),
      S => fifo_write_selector
    );
\stream_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(13),
      Q => M_AXIS_TDATA(13),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(13),
      I1 => stream_data_fifo_0(13),
      O => p_1_in(13),
      S => fifo_write_selector
    );
\stream_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(14),
      Q => M_AXIS_TDATA(14),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(14),
      I1 => stream_data_fifo_0(14),
      O => p_1_in(14),
      S => fifo_write_selector
    );
\stream_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(15),
      Q => M_AXIS_TDATA(15),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(15),
      I1 => stream_data_fifo_0(15),
      O => p_1_in(15),
      S => fifo_write_selector
    );
\stream_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(16),
      Q => M_AXIS_TDATA(16),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(16),
      I1 => stream_data_fifo_0(16),
      O => p_1_in(16),
      S => fifo_write_selector
    );
\stream_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(17),
      Q => M_AXIS_TDATA(17),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(17),
      I1 => stream_data_fifo_0(17),
      O => p_1_in(17),
      S => fifo_write_selector
    );
\stream_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(18),
      Q => M_AXIS_TDATA(18),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(18),
      I1 => stream_data_fifo_0(18),
      O => p_1_in(18),
      S => fifo_write_selector
    );
\stream_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(19),
      Q => M_AXIS_TDATA(19),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(19),
      I1 => stream_data_fifo_0(19),
      O => p_1_in(19),
      S => fifo_write_selector
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(1),
      Q => M_AXIS_TDATA(1),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(1),
      I1 => stream_data_fifo_0(1),
      O => p_1_in(1),
      S => fifo_write_selector
    );
\stream_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(20),
      Q => M_AXIS_TDATA(20),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(20),
      I1 => stream_data_fifo_0(20),
      O => p_1_in(20),
      S => fifo_write_selector
    );
\stream_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(21),
      Q => M_AXIS_TDATA(21),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(21),
      I1 => stream_data_fifo_0(21),
      O => p_1_in(21),
      S => fifo_write_selector
    );
\stream_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(22),
      Q => M_AXIS_TDATA(22),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(22),
      I1 => stream_data_fifo_0(22),
      O => p_1_in(22),
      S => fifo_write_selector
    );
\stream_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(23),
      Q => M_AXIS_TDATA(23),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(23),
      I1 => stream_data_fifo_0(23),
      O => p_1_in(23),
      S => fifo_write_selector
    );
\stream_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(24),
      Q => M_AXIS_TDATA(24),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(24),
      I1 => stream_data_fifo_0(24),
      O => p_1_in(24),
      S => fifo_write_selector
    );
\stream_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(25),
      Q => M_AXIS_TDATA(25),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(25),
      I1 => stream_data_fifo_0(25),
      O => p_1_in(25),
      S => fifo_write_selector
    );
\stream_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(26),
      Q => M_AXIS_TDATA(26),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(26),
      I1 => stream_data_fifo_0(26),
      O => p_1_in(26),
      S => fifo_write_selector
    );
\stream_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(27),
      Q => M_AXIS_TDATA(27),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(27),
      I1 => stream_data_fifo_0(27),
      O => p_1_in(27),
      S => fifo_write_selector
    );
\stream_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(28),
      Q => M_AXIS_TDATA(28),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(28),
      I1 => stream_data_fifo_0(28),
      O => p_1_in(28),
      S => fifo_write_selector
    );
\stream_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(29),
      Q => M_AXIS_TDATA(29),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(29),
      I1 => stream_data_fifo_0(29),
      O => p_1_in(29),
      S => fifo_write_selector
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(2),
      Q => M_AXIS_TDATA(2),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(2),
      I1 => stream_data_fifo_0(2),
      O => p_1_in(2),
      S => fifo_write_selector
    );
\stream_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(30),
      Q => M_AXIS_TDATA(30),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(30),
      I1 => stream_data_fifo_0(30),
      O => p_1_in(30),
      S => fifo_write_selector
    );
\stream_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(31),
      Q => M_AXIS_TDATA(31),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(31),
      I1 => stream_data_fifo_0(31),
      O => p_1_in(31),
      S => fifo_write_selector
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(3),
      Q => M_AXIS_TDATA(3),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(3),
      I1 => stream_data_fifo_0(3),
      O => p_1_in(3),
      S => fifo_write_selector
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(4),
      Q => M_AXIS_TDATA(4),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(4),
      I1 => stream_data_fifo_0(4),
      O => p_1_in(4),
      S => fifo_write_selector
    );
\stream_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(5),
      Q => M_AXIS_TDATA(5),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(5),
      I1 => stream_data_fifo_0(5),
      O => p_1_in(5),
      S => fifo_write_selector
    );
\stream_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(6),
      Q => M_AXIS_TDATA(6),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(6),
      I1 => stream_data_fifo_0(6),
      O => p_1_in(6),
      S => fifo_write_selector
    );
\stream_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(7),
      Q => M_AXIS_TDATA(7),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(7),
      I1 => stream_data_fifo_0(7),
      O => p_1_in(7),
      S => fifo_write_selector
    );
\stream_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(8),
      Q => M_AXIS_TDATA(8),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(8),
      I1 => stream_data_fifo_0(8),
      O => p_1_in(8),
      S => fifo_write_selector
    );
\stream_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => tx_en,
      D => p_1_in(9),
      Q => M_AXIS_TDATA(9),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => stream_data_fifo_1(9),
      I1 => stream_data_fifo_0(9),
      O => p_1_in(9),
      S => fifo_write_selector
    );
tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C8C8C8C8C8C8C8C"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => M_AXIS_ARESETN,
      I2 => axis_tvalid_delay_i_3_n_0,
      I3 => tx_done_i_2_n_0,
      I4 => \stream_data_out[31]_i_3_n_0\,
      I5 => M_AXIS_TREADY,
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      O => tx_done_i_2_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXIS_ACLK,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done_reg_n_0,
      R => '0'
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
entity design_1_Upsampling_Bayes_0_0_Upsampling_Bayes is
  port (
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal AXIS_to_pixel_buffer_0_i_1_n_0 : STD_LOGIC;
  signal AXIS_to_pixel_buffer_0_i_2_n_0 : STD_LOGIC;
  signal Upsampling_Bayes_S00_AXIS_inst_i_1_n_0 : STD_LOGIC;
  signal axis_pixel_stuck : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of axis_pixel_stuck : signal is std.standard.true;
  signal pixel_high : STD_LOGIC_VECTOR ( 95 downto 0 );
  attribute MARK_DEBUG of pixel_high : signal is std.standard.true;
  signal pixel_low : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute MARK_DEBUG of pixel_low : signal is std.standard.true;
  signal s_axis_empty : STD_LOGIC;
  attribute MARK_DEBUG of s_axis_empty : signal is std.standard.true;
  signal s_axis_get_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of s_axis_get_data : signal is std.standard.true;
  signal sr_busy : STD_LOGIC;
  attribute MARK_DEBUG of sr_busy : signal is std.standard.true;
  signal sr_pin_en : STD_LOGIC;
  attribute MARK_DEBUG of sr_pin_en : signal is std.standard.true;
  signal sr_pout_en : STD_LOGIC;
  attribute MARK_DEBUG of sr_pout_en : signal is std.standard.true;
  signal NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute AXIS_TDATA_WIDTH : integer;
  attribute AXIS_TDATA_WIDTH of AXIS_to_pixel_buffer_0 : label is 32;
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of AXIS_to_pixel_buffer_0 : label is 24;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of Upsampling_Bayes_M00_AXIS_inst : label is 32;
  attribute C_M_START_COUNT : integer;
  attribute C_M_START_COUNT of Upsampling_Bayes_M00_AXIS_inst : label is 32;
  attribute IDLE : string;
  attribute IDLE of Upsampling_Bayes_M00_AXIS_inst : label is "2'b00";
  attribute INIT_COUNTER : string;
  attribute INIT_COUNTER of Upsampling_Bayes_M00_AXIS_inst : label is "2'b01";
  attribute NUMBER_OF_OUTPUT_WORDS : integer;
  attribute NUMBER_OF_OUTPUT_WORDS of Upsampling_Bayes_M00_AXIS_inst : label is 3;
  attribute PIXEL_WIDTH of Upsampling_Bayes_M00_AXIS_inst : label is 24;
  attribute SEND_STREAM : string;
  attribute SEND_STREAM of Upsampling_Bayes_M00_AXIS_inst : label is "2'b10";
  attribute WAIT_COUNT_BITS : integer;
  attribute WAIT_COUNT_BITS of Upsampling_Bayes_M00_AXIS_inst : label is 5;
  attribute bit_num : integer;
  attribute bit_num of Upsampling_Bayes_M00_AXIS_inst : label is 2;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of Upsampling_Bayes_S00_AXIS_inst : label is 32;
  attribute IDLE of Upsampling_Bayes_S00_AXIS_inst : label is "2'b00";
  attribute NUMBER_OF_INPUT_WORDS : integer;
  attribute NUMBER_OF_INPUT_WORDS of Upsampling_Bayes_S00_AXIS_inst : label is 8;
  attribute WRITE_FIFO : string;
  attribute WRITE_FIFO of Upsampling_Bayes_S00_AXIS_inst : label is "2'b01";
  attribute bit_num of Upsampling_Bayes_S00_AXIS_inst : label is 3;
begin
AXIS_to_pixel_buffer_0: entity work.design_1_Upsampling_Bayes_0_0_AXIS_to_pixel_buffer
     port map (
      buf_rden => AXIS_to_pixel_buffer_0_i_1_n_0,
      buf_wren => AXIS_to_pixel_buffer_0_i_2_n_0,
      clk => clk,
      data_in(31 downto 0) => s_axis_get_data(31 downto 0),
      pixel_out(23 downto 0) => pixel_low(23 downto 0),
      rst_n => rst_n,
      stuck => axis_pixel_stuck,
      trans_eff => sr_pin_en
    );
AXIS_to_pixel_buffer_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_busy,
      O => AXIS_to_pixel_buffer_0_i_1_n_0
    );
AXIS_to_pixel_buffer_0_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_empty,
      O => AXIS_to_pixel_buffer_0_i_2_n_0
    );
Upsampling_Bayes_M00_AXIS_inst: entity work.design_1_Upsampling_Bayes_0_0_Upsampling_Bayes_M00_AXIS
     port map (
      M_AXIS_ACLK => m00_axis_aclk,
      M_AXIS_ARESETN => m00_axis_aresetn,
      M_AXIS_TDATA(31 downto 0) => m00_axis_tdata(31 downto 0),
      M_AXIS_TLAST => m00_axis_tlast,
      M_AXIS_TREADY => m00_axis_tready,
      M_AXIS_TSTRB(3 downto 0) => NLW_Upsampling_Bayes_M00_AXIS_inst_M_AXIS_TSTRB_UNCONNECTED(3 downto 0),
      M_AXIS_TVALID => m00_axis_tvalid,
      M_AXIS_send_data(95 downto 0) => pixel_high(95 downto 0),
      fifo_full => sr_busy,
      fifo_wren => sr_pout_en
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
      I0 => axis_pixel_stuck,
      O => Upsampling_Bayes_S00_AXIS_inst_i_1_n_0
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
sr_pout_en_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_pin_en,
      O => sr_pout_en
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
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
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
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
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
