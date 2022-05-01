-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Apr 30 19:57:03 2022
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
    sr_pin_en : out STD_LOGIC;
    \FSM_sequential_buffer_count_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    trans_eff_reg_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer is
  signal \FSM_sequential_buffer_count[1]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_buffer_count_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
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
      CE => E(0),
      CLR => \FSM_sequential_buffer_count[1]_i_3_n_0\,
      D => D(0),
      Q => \^q\(0)
    );
\FSM_sequential_buffer_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \FSM_sequential_buffer_count[1]_i_3_n_0\,
      D => D(1),
      Q => \^q\(1)
    );
trans_eff_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_sequential_buffer_count_reg[0]_0\
    );
trans_eff_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trans_eff_reg_reg_0,
      Q => sr_pin_en,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    \fifo_full_status_reg[0]_0\ : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    sr_pin_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS is
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal axis_tlast : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid_delay_i_3_n_0 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \fifo_full_status[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_full_status[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_full_status_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_full_status_reg_n_0_[1]\ : STD_LOGIC;
  signal fifo_write_selector : STD_LOGIC;
  signal fifo_write_selector_i_1_n_0 : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal read_pointer : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[1]_i_2_n_0\ : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[1]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of fifo_write_selector_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of tx_done_i_1 : label is "soft_lutpair2";
begin
\FSM_sequential_buffer_count[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \fifo_full_status_reg_n_0_[0]\,
      I1 => \fifo_full_status_reg_n_0_[1]\,
      O => \fifo_full_status_reg[0]_0\
    );
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F7FFFFFF"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(2),
      I2 => \FSM_sequential_mst_exec_state[0]_i_2_n_0\,
      I3 => count_reg(0),
      I4 => mst_exec_state(0),
      I5 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(4),
      O => \FSM_sequential_mst_exec_state[0]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55D500C000C0"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I4 => mst_exec_state(0),
      I5 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => mst_exec_state(1),
      I4 => mst_exec_state(0),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => axis_tvalid_delay_i_1_n_0
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
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast,
      Q => m00_axis_tlast,
      R => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A8000000000"
    )
        port map (
      I0 => axis_tvalid_delay_i_3_n_0,
      I1 => \fifo_full_status_reg_n_0_[0]\,
      I2 => fifo_write_selector,
      I3 => \fifo_full_status_reg_n_0_[1]\,
      I4 => mst_exec_state(0),
      I5 => mst_exec_state(1),
      O => axis_tvalid
    );
axis_tvalid_delay_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => read_pointer(0),
      I1 => read_pointer(1),
      O => axis_tvalid_delay_i_3_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => m00_axis_tvalid,
      R => axis_tvalid_delay_i_1_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6FF0000"
    )
        port map (
      I0 => count_reg(0),
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      I3 => \count[0]_i_2_n_0\,
      I4 => m00_axis_aresetn,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => count_reg(4),
      I4 => count_reg(0),
      O => \count[0]_i_2_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000000FF0000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => \count[2]_i_2_n_0\,
      I4 => m00_axis_aresetn,
      I5 => count_reg(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF00000F000000"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(3),
      I2 => \count[2]_i_2_n_0\,
      I3 => count_reg(1),
      I4 => m00_axis_aresetn,
      I5 => count_reg(2),
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => count_reg(0),
      O => \count[2]_i_2_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E030"
    )
        port map (
      I0 => count_reg(4),
      I1 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I2 => m00_axis_aresetn,
      I3 => count_reg(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0A0"
    )
        port map (
      I0 => count_reg(4),
      I1 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I2 => m00_axis_aresetn,
      I3 => count_reg(3),
      O => \count[4]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count_reg(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count_reg(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \count[3]_i_1_n_0\,
      Q => count_reg(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \count[4]_i_1_n_0\,
      Q => count_reg(4),
      R => '0'
    );
\fifo_full_status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00888888A8A8A8A8"
    )
        port map (
      I0 => m00_axis_aresetn,
      I1 => \fifo_full_status_reg_n_0_[0]\,
      I2 => sr_pin_en,
      I3 => read_pointer(0),
      I4 => read_pointer(1),
      I5 => fifo_write_selector,
      O => \fifo_full_status[0]_i_1_n_0\
    );
\fifo_full_status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAA2AAA000000"
    )
        port map (
      I0 => m00_axis_aresetn,
      I1 => read_pointer(1),
      I2 => read_pointer(0),
      I3 => fifo_write_selector,
      I4 => sr_pin_en,
      I5 => \fifo_full_status_reg_n_0_[1]\,
      O => \fifo_full_status[1]_i_1_n_0\
    );
\fifo_full_status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \fifo_full_status[0]_i_1_n_0\,
      Q => \fifo_full_status_reg_n_0_[0]\,
      R => '0'
    );
\fifo_full_status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \fifo_full_status[1]_i_1_n_0\,
      Q => \fifo_full_status_reg_n_0_[1]\,
      R => '0'
    );
fifo_write_selector_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \fifo_full_status_reg_n_0_[1]\,
      I1 => \fifo_full_status_reg_n_0_[0]\,
      I2 => fifo_write_selector,
      O => fifo_write_selector_i_1_n_0
    );
