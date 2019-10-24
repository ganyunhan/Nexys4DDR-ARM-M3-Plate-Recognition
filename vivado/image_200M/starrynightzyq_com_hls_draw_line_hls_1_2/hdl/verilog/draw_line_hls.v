// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="draw_line_hls,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=10.419000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1214,HLS_SYN_LUT=2656,HLS_VERSION=2018_2}" *)

module draw_line_hls (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        input_r_TDATA,
        input_r_TKEEP,
        input_r_TSTRB,
        input_r_TUSER,
        input_r_TLAST,
        input_r_TID,
        input_r_TDEST,
        output_r_TDATA,
        output_r_TKEEP,
        output_r_TSTRB,
        output_r_TUSER,
        output_r_TLAST,
        output_r_TID,
        output_r_TDEST,
        bound_min_address0,
        bound_min_ce0,
        bound_min_d0,
        bound_min_q0,
        bound_min_we0,
        bound_max_address0,
        bound_max_ce0,
        bound_max_d0,
        bound_max_q0,
        bound_max_we0,
        bound_y_min,
        bound_y_max,
        bound_y_min_ap_vld,
        bound_y_max_ap_vld,
        input_r_TVALID,
        input_r_TREADY,
        output_r_TVALID,
        output_r_TREADY
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [7:0] input_r_TDATA;
input  [0:0] input_r_TKEEP;
input  [0:0] input_r_TSTRB;
input  [0:0] input_r_TUSER;
input  [0:0] input_r_TLAST;
input  [0:0] input_r_TID;
input  [0:0] input_r_TDEST;
output  [7:0] output_r_TDATA;
output  [0:0] output_r_TKEEP;
output  [0:0] output_r_TSTRB;
output  [0:0] output_r_TUSER;
output  [0:0] output_r_TLAST;
output  [0:0] output_r_TID;
output  [0:0] output_r_TDEST;
output  [2:0] bound_min_address0;
output   bound_min_ce0;
output  [15:0] bound_min_d0;
input  [15:0] bound_min_q0;
output   bound_min_we0;
output  [2:0] bound_max_address0;
output   bound_max_ce0;
output  [15:0] bound_max_d0;
input  [15:0] bound_max_q0;
output   bound_max_we0;
input  [15:0] bound_y_min;
input  [15:0] bound_y_max;
input   bound_y_min_ap_vld;
input   bound_y_max_ap_vld;
input   input_r_TVALID;
output   input_r_TREADY;
output   output_r_TVALID;
input   output_r_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] rows;
wire   [31:0] cols;
wire    Block_Mat_exit88_pro_U0_ap_start;
wire    Block_Mat_exit88_pro_U0_ap_done;
wire    Block_Mat_exit88_pro_U0_ap_continue;
wire    Block_Mat_exit88_pro_U0_ap_idle;
wire    Block_Mat_exit88_pro_U0_ap_ready;
wire    Block_Mat_exit88_pro_U0_start_out;
wire    Block_Mat_exit88_pro_U0_start_write;
wire   [31:0] Block_Mat_exit88_pro_U0_img_1_rows_V_out_din;
wire    Block_Mat_exit88_pro_U0_img_1_rows_V_out_write;
wire   [31:0] Block_Mat_exit88_pro_U0_img_1_cols_V_out_din;
wire    Block_Mat_exit88_pro_U0_img_1_cols_V_out_write;
wire   [31:0] Block_Mat_exit88_pro_U0_img_2_rows_V_out_din;
wire    Block_Mat_exit88_pro_U0_img_2_rows_V_out_write;
wire   [31:0] Block_Mat_exit88_pro_U0_img_2_cols_V_out_din;
wire    Block_Mat_exit88_pro_U0_img_2_cols_V_out_write;
wire   [15:0] Block_Mat_exit88_pro_U0_bound_y_min_out_din;
wire    Block_Mat_exit88_pro_U0_bound_y_min_out_write;
wire   [15:0] Block_Mat_exit88_pro_U0_bound_y_max_out_din;
wire    Block_Mat_exit88_pro_U0_bound_y_max_out_write;
wire   [31:0] Block_Mat_exit88_pro_U0_ap_return_0;
wire   [31:0] Block_Mat_exit88_pro_U0_ap_return_1;
wire    ap_channel_done_img_0_cols_V_channel;
wire    img_0_cols_V_channel_full_n;
reg    ap_sync_reg_channel_write_img_0_cols_V_channel;
wire    ap_sync_channel_write_img_0_cols_V_channel;
wire    ap_channel_done_img_0_rows_V_channel;
wire    img_0_rows_V_channel_full_n;
reg    ap_sync_reg_channel_write_img_0_rows_V_channel;
wire    ap_sync_channel_write_img_0_rows_V_channel;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_input_r_TREADY;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_V_write;
wire    draw_line_U0_ap_start;
wire    draw_line_U0_ap_done;
wire    draw_line_U0_ap_continue;
wire    draw_line_U0_ap_idle;
wire    draw_line_U0_ap_ready;
wire    draw_line_U0_src_data_stream_V_read;
wire    draw_line_U0_dst_rows_V_read;
wire    draw_line_U0_dst_cols_V_read;
wire   [7:0] draw_line_U0_dst_data_stream_V_din;
wire    draw_line_U0_dst_data_stream_V_write;
wire   [2:0] draw_line_U0_bound_x_min_address0;
wire    draw_line_U0_bound_x_min_ce0;
wire   [2:0] draw_line_U0_bound_x_max_address0;
wire    draw_line_U0_bound_x_max_ce0;
wire    draw_line_U0_bound_y_min_read;
wire    draw_line_U0_bound_y_max_read;
wire    draw_middle_line_U0_ap_start;
wire    draw_middle_line_U0_ap_done;
wire    draw_middle_line_U0_ap_continue;
wire    draw_middle_line_U0_ap_idle;
wire    draw_middle_line_U0_ap_ready;
wire    draw_middle_line_U0_start_out;
wire    draw_middle_line_U0_start_write;
wire    draw_middle_line_U0_src_data_stream_V_read;
wire    draw_middle_line_U0_dst_rows_V_read;
wire    draw_middle_line_U0_dst_cols_V_read;
wire   [7:0] draw_middle_line_U0_dst_data_stream_V_din;
wire    draw_middle_line_U0_dst_data_stream_V_write;
wire   [31:0] draw_middle_line_U0_dst_rows_V_out_din;
wire    draw_middle_line_U0_dst_rows_V_out_write;
wire   [31:0] draw_middle_line_U0_dst_cols_V_out_din;
wire    draw_middle_line_U0_dst_cols_V_out_write;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_rows_V_read;
wire    Mat2AXIvideo_U0_img_cols_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_V_read;
wire   [7:0] Mat2AXIvideo_U0_output_r_TDATA;
wire    Mat2AXIvideo_U0_output_r_TVALID;
wire   [0:0] Mat2AXIvideo_U0_output_r_TKEEP;
wire   [0:0] Mat2AXIvideo_U0_output_r_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_output_r_TUSER;
wire   [0:0] Mat2AXIvideo_U0_output_r_TLAST;
wire   [0:0] Mat2AXIvideo_U0_output_r_TID;
wire   [0:0] Mat2AXIvideo_U0_output_r_TDEST;
wire    ap_sync_continue;
wire    img_1_rows_V_c_full_n;
wire   [31:0] img_1_rows_V_c_dout;
wire    img_1_rows_V_c_empty_n;
wire    img_1_cols_V_c_full_n;
wire   [31:0] img_1_cols_V_c_dout;
wire    img_1_cols_V_c_empty_n;
wire    img_2_rows_V_c_full_n;
wire   [31:0] img_2_rows_V_c_dout;
wire    img_2_rows_V_c_empty_n;
wire    img_2_cols_V_c_full_n;
wire   [31:0] img_2_cols_V_c_dout;
wire    img_2_cols_V_c_empty_n;
wire    bound_y_min_c_full_n;
wire   [15:0] bound_y_min_c_dout;
wire    bound_y_min_c_empty_n;
wire    bound_y_max_c_full_n;
wire   [15:0] bound_y_max_c_dout;
wire    bound_y_max_c_empty_n;
wire   [31:0] img_0_rows_V_channel_dout;
wire    img_0_rows_V_channel_empty_n;
wire   [31:0] img_0_cols_V_channel_dout;
wire    img_0_cols_V_channel_empty_n;
wire    img_0_data_stream_0_full_n;
wire   [7:0] img_0_data_stream_0_dout;
wire    img_0_data_stream_0_empty_n;
wire    img_1_data_stream_0_full_n;
wire   [7:0] img_1_data_stream_0_dout;
wire    img_1_data_stream_0_empty_n;
wire    img_2_data_stream_0_full_n;
wire   [7:0] img_2_data_stream_0_dout;
wire    img_2_data_stream_0_empty_n;
wire    img_2_rows_V_c18_full_n;
wire   [31:0] img_2_rows_V_c18_dout;
wire    img_2_rows_V_c18_empty_n;
wire    img_2_cols_V_c19_full_n;
wire   [31:0] img_2_cols_V_c19_dout;
wire    img_2_cols_V_c19_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_AXIvideo2Mat_U0_ap_ready;
wire    ap_sync_AXIvideo2Mat_U0_ap_ready;
reg   [1:0] AXIvideo2Mat_U0_ap_ready_count;
reg    ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready;
wire    ap_sync_Block_Mat_exit88_pro_U0_ap_ready;
reg   [1:0] Block_Mat_exit88_pro_U0_ap_ready_count;
reg    ap_sync_reg_draw_line_U0_ap_ready;
wire    ap_sync_draw_line_U0_ap_ready;
reg   [1:0] draw_line_U0_ap_ready_count;
wire   [0:0] start_for_draw_middle_line_U0_din;
wire    start_for_draw_middle_line_U0_full_n;
wire   [0:0] start_for_draw_middle_line_U0_dout;
wire    start_for_draw_middle_line_U0_empty_n;
wire    AXIvideo2Mat_U0_start_full_n;
wire    AXIvideo2Mat_U0_start_write;
wire    draw_line_U0_start_full_n;
wire    draw_line_U0_start_write;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_img_0_cols_V_channel = 1'b0;
#0 ap_sync_reg_channel_write_img_0_rows_V_channel = 1'b0;
#0 ap_sync_reg_AXIvideo2Mat_U0_ap_ready = 1'b0;
#0 AXIvideo2Mat_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready = 1'b0;
#0 Block_Mat_exit88_pro_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_draw_line_U0_ap_ready = 1'b0;
#0 draw_line_U0_ap_ready_count = 2'd0;
end

