// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_Mat_exit1211_p (
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
        bound_y_min,
        bound_y_min_ap_vld,
        bound_y_max,
        bound_y_max_ap_vld,
        bound_x_min,
        bound_x_min_ap_vld,
        bound_x_max,
        bound_x_max_ap_vld,
        src_rows,
        src_cols,
        dst_rows,
        dst_cols,
        bound_y_min_out_din,
        bound_y_min_out_full_n,
        bound_y_min_out_write,
        bound_y_max_out_din,
        bound_y_max_out_full_n,
        bound_y_max_out_write,
        bound_x_min_out_din,
        bound_x_min_out_full_n,
        bound_x_min_out_write,
        bound_x_max_out_din,
        bound_x_max_out_full_n,
        bound_x_max_out_write,
        img_src_0_rows_V_out_din,
        img_src_0_rows_V_out_full_n,
        img_src_0_rows_V_out_write,
        img_src_0_cols_V_out_din,
        img_src_0_cols_V_out_full_n,
        img_src_0_cols_V_out_write,
        img_cut_0_rows_V_out_din,
        img_cut_0_rows_V_out_full_n,
        img_cut_0_rows_V_out_write,
        img_cut_0_cols_V_out_din,
        img_cut_0_cols_V_out_full_n,
        img_cut_0_cols_V_out_write,
        img_dst_0_rows_V_out_din,
        img_dst_0_rows_V_out_full_n,
        img_dst_0_rows_V_out_write,
        img_dst_0_cols_V_out_din,
        img_dst_0_cols_V_out_full_n,
        img_dst_0_cols_V_out_write,
        img_dst_1_rows_V_out_din,
        img_dst_1_rows_V_out_full_n,
        img_dst_1_rows_V_out_write,
        img_dst_1_cols_V_out_din,
        img_dst_1_cols_V_out_full_n,
        img_dst_1_cols_V_out_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

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
input  [15:0] bound_y_min;
input   bound_y_min_ap_vld;
input  [15:0] bound_y_max;
input   bound_y_max_ap_vld;
input  [15:0] bound_x_min;
input   bound_x_min_ap_vld;
input  [15:0] bound_x_max;
input   bound_x_max_ap_vld;
input  [15:0] src_rows;
input  [15:0] src_cols;
input  [15:0] dst_rows;
input  [15:0] dst_cols;
output  [15:0] bound_y_min_out_din;
input   bound_y_min_out_full_n;
output   bound_y_min_out_write;
output  [15:0] bound_y_max_out_din;
input   bound_y_max_out_full_n;
output   bound_y_max_out_write;
output  [15:0] bound_x_min_out_din;
input   bound_x_min_out_full_n;
output   bound_x_min_out_write;
output  [15:0] bound_x_max_out_din;
input   bound_x_max_out_full_n;
output   bound_x_max_out_write;
output  [15:0] img_src_0_rows_V_out_din;
input   img_src_0_rows_V_out_full_n;
output   img_src_0_rows_V_out_write;
output  [15:0] img_src_0_cols_V_out_din;
input   img_src_0_cols_V_out_full_n;
output   img_src_0_cols_V_out_write;
output  [15:0] img_cut_0_rows_V_out_din;
input   img_cut_0_rows_V_out_full_n;
output   img_cut_0_rows_V_out_write;
output  [15:0] img_cut_0_cols_V_out_din;
input   img_cut_0_cols_V_out_full_n;
output   img_cut_0_cols_V_out_write;
output  [15:0] img_dst_0_rows_V_out_din;
input   img_dst_0_rows_V_out_full_n;
output   img_dst_0_rows_V_out_write;
output  [15:0] img_dst_0_cols_V_out_din;
input   img_dst_0_cols_V_out_full_n;
output   img_dst_0_cols_V_out_write;
output  [15:0] img_dst_1_rows_V_out_din;
input   img_dst_1_rows_V_out_full_n;
output   img_dst_1_rows_V_out_write;
output  [15:0] img_dst_1_cols_V_out_din;
input   img_dst_1_cols_V_out_full_n;
output   img_dst_1_cols_V_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg bound_y_min_out_write;
reg bound_y_max_out_write;
reg bound_x_min_out_write;
reg bound_x_max_out_write;
reg img_src_0_rows_V_out_write;
reg img_src_0_cols_V_out_write;
reg img_cut_0_rows_V_out_write;
reg img_cut_0_cols_V_out_write;
reg img_dst_0_rows_V_out_write;
reg img_dst_0_cols_V_out_write;
reg img_dst_1_rows_V_out_write;
reg img_dst_1_cols_V_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    bound_y_min_blk_n;
reg    bound_y_max_blk_n;
reg    bound_x_min_blk_n;
reg    bound_x_max_blk_n;
reg    bound_y_min_out_blk_n;
wire    ap_CS_fsm_state2;
reg    bound_y_max_out_blk_n;
reg    bound_x_min_out_blk_n;
reg    bound_x_max_out_blk_n;
reg    img_src_0_rows_V_out_blk_n;
reg    img_src_0_cols_V_out_blk_n;
reg    img_cut_0_rows_V_out_blk_n;
reg    img_cut_0_cols_V_out_blk_n;
reg    img_dst_0_rows_V_out_blk_n;
reg    img_dst_0_cols_V_out_blk_n;
reg    img_dst_1_rows_V_out_blk_n;
reg    img_dst_1_cols_V_out_blk_n;
reg    ap_block_state1;
wire   [15:0] cut_rows_fu_344_p2;
reg   [15:0] cut_rows_reg_382;
wire   [15:0] cut_cols_fu_356_p2;
reg   [15:0] cut_cols_reg_387;
reg    ap_block_state2;
wire   [15:0] tmp_8_i_fu_338_p2;
wire   [15:0] tmp_i_fu_350_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
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
        end else if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
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

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (bound_x_max_ap_vld == 1'b0) | (bound_x_min_ap_vld == 1'b0) | (bound_y_max_ap_vld == 1'b0) | (bound_y_min_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cut_cols_reg_387 <= cut_cols_fu_356_p2;
        cut_rows_reg_382 <= cut_rows_fu_344_p2;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_x_max_blk_n = bound_x_max_ap_vld;
    end else begin
        bound_x_max_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_x_max_out_blk_n = bound_x_max_out_full_n;
    end else begin
        bound_x_max_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        bound_x_max_out_write = 1'b1;
    end else begin
        bound_x_max_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_x_min_blk_n = bound_x_min_ap_vld;
    end else begin
        bound_x_min_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_x_min_out_blk_n = bound_x_min_out_full_n;
    end else begin
        bound_x_min_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        bound_x_min_out_write = 1'b1;
    end else begin
        bound_x_min_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_y_max_blk_n = bound_y_max_ap_vld;
    end else begin
        bound_y_max_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_y_max_out_blk_n = bound_y_max_out_full_n;
    end else begin
        bound_y_max_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        bound_y_max_out_write = 1'b1;
    end else begin
        bound_y_max_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_y_min_blk_n = bound_y_min_ap_vld;
    end else begin
        bound_y_min_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound_y_min_out_blk_n = bound_y_min_out_full_n;
    end else begin
        bound_y_min_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        bound_y_min_out_write = 1'b1;
    end else begin
        bound_y_min_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_cut_0_cols_V_out_blk_n = img_cut_0_cols_V_out_full_n;
    end else begin
        img_cut_0_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_cut_0_cols_V_out_write = 1'b1;
    end else begin
        img_cut_0_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_cut_0_rows_V_out_blk_n = img_cut_0_rows_V_out_full_n;
    end else begin
        img_cut_0_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_cut_0_rows_V_out_write = 1'b1;
    end else begin
        img_cut_0_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_dst_0_cols_V_out_blk_n = img_dst_0_cols_V_out_full_n;
    end else begin
        img_dst_0_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_dst_0_cols_V_out_write = 1'b1;
    end else begin
        img_dst_0_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_dst_0_rows_V_out_blk_n = img_dst_0_rows_V_out_full_n;
    end else begin
        img_dst_0_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_dst_0_rows_V_out_write = 1'b1;
    end else begin
        img_dst_0_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_dst_1_cols_V_out_blk_n = img_dst_1_cols_V_out_full_n;
    end else begin
        img_dst_1_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_dst_1_cols_V_out_write = 1'b1;
    end else begin
        img_dst_1_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_dst_1_rows_V_out_blk_n = img_dst_1_rows_V_out_full_n;
    end else begin
        img_dst_1_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_dst_1_rows_V_out_write = 1'b1;
    end else begin
        img_dst_1_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_src_0_cols_V_out_blk_n = img_src_0_cols_V_out_full_n;
    end else begin
        img_src_0_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_src_0_cols_V_out_write = 1'b1;
    end else begin
        img_src_0_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_src_0_rows_V_out_blk_n = img_src_0_rows_V_out_full_n;
    end else begin
        img_src_0_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        img_src_0_rows_V_out_write = 1'b1;
    end else begin
        img_src_0_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (bound_x_max_ap_vld == 1'b0) | (bound_x_min_ap_vld == 1'b0) | (bound_y_max_ap_vld == 1'b0) | (bound_y_min_ap_vld == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (bound_x_max_ap_vld == 1'b0) | (bound_x_min_ap_vld == 1'b0) | (bound_y_max_ap_vld == 1'b0) | (bound_y_min_ap_vld == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((img_dst_1_cols_V_out_full_n == 1'b0) | (img_dst_1_rows_V_out_full_n == 1'b0) | (img_dst_0_cols_V_out_full_n == 1'b0) | (img_dst_0_rows_V_out_full_n == 1'b0) | (img_cut_0_cols_V_out_full_n == 1'b0) | (img_cut_0_rows_V_out_full_n == 1'b0) | (img_src_0_cols_V_out_full_n == 1'b0) | (img_src_0_rows_V_out_full_n == 1'b0) | (bound_x_max_out_full_n == 1'b0) | (bound_x_min_out_full_n == 1'b0) | (bound_y_max_out_full_n == 1'b0) | (bound_y_min_out_full_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign bound_x_max_out_din = bound_x_max;

assign bound_x_min_out_din = bound_x_min;

assign bound_y_max_out_din = bound_y_max;

assign bound_y_min_out_din = bound_y_min;

assign cut_cols_fu_356_p2 = (tmp_i_fu_350_p2 + bound_x_max);

assign cut_rows_fu_344_p2 = (tmp_8_i_fu_338_p2 + bound_y_max);

assign img_cut_0_cols_V_out_din = cut_cols_reg_387;

assign img_cut_0_rows_V_out_din = cut_rows_reg_382;

assign img_dst_0_cols_V_out_din = dst_cols;

assign img_dst_0_rows_V_out_din = dst_rows;

assign img_dst_1_cols_V_out_din = dst_cols;

assign img_dst_1_rows_V_out_din = dst_rows;

assign img_src_0_cols_V_out_din = src_cols;

assign img_src_0_rows_V_out_din = src_rows;

assign start_out = real_start;

assign tmp_8_i_fu_338_p2 = (16'd1 - bound_y_min);

assign tmp_i_fu_350_p2 = (16'd1 - bound_x_min);

endmodule //Block_Mat_exit1211_p
