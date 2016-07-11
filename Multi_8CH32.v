module Multi_8CH32(
clk, rst, EN,S,point_in,blink_in,Data0,Data1,Data2,Data3,Data4,Data5,Data6,Data7,
Disp_num,point_out,blink_out	
    );
 input clk, rst, EN;
 input [2:0] S;
 input [63:0] point_in,blink_in;
 input [31:0] Data0,Data1,Data2,Data3,Data4,Data5,Data6,Data7;
 output reg [31:0] Disp_num = 32'haa55aa55;
 output reg [7:0] point_out = 8'h00, blink_out = 8'hff;
 
always @(posedge clk)begin
case (S)
3'b000 : begin 
	//if not EN, the display of SEG7's channel0 should retain. That is, EN indicates that we are writing the change.
	if (EN == 1) begin
		Disp_num <= Data0; point_out <= point_in[7:0]; blink_out <= blink_in[7:0]; 
	end
	else begin
		Disp_num <= Disp_num; point_out <= point_out; blink_out <= blink_out;
	end
	end
3'b001 : begin Disp_num <= Data1; point_out <= point_in[15:8]; blink_out <= blink_in[15:8]; end
3'b010 : begin Disp_num <= Data2; point_out <= point_in[23:16]; blink_out <= blink_in[23:16]; end
3'b011 : begin Disp_num <= Data3; point_out <= point_in[31:24]; blink_out <= blink_in[31:24]; end
3'b100 : begin Disp_num <= Data4; point_out <= point_in[39:32]; blink_out <= blink_in[39:32]; end
3'b101 : begin Disp_num <= Data5; point_out <= point_in[47:40]; blink_out <= blink_in[47:40]; end
3'b110 : begin Disp_num <= Data6; point_out <= point_in[55:48]; blink_out <= blink_in[55:48]; end
3'b111 : begin Disp_num <= Data7; point_out <= point_in[63:56]; blink_out <= blink_in[63:56]; end
endcase
end

endmodule