draw_line_hls_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
draw_line_hls_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .rows(rows),
    .cols(cols)
);

Block_Mat_exit88_pro Block_Mat_exit88_pro_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_Mat_exit88_pro_U0_ap_start),
    .start_full_n(start_for_draw_middle_line_U0_full_n),
    .ap_done(Block_Mat_exit88_pro_U0_ap_done),
    .ap_continue(Block_Mat_exit88_pro_U0_ap_continue),
    .ap_idle(Block_Mat_exit88_pro_U0_ap_idle),
    .ap_ready(Block_Mat_exit88_pro_U0_ap_ready),
    .start_out(Block_Mat_exit88_pro_U0_start_out),
    .start_write(Block_Mat_exit88_pro_U0_start_write),
    .rows(rows),
    .cols(cols),
    .bound_y_min(bound_y_min),
    .bound_y_min_ap_vld(bound_y_min_ap_vld),
    .bound_y_max(bound_y_max),
    .bound_y_max_ap_vld(bound_y_max_ap_vld),
    .img_1_rows_V_out_din(Block_Mat_exit88_pro_U0_img_1_rows_V_out_din),
    .img_1_rows_V_out_full_n(img_1_rows_V_c_full_n),
    .img_1_rows_V_out_write(Block_Mat_exit88_pro_U0_img_1_rows_V_out_write),
    .img_1_cols_V_out_din(Block_Mat_exit88_pro_U0_img_1_cols_V_out_din),
    .img_1_cols_V_out_full_n(img_1_cols_V_c_full_n),
    .img_1_cols_V_out_write(Block_Mat_exit88_pro_U0_img_1_cols_V_out_write),
    .img_2_rows_V_out_din(Block_Mat_exit88_pro_U0_img_2_rows_V_out_din),
    .img_2_rows_V_out_full_n(img_2_rows_V_c_full_n),
    .img_2_rows_V_out_write(Block_Mat_exit88_pro_U0_img_2_rows_V_out_write),
    .img_2_cols_V_out_din(Block_Mat_exit88_pro_U0_img_2_cols_V_out_din),
    .img_2_cols_V_out_full_n(img_2_cols_V_c_full_n),
    .img_2_cols_V_out_write(Block_Mat_exit88_pro_U0_img_2_cols_V_out_write),
    .bound_y_min_out_din(Block_Mat_exit88_pro_U0_bound_y_min_out_din),
    .bound_y_min_out_full_n(bound_y_min_c_full_n),
    .bound_y_min_out_write(Block_Mat_exit88_pro_U0_bound_y_min_out_write),
    .bound_y_max_out_din(Block_Mat_exit88_pro_U0_bound_y_max_out_din),
    .bound_y_max_out_full_n(bound_y_max_c_full_n),
    .bound_y_max_out_write(Block_Mat_exit88_pro_U0_bound_y_max_out_write),
    .ap_return_0(Block_Mat_exit88_pro_U0_ap_return_0),
    .ap_return_1(Block_Mat_exit88_pro_U0_ap_return_1)
);

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .input_r_TDATA(input_r_TDATA),
    .input_r_TVALID(input_r_TVALID),
    .input_r_TREADY(AXIvideo2Mat_U0_input_r_TREADY),
    .input_r_TKEEP(input_r_TKEEP),
    .input_r_TSTRB(input_r_TSTRB),
    .input_r_TUSER(input_r_TUSER),
    .input_r_TLAST(input_r_TLAST),
    .input_r_TID(input_r_TID),
    .input_r_TDEST(input_r_TDEST),
    .img_rows_V_read(img_0_rows_V_channel_dout),
    .img_cols_V_read(img_0_cols_V_channel_dout),
    .img_data_stream_V_din(AXIvideo2Mat_U0_img_data_stream_V_din),
    .img_data_stream_V_full_n(img_0_data_stream_0_full_n),
    .img_data_stream_V_write(AXIvideo2Mat_U0_img_data_stream_V_write)
);

