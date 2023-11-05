// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_adding_pilot_Pipeline_initil_upink_pilot (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln58,
        pilot_vle_M_real_V_address0,
        pilot_vle_M_real_V_ce0,
        pilot_vle_M_real_V_we0,
        pilot_vle_M_real_V_d0,
        pilot_vle_M_imag_V_address0,
        pilot_vle_M_imag_V_ce0,
        pilot_vle_M_imag_V_we0,
        pilot_vle_M_imag_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1:0] zext_ln58;
output  [9:0] pilot_vle_M_real_V_address0;
output   pilot_vle_M_real_V_ce0;
output   pilot_vle_M_real_V_we0;
output  [14:0] pilot_vle_M_real_V_d0;
output  [9:0] pilot_vle_M_imag_V_address0;
output   pilot_vle_M_imag_V_ce0;
output   pilot_vle_M_imag_V_we0;
output  [14:0] pilot_vle_M_imag_V_d0;

reg ap_idle;
reg pilot_vle_M_real_V_ce0;
reg pilot_vle_M_real_V_we0;
reg pilot_vle_M_imag_V_ce0;
reg pilot_vle_M_imag_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln58_fu_120_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [7:0] pilot_array_re_address0;
reg    pilot_array_re_ce0;
wire   [0:0] pilot_array_re_q0;
wire   [7:0] pilot_array_im_address0;
reg    pilot_array_im_ce0;
wire   [0:0] pilot_array_im_q0;
reg   [9:0] i_reg_189;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln60_fu_142_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] i_8_cast_cast13_fu_159_p1;
reg   [9:0] i_8_fu_46;
wire   [9:0] zext_ln58_cast_fu_108_p1;
wire   [9:0] add_ln58_fu_148_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_i;
wire   [9:0] sub_ln60_fu_126_p2;
wire   [7:0] tmp_fu_132_p4;
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

top_tx_adding_pilot_Pipeline_initil_upink_pilot_pilot_array_re_ROM_AUTO_1R #(
    .DataWidth( 1 ),
    .AddressRange( 150 ),
    .AddressWidth( 8 ))
pilot_array_re_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(pilot_array_re_address0),
    .ce0(pilot_array_re_ce0),
    .q0(pilot_array_re_q0)
);

top_tx_adding_pilot_Pipeline_initil_upink_pilot_pilot_array_im_ROM_AUTO_1R #(
    .DataWidth( 1 ),
    .AddressRange( 150 ),
    .AddressWidth( 8 ))
pilot_array_im_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(pilot_array_im_address0),
    .ce0(pilot_array_im_ce0),
    .q0(pilot_array_im_q0)
);

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
        if (((icmp_ln58_fu_120_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_8_fu_46 <= add_ln58_fu_148_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_8_fu_46 <= zext_ln58_cast_fu_108_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_189 <= ap_sig_allocacmp_i;
    end
end

always @ (*) begin
    if (((icmp_ln58_fu_120_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_i = zext_ln58_cast_fu_108_p1;
    end else begin
        ap_sig_allocacmp_i = i_8_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_array_im_ce0 = 1'b1;
    end else begin
        pilot_array_im_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_array_re_ce0 = 1'b1;
    end else begin
        pilot_array_re_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_vle_M_imag_V_ce0 = 1'b1;
    end else begin
        pilot_vle_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_vle_M_imag_V_we0 = 1'b1;
    end else begin
        pilot_vle_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_vle_M_real_V_ce0 = 1'b1;
    end else begin
        pilot_vle_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pilot_vle_M_real_V_we0 = 1'b1;
    end else begin
        pilot_vle_M_real_V_we0 = 1'b0;
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

assign add_ln58_fu_148_p2 = (ap_sig_allocacmp_i + 10'd4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_8_cast_cast13_fu_159_p1 = i_reg_189;

assign icmp_ln58_fu_120_p2 = ((ap_sig_allocacmp_i < 10'd600) ? 1'b1 : 1'b0);

assign pilot_array_im_address0 = zext_ln60_fu_142_p1;

assign pilot_array_re_address0 = zext_ln60_fu_142_p1;

assign pilot_vle_M_imag_V_address0 = i_8_cast_cast13_fu_159_p1;

assign pilot_vle_M_imag_V_d0 = {{pilot_array_im_q0}, {14'd0}};

assign pilot_vle_M_real_V_address0 = i_8_cast_cast13_fu_159_p1;

assign pilot_vle_M_real_V_d0 = {{pilot_array_re_q0}, {14'd0}};

assign sub_ln60_fu_126_p2 = (ap_sig_allocacmp_i - zext_ln58_cast_fu_108_p1);

assign tmp_fu_132_p4 = {{sub_ln60_fu_126_p2[9:2]}};

assign zext_ln58_cast_fu_108_p1 = zext_ln58;

assign zext_ln60_fu_142_p1 = tmp_fu_132_p4;

endmodule //top_tx_adding_pilot_Pipeline_initil_upink_pilot
