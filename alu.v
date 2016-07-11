module alu(	input wire [31:0] A, B,
			input wire [2:0] ALU_operation,
			output reg [31:0] res,
			output wire zero, overflow,
			output reg C
		);
		
wire sign_xor;
parameter one = 32'h00000001, zero_0 = 32'h00000000;

assign zero = (res == zero_0)? 1'b1 : 1'b0;
assign sign_xor = A[31] ^ B[31];
//we care about it only when performing signed arithmatic. Set overflow bit only when A,B's sign bits are the same and the result has a diffenrent sign.
assign overflow = (~sign_xor) & (A[31] ^ res[31]); 
always @(A, B, ALU_operation) begin
	case (ALU_operation)
		//AND
		3'b000: res = A & B;
		//OR
		3'b001: res = A | B;
		//ADD
		3'b010: {C, res} = A + B ;
		//XOR
		3'b011: res = A ^ B;
		//NOR
		3'b100: res = ~(A | B);
		//SRL, to be implemented
		3'b101: res = A >> B[10:6];
		//SUB
		3'b110: begin res = A - B; C = (A < B)? 1'b1 : 1'b0; end
		//SET LESS THAN
		3'b111: res = (A < B) ? one : zero_0;
		default: res = {32{1'bx}};
	endcase
end

endmodule
