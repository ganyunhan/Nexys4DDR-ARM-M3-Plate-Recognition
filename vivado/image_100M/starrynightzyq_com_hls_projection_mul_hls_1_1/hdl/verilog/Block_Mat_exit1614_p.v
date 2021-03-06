// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_Mat_exit1614_p (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        rows,
        cols,
        threshold_v,
        range_min,
        range_max,
        img_0_rows_V_out_din,
        img_0_rows_V_out_full_n,
        img_0_rows_V_out_write,
        img_0_cols_V_out_din,
        img_0_cols_V_out_full_n,
        img_0_cols_V_out_write,
        img_1_rows_V_out_din,
        img_1_rows_V_out_full_n,
        img_1_rows_V_out_write,
        img_1_cols_V_out_din,
        img_1_cols_V_out_full_n,
        img_1_cols_V_out_write,
        img_2_rows_V_out_din,
        img_2_rows_V_out_full_n,
        img_2_rows_V_out_write,
        img_2_cols_V_out_din,
        img_2_cols_V_out_full_n,
        img_2_cols_V_out_write,
        img_original_0_rows_V_out_din,
        img_original_0_rows_V_out_full_n,
        img_original_0_rows_V_out_write,
        img_original_0_cols_V_out_din,
        img_original_0_cols_V_out_full_n,
        img_original_0_cols_V_out_write,
        img_original_1_rows_V_out_din,
        img_original_1_rows_V_out_full_n,
        img_original_1_rows_V_out_write,
        img_original_1_cols_V_out_din,
        img_original_1_cols_V_out_full_n,
        img_original_1_cols_V_out_write,
        Vdist_cols_V_out_din,
        Vdist_cols_V_out_full_n,
        Vdist_cols_V_out_write,
        threshold_v_out_din,
        threshold_v_out_full_n,
        threshold_v_out_write,
        range_min_out_din,
        range_min_out_full_n,
        range_min_out_write,
        range_max_out_din,
        range_max_out_full_n,
        range_max_out_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] rows;