draw_line draw_line_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(draw_line_U0_ap_start),
    .ap_done(draw_line_U0_ap_done),
    .ap_continue(draw_line_U0_ap_continue),
    .ap_idle(draw_line_U0_ap_idle),
    .ap_ready(draw_line_U0_ap_ready),
    .src_data_stream_V_dout(img_0_data_stream_0_dout),
    .src_data_stream_V_empty_n(img_0_data_stream_0_empty_n),
    .src_data_stream_V_read(draw_line_U0_src_data_stream_V_read),
    .dst_rows_V_dout(img_1_rows_V_c_dout),
    .dst_rows_V_empty_n(img_1_rows_V_c_empty_n),
    .dst_rows_V_read(draw_line_U0_dst_rows_V_read),
    .dst_cols_V_dout(img_1_cols_V_c_dout),
    .dst_cols_V_empty_n(img_1_cols_V_c_empty_n),
    .dst_cols_V_read(draw_line_U0_dst_cols_V_read),
    .dst_data_stream_V_din(draw_line_U0_dst_data_stream_V_din),
    .dst_data_stream_V_full_n(img_1_data_stream_0_full_n),
    .dst_data_stream_V_write(draw_line_U0_dst_data_stream_V_write),
    .bound_x_min_address0(draw_line_U0_bound_x_min_address0),
    .bound_x_min_ce0(draw_line_U0_bound_x_min_ce0),
    .bound_x_min_q0(bound_min_q0),
    .bound_x_max_address0(draw_line_U0_bound_x_max_address0),
    .bound_x_max_ce0(draw_line_U0_bound_x_max_ce0),
    .bound_x_max_q0(bound_max_q0),
    .bound_y_min_dout(bound_y_min_c_dout),
    .bound_y_min_empty_n(bound_y_min_c_empty_n),
    .bound_y_min_read(draw_line_U0_bound_y_min_read),
    .bound_y_max_dout(bound_y_max_c_dout),
    .bound_y_max_empty_n(bound_y_max_c_empty_n),
    .bound_y_max_read(draw_line_U0_bound_y_max_read)
);