fifo_write_selector_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => fifo_write_selector_i_1_n_0,
      Q => fifo_write_selector,
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => read_pointer(1),
      I1 => \read_pointer[1]_i_2_n_0\,
      I2 => read_pointer(0),
      O => \read_pointer[0]_i_1_n_0\
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => \read_pointer[1]_i_2_n_0\,
      I1 => read_pointer(1),
      I2 => read_pointer(0),
      O => \read_pointer[1]_i_1_n_0\
    );
\read_pointer[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47FFFFFFFFFFFF"
    )
        port map (
      I0 => \fifo_full_status_reg_n_0_[0]\,
      I1 => fifo_write_selector,
      I2 => \fifo_full_status_reg_n_0_[1]\,
      I3 => mst_exec_state(0),
      I4 => mst_exec_state(1),
      I5 => m00_axis_tready,
      O => \read_pointer[1]_i_2_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \read_pointer[0]_i_1_n_0\,
      Q => read_pointer(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \read_pointer[1]_i_1_n_0\,
      Q => read_pointer(1),
      R => axis_tvalid_delay_i_1_n_0
    );
tx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888A000"
    )
        port map (
      I0 => m00_axis_aresetn,
      I1 => tx_done_reg_n_0,
      I2 => read_pointer(0),
      I3 => read_pointer(1),
      I4 => \read_pointer[1]_i_2_n_0\,
      O => tx_done_i_1_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst_n_0 : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    trans_eff_reg_reg : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    trans_eff_reg_reg_0 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sr_pin_en : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS is
  signal clear : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC;
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_pointer0 : STD_LOGIC;
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal trans_eff_reg_i_2_n_0 : STD_LOGIC;
  signal \write_pointer[3]_i_1_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_i_2_n_0 : STD_LOGIC;
  signal writes_done_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_buffer_count[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of trans_eff_reg_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of writes_done_i_3 : label is "soft_lutpair9";
begin
\FSM_sequential_buffer_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DFFD"
    )
        port map (
      I0 => Q(1),
      I1 => s00_axis_tready_INST_0_i_1_n_0,
      I2 => read_pointer_reg(3),
      I3 => write_pointer_reg(3),
      I4 => Q(0),
      O => D(0)
    );
\FSM_sequential_buffer_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBEBEBE00000000"
    )
        port map (
      I0 => s00_axis_tready_INST_0_i_1_n_0,
      I1 => read_pointer_reg(3),
      I2 => write_pointer_reg(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => trans_eff_reg_reg,
      O => E(0)
    );
\FSM_sequential_buffer_count[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BEFF00"
    )
        port map (
      I0 => s00_axis_tready_INST_0_i_1_n_0,
      I1 => read_pointer_reg(3),
      I2 => write_pointer_reg(3),
      I3 => Q(0),
      I4 => Q(1),
      O => D(1)
    );
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => mst_exec_state,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
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
      I0 => read_pointer_reg(0),
      O => \p_0_in__0\(0)
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(1),
      O => p_0_in(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer_reg(1),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(2),
      O => p_0_in(2)
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => clear
    );
\read_pointer[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77770770"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => write_pointer_reg(3),
      I3 => read_pointer_reg(3),
      I4 => s00_axis_tready_INST_0_i_1_n_0,
      O => read_pointer0
    );
\read_pointer[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(1),
      I3 => read_pointer_reg(3),
      O => p_0_in(3)
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => read_pointer0,
      D => \p_0_in__0\(0),
      Q => read_pointer_reg(0),
      R => clear
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => read_pointer0,
      D => p_0_in(1),
      Q => read_pointer_reg(1),
      R => clear
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => read_pointer0,
      D => p_0_in(2),
      Q => read_pointer_reg(2),
      R => clear
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => read_pointer0,
      D => p_0_in(3),
      Q => read_pointer_reg(3),
      R => clear
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808088"
    )
        port map (
      I0 => mst_exec_state,
      I1 => s00_axis_aresetn,
      I2 => s00_axis_tready_INST_0_i_1_n_0,
      I3 => write_pointer_reg(3),
      I4 => read_pointer_reg(3),
      O => s00_axis_tready
    );
s00_axis_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => read_pointer_reg(2),
      I2 => write_pointer_reg(1),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(0),
      I5 => write_pointer_reg(0),
      O => s00_axis_tready_INST_0_i_1_n_0
    );
