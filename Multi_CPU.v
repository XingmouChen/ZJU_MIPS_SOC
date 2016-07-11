`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:27 06/14/2016 
// Design Name: 
// Module Name:    Multi_CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Multi_CPU(
	input wire INT, clk, reset, MIO_ready,
	input wire [31:0] Data_in, 
	
	output wire mem_w, CPU_MIO,
	output wire [31:0] PC_out, inst_out, Data_out, Addr_out,
	output wire [4:0] state
    );

wire zero, overflow, MemRead, MemWrite, IorD, IRWrite, RegWrite, ALUSrcA, PCWrite;
wire [1:0] RegDst, MemtoReg, ALUSrcB, PCSource, Branch;
wire [2:0] ALU_operation;

assign mem_w = MemWrite & (~MemRead);

ctrl
ctrl_multi_cycle(.clk(clk), .reset(reset), .zero(zero), .overflow(overflow), .MIO_ready(MIO_ready), .Inst_in(inst_out),
				.MemRead(MemRead), .MemWrite(MemWrite), .CPU_MIO(CPU_MIO), .IorD(IorD), .IRWrite(IRWrite), .RegWrite(RegWrite), .ALUSrcA(ALUSrcA),
				.PCWrite(PCWrite), .Branch(Branch), .RegDst(RegDst), .MemtoReg(MemtoReg), .ALUSrcB(ALUSrcB), .PCSource(PCSource),
				.ALU_operation(ALU_operation), .state_out(state));

M_datapath
M_datapath_multi_cycle(.clk(clk), .reset(reset), .MIO_ready(MIO_ready), .IorD(IorD), .IRWrite(IRWrite), .RegWrite(RegWrite), .ALUSrcA(ALUSrcA),
				.PCWrite(PCWrite), .Branch(Branch), .RegDst(RegDst), .MemtoReg(MemtoReg)/*WtRgstSlct*/, .ALUSrcB(ALUSrcB), .PCSource(PCSource),
				.ALU_operation(ALU_operation), .data2CPU(Data_in),
				.zero(zero), .overflow(overflow), .PC_Current(PC_out), .Inst(inst_out), .data_out(Data_out)/*rdata_B*/, .M_addr(Addr_out))/*addr to ram*/;

endmodule
