// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_qpsk (
        input1,
        input2,
        temp1_re500_din,
        temp1_re500_full_n,
        temp1_re500_write,
        temp1_im501_din,
        temp1_im501_full_n,
        temp1_im501_write,
        ap_clk,
        ap_rst,
        input2_ap_vld,
        input1_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [0:0] input1;
input  [0:0] input2;
output  [15:0] temp1_re500_din;
input   temp1_re500_full_n;
output   temp1_re500_write;
output  [15:0] temp1_im501_din;
input   temp1_im501_full_n;
output   temp1_im501_write;
input   ap_clk;
input   ap_rst;
input   input2_ap_vld;
input   input1_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    qpsk_Block_entry11_proc10_U0_ap_start;
wire    qpsk_Block_entry11_proc10_U0_ap_done;
wire    qpsk_Block_entry11_proc10_U0_ap_continue;
wire    qpsk_Block_entry11_proc10_U0_ap_idle;
wire    qpsk_Block_entry11_proc10_U0_ap_ready;
wire   [15:0] qpsk_Block_entry11_proc10_U0_temp1_re500_din;
wire    qpsk_Block_entry11_proc10_U0_temp1_re500_write;
wire   [15:0] qpsk_Block_entry11_proc10_U0_temp1_im501_din;
wire    qpsk_Block_entry11_proc10_U0_temp1_im501_write;

top_tx_qpsk_Block_entry11_proc10 qpsk_Block_entry11_proc10_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(qpsk_Block_entry11_proc10_U0_ap_start),
    .ap_done(qpsk_Block_entry11_proc10_U0_ap_done),
    .ap_continue(qpsk_Block_entry11_proc10_U0_ap_continue),
    .ap_idle(qpsk_Block_entry11_proc10_U0_ap_idle),
    .ap_ready(qpsk_Block_entry11_proc10_U0_ap_ready),
    .input2(input2),
    .temp1_re500_din(qpsk_Block_entry11_proc10_U0_temp1_re500_din),
    .temp1_re500_full_n(temp1_re500_full_n),
    .temp1_re500_write(qpsk_Block_entry11_proc10_U0_temp1_re500_write),
    .input1(input1),
    .temp1_im501_din(qpsk_Block_entry11_proc10_U0_temp1_im501_din),
    .temp1_im501_full_n(temp1_im501_full_n),
    .temp1_im501_write(qpsk_Block_entry11_proc10_U0_temp1_im501_write)
);

assign ap_done = qpsk_Block_entry11_proc10_U0_ap_done;

assign ap_idle = qpsk_Block_entry11_proc10_U0_ap_idle;

assign ap_ready = qpsk_Block_entry11_proc10_U0_ap_ready;

assign qpsk_Block_entry11_proc10_U0_ap_continue = ap_continue;

assign qpsk_Block_entry11_proc10_U0_ap_start = ap_start;

assign temp1_im501_din = qpsk_Block_entry11_proc10_U0_temp1_im501_din;

assign temp1_im501_write = qpsk_Block_entry11_proc10_U0_temp1_im501_write;

assign temp1_re500_din = qpsk_Block_entry11_proc10_U0_temp1_re500_din;

assign temp1_re500_write = qpsk_Block_entry11_proc10_U0_temp1_re500_write;

endmodule //top_tx_qpsk