trans_eff_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00FFFFBF000000"
    )
        port map (
      I0 => s00_axis_tready_INST_0_i_1_n_0,
      I1 => trans_eff_reg_i_2_n_0,
      I2 => trans_eff_reg_reg_0,
      I3 => trans_eff_reg_reg,
      I4 => rst_n,
      I5 => sr_pin_en,
      O => rst_n_0
    );
trans_eff_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => read_pointer_reg(3),
      O => trans_eff_reg_i_2_n_0
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => \p_0_in__1\(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => write_pointer_reg(1),
      O => \p_0_in__1\(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(2),
      O => \p_0_in__1\(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => s00_axis_tready_INST_0_i_1_n_0,
      I1 => write_pointer_reg(3),
      I2 => read_pointer_reg(3),
      O => \write_pointer[3]_i_1_n_0\
    );
\write_pointer[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(1),
      I3 => write_pointer_reg(3),
      O => \p_0_in__1\(3)
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \write_pointer[3]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => write_pointer_reg(0),
      R => clear
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \write_pointer[3]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => write_pointer_reg(1),
      R => clear
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \write_pointer[3]_i_1_n_0\,
      D => \p_0_in__1\(2),
      Q => write_pointer_reg(2),
      R => clear
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \write_pointer[3]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => write_pointer_reg(3),
      R => clear
    );
writes_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDFFFF00000000"
    )
        port map (
      I0 => mst_exec_state,
      I1 => s00_axis_tlast,
      I2 => writes_done_i_2_n_0,
      I3 => writes_done_i_3_n_0,
      I4 => s00_axis_tvalid,
      I5 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => write_pointer_reg(2),
      I2 => read_pointer_reg(3),
      I3 => write_pointer_reg(3),
      O => writes_done_i_2_n_0
    );
writes_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => write_pointer_reg(0),
      I2 => read_pointer_reg(1),
      I3 => write_pointer_reg(1),
      O => writes_done_i_3_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
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
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes is
  signal AXIS_to_pixel_buffer_0_n_1 : STD_LOGIC;
  signal Upsampling_Bayes_M00_AXIS_inst_n_2 : STD_LOGIC;
  signal Upsampling_Bayes_S00_AXIS_inst_n_4 : STD_LOGIC;
  signal buffer_count : STD_LOGIC;
  signal \buffer_count__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \buffer_count__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sr_pin_en : STD_LOGIC;
begin
AXIS_to_pixel_buffer_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIS_to_pixel_buffer
     port map (
      D(1 downto 0) => \buffer_count__1\(1 downto 0),
      E(0) => buffer_count,
      \FSM_sequential_buffer_count_reg[0]_0\ => AXIS_to_pixel_buffer_0_n_1,
      Q(1 downto 0) => \buffer_count__0\(1 downto 0),
      clk => clk,
      rst_n => rst_n,
      sr_pin_en => sr_pin_en,
      trans_eff_reg_reg_0 => Upsampling_Bayes_S00_AXIS_inst_n_4
    );
Upsampling_Bayes_M00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_M00_AXIS
     port map (
      \fifo_full_status_reg[0]_0\ => Upsampling_Bayes_M00_AXIS_inst_n_2,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      sr_pin_en => sr_pin_en
    );
Upsampling_Bayes_S00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upsampling_Bayes_S00_AXIS
     port map (
      D(1 downto 0) => \buffer_count__1\(1 downto 0),
      E(0) => buffer_count,
      Q(1 downto 0) => \buffer_count__0\(1 downto 0),
      rst_n => rst_n,
      rst_n_0 => Upsampling_Bayes_S00_AXIS_inst_n_4,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      sr_pin_en => sr_pin_en,
      trans_eff_reg_reg => Upsampling_Bayes_M00_AXIS_inst_n_2,
      trans_eff_reg_reg_0 => AXIS_to_pixel_buffer_0_n_1
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
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
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
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      rst_n => rst_n,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
