`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:44 04/06/2010 
// Design Name: 
// Module Name:    path 
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
module M_datapath(	   input clk,
					   input reset,
					  
					   input MIO_ready,		//=1
					   input IorD,
					   input IRWrite,
					   input[1:0] RegDst,
					   input RegWrite,
					   input[1:0]MemtoReg,
					   input ALUSrcA,
					  
					   input[1:0]ALUSrcB,
					   input[1:0]PCSource,
					   input PCWrite,
					   input [1:0] Branch,
					   input[2:0]ALU_operation,
					   input[31:0]data2CPU,
					  
					   output[31:0]PC_Current, //PC register's output
					   output[31:0]Inst, //instruction register's output
					   output[31:0]data_out, //register_file_out_B
					   output[31:0]M_addr, //memory addr
					   output zero,
					   output overflow
					  );	
					  
//declaration
wire [31:0] 
	alu_O_result,
	rf_O_A, rf_O_B,
	alu_reg_O,
	IR_O,
	DR_O,
	ext_O, ext_O_sl2,
	lui,
	jump_addr;

wire [4:0]
	rf_I_addrA, rf_I_addrB;

wire 
	alu_O_zero, alu_O_overflow, alu_O_carry;

reg 
	_PCWrite;
reg [4:0]
	rf_I_addrW;
reg [31:0]
	alu_I_opA, alu_I_opB, rf_I_data, PC_I;

//dataflow description
assign rf_I_addrA = Inst[25:21]; //rs
assign rf_I_addrB = Inst[20:16]; //rt
assign ext_O_sl2 = {ext_O[29:0], 2'b00};
assign lui = {Inst[15:0], 16'h0000};
assign jump_addr = {PC_Current[31:28], Inst[25:0], 2'b00};

assign zero = alu_O_zero;
assign Inst = IR_O; 
assign overflow = alu_O_overflow;
assign data_out = rf_O_B;
assign M_addr = (IorD == 1'b0)? PC_Current : alu_reg_O;


//structure description
REG_32
IR(	
	.clk(clk), .rst(reset), .EN(IRWrite), 
	.D(data2CPU), 
	.Q(IR_O)
	);

REG_32
DR(	
	.clk(clk), .rst(reset), .EN(1'b1),
	.D(data2CPU), 
	.Q(DR_O)
	);

REG_32
ALUOut(	
	.clk(clk), .rst(reset), .EN(1'b1),
	.D(alu_O_result),
	.Q(alu_reg_O)
	);

REG_32 
PC(	
	.clk(clk), .rst(reset), .EN(_PCWrite),
	.D(PC_I), 
	.Q(PC_Current)
	);

alu
alu_unit(
	.ALU_operation(ALU_operation),
	.A(alu_I_opA), .B(alu_I_opB), 
	.res(alu_O_result), .zero(alu_O_zero), .overflow(alu_O_overflow), .C(alu_O_carry)
	);

regs
register_file(
	.clk(clk), .rst(reset), .WE(RegWrite),
	.R_addr_A(rf_I_addrA), .R_addr_B(rf_I_addrB), .W_addr(rf_I_addrW), .W_data(rf_I_data),
	.rdata_A(rf_O_A), .rdata_B(rf_O_B)
	);

Ext_32
ext(
	.imm_16(Inst[15:0]), .SorZ(1'b1),
	.imm_32(ext_O)
		);

//behaviour description

//_PCWrite
always @* begin
	if (MIO_ready == 1'b0) begin
		_PCWrite <= 1'b0;
	end
	else if (PCWrite == 1'b1) begin
		_PCWrite <= 1'b1;
	end
	else begin
		_PCWrite <= (Branch[0] && alu_O_zero) || (Branch[1] && (!alu_O_zero)); //beq and bnq
	end
end

//PC_I
always @* begin
	case (PCSource)
		2'b00: begin
			PC_I <= alu_O_result;
		end
		2'b01: begin
			PC_I <= alu_reg_O;
		end
		2'b10: begin
			PC_I <= jump_addr;
		end
		2'b11: begin
			PC_I <= alu_reg_O;
		end
	endcase
end

//alu input operator A
always @* begin
	case (ALUSrcA) 
		1'b0: begin
			alu_I_opA <= PC_Current;
		end
		1'b1: begin
			alu_I_opA <= rf_O_A;
		end
	endcase
end

//alu input operator B
always @* begin
	case (ALUSrcB) 
		2'b00: begin
			alu_I_opB <= rf_O_B;
		end
		2'b01: begin
			alu_I_opB <= 32'd4;
		end
		2'b10: begin
			alu_I_opB <= ext_O;
		end
		2'b11: begin
			alu_I_opB <= ext_O_sl2;
		end
	endcase
end

//register file write address input
always @* begin
	case (RegDst)
		2'b00: begin //rt
			rf_I_addrW <= Inst[20:16];
		end
		2'b01: begin //rd
			rf_I_addrW <= Inst[15:11];
		end
		2'b10: begin //$ra
			rf_I_addrW <= 5'b11111;
		end
		2'b11: begin //notuse
			rf_I_addrW <= 5'd0;
		end
	endcase
end

//register file write data input
always @* begin 
	case(MemtoReg)
		2'b00: begin //alu_reg 
			rf_I_data <= alu_reg_O;
		end
		2'b01: begin //DR
			rf_I_data <= DR_O;
		end
		2'b10: begin //lui
			rf_I_data <= lui;//PC_Current;
		end
		2'b11: begin //jal
			rf_I_data <= PC_Current;
		end
	endcase
end

endmodule