draw_middle_line draw_middle_line_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(draw_middle_line_U0_ap_start),
    .start_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .ap_done(draw_middle_line_U0_ap_done),
    .ap_continue(draw_middle_line_U0_ap_continue),
    .ap_idle(draw_middle_line_U0_ap_idle),
    .ap_ready(draw_middle_line_U0_ap_ready),
    .start_out(draw_middle_line_U0_start_out),
    .start_write(draw_middle_line_U0_start_write),
    .src_data_stream_V_dout(img_1_data_stream_0_dout),
    .src_data_stream_V_empty_n(img_1_data_stream_0_empty_n),
    .src_data_stream_V_read(draw_middle_line_U0_src_data_stream_V_read),
    .dst_rows_V_dout(img_2_rows_V_c_dout),
    .dst_rows_V_empty_n(img_2_rows_V_c_empty_n),
    .dst_rows_V_read(draw_middle_line_U0_dst_rows_V_read),
    .dst_cols_V_dout(img_2_cols_V_c_dout),
    .dst_cols_V_empty_n(img_2_cols_V_c_empty_n),
    .dst_cols_V_read(draw_middle_line_U0_dst_cols_V_read),
    .dst_data_stream_V_din(draw_middle_line_U0_dst_data_stream_V_din),
    .dst_data_stream_V_full_n(img_2_data_stream_0_full_n),
    .dst_data_stream_V_write(draw_middle_line_U0_dst_data_stream_V_write),
    .dst_rows_V_out_din(draw_middle_line_U0_dst_rows_V_out_din),
    .dst_rows_V_out_full_n(img_2_rows_V_c18_full_n),
    .dst_rows_V_out_write(draw_middle_line_U0_dst_rows_V_out_write),
    .dst_cols_V_out_din(draw_middle_line_U0_dst_cols_V_out_din),
    .dst_cols_V_out_full_n(img_2_cols_V_c19_full_n),
    .dst_cols_V_out_write(draw_middle_line_U0_dst_cols_V_out_write)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_rows_V_dout(img_2_rows_V_c18_dout),
    .img_rows_V_empty_n(img_2_rows_V_c18_empty_n),
    .img_rows_V_read(Mat2AXIvideo_U0_img_rows_V_read),
    .img_cols_V_dout(img_2_cols_V_c19_dout),
    .img_cols_V_empty_n(img_2_cols_V_c19_empty_n),
    .img_cols_V_read(Mat2AXIvideo_U0_img_cols_V_read),
    .img_data_stream_V_dout(img_2_data_stream_0_dout),
    .img_data_stream_V_empty_n(img_2_data_stream_0_empty_n),
    .img_data_stream_V_read(Mat2AXIvideo_U0_img_data_stream_V_read),
    .output_r_TDATA(Mat2AXIvideo_U0_output_r_TDATA),
    .output_r_TVALID(Mat2AXIvideo_U0_output_r_TVALID),
    .output_r_TREADY(output_r_TREADY),
    .output_r_TKEEP(Mat2AXIvideo_U0_output_r_TKEEP),
    .output_r_TSTRB(Mat2AXIvideo_U0_output_r_TSTRB),
    .output_r_TUSER(Mat2AXIvideo_U0_output_r_TUSER),
    .output_r_TLAST(Mat2AXIvideo_U0_output_r_TLAST),
    .output_r_TID(Mat2AXIvideo_U0_output_r_TID),
    .output_r_TDEST(Mat2AXIvideo_U0_output_r_TDEST)
);

