// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_adding_pilot_Pipeline_output_arrangement (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        pilot_sym_M_real_V_address0,
        pilot_sym_M_real_V_ce0,
        pilot_sym_M_real_V_q0,
        pilot_sym_M_imag_V_address0,
        pilot_sym_M_imag_V_ce0,
        pilot_sym_M_imag_V_q0,
        out_re_arr_address0,
        out_re_arr_ce0,
        out_re_arr_we0,
        out_re_arr_d0,
        out_im_arr_address0,
        out_im_arr_ce0,
        out_im_arr_we0,
        out_im_arr_d0,
        data_symb1_M_real_V_address0,
        data_symb1_M_real_V_ce0,
        data_symb1_M_real_V_q0,
        data_symb1_M_imag_V_address0,
        data_symb1_M_imag_V_ce0,
        data_symb1_M_imag_V_q0,
        data_symb2_M_real_V_address0,
        data_symb2_M_real_V_ce0,
        data_symb2_M_real_V_q0,
        data_symb2_M_imag_V_address0,
        data_symb2_M_imag_V_ce0,
        data_symb2_M_imag_V_q0,
        data_symb3_M_real_V_address0,
        data_symb3_M_real_V_ce0,
        data_symb3_M_real_V_q0,
        data_symb3_M_imag_V_address0,
        data_symb3_M_imag_V_ce0,
        data_symb3_M_imag_V_q0,
        data_symb4_M_real_V_address0,
        data_symb4_M_real_V_ce0,
        data_symb4_M_real_V_q0,
        data_symb4_M_imag_V_address0,
        data_symb4_M_imag_V_ce0,
        data_symb4_M_imag_V_q0,
        data_symb5_M_real_V_address0,
        data_symb5_M_real_V_ce0,
        data_symb5_M_real_V_q0,
        data_symb5_M_imag_V_address0,
        data_symb5_M_imag_V_ce0,
        data_symb5_M_imag_V_q0,
        data_symb6_M_real_V_address0,
        data_symb6_M_real_V_ce0,
        data_symb6_M_real_V_q0,
        data_symb6_M_imag_V_address0,
        data_symb6_M_imag_V_ce0,
        data_symb6_M_imag_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] pilot_sym_M_real_V_address0;
output   pilot_sym_M_real_V_ce0;
input  [14:0] pilot_sym_M_real_V_q0;
output  [9:0] pilot_sym_M_imag_V_address0;
output   pilot_sym_M_imag_V_ce0;
input  [14:0] pilot_sym_M_imag_V_q0;
output  [12:0] out_re_arr_address0;
output   out_re_arr_ce0;
output   out_re_arr_we0;
output  [15:0] out_re_arr_d0;
output  [12:0] out_im_arr_address0;
output   out_im_arr_ce0;
output   out_im_arr_we0;
output  [15:0] out_im_arr_d0;
output  [9:0] data_symb1_M_real_V_address0;
output   data_symb1_M_real_V_ce0;
input  [15:0] data_symb1_M_real_V_q0;
output  [9:0] data_symb1_M_imag_V_address0;
output   data_symb1_M_imag_V_ce0;
input  [15:0] data_symb1_M_imag_V_q0;
output  [9:0] data_symb2_M_real_V_address0;
output   data_symb2_M_real_V_ce0;
input  [15:0] data_symb2_M_real_V_q0;
output  [9:0] data_symb2_M_imag_V_address0;
output   data_symb2_M_imag_V_ce0;
input  [15:0] data_symb2_M_imag_V_q0;
output  [9:0] data_symb3_M_real_V_address0;
output   data_symb3_M_real_V_ce0;
input  [15:0] data_symb3_M_real_V_q0;
output  [9:0] data_symb3_M_imag_V_address0;
output   data_symb3_M_imag_V_ce0;
input  [15:0] data_symb3_M_imag_V_q0;
output  [9:0] data_symb4_M_real_V_address0;
output   data_symb4_M_real_V_ce0;
input  [15:0] data_symb4_M_real_V_q0;
output  [9:0] data_symb4_M_imag_V_address0;
output   data_symb4_M_imag_V_ce0;
input  [15:0] data_symb4_M_imag_V_q0;
output  [9:0] data_symb5_M_real_V_address0;
output   data_symb5_M_real_V_ce0;
input  [15:0] data_symb5_M_real_V_q0;
output  [9:0] data_symb5_M_imag_V_address0;
output   data_symb5_M_imag_V_ce0;
input  [15:0] data_symb5_M_imag_V_q0;
output  [9:0] data_symb6_M_real_V_address0;
output   data_symb6_M_real_V_ce0;
input  [15:0] data_symb6_M_real_V_q0;
output  [9:0] data_symb6_M_imag_V_address0;
output   data_symb6_M_imag_V_ce0;
input  [15:0] data_symb6_M_imag_V_q0;

