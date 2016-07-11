`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:39 05/19/2016 
// Design Name: 
// Module Name:    regs 
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
module regs(
	input wire clk, rst, WE,
	input wire [4:0] R_addr_A, R_addr_B, W_addr,
	input wire [31:0] W_data,
	output wire [31:0] rdata_A, rdata_B
    );

reg [31:0] R_array [31:0];
integer i;

initial begin
	R_array[0] = 32'h00000000;
end

assign rdata_A = R_array[R_addr_A];
assign rdata_B = R_array[R_addr_B];

always @ (posedge clk) begin
	if (rst) begin
		for (i = 0; i < 32; i = i+1) begin
			R_array[i] <= 32'h00000000;
		end
	end
	else if (WE) begin
		R_array[W_addr] <= W_data;
	end
end
	
endmodule