fifo_w32_d3_A img_1_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_img_1_rows_V_out_din),
    .if_full_n(img_1_rows_V_c_full_n),
    .if_write(Block_Mat_exit88_pro_U0_img_1_rows_V_out_write),
    .if_dout(img_1_rows_V_c_dout),
    .if_empty_n(img_1_rows_V_c_empty_n),
    .if_read(draw_line_U0_dst_rows_V_read)
);

fifo_w32_d3_A img_1_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_img_1_cols_V_out_din),
    .if_full_n(img_1_cols_V_c_full_n),
    .if_write(Block_Mat_exit88_pro_U0_img_1_cols_V_out_write),
    .if_dout(img_1_cols_V_c_dout),
    .if_empty_n(img_1_cols_V_c_empty_n),
    .if_read(draw_line_U0_dst_cols_V_read)
);

fifo_w32_d4_A img_2_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_img_2_rows_V_out_din),
    .if_full_n(img_2_rows_V_c_full_n),
    .if_write(Block_Mat_exit88_pro_U0_img_2_rows_V_out_write),
    .if_dout(img_2_rows_V_c_dout),
    .if_empty_n(img_2_rows_V_c_empty_n),
    .if_read(draw_middle_line_U0_dst_rows_V_read)
);

fifo_w32_d4_A img_2_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_img_2_cols_V_out_din),
    .if_full_n(img_2_cols_V_c_full_n),
    .if_write(Block_Mat_exit88_pro_U0_img_2_cols_V_out_write),
    .if_dout(img_2_cols_V_c_dout),
    .if_empty_n(img_2_cols_V_c_empty_n),
    .if_read(draw_middle_line_U0_dst_cols_V_read)
);