reg ap_idle;
reg pilot_sym_M_real_V_ce0;
reg pilot_sym_M_imag_V_ce0;
reg out_re_arr_ce0;
reg out_re_arr_we0;
reg[15:0] out_re_arr_d0;
reg out_im_arr_ce0;
reg out_im_arr_we0;
reg data_symb1_M_real_V_ce0;
reg data_symb1_M_imag_V_ce0;
reg data_symb2_M_real_V_ce0;
reg data_symb2_M_imag_V_ce0;
reg data_symb3_M_real_V_ce0;
reg data_symb3_M_imag_V_ce0;
reg data_symb4_M_real_V_ce0;
reg data_symb4_M_imag_V_ce0;
reg data_symb5_M_real_V_ce0;
reg data_symb5_M_imag_V_ce0;
reg data_symb6_M_real_V_ce0;
reg data_symb6_M_imag_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln245_fu_330_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln245_reg_466;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln246_fu_364_p2;
reg   [0:0] icmp_ln246_reg_470;
reg   [12:0] out_re_arr_addr_reg_474;
reg   [12:0] out_im_arr_addr_reg_479;
wire   [0:0] icmp_ln249_fu_380_p2;
reg   [0:0] icmp_ln249_reg_484;
wire   [0:0] icmp_ln252_fu_386_p2;
reg   [0:0] icmp_ln252_reg_488;
wire   [0:0] tmp_17_fu_392_p3;
reg   [0:0] tmp_17_reg_492;
wire   [0:0] icmp_ln258_fu_406_p2;
reg   [0:0] icmp_ln258_reg_506;
wire   [0:0] icmp_ln261_fu_412_p2;
reg   [0:0] icmp_ln261_reg_510;
reg   [15:0] ap_phi_mux_storemerge6_phi_fu_299_p14;
wire   [15:0] pilot_sym_M_imag_V_load_cast_fu_454_p1;
wire   [15:0] ap_phi_reg_pp0_iter1_storemerge6_reg_296;
wire   [63:0] i_17_cast23_fu_342_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln256_fu_400_p1;
wire   [63:0] zext_ln262_fu_418_p1;
wire   [63:0] zext_ln259_fu_426_p1;
wire   [63:0] zext_ln253_fu_432_p1;
wire   [63:0] zext_ln250_fu_438_p1;
reg   [12:0] i_fu_80;
wire   [12:0] add_ln245_fu_336_p2;
wire    ap_loop_init;
reg   [12:0] ap_sig_allocacmp_i_10;
wire   [15:0] pilot_sym_M_real_V_load_cast_fu_449_p1;
wire   [2:0] tmp_fu_354_p4;
wire   [1:0] tmp_16_fu_370_p4;
wire   [9:0] empty_fu_350_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_430;
reg    ap_condition_435;
reg    ap_condition_441;
reg    ap_condition_448;
reg    ap_condition_455;
reg    ap_condition_460;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

