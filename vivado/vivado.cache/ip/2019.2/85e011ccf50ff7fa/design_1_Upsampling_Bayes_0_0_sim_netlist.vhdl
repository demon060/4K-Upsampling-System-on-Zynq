-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May  1 17:03:48 2022
-- Host        : DESKTOP-9HE5DLC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Upsampling_Bayes_0_0_sim_netlist.vhdl
-- Design      : design_1_Upsampling_Bayes_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer is
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
  attribute AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer : entity is 32;
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer : entity is 24;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer is
  signal \FSM_sequential_buffer_count[1]_i_3_n_0\ : STD_LOGIC;
  signal \buffer\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \buffer_count__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \buffer_count__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  signal trans_eff_reg : STD_LOGIC;
  signal trans_eff_reg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[1]_i_2\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute SOFT_HLUTNM of \buffer[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \buffer[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \buffer[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buffer[15]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \buffer[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \buffer[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pixel_out_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of stuck_INST_0 : label is "soft_lutpair5";
begin
  trans_eff <= \^trans_eff\;
\FSM_sequential_buffer_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \buffer_count__0\(0),
      I1 => buf_wren,
      I2 => \buffer_count__0\(1),
      O => \buffer_count__1\(0)
    );
\FSM_sequential_buffer_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => buf_rden,
      I1 => \buffer_count__0\(1),
      I2 => \buffer_count__0\(0),
      I3 => buf_wren,
      O => trans_eff_reg
    );
\FSM_sequential_buffer_count[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => \buffer_count__0\(0),
      I1 => \buffer_count__0\(1),
      I2 => buf_wren,
      O => \buffer_count__1\(1)
    );
\FSM_sequential_buffer_count[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \FSM_sequential_buffer_count[1]_i_3_n_0\
    );
\FSM_sequential_buffer_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => trans_eff_reg,
      CLR => \FSM_sequential_buffer_count[1]_i_3_n_0\,
      D => \buffer_count__1\(0),
      Q => \buffer_count__0\(0)
    );
\FSM_sequential_buffer_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => trans_eff_reg,
      CLR => \FSM_sequential_buffer_count[1]_i_3_n_0\,
      D => \buffer_count__1\(1),
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
trans_eff_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80FFFFAA800000"
    )
        port map (
      I0 => buf_rden,
      I1 => \buffer_count__0\(1),
      I2 => \buffer_count__0\(0),
      I3 => buf_wren,
      I4 => rst_n,
      I5 => \^trans_eff\,
      O => trans_eff_reg_i_1_n_0
    );
trans_eff_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trans_eff_reg_i_1_n_0,
      Q => \^trans_eff\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS is
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
  attribute C_S_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS : entity is 32;
  attribute IDLE : string;
  attribute IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS : entity is "2'b00";
  attribute NUMBER_OF_INPUT_WORDS : integer;
  attribute NUMBER_OF_INPUT_WORDS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS : entity is 8;
  attribute WRITE_FIFO : string;
  attribute WRITE_FIFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS : entity is "2'b01";
  attribute bit_num : integer;
  attribute bit_num of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS : entity is 3;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes is
  port (
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes is
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
  attribute AXIS_TDATA_WIDTH : integer;
  attribute AXIS_TDATA_WIDTH of AXIS_to_pixel_buffer_0 : label is 32;
  attribute PIXEL_WIDTH : integer;
  attribute PIXEL_WIDTH of AXIS_to_pixel_buffer_0 : label is 24;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of Upsampling_Bayes_S00_AXIS_inst : label is 32;
  attribute IDLE : string;
  attribute IDLE of Upsampling_Bayes_S00_AXIS_inst : label is "2'b00";
  attribute NUMBER_OF_INPUT_WORDS : integer;
  attribute NUMBER_OF_INPUT_WORDS of Upsampling_Bayes_S00_AXIS_inst : label is 8;
  attribute WRITE_FIFO : string;
  attribute WRITE_FIFO of Upsampling_Bayes_S00_AXIS_inst : label is "2'b01";
  attribute bit_num : integer;
  attribute bit_num of Upsampling_Bayes_S00_AXIS_inst : label is 3;
begin
AXIS_to_pixel_buffer_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer
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
Upsampling_Bayes_S00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS
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
insti_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => sr_busy
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
sr_pin_en_inst: unisim.vcomponents.LUT1
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Upsampling_Bayes_0_0,Upsampling_Bayes,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Upsampling_Bayes,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
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
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const0>\;
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  m00_axis_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes
     port map (
      clk => clk,
      rst_n => rst_n,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