fifo_w16_d3_A bound_y_min_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_bound_y_min_out_din),
    .if_full_n(bound_y_min_c_full_n),
    .if_write(Block_Mat_exit88_pro_U0_bound_y_min_out_write),
    .if_dout(bound_y_min_c_dout),
    .if_empty_n(bound_y_min_c_empty_n),
    .if_read(draw_line_U0_bound_y_min_read)
);

fifo_w16_d3_A bound_y_max_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_bound_y_max_out_din),
    .if_full_n(bound_y_max_c_full_n),
    .if_write(Block_Mat_exit88_pro_U0_bound_y_max_out_write),
    .if_dout(bound_y_max_c_dout),
    .if_empty_n(bound_y_max_c_empty_n),
    .if_read(draw_line_U0_bound_y_max_read)
);

fifo_w32_d2_A img_0_rows_V_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_ap_return_0),
    .if_full_n(img_0_rows_V_channel_full_n),
    .if_write(ap_channel_done_img_0_rows_V_channel),
    .if_dout(img_0_rows_V_channel_dout),
    .if_empty_n(img_0_rows_V_channel_empty_n),
    .if_read(AXIvideo2Mat_U0_ap_ready)
);

fifo_w32_d2_A img_0_cols_V_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit88_pro_U0_ap_return_1),
    .if_full_n(img_0_cols_V_channel_full_n),
    .if_write(ap_channel_done_img_0_cols_V_channel),
    .if_dout(img_0_cols_V_channel_dout),
    .if_empty_n(img_0_cols_V_channel_empty_n),
    .if_read(AXIvideo2Mat_U0_ap_ready)
);

fifo_w8_d2_A img_0_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_V_din),
    .if_full_n(img_0_data_stream_0_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_V_write),
    .if_dout(img_0_data_stream_0_dout),
    .if_empty_n(img_0_data_stream_0_empty_n),
    .if_read(draw_line_U0_src_data_stream_V_read)
);

fifo_w8_d2_A img_1_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(draw_line_U0_dst_data_stream_V_din),
    .if_full_n(img_1_data_stream_0_full_n),
    .if_write(draw_line_U0_dst_data_stream_V_write),
    .if_dout(img_1_data_stream_0_dout),
    .if_empty_n(img_1_data_stream_0_empty_n),
    .if_read(draw_middle_line_U0_src_data_stream_V_read)
);