top_tx_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln245_fu_330_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_80 <= add_ln245_fu_336_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln245_reg_466 <= icmp_ln245_fu_330_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln245_fu_330_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln246_reg_470 <= icmp_ln246_fu_364_p2;
        out_im_arr_addr_reg_479 <= i_17_cast23_fu_342_p1;
        out_re_arr_addr_reg_474 <= i_17_cast23_fu_342_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln245_fu_330_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln246_fu_364_p2 == 1'd0))) begin
        icmp_ln249_reg_484 <= icmp_ln249_fu_380_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln245_fu_330_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln249_fu_380_p2 == 1'd0) & (icmp_ln246_fu_364_p2 == 1'd0))) begin
        icmp_ln252_reg_488 <= icmp_ln252_fu_386_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln245_fu_330_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_17_fu_392_p3 == 1'd1) & (icmp_ln252_fu_386_p2 == 1'd0) & (icmp_ln249_fu_380_p2 == 1'd0) & (icmp_ln246_fu_364_p2 == 1'd0))) begin
        icmp_ln258_reg_506 <= icmp_ln258_fu_406_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln245_fu_330_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln258_fu_406_p2 == 1'd0) & (tmp_17_fu_392_p3 == 1'd1) & (icmp_ln252_fu_386_p2 == 1'd0) & (icmp_ln249_fu_380_p2 == 1'd0) & (icmp_ln246_fu_364_p2 == 1'd0))) begin
        icmp_ln261_reg_510 <= icmp_ln261_fu_412_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln245_fu_330_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln252_fu_386_p2 == 1'd0) & (icmp_ln249_fu_380_p2 == 1'd0) & (icmp_ln246_fu_364_p2 == 1'd0))) begin
        tmp_17_reg_492 <= ap_sig_allocacmp_i_10[32'd12];
    end
end

always @ (*) begin
    if (((icmp_ln245_fu_330_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln245_reg_466 == 1'd0)) begin
        if ((1'b1 == ap_condition_455)) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = data_symb5_M_imag_V_q0;
        end else if ((1'b1 == ap_condition_448)) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = data_symb6_M_imag_V_q0;
        end else if ((1'b1 == ap_condition_441)) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = data_symb4_M_imag_V_q0;
        end else if ((1'b1 == ap_condition_435)) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = data_symb3_M_imag_V_q0;
        end else if ((1'b1 == ap_condition_430)) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = data_symb2_M_imag_V_q0;
        end else if (((icmp_ln249_reg_484 == 1'd1) & (icmp_ln246_reg_470 == 1'd0))) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = data_symb1_M_imag_V_q0;
        end else if ((icmp_ln246_reg_470 == 1'd1)) begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = pilot_sym_M_imag_V_load_cast_fu_454_p1;
        end else begin
            ap_phi_mux_storemerge6_phi_fu_299_p14 = ap_phi_reg_pp0_iter1_storemerge6_reg_296;
        end
    end else begin
        ap_phi_mux_storemerge6_phi_fu_299_p14 = ap_phi_reg_pp0_iter1_storemerge6_reg_296;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_10 = 13'd0;
    end else begin
        ap_sig_allocacmp_i_10 = i_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb1_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb1_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb1_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb1_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb2_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb2_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb2_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb2_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb3_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb3_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb3_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb3_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb4_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb4_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb4_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb4_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb5_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb5_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb6_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb6_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb6_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb6_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_im_arr_ce0 = 1'b1;
    end else begin
        out_im_arr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_im_arr_we0 = 1'b1;
    end else begin
        out_im_arr_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln261_reg_510 == 1'd1) & (icmp_ln258_reg_506 == 1'd0) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln261_reg_510 == 1'd0) & (icmp_ln258_reg_506 == 1'd0) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln258_reg_506 == 1'd1) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_17_reg_492 == 1'd0) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln252_reg_488 == 1'd1) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln249_reg_484 == 1'd1) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln246_reg_470 == 1'd1) & (icmp_ln245_reg_466 == 1'd0)))) begin
        out_re_arr_ce0 = 1'b1;
    end else begin
        out_re_arr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_460)) begin
        if ((icmp_ln246_reg_470 == 1'd1)) begin
            out_re_arr_d0 = pilot_sym_M_real_V_load_cast_fu_449_p1;
        end else if (((icmp_ln249_reg_484 == 1'd1) & (icmp_ln246_reg_470 == 1'd0))) begin
            out_re_arr_d0 = data_symb1_M_real_V_q0;
        end else if ((1'b1 == ap_condition_430)) begin
            out_re_arr_d0 = data_symb2_M_real_V_q0;
        end else if ((1'b1 == ap_condition_441)) begin
            out_re_arr_d0 = data_symb4_M_real_V_q0;
        end else if ((1'b1 == ap_condition_455)) begin
            out_re_arr_d0 = data_symb5_M_real_V_q0;
        end else if ((1'b1 == ap_condition_448)) begin
            out_re_arr_d0 = data_symb6_M_real_V_q0;
        end else if ((1'b1 == ap_condition_435)) begin
            out_re_arr_d0 = data_symb3_M_real_V_q0;
        end else begin
            out_re_arr_d0 = 'bx;
        end
    end else begin
        out_re_arr_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln261_reg_510 == 1'd1) & (icmp_ln258_reg_506 == 1'd0) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln261_reg_510 == 1'd0) & (icmp_ln258_reg_506 == 1'd0) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln258_reg_506 == 1'd1) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_17_reg_492 == 1'd0) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln252_reg_488 == 1'd1) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln249_reg_484 == 1'd1) & (icmp_ln246_reg_470 == 1'd0) & (icmp_ln245_reg_466 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln246_reg_470 == 1'd1) & (icmp_ln245_reg_466 == 1'd0)))) begin
        out_re_arr_we0 = 1'b1;
    end else begin
        out_re_arr_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_sym_M_imag_V_ce0 = 1'b1;
    end else begin
        pilot_sym_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_sym_M_real_V_ce0 = 1'b1;
    end else begin
        pilot_sym_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln245_fu_336_p2 = (ap_sig_allocacmp_i_10 + 13'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_430 = ((icmp_ln252_reg_488 == 1'd1) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0));
end

always @ (*) begin
    ap_condition_435 = ((tmp_17_reg_492 == 1'd0) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0));
end

always @ (*) begin
    ap_condition_441 = ((icmp_ln258_reg_506 == 1'd1) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0));
end

always @ (*) begin
    ap_condition_448 = ((icmp_ln261_reg_510 == 1'd0) & (icmp_ln258_reg_506 == 1'd0) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0));
end

always @ (*) begin
    ap_condition_455 = ((icmp_ln261_reg_510 == 1'd1) & (icmp_ln258_reg_506 == 1'd0) & (tmp_17_reg_492 == 1'd1) & (icmp_ln252_reg_488 == 1'd0) & (icmp_ln249_reg_484 == 1'd0) & (icmp_ln246_reg_470 == 1'd0));
end

always @ (*) begin
    ap_condition_460 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln245_reg_466 == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter1_storemerge6_reg_296 = 'bx;

assign data_symb1_M_imag_V_address0 = zext_ln250_fu_438_p1;

assign data_symb1_M_real_V_address0 = zext_ln250_fu_438_p1;

assign data_symb2_M_imag_V_address0 = zext_ln253_fu_432_p1;

assign data_symb2_M_real_V_address0 = zext_ln253_fu_432_p1;

assign data_symb3_M_imag_V_address0 = zext_ln256_fu_400_p1;

assign data_symb3_M_real_V_address0 = zext_ln256_fu_400_p1;

assign data_symb4_M_imag_V_address0 = zext_ln259_fu_426_p1;

assign data_symb4_M_real_V_address0 = zext_ln259_fu_426_p1;

assign data_symb5_M_imag_V_address0 = zext_ln262_fu_418_p1;

assign data_symb5_M_real_V_address0 = zext_ln262_fu_418_p1;

assign data_symb6_M_imag_V_address0 = zext_ln262_fu_418_p1;

assign data_symb6_M_real_V_address0 = zext_ln262_fu_418_p1;

assign empty_fu_350_p1 = ap_sig_allocacmp_i_10[9:0];

assign i_17_cast23_fu_342_p1 = ap_sig_allocacmp_i_10;

assign icmp_ln245_fu_330_p2 = ((ap_sig_allocacmp_i_10 == 13'd7168) ? 1'b1 : 1'b0);

assign icmp_ln246_fu_364_p2 = ((tmp_fu_354_p4 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln249_fu_380_p2 = ((tmp_16_fu_370_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln252_fu_386_p2 = ((ap_sig_allocacmp_i_10 < 13'd3072) ? 1'b1 : 1'b0);

assign icmp_ln258_fu_406_p2 = ((ap_sig_allocacmp_i_10 < 13'd5120) ? 1'b1 : 1'b0);

assign icmp_ln261_fu_412_p2 = ((ap_sig_allocacmp_i_10 < 13'd6144) ? 1'b1 : 1'b0);

assign out_im_arr_address0 = out_im_arr_addr_reg_479;

assign out_im_arr_d0 = ap_phi_mux_storemerge6_phi_fu_299_p14;

assign out_re_arr_address0 = out_re_arr_addr_reg_474;

assign pilot_sym_M_imag_V_address0 = i_17_cast23_fu_342_p1;

assign pilot_sym_M_imag_V_load_cast_fu_454_p1 = pilot_sym_M_imag_V_q0;

assign pilot_sym_M_real_V_address0 = i_17_cast23_fu_342_p1;

assign pilot_sym_M_real_V_load_cast_fu_449_p1 = pilot_sym_M_real_V_q0;

assign tmp_16_fu_370_p4 = {{ap_sig_allocacmp_i_10[12:11]}};

assign tmp_17_fu_392_p3 = ap_sig_allocacmp_i_10[32'd12];

assign tmp_fu_354_p4 = {{ap_sig_allocacmp_i_10[12:10]}};

assign zext_ln250_fu_438_p1 = empty_fu_350_p1;

assign zext_ln253_fu_432_p1 = empty_fu_350_p1;

assign zext_ln256_fu_400_p1 = empty_fu_350_p1;

assign zext_ln259_fu_426_p1 = empty_fu_350_p1;

assign zext_ln262_fu_418_p1 = empty_fu_350_p1;

endmodule //top_tx_adding_pilot_Pipeline_output_arrangement
