`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:34:45 07/06/2016 
// Design Name: 
// Module Name:    Ext_32 
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
module Ext_32(
	imm_16, SorZ, imm_32
    );
	
input wire [15:0] imm_16;
input wire SorZ; //sign-extend or zero-extend
output reg [31:0] imm_32;

always @* begin
	case (SorZ)
		1'b0: begin //zero-extend
			imm_32 <= {{16'd0}, {imm_16}};
		end
		1'b1: begin //sign-extend
			imm_32 <= {{16{imm_16[15]}}, {imm_16}};
		end
	endcase
end

endmodule
