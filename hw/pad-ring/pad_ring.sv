// Copyright 2024 Politecnico di Torino.
// Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// File: pad_ring.sv.tpl
// Author: Michele Caon, Luigi Giuffrida
// Date: 07/11/2024
// Description: GR-HEEP pad ring

module pad_ring (
  inout  wire  rst_nio,
  output logic rst_no,
  inout  wire  boot_select_io,
  output logic boot_select_o,
  inout  wire  execute_from_flash_io,
  output logic execute_from_flash_o,
  inout  wire  jtag_tck_io,
  output logic jtag_tck_o,
  inout  wire  jtag_tms_io,
  output logic jtag_tms_o,
  inout  wire  jtag_trst_nio,
  output logic jtag_trst_no,
  inout  wire  jtag_tdi_io,
  output logic jtag_tdi_o,
  inout  wire  jtag_tdo_io,
  input  logic jtag_tdo_i,
  inout  wire  uart_rx_io,
  output logic uart_rx_o,
  inout  wire  uart_tx_io,
  input  logic uart_tx_i,
  inout  wire  exit_valid_io,
  input  logic exit_valid_i,
  inout  wire  gpio_0_io,
  input  logic gpio_0_i,
  output logic gpio_0_o,
  input  logic gpio_0_oe_i,
  inout  wire  gpio_1_io,
  input  logic gpio_1_i,
  output logic gpio_1_o,
  input  logic gpio_1_oe_i,
  inout  wire  gpio_2_io,
  input  logic gpio_2_i,
  output logic gpio_2_o,
  input  logic gpio_2_oe_i,
  inout  wire  gpio_3_io,
  input  logic gpio_3_i,
  output logic gpio_3_o,
  input  logic gpio_3_oe_i,
  inout  wire  gpio_4_io,
  input  logic gpio_4_i,
  output logic gpio_4_o,
  input  logic gpio_4_oe_i,
  inout  wire  gpio_5_io,
  input  logic gpio_5_i,
  output logic gpio_5_o,
  input  logic gpio_5_oe_i,
  inout  wire  gpio_6_io,
  input  logic gpio_6_i,
  output logic gpio_6_o,
  input  logic gpio_6_oe_i,
  inout  wire  gpio_7_io,
  input  logic gpio_7_i,
  output logic gpio_7_o,
  input  logic gpio_7_oe_i,
  inout  wire  gpio_8_io,
  input  logic gpio_8_i,
  output logic gpio_8_o,
  input  logic gpio_8_oe_i,
  inout  wire  gpio_9_io,
  input  logic gpio_9_i,
  output logic gpio_9_o,
  input  logic gpio_9_oe_i,
  inout  wire  gpio_10_io,
  input  logic gpio_10_i,
  output logic gpio_10_o,
  input  logic gpio_10_oe_i,
  inout  wire  gpio_11_io,
  input  logic gpio_11_i,
  output logic gpio_11_o,
  input  logic gpio_11_oe_i,
  inout  wire  gpio_12_io,
  input  logic gpio_12_i,
  output logic gpio_12_o,
  input  logic gpio_12_oe_i,
  inout  wire  gpio_13_io,
  input  logic gpio_13_i,
  output logic gpio_13_o,
  input  logic gpio_13_oe_i,
  inout  wire  gpio_14_io,
  input  logic gpio_14_i,
  output logic gpio_14_o,
  input  logic gpio_14_oe_i,
  inout  wire  gpio_15_io,
  input  logic gpio_15_i,
  output logic gpio_15_o,
  input  logic gpio_15_oe_i,
  inout  wire  gpio_16_io,
  input  logic gpio_16_i,
  output logic gpio_16_o,
  input  logic gpio_16_oe_i,
  inout  wire  gpio_17_io,
  input  logic gpio_17_i,
  output logic gpio_17_o,
  input  logic gpio_17_oe_i,
  inout  wire  gpio_18_io,
  input  logic gpio_18_i,
  output logic gpio_18_o,
  input  logic gpio_18_oe_i,
  inout  wire  gpio_19_io,
  input  logic gpio_19_i,
  output logic gpio_19_o,
  input  logic gpio_19_oe_i,
  inout  wire  gpio_20_io,
  input  logic gpio_20_i,
  output logic gpio_20_o,
  input  logic gpio_20_oe_i,
  inout  wire  gpio_21_io,
  input  logic gpio_21_i,
  output logic gpio_21_o,
  input  logic gpio_21_oe_i,
  inout  wire  gpio_22_io,
  input  logic gpio_22_i,
  output logic gpio_22_o,
  input  logic gpio_22_oe_i,
  inout  wire  gpio_23_io,
  input  logic gpio_23_i,
  output logic gpio_23_o,
  input  logic gpio_23_oe_i,
  inout  wire  gpio_24_io,
  input  logic gpio_24_i,
  output logic gpio_24_o,
  input  logic gpio_24_oe_i,
  inout  wire  gpio_25_io,
  input  logic gpio_25_i,
  output logic gpio_25_o,
  input  logic gpio_25_oe_i,
  inout  wire  gpio_26_io,
  input  logic gpio_26_i,
  output logic gpio_26_o,
  input  logic gpio_26_oe_i,
  inout  wire  gpio_27_io,
  input  logic gpio_27_i,
  output logic gpio_27_o,
  input  logic gpio_27_oe_i,
  inout  wire  gpio_28_io,
  input  logic gpio_28_i,
  output logic gpio_28_o,
  input  logic gpio_28_oe_i,
  inout  wire  gpio_29_io,
  input  logic gpio_29_i,
  output logic gpio_29_o,
  input  logic gpio_29_oe_i,
  inout  wire  gpio_30_io,
  input  logic gpio_30_i,
  output logic gpio_30_o,
  input  logic gpio_30_oe_i,
  inout  wire  spi_flash_sck_io,
  input  logic spi_flash_sck_i,
  output logic spi_flash_sck_o,
  input  logic spi_flash_sck_oe_i,
  inout  wire  spi_flash_cs_0_io,
  input  logic spi_flash_cs_0_i,
  output logic spi_flash_cs_0_o,
  input  logic spi_flash_cs_0_oe_i,
  inout  wire  spi_flash_cs_1_io,
  input  logic spi_flash_cs_1_i,
  output logic spi_flash_cs_1_o,
  input  logic spi_flash_cs_1_oe_i,
  inout  wire  spi_flash_sd_0_io,
  input  logic spi_flash_sd_0_i,
  output logic spi_flash_sd_0_o,
  input  logic spi_flash_sd_0_oe_i,
  inout  wire  spi_flash_sd_1_io,
  input  logic spi_flash_sd_1_i,
  output logic spi_flash_sd_1_o,
  input  logic spi_flash_sd_1_oe_i,
  inout  wire  spi_flash_sd_2_io,
  input  logic spi_flash_sd_2_i,
  output logic spi_flash_sd_2_o,
  input  logic spi_flash_sd_2_oe_i,
  inout  wire  spi_flash_sd_3_io,
  input  logic spi_flash_sd_3_i,
  output logic spi_flash_sd_3_o,
  input  logic spi_flash_sd_3_oe_i,
  inout  wire  spi_sck_io,
  input  logic spi_sck_i,
  output logic spi_sck_o,
  input  logic spi_sck_oe_i,
  inout  wire  spi_cs_0_io,
  input  logic spi_cs_0_i,
  output logic spi_cs_0_o,
  input  logic spi_cs_0_oe_i,
  inout  wire  spi_cs_1_io,
  input  logic spi_cs_1_i,
  output logic spi_cs_1_o,
  input  logic spi_cs_1_oe_i,
  inout  wire  spi_sd_0_io,
  input  logic spi_sd_0_i,
  output logic spi_sd_0_o,
  input  logic spi_sd_0_oe_i,
  inout  wire  spi_sd_1_io,
  input  logic spi_sd_1_i,
  output logic spi_sd_1_o,
  input  logic spi_sd_1_oe_i,
  inout  wire  spi_sd_2_io,
  input  logic spi_sd_2_i,
  output logic spi_sd_2_o,
  input  logic spi_sd_2_oe_i,
  inout  wire  spi_sd_3_io,
  input  logic spi_sd_3_i,
  output logic spi_sd_3_o,
  input  logic spi_sd_3_oe_i,




  inout  wire  i2s_sck_io,
  input  logic i2s_sck_i,
  output logic i2s_sck_o,
  input  logic i2s_sck_oe_i,
  inout  wire  i2s_ws_io,
  input  logic i2s_ws_i,
  output logic i2s_ws_o,
  input  logic i2s_ws_oe_i,
  inout  wire  i2s_sd_io,
  input  logic i2s_sd_i,
  output logic i2s_sd_o,
  input  logic i2s_sd_oe_i,



















  inout  wire  clk_io,
  output logic clk_o,
  inout  wire  exit_value_io,
  input  logic exit_value_i,

  // here just for simplicity
  /* verilator lint_off UNUSED */
  input logic [core_v_mini_mcu_pkg::NUM_PAD-1:0][0:0] pad_attributes_i
);
  // ---------
  // PAD CELLS
  // ---------

  // CORE-V-MINI-MCU pads
  // --------------------
  pad_cell_input #(
    .PADATTR(0)
  ) pad_rst_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (rst_no),
    .pad_io          (rst_nio),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_boot_select_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (boot_select_o),
    .pad_io          (boot_select_io),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_execute_from_flash_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (execute_from_flash_o),
    .pad_io          (execute_from_flash_io),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_jtag_tck_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (jtag_tck_o),
    .pad_io          (jtag_tck_io),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_jtag_tms_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (jtag_tms_o),
    .pad_io          (jtag_tms_io),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_jtag_trst_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (jtag_trst_no),
    .pad_io          (jtag_trst_nio),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_jtag_tdi_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (jtag_tdi_o),
    .pad_io          (jtag_tdi_io),
    .pad_attributes_i('0)
  );


  pad_cell_output #(
    .PADATTR(0)
  ) pad_jtag_tdo_i (
    .pad_in_i        (jtag_tdo_i),
    .pad_oe_i        (1'b1),
    .pad_out_o       (),
    .pad_io          (jtag_tdo_io),
    .pad_attributes_i('0)
  );


  pad_cell_input #(
    .PADATTR(0)
  ) pad_uart_rx_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (uart_rx_o),
    .pad_io          (uart_rx_io),
    .pad_attributes_i('0)
  );


  pad_cell_output #(
    .PADATTR(0)
  ) pad_uart_tx_i (
    .pad_in_i        (uart_tx_i),
    .pad_oe_i        (1'b1),
    .pad_out_o       (),
    .pad_io          (uart_tx_io),
    .pad_attributes_i('0)
  );


  pad_cell_output #(
    .PADATTR(0)
  ) pad_exit_valid_i (
    .pad_in_i        (exit_valid_i),
    .pad_oe_i        (1'b1),
    .pad_out_o       (),
    .pad_io          (exit_valid_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_0_i (
    .pad_in_i        (gpio_0_i),
    .pad_oe_i        (gpio_0_oe_i),
    .pad_out_o       (gpio_0_o),
    .pad_io          (gpio_0_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_1_i (
    .pad_in_i        (gpio_1_i),
    .pad_oe_i        (gpio_1_oe_i),
    .pad_out_o       (gpio_1_o),
    .pad_io          (gpio_1_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_2_i (
    .pad_in_i        (gpio_2_i),
    .pad_oe_i        (gpio_2_oe_i),
    .pad_out_o       (gpio_2_o),
    .pad_io          (gpio_2_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_3_i (
    .pad_in_i        (gpio_3_i),
    .pad_oe_i        (gpio_3_oe_i),
    .pad_out_o       (gpio_3_o),
    .pad_io          (gpio_3_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_4_i (
    .pad_in_i        (gpio_4_i),
    .pad_oe_i        (gpio_4_oe_i),
    .pad_out_o       (gpio_4_o),
    .pad_io          (gpio_4_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_5_i (
    .pad_in_i        (gpio_5_i),
    .pad_oe_i        (gpio_5_oe_i),
    .pad_out_o       (gpio_5_o),
    .pad_io          (gpio_5_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_6_i (
    .pad_in_i        (gpio_6_i),
    .pad_oe_i        (gpio_6_oe_i),
    .pad_out_o       (gpio_6_o),
    .pad_io          (gpio_6_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_7_i (
    .pad_in_i        (gpio_7_i),
    .pad_oe_i        (gpio_7_oe_i),
    .pad_out_o       (gpio_7_o),
    .pad_io          (gpio_7_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_8_i (
    .pad_in_i        (gpio_8_i),
    .pad_oe_i        (gpio_8_oe_i),
    .pad_out_o       (gpio_8_o),
    .pad_io          (gpio_8_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_9_i (
    .pad_in_i        (gpio_9_i),
    .pad_oe_i        (gpio_9_oe_i),
    .pad_out_o       (gpio_9_o),
    .pad_io          (gpio_9_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_10_i (
    .pad_in_i        (gpio_10_i),
    .pad_oe_i        (gpio_10_oe_i),
    .pad_out_o       (gpio_10_o),
    .pad_io          (gpio_10_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_11_i (
    .pad_in_i        (gpio_11_i),
    .pad_oe_i        (gpio_11_oe_i),
    .pad_out_o       (gpio_11_o),
    .pad_io          (gpio_11_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_12_i (
    .pad_in_i        (gpio_12_i),
    .pad_oe_i        (gpio_12_oe_i),
    .pad_out_o       (gpio_12_o),
    .pad_io          (gpio_12_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_13_i (
    .pad_in_i        (gpio_13_i),
    .pad_oe_i        (gpio_13_oe_i),
    .pad_out_o       (gpio_13_o),
    .pad_io          (gpio_13_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_14_i (
    .pad_in_i        (gpio_14_i),
    .pad_oe_i        (gpio_14_oe_i),
    .pad_out_o       (gpio_14_o),
    .pad_io          (gpio_14_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_15_i (
    .pad_in_i        (gpio_15_i),
    .pad_oe_i        (gpio_15_oe_i),
    .pad_out_o       (gpio_15_o),
    .pad_io          (gpio_15_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_16_i (
    .pad_in_i        (gpio_16_i),
    .pad_oe_i        (gpio_16_oe_i),
    .pad_out_o       (gpio_16_o),
    .pad_io          (gpio_16_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_17_i (
    .pad_in_i        (gpio_17_i),
    .pad_oe_i        (gpio_17_oe_i),
    .pad_out_o       (gpio_17_o),
    .pad_io          (gpio_17_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_18_i (
    .pad_in_i        (gpio_18_i),
    .pad_oe_i        (gpio_18_oe_i),
    .pad_out_o       (gpio_18_o),
    .pad_io          (gpio_18_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_19_i (
    .pad_in_i        (gpio_19_i),
    .pad_oe_i        (gpio_19_oe_i),
    .pad_out_o       (gpio_19_o),
    .pad_io          (gpio_19_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_20_i (
    .pad_in_i        (gpio_20_i),
    .pad_oe_i        (gpio_20_oe_i),
    .pad_out_o       (gpio_20_o),
    .pad_io          (gpio_20_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_21_i (
    .pad_in_i        (gpio_21_i),
    .pad_oe_i        (gpio_21_oe_i),
    .pad_out_o       (gpio_21_o),
    .pad_io          (gpio_21_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_22_i (
    .pad_in_i        (gpio_22_i),
    .pad_oe_i        (gpio_22_oe_i),
    .pad_out_o       (gpio_22_o),
    .pad_io          (gpio_22_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_23_i (
    .pad_in_i        (gpio_23_i),
    .pad_oe_i        (gpio_23_oe_i),
    .pad_out_o       (gpio_23_o),
    .pad_io          (gpio_23_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_24_i (
    .pad_in_i        (gpio_24_i),
    .pad_oe_i        (gpio_24_oe_i),
    .pad_out_o       (gpio_24_o),
    .pad_io          (gpio_24_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_25_i (
    .pad_in_i        (gpio_25_i),
    .pad_oe_i        (gpio_25_oe_i),
    .pad_out_o       (gpio_25_o),
    .pad_io          (gpio_25_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_26_i (
    .pad_in_i        (gpio_26_i),
    .pad_oe_i        (gpio_26_oe_i),
    .pad_out_o       (gpio_26_o),
    .pad_io          (gpio_26_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_27_i (
    .pad_in_i        (gpio_27_i),
    .pad_oe_i        (gpio_27_oe_i),
    .pad_out_o       (gpio_27_o),
    .pad_io          (gpio_27_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_28_i (
    .pad_in_i        (gpio_28_i),
    .pad_oe_i        (gpio_28_oe_i),
    .pad_out_o       (gpio_28_o),
    .pad_io          (gpio_28_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_29_i (
    .pad_in_i        (gpio_29_i),
    .pad_oe_i        (gpio_29_oe_i),
    .pad_out_o       (gpio_29_o),
    .pad_io          (gpio_29_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_gpio_30_i (
    .pad_in_i        (gpio_30_i),
    .pad_oe_i        (gpio_30_oe_i),
    .pad_out_o       (gpio_30_o),
    .pad_io          (gpio_30_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_sck_i (
    .pad_in_i        (spi_flash_sck_i),
    .pad_oe_i        (spi_flash_sck_oe_i),
    .pad_out_o       (spi_flash_sck_o),
    .pad_io          (spi_flash_sck_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_cs_0_i (
    .pad_in_i        (spi_flash_cs_0_i),
    .pad_oe_i        (spi_flash_cs_0_oe_i),
    .pad_out_o       (spi_flash_cs_0_o),
    .pad_io          (spi_flash_cs_0_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_cs_1_i (
    .pad_in_i        (spi_flash_cs_1_i),
    .pad_oe_i        (spi_flash_cs_1_oe_i),
    .pad_out_o       (spi_flash_cs_1_o),
    .pad_io          (spi_flash_cs_1_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_sd_0_i (
    .pad_in_i        (spi_flash_sd_0_i),
    .pad_oe_i        (spi_flash_sd_0_oe_i),
    .pad_out_o       (spi_flash_sd_0_o),
    .pad_io          (spi_flash_sd_0_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_sd_1_i (
    .pad_in_i        (spi_flash_sd_1_i),
    .pad_oe_i        (spi_flash_sd_1_oe_i),
    .pad_out_o       (spi_flash_sd_1_o),
    .pad_io          (spi_flash_sd_1_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_sd_2_i (
    .pad_in_i        (spi_flash_sd_2_i),
    .pad_oe_i        (spi_flash_sd_2_oe_i),
    .pad_out_o       (spi_flash_sd_2_o),
    .pad_io          (spi_flash_sd_2_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_flash_sd_3_i (
    .pad_in_i        (spi_flash_sd_3_i),
    .pad_oe_i        (spi_flash_sd_3_oe_i),
    .pad_out_o       (spi_flash_sd_3_o),
    .pad_io          (spi_flash_sd_3_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_sck_i (
    .pad_in_i        (spi_sck_i),
    .pad_oe_i        (spi_sck_oe_i),
    .pad_out_o       (spi_sck_o),
    .pad_io          (spi_sck_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_cs_0_i (
    .pad_in_i        (spi_cs_0_i),
    .pad_oe_i        (spi_cs_0_oe_i),
    .pad_out_o       (spi_cs_0_o),
    .pad_io          (spi_cs_0_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_cs_1_i (
    .pad_in_i        (spi_cs_1_i),
    .pad_oe_i        (spi_cs_1_oe_i),
    .pad_out_o       (spi_cs_1_o),
    .pad_io          (spi_cs_1_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_sd_0_i (
    .pad_in_i        (spi_sd_0_i),
    .pad_oe_i        (spi_sd_0_oe_i),
    .pad_out_o       (spi_sd_0_o),
    .pad_io          (spi_sd_0_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_sd_1_i (
    .pad_in_i        (spi_sd_1_i),
    .pad_oe_i        (spi_sd_1_oe_i),
    .pad_out_o       (spi_sd_1_o),
    .pad_io          (spi_sd_1_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_sd_2_i (
    .pad_in_i        (spi_sd_2_i),
    .pad_oe_i        (spi_sd_2_oe_i),
    .pad_out_o       (spi_sd_2_o),
    .pad_io          (spi_sd_2_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_spi_sd_3_i (
    .pad_in_i        (spi_sd_3_i),
    .pad_oe_i        (spi_sd_3_oe_i),
    .pad_out_o       (spi_sd_3_o),
    .pad_io          (spi_sd_3_io),
    .pad_attributes_i('0)
  );




  pad_cell_inout #(
    .PADATTR(0)
  ) pad_i2s_sck_i (
    .pad_in_i        (i2s_sck_i),
    .pad_oe_i        (i2s_sck_oe_i),
    .pad_out_o       (i2s_sck_o),
    .pad_io          (i2s_sck_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_i2s_ws_i (
    .pad_in_i        (i2s_ws_i),
    .pad_oe_i        (i2s_ws_oe_i),
    .pad_out_o       (i2s_ws_o),
    .pad_io          (i2s_ws_io),
    .pad_attributes_i('0)
  );


  pad_cell_inout #(
    .PADATTR(0)
  ) pad_i2s_sd_i (
    .pad_in_i        (i2s_sd_i),
    .pad_oe_i        (i2s_sd_oe_i),
    .pad_out_o       (i2s_sd_o),
    .pad_io          (i2s_sd_io),
    .pad_attributes_i('0)
  );












  // GR-HEEP xternal pads
  // -----------------------
  pad_cell_input #(
    .PADATTR(0)
  ) pad_clk_i (
    .pad_in_i        (1'b0),
    .pad_oe_i        (1'b0),
    .pad_out_o       (clk_o),
    .pad_io          (clk_io),
    .pad_attributes_i('0)
  );


  pad_cell_output #(
    .PADATTR(0)
  ) pad_exit_value_i (
    .pad_in_i        (exit_value_i),
    .pad_oe_i        (1'b1),
    .pad_out_o       (),
    .pad_io          (exit_value_io),
    .pad_attributes_i('0)
  );


endmodule  // pad_ring