fifo_w8_d2_A img_2_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(draw_middle_line_U0_dst_data_stream_V_din),
    .if_full_n(img_2_data_stream_0_full_n),
    .if_write(draw_middle_line_U0_dst_data_stream_V_write),
    .if_dout(img_2_data_stream_0_dout),
    .if_empty_n(img_2_data_stream_0_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_V_read)
);

fifo_w32_d2_A img_2_rows_V_c18_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(draw_middle_line_U0_dst_rows_V_out_din),
    .if_full_n(img_2_rows_V_c18_full_n),
    .if_write(draw_middle_line_U0_dst_rows_V_out_write),
    .if_dout(img_2_rows_V_c18_dout),
    .if_empty_n(img_2_rows_V_c18_empty_n),
    .if_read(Mat2AXIvideo_U0_img_rows_V_read)
);

fifo_w32_d2_A img_2_cols_V_c19_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(draw_middle_line_U0_dst_cols_V_out_din),
    .if_full_n(img_2_cols_V_c19_full_n),
    .if_write(draw_middle_line_U0_dst_cols_V_out_write),
    .if_dout(img_2_cols_V_c19_dout),
    .if_empty_n(img_2_cols_V_c19_empty_n),
    .if_read(Mat2AXIvideo_U0_img_cols_V_read)
);

start_for_draw_mibkb start_for_draw_mibkb_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_draw_middle_line_U0_din),
    .if_full_n(start_for_draw_middle_line_U0_full_n),
    .if_write(Block_Mat_exit88_pro_U0_start_write),
    .if_dout(start_for_draw_middle_line_U0_dout),
    .if_empty_n(start_for_draw_middle_line_U0_empty_n),
    .if_read(draw_middle_line_U0_ap_ready)
);

