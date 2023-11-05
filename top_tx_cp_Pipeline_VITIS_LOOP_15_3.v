// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_cp_Pipeline_VITIS_LOOP_15_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        mul_ln23,
        cp_out_M_real_address0,
        cp_out_M_real_ce0,
        cp_out_M_real_we0,
        cp_out_M_real_d0,
        cp_out_M_imag_address0,
        cp_out_M_imag_ce0,
        cp_out_M_imag_we0,
        cp_out_M_imag_d0,
        ad_cp_M_real_V_address0,
        ad_cp_M_real_V_ce0,
        ad_cp_M_real_V_q0,
        ad_cp_M_imag_V_address0,
        ad_cp_M_imag_V_ce0,
        ad_cp_M_imag_V_q0,
        ifft_data_M_real_V_address0,
        ifft_data_M_real_V_ce0,
        ifft_data_M_real_V_q0,
        ifft_data_M_imag_V_address0,
        ifft_data_M_imag_V_ce0,
        ifft_data_M_imag_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [12:0] mul_ln23;
output  [12:0] cp_out_M_real_address0;
output   cp_out_M_real_ce0;
output   cp_out_M_real_we0;
output  [15:0] cp_out_M_real_d0;
output  [12:0] cp_out_M_imag_address0;
output   cp_out_M_imag_ce0;
output   cp_out_M_imag_we0;
output  [15:0] cp_out_M_imag_d0;
output  [7:0] ad_cp_M_real_V_address0;
output   ad_cp_M_real_V_ce0;
input  [13:0] ad_cp_M_real_V_q0;
output  [7:0] ad_cp_M_imag_V_address0;
output   ad_cp_M_imag_V_ce0;
input  [13:0] ad_cp_M_imag_V_q0;
output  [9:0] ifft_data_M_real_V_address0;
output   ifft_data_M_real_V_ce0;
input  [13:0] ifft_data_M_real_V_q0;
output  [9:0] ifft_data_M_imag_V_address0;
output   ifft_data_M_imag_V_ce0;
input  [13:0] ifft_data_M_imag_V_q0;

reg ap_idle;
reg cp_out_M_real_ce0;
reg cp_out_M_real_we0;
reg cp_out_M_imag_ce0;
reg cp_out_M_imag_we0;
reg ad_cp_M_real_V_ce0;
reg ad_cp_M_imag_V_ce0;
reg ifft_data_M_real_V_ce0;
reg ifft_data_M_imag_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15_fu_146_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [12:0] add_ln23_1_fu_168_p2;
reg   [12:0] add_ln23_1_reg_248;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln17_fu_178_p2;
reg   [0:0] icmp_ln17_reg_253;
wire   [63:0] i_7_cast3_fu_158_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1273_fu_190_p1;
wire   [63:0] zext_ln23_1_fu_201_p1;
reg   [10:0] i_7_fu_50;
wire   [10:0] add_ln15_fu_152_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i;
wire   [12:0] zext_ln23_fu_164_p1;
wire   [9:0] empty_fu_174_p1;
wire   [9:0] add_ln23_fu_184_p2;
wire   [13:0] select_ln17_fu_206_p3;
wire   [13:0] select_ln17_1_fu_222_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
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
        if (((icmp_ln15_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_7_fu_50 <= add_ln15_fu_152_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_7_fu_50 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_146_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln23_1_reg_248 <= add_ln23_1_fu_168_p2;
        icmp_ln17_reg_253 <= icmp_ln17_fu_178_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ad_cp_M_imag_V_ce0 = 1'b1;
    end else begin
        ad_cp_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ad_cp_M_real_V_ce0 = 1'b1;
    end else begin
        ad_cp_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_146_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 11'd0;
    end else begin
        ap_sig_allocacmp_i = i_7_fu_50;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_M_imag_ce0 = 1'b1;
    end else begin
        cp_out_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_M_imag_we0 = 1'b1;
    end else begin
        cp_out_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_M_real_ce0 = 1'b1;
    end else begin
        cp_out_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_M_real_we0 = 1'b1;
    end else begin
        cp_out_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifft_data_M_imag_V_ce0 = 1'b1;
    end else begin
        ifft_data_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ifft_data_M_real_V_ce0 = 1'b1;
    end else begin
        ifft_data_M_real_V_ce0 = 1'b0;
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

assign ad_cp_M_imag_V_address0 = i_7_cast3_fu_158_p1;

assign ad_cp_M_real_V_address0 = i_7_cast3_fu_158_p1;

assign add_ln15_fu_152_p2 = (ap_sig_allocacmp_i + 11'd1);

assign add_ln23_1_fu_168_p2 = (mul_ln23 + zext_ln23_fu_164_p1);

assign add_ln23_fu_184_p2 = ($signed(empty_fu_174_p1) + $signed(10'd880));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign cp_out_M_imag_address0 = zext_ln23_1_fu_201_p1;

assign cp_out_M_imag_d0 = {{select_ln17_1_fu_222_p3}, {2'd0}};

assign cp_out_M_real_address0 = zext_ln23_1_fu_201_p1;

assign cp_out_M_real_d0 = {{select_ln17_fu_206_p3}, {2'd0}};

assign empty_fu_174_p1 = ap_sig_allocacmp_i[9:0];

assign i_7_cast3_fu_158_p1 = ap_sig_allocacmp_i;

assign icmp_ln15_fu_146_p2 = ((ap_sig_allocacmp_i == 11'd1168) ? 1'b1 : 1'b0);

assign icmp_ln17_fu_178_p2 = ((ap_sig_allocacmp_i < 11'd144) ? 1'b1 : 1'b0);

assign ifft_data_M_imag_V_address0 = zext_ln1273_fu_190_p1;

assign ifft_data_M_real_V_address0 = zext_ln1273_fu_190_p1;

assign select_ln17_1_fu_222_p3 = ((icmp_ln17_reg_253[0:0] == 1'b1) ? ad_cp_M_imag_V_q0 : ifft_data_M_imag_V_q0);

assign select_ln17_fu_206_p3 = ((icmp_ln17_reg_253[0:0] == 1'b1) ? ad_cp_M_real_V_q0 : ifft_data_M_real_V_q0);

assign zext_ln1273_fu_190_p1 = add_ln23_fu_184_p2;

assign zext_ln23_1_fu_201_p1 = add_ln23_1_reg_248;

assign zext_ln23_fu_164_p1 = ap_sig_allocacmp_i;

endmodule //top_tx_cp_Pipeline_VITIS_LOOP_15_3