input  [31:0] cols;
input  [31:0] threshold_v;
input  [15:0] range_min;
input  [15:0] range_max;
output  [31:0] img_0_rows_V_out_din;
input   img_0_rows_V_out_full_n;
output   img_0_rows_V_out_write;
output  [31:0] img_0_cols_V_out_din;
input   img_0_cols_V_out_full_n;
output   img_0_cols_V_out_write;
output  [31:0] img_1_rows_V_out_din;
input   img_1_rows_V_out_full_n;
output   img_1_rows_V_out_write;
output  [31:0] img_1_cols_V_out_din;
input   img_1_cols_V_out_full_n;
output   img_1_cols_V_out_write;
output  [31:0] img_2_rows_V_out_din;
input   img_2_rows_V_out_full_n;
output   img_2_rows_V_out_write;
output  [31:0] img_2_cols_V_out_din;
input   img_2_cols_V_out_full_n;
output   img_2_cols_V_out_write;
output  [31:0] img_original_0_rows_V_out_din;
input   img_original_0_rows_V_out_full_n;
output   img_original_0_rows_V_out_write;
output  [31:0] img_original_0_cols_V_out_din;
input   img_original_0_cols_V_out_full_n;
output   img_original_0_cols_V_out_write;
output  [31:0] img_original_1_rows_V_out_din;
input   img_original_1_rows_V_out_full_n;
output   img_original_1_rows_V_out_write;
output  [31:0] img_original_1_cols_V_out_din;
input   img_original_1_cols_V_out_full_n;
output   img_original_1_cols_V_out_write;
output  [31:0] Vdist_cols_V_out_din;
input   Vdist_cols_V_out_full_n;
output   Vdist_cols_V_out_write;
output  [31:0] threshold_v_out_din;
input   threshold_v_out_full_n;
output   threshold_v_out_write;
output  [15:0] range_min_out_din;
input   range_min_out_full_n;
output   range_min_out_write;
output  [15:0] range_max_out_din;
input   range_max_out_full_n;
output   range_max_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg img_0_rows_V_out_write;
reg img_0_cols_V_out_write;
reg img_1_rows_V_out_write;
reg img_1_cols_V_out_write;
reg img_2_rows_V_out_write;
reg img_2_cols_V_out_write;
reg img_original_0_rows_V_out_write;
reg img_original_0_cols_V_out_write;
reg img_original_1_rows_V_out_write;
reg img_original_1_cols_V_out_write;
reg Vdist_cols_V_out_write;
reg threshold_v_out_write;
reg range_min_out_write;
reg range_max_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    img_0_rows_V_out_blk_n;
reg    img_0_cols_V_out_blk_n;
reg    img_1_rows_V_out_blk_n;
reg    img_1_cols_V_out_blk_n;
reg    img_2_rows_V_out_blk_n;
reg    img_2_cols_V_out_blk_n;
reg    img_original_0_rows_V_out_blk_n;
reg    img_original_0_cols_V_out_blk_n;
reg    img_original_1_rows_V_out_blk_n;
reg    img_original_1_cols_V_out_blk_n;
reg    Vdist_cols_V_out_blk_n;
reg    threshold_v_out_blk_n;
reg    range_min_out_blk_n;
reg    range_max_out_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        Vdist_cols_V_out_blk_n = Vdist_cols_V_out_full_n;
    end else begin
        Vdist_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        Vdist_cols_V_out_write = 1'b1;
    end else begin
        Vdist_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_0_cols_V_out_blk_n = img_0_cols_V_out_full_n;
    end else begin
        img_0_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_0_cols_V_out_write = 1'b1;
    end else begin
        img_0_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_0_rows_V_out_blk_n = img_0_rows_V_out_full_n;
    end else begin
        img_0_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_0_rows_V_out_write = 1'b1;
    end else begin
        img_0_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_1_cols_V_out_blk_n = img_1_cols_V_out_full_n;
    end else begin
        img_1_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_1_cols_V_out_write = 1'b1;
    end else begin
        img_1_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_1_rows_V_out_blk_n = img_1_rows_V_out_full_n;
    end else begin
        img_1_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_1_rows_V_out_write = 1'b1;
    end else begin
        img_1_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_2_cols_V_out_blk_n = img_2_cols_V_out_full_n;
    end else begin
        img_2_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_2_cols_V_out_write = 1'b1;
    end else begin
        img_2_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_2_rows_V_out_blk_n = img_2_rows_V_out_full_n;
    end else begin
        img_2_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_2_rows_V_out_write = 1'b1;
    end else begin
        img_2_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_original_0_cols_V_out_blk_n = img_original_0_cols_V_out_full_n;
    end else begin
        img_original_0_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_original_0_cols_V_out_write = 1'b1;
    end else begin
        img_original_0_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_original_0_rows_V_out_blk_n = img_original_0_rows_V_out_full_n;
    end else begin
        img_original_0_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_original_0_rows_V_out_write = 1'b1;
    end else begin
        img_original_0_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_original_1_cols_V_out_blk_n = img_original_1_cols_V_out_full_n;
    end else begin
        img_original_1_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_original_1_cols_V_out_write = 1'b1;
    end else begin
        img_original_1_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img_original_1_rows_V_out_blk_n = img_original_1_rows_V_out_full_n;
    end else begin
        img_original_1_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_original_1_rows_V_out_write = 1'b1;
    end else begin
        img_original_1_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        range_max_out_blk_n = range_max_out_full_n;
    end else begin
        range_max_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        range_max_out_write = 1'b1;
    end else begin
        range_max_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        range_min_out_blk_n = range_min_out_full_n;
    end else begin
        range_min_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        range_min_out_write = 1'b1;
    end else begin
        range_min_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        threshold_v_out_blk_n = threshold_v_out_full_n;
    end else begin
        threshold_v_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        threshold_v_out_write = 1'b1;
    end else begin
        threshold_v_out_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Vdist_cols_V_out_din = cols;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((range_max_out_full_n == 1'b0) | (range_min_out_full_n == 1'b0) | (threshold_v_out_full_n == 1'b0) | (1'b0 == Vdist_cols_V_out_full_n) | (img_original_1_cols_V_out_full_n == 1'b0) | (img_original_1_rows_V_out_full_n == 1'b0) | (img_original_0_cols_V_out_full_n == 1'b0) | (real_start == 1'b0) | (img_original_0_rows_V_out_full_n == 1'b0) | (img_2_cols_V_out_full_n == 1'b0) | (img_2_rows_V_out_full_n == 1'b0) | (img_1_cols_V_out_full_n == 1'b0) | (img_1_rows_V_out_full_n == 1'b0) | (img_0_cols_V_out_full_n == 1'b0) | (img_0_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign img_0_cols_V_out_din = cols;

assign img_0_rows_V_out_din = rows;

assign img_1_cols_V_out_din = cols;

assign img_1_rows_V_out_din = rows;

assign img_2_cols_V_out_din = cols;

assign img_2_rows_V_out_din = rows;

assign img_original_0_cols_V_out_din = cols;

assign img_original_0_rows_V_out_din = rows;

assign img_original_1_cols_V_out_din = cols;

assign img_original_1_rows_V_out_din = rows;

assign range_max_out_din = range_max;

assign range_min_out_din = range_min;

assign start_out = real_start;

assign threshold_v_out_din = threshold_v;

endmodule //Block_Mat_exit1614_p