start_for_Mat2AXIcud start_for_Mat2AXIcud_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(draw_middle_line_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIvideo2Mat_U0_ap_ready <= ap_sync_AXIvideo2Mat_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready <= ap_sync_Block_Mat_exit88_pro_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_img_0_cols_V_channel <= 1'b0;
    end else begin
        if (((Block_Mat_exit88_pro_U0_ap_done & Block_Mat_exit88_pro_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_img_0_cols_V_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_img_0_cols_V_channel <= ap_sync_channel_write_img_0_cols_V_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_img_0_rows_V_channel <= 1'b0;
    end else begin
        if (((Block_Mat_exit88_pro_U0_ap_done & Block_Mat_exit88_pro_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_img_0_rows_V_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_img_0_rows_V_channel <= ap_sync_channel_write_img_0_rows_V_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_draw_line_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_draw_line_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_draw_line_U0_ap_ready <= ap_sync_draw_line_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == AXIvideo2Mat_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        AXIvideo2Mat_U0_ap_ready_count <= (AXIvideo2Mat_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == AXIvideo2Mat_U0_ap_ready))) begin
        AXIvideo2Mat_U0_ap_ready_count <= (AXIvideo2Mat_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Block_Mat_exit88_pro_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Block_Mat_exit88_pro_U0_ap_ready_count <= (Block_Mat_exit88_pro_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == Block_Mat_exit88_pro_U0_ap_ready))) begin
        Block_Mat_exit88_pro_U0_ap_ready_count <= (Block_Mat_exit88_pro_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((draw_line_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        draw_line_U0_ap_ready_count <= (draw_line_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (draw_line_U0_ap_ready == 1'b1))) begin
        draw_line_U0_ap_ready_count <= (draw_line_U0_ap_ready_count + 2'd1);
    end
end

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = (img_0_rows_V_channel_empty_n & img_0_cols_V_channel_empty_n & (ap_sync_reg_AXIvideo2Mat_U0_ap_ready ^ 1'b1) & ap_start);

assign AXIvideo2Mat_U0_start_full_n = 1'b1;

assign AXIvideo2Mat_U0_start_write = 1'b0;

assign Block_Mat_exit88_pro_U0_ap_continue = (ap_sync_channel_write_img_0_rows_V_channel & ap_sync_channel_write_img_0_cols_V_channel);

assign Block_Mat_exit88_pro_U0_ap_start = ((ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready ^ 1'b1) & ap_start);

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign ap_channel_done_img_0_cols_V_channel = ((ap_sync_reg_channel_write_img_0_cols_V_channel ^ 1'b1) & Block_Mat_exit88_pro_U0_ap_done);

assign ap_channel_done_img_0_rows_V_channel = ((ap_sync_reg_channel_write_img_0_rows_V_channel ^ 1'b1) & Block_Mat_exit88_pro_U0_ap_done);

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = ((img_0_cols_V_channel_empty_n ^ 1'b1) & (img_0_rows_V_channel_empty_n ^ 1'b1) & draw_middle_line_U0_ap_idle & draw_line_U0_ap_idle & Mat2AXIvideo_U0_ap_idle & Block_Mat_exit88_pro_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_AXIvideo2Mat_U0_ap_ready = (ap_sync_reg_AXIvideo2Mat_U0_ap_ready | AXIvideo2Mat_U0_ap_ready);

assign ap_sync_Block_Mat_exit88_pro_U0_ap_ready = (ap_sync_reg_Block_Mat_exit88_pro_U0_ap_ready | Block_Mat_exit88_pro_U0_ap_ready);

assign ap_sync_channel_write_img_0_cols_V_channel = ((img_0_cols_V_channel_full_n & ap_channel_done_img_0_cols_V_channel) | ap_sync_reg_channel_write_img_0_cols_V_channel);

assign ap_sync_channel_write_img_0_rows_V_channel = ((img_0_rows_V_channel_full_n & ap_channel_done_img_0_rows_V_channel) | ap_sync_reg_channel_write_img_0_rows_V_channel);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_draw_line_U0_ap_ready = (draw_line_U0_ap_ready | ap_sync_reg_draw_line_U0_ap_ready);

assign ap_sync_ready = (ap_sync_draw_line_U0_ap_ready & ap_sync_Block_Mat_exit88_pro_U0_ap_ready & ap_sync_AXIvideo2Mat_U0_ap_ready);

assign bound_max_address0 = draw_line_U0_bound_x_max_address0;

assign bound_max_ce0 = draw_line_U0_bound_x_max_ce0;

assign bound_max_d0 = 16'd0;

assign bound_max_we0 = 1'b0;

assign bound_min_address0 = draw_line_U0_bound_x_min_address0;

assign bound_min_ce0 = draw_line_U0_bound_x_min_ce0;

assign bound_min_d0 = 16'd0;

assign bound_min_we0 = 1'b0;

assign draw_line_U0_ap_continue = 1'b1;

assign draw_line_U0_ap_start = ((ap_sync_reg_draw_line_U0_ap_ready ^ 1'b1) & ap_start);

assign draw_line_U0_start_full_n = 1'b1;

assign draw_line_U0_start_write = 1'b0;

assign draw_middle_line_U0_ap_continue = 1'b1;

assign draw_middle_line_U0_ap_start = start_for_draw_middle_line_U0_empty_n;

assign input_r_TREADY = AXIvideo2Mat_U0_input_r_TREADY;

assign output_r_TDATA = Mat2AXIvideo_U0_output_r_TDATA;

assign output_r_TDEST = Mat2AXIvideo_U0_output_r_TDEST;

assign output_r_TID = Mat2AXIvideo_U0_output_r_TID;

assign output_r_TKEEP = Mat2AXIvideo_U0_output_r_TKEEP;

assign output_r_TLAST = Mat2AXIvideo_U0_output_r_TLAST;

assign output_r_TSTRB = Mat2AXIvideo_U0_output_r_TSTRB;

assign output_r_TUSER = Mat2AXIvideo_U0_output_r_TUSER;

assign output_r_TVALID = Mat2AXIvideo_U0_output_r_TVALID;

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

assign start_for_draw_middle_line_U0_din = 1'b1;

endmodule //draw_line_hls