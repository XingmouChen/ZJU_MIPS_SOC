`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:55 05/21/2016 
// Design Name: 
// Module Name:    PC 
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
module REG_32(
	input wire clk, rst, EN,
	input wire [31:0] D,
	output reg [31:0] Q
    );

always @ (posedge clk) begin
	if (rst) begin
		Q = 32'h00000000;
	end
	else if (EN) begin
		Q = D;
	end
end

endmodule
