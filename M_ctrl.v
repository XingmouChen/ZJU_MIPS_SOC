`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:06 08/03/2009 
// Design Name: 
// Module Name:    ctrl 
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
module ctrl(	input  clk,
				input  reset,
				input  [31:0] Inst_in,
				input  zero,
				input  overflow,
				input  MIO_ready,
				
				output reg MemRead,
				output reg MemWrite,
				output reg[2:0]ALU_operation,
				output [4:0]state_out,				
				output reg CPU_MIO,
				output reg IorD,
				output reg IRWrite,
				output reg [1:0]RegDst,
				output reg RegWrite,
				output reg [1:0]MemtoReg,
				output reg ALUSrcA,
				output reg [1:0]ALUSrcB,
				output reg [1:0]PCSource,
				output reg PCWrite,
				output reg [1:0] Branch
				);

/*
	State Code  #18 now 
 */
parameter ST_IF = 5'd0; //PC <- PC+4, IR <- Mem[PC] 
parameter ST_ID = 5'd1; //get 2 data from rf, alu calculate imm32_sl2+pc+4
parameter ST_ERR = 5'd31; //ERR


//jump
parameter ST_JP = 5'd2; //PC <- jump_addr
//jump and link
parameter ST_JAL_WB = 5'd10; //$ra <- PC+4
parameter ST_JAL_CPL = 5'd11; //PC <- jump_addr

//beq
parameter ST_BEQ = 5'd3; //PC <?- branch_addr
//bnq
parameter ST_BNE = 5'd12; //PC <?- branch_addr

//R-type
parameter ST_R_EXE = 5'd4; //alu perform appropriate operation on opA and opB; result ready to be written into alu_reg
parameter ST_R_CPL = 5'd5; //alu_reg now holds the result from ST_R_EXE. Write the result back to the register_file $rd
parameter ST_R_JR = 5'd13; //after R_EXE, write the content in alu_reg($rs+0) into pc
parameter ST_R_JALR = 5'd14; //after R_EXE(alu_reg holds the address which is $rs), write the content in alu_reg($rs+0) into pc and store pc_4 into $rd;
parameter ST_R_SRL = 5'd18; // $rd <- $rt >> shamt
//I-type
parameter ST_I_EXE = 5'd15; //alu perform appropriate operation on opA and imm32; result ready to be written into alu_reg;
parameter ST_I_CPL = 5'd16; //write content in alu_reg into $rt;
parameter ST_LUI = 5'd17; //after IF, $rt <- {Inst_in[15:0], 16'h0000};

//LW SW Memory Access Relavent
parameter ST_M_ADDR = 5'd6; //$rs + imm -> mem_addr, wait to be written into alu_reg
parameter ST_M_SW_ACS = 5'd7; //MEM[mem_addr(from alu_reg)] <- $rt(i.e. data_out)
parameter ST_M_LW_ACS = 5'd8; //DR <- MEM[mem_addr(from alu_reg)]
parameter ST_M_LW_WB = 5'd9; //$rt <- DR;


/*
	ALU OPERATION CODE
 */
parameter ALU_AND = 3'b000;
parameter ALU_OR = 3'b001;
parameter ALU_ADD = 3'b010;
parameter ALU_XOR = 3'b011;
parameter ALU_NOR = 3'b100;
parameter ALU_SRL = 3'b101;
parameter ALU_SUB = 3'b110;
parameter ALU_SLT = 3'b111;

//INSTRUCTION OPCODE
parameter JUMP_INS_OPCD = 6'b000010;
parameter BEQ_INS_OPCD = 6'b000100;
parameter BNQ_INS_OPCD = 6'b0001001; //05H

parameter LW_INS_OPCD = 6'b100011;
parameter SW_INS_OPCD = 6'b101011;

parameter R_TYPE_OPCD = 6'b000000;

parameter JAL_INS_OPCD = 6'b000011;
parameter ADDI_INS_OPCD = 6'b001000; //ox8
parameter ANDI_INS_OPCD = 6'b001100; //0xc
parameter ORI_INS_OPCD = 6'b001101; //oxd
parameter XORI_INS_OPCD = 6'b001110; //oxe
parameter SLTI_INS_OPCD = 6'b001010; //0xa
parameter LUI_INS_OPCD = 6'b001111; //oxf

//INSTRUCTION FUNC
parameter AND_INS_FUNC = 6'b100100; //24H
parameter OR_INS_FUNC = 6'b100101; //25H
parameter ADD_INS_FUNC = 6'b100000; //20H
parameter XOR_INS_FUNC = 6'b100110; //26H
parameter NOR_INS_FUNC = 6'b100111; //27H
parameter SUB_INS_FUNC = 6'b100010; //22H
parameter SLT_INS_FUNC = 6'b101010; //2AH

parameter SRL_INS_FUNC = 6'b000010; //02H
parameter JR_INS_FUNC = 6'b001000; //08H
parameter JALR_INS_FUNC = 6'b001001; //09H

reg [4:0] State = ST_IF;
assign state_out = State;

/*
	State Transition
 */
always @(posedge clk) begin
	if (reset == 1'b1) begin
		State <= ST_IF;
	end
	else begin
		case (State)
			ST_IF: begin
				if (MIO_ready == 1'b1) begin
					State <= ST_ID;
				end
				else begin
					State <= ST_IF;
				end;
			end
			ST_LUI: begin
				State <= ST_IF;
			end
			ST_ID: begin //calculate the $rs+imm32_sl2, branch addr
				case (Inst_in[31:26])
					LUI_INS_OPCD: begin
						State <= ST_LUI;
					end
					ANDI_INS_OPCD: begin
						State <= ST_I_EXE;
					end
					ADDI_INS_OPCD: begin
						State <= ST_I_EXE;
					end
					ORI_INS_OPCD: begin
						State <= ST_I_EXE;
					end
					XORI_INS_OPCD: begin
						State <= ST_I_EXE;
					end
					SLTI_INS_OPCD: begin
						State <= ST_I_EXE;
					end
					R_TYPE_OPCD: begin
						State <= ST_R_EXE;
					end
					JUMP_INS_OPCD: begin
						State <= ST_JP;
					end
					JAL_INS_OPCD: begin
						State <= ST_JAL_WB;
					end
					BEQ_INS_OPCD: begin
						State <= ST_BEQ;
					end
					BNQ_INS_OPCD: begin
						State <= ST_BNE;
					end
					SW_INS_OPCD: begin
						State <= ST_M_ADDR;
					end
					LW_INS_OPCD: begin
						State <= ST_M_ADDR;
					end
				endcase
			end
			ST_JP: begin
				State <= ST_IF;
			end
			ST_JAL_WB: begin
				State <= ST_JAL_CPL;
			end
			ST_BEQ: begin
				State <= ST_IF;
			end
			ST_BNE: begin
				State <= ST_IF;
			end
			ST_I_EXE: begin
				State <= ST_I_CPL;
			end
			ST_I_CPL: begin
				State <= ST_IF;
			end
			ST_R_EXE: begin
				if (Inst_in[5:0] == JR_INS_FUNC)
					State <= ST_R_JR;
				else if (Inst_in[5:0] == JALR_INS_FUNC)
					State <= ST_R_JALR;
				else
					State <= ST_R_CPL;
			end
			ST_R_JR: begin
				State <= ST_IF;
			end
			ST_R_JALR: begin
				State <= ST_IF;
			end
			ST_R_CPL: begin
				State <= ST_IF;
			end
			ST_M_ADDR: begin
				if (Inst_in[31:26] == SW_INS_OPCD) begin
					State <= ST_M_SW_ACS;
				end
				else begin //LW_INS_OPCD
					State <= ST_M_LW_ACS;
				end;
			end
			ST_M_SW_ACS: begin
				State <= ST_IF;
			end
			ST_M_LW_ACS: begin
				State <= ST_M_LW_WB;
			end
			ST_M_LW_WB: begin
				State <= ST_IF;
			end
			default: State <= ST_ERR;
		endcase
	end;
end;

/*
	ALU_operation
 */
always @* begin
	ALU_operation <= ALU_ADD; //compute addr ...
	if (State == ST_BEQ || State == ST_BNE) begin
		ALU_operation <= ALU_SUB;
	end
	else if (State == ST_R_EXE) begin
		case (Inst_in[5:0]) //func code
			AND_INS_FUNC: begin
				ALU_operation <= ALU_AND;
			end
			ADD_INS_FUNC: begin
				ALU_operation <= ALU_ADD;
			end
			SUB_INS_FUNC: begin
				ALU_operation <= ALU_SUB;
			end
			OR_INS_FUNC: begin
				ALU_operation <= ALU_OR;
			end
			SLT_INS_FUNC: begin
				ALU_operation <= ALU_SLT;
			end
			NOR_INS_FUNC: begin
				ALU_operation <= ALU_NOR;
			end
		endcase
	end
	else if (State == ST_I_EXE) begin
		case (Inst_in[31:26])
			ADDI_INS_OPCD: begin
				ALU_operation <= ALU_ADD;	
			end
			ANDI_INS_OPCD: begin
				ALU_operation <= ALU_AND;
			end
			ORI_INS_OPCD: begin
				ALU_operation <= ALU_OR;
			end
			XORI_INS_OPCD: begin
				ALU_operation <= ALU_XOR;
			end
			SLTI_INS_OPCD: begin //this guy needs to be signed-ext, while not now
				ALU_operation <= ALU_SLT;
			end
		endcase
	end
end


/*
	State Control Signal 
 */

//RegDst
always @* begin
	RegDst <= 2'b00;
	if (State == ST_R_CPL)
		RegDst <= 2'b01;
	else if (State == ST_JAL_WB || State == ST_R_JALR)
		RegDst <= 2'b10;
end

//MemtoReg
always @* begin
	MemtoReg <= 2'b00;
	if (State == ST_M_LW_WB)
		MemtoReg <= 2'b01;
	else if (State == ST_JAL_WB || State == ST_R_JALR)
		MemtoReg <= 2'b11;
	else if (State == ST_LUI) 
		MemtoReg <= 2'b10;

end

//ALUSrcB
always @* begin
	ALUSrcB <= 2'b00;
	if (State == ST_IF)
		ALUSrcB <= 2'b01;
	else if (State == ST_ID) //word-addressing, branch address
		ALUSrcB <= 2'b11;
	else if (State == ST_M_ADDR || State == ST_I_EXE) //byte-addressing,
		ALUSrcB <= 2'b10;
end

//PCSource
always @* begin
	PCSource <= 2'b00;
	if (State == ST_BEQ || State == ST_BNE)
		PCSource <= 2'b01;
	else if (State == ST_JP || State == ST_JAL_CPL)
		PCSource <= 2'b10;
	else if (State == ST_R_JR || State == ST_R_JALR)
		PCSource <= 2'b11;
end

//others
always @* begin
	//interact with ram
	MemRead <= (State == ST_IF) || (State == ST_M_LW_ACS);
	MemWrite <= (State == ST_M_SW_ACS);
	IorD <= (State == ST_M_LW_ACS) || (State == ST_M_SW_ACS);

	//3 registers' WE signals
	IRWrite <= (State == ST_IF);
	RegWrite <= (State == ST_R_CPL) || (State == ST_M_LW_WB) || (State == ST_JAL_WB) || (State == ST_R_JALR) || (State == ST_LUI) || (State == ST_I_CPL);
	PCWrite <= (State == ST_IF) || (State == ST_JP) || (State == ST_JAL_CPL) || (State == ST_R_JR) || (State == ST_R_JALR); //unconditional transfer

	ALUSrcA <= (State == ST_R_EXE) || (State == ST_M_ADDR) || (State == ST_BEQ) || (State == ST_BNE) || (State == ST_I_EXE);
	Branch[0] <= (State == ST_BEQ);
	Branch[1] <= (State == ST_BNE);
end

endmodule
