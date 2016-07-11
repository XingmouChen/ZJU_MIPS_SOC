// Verilog test fixture created from schematic E:\programming\Xilinx\Computer Organization\Experiment_11\OwnMCPU\MCPU.sch - Wed May 25 19:40:42 2016

`timescale 1ns / 1ps

module MEMORY (
				input clk,
				input wire [31:0] addr, //memory addr
				input wire [31:0] dataIn, //input date to memory
				input wire write, //write enable
				output reg [31:0] dataOut); //output data from memory
				 
	reg [31:0] mem [0:69]; //the memory cells

	initial begin //word address
		mem[0] = 32'h3c03f000;
		mem[1] = 32'h2014003f;
		mem[2] = 32'h3c088000;
		mem[3] = 32'h00632020;
		mem[4] = 32'h20020001;
		mem[5] = 32'h00000827;
	end

	reg [31:0] d[0:3]; //bus linear addr for peripheral devices

	//write
	always @(posedge clk) begin
		if (write) begin
			case(addr)
				32'hF000_0000: d[0] = dataIn; //seg7
				32'hF000_0004: d[1] = dataIn;
				32'hE000_0000: d[2] = dataIn; //led
				32'hE000_0004: d[3] = dataIn;
			endcase
		end
	end

	//read
	always @* begin
		case(addr)
			32'hF000_0000: dataOut = d[0];
			32'hF000_0004: dataOut = d[1];
			32'hE000_0000: dataOut = d[2];
			32'hE000_0004: dataOut = d[3];
			default: dataOut = mem[addr[15:2]];
		endcase
	end	

endmodule

//-----------------------------------------------------------------------------

module MCPU_MCPU_sch_tb();

// Inputs
   reg reset;
   reg clk;
   reg MIO_ready;
   reg INT;
   wire [31:0] Data_in;

// Output
   wire [4:0] state;
   wire [31:0] Inst_out;
   wire [31:0] Data_out;
   wire [31:0] Addr_out;  
   wire [31:0] PC_out;
   wire mem_w;
   wire CPU_MIO;

// Instantiate the UUT
   Multi_CPU UUT (
		.state(state), 
		.inst_out(Inst_out), 
		.Data_out(Data_out), 
		.Addr_out(Addr_out), 
		.reset(reset), 
		.clk(clk), 
		.MIO_ready(MIO_ready), 
		.mem_w(mem_w), 
		.PC_out(PC_out), 
		.CPU_MIO(CPU_MIO), 
		.INT(INT), 
		.Data_in(Data_in)
   );
	
	MEMORY mmr(
		.clk(~clk),
		.addr(Addr_out),
		.dataIn(Data_out),
		.write(mem_w),
		.dataOut(Data_in)
	);
	
// Initialize Inputs

	initial begin	
		reset = 1'b1;
		clk = 1'b1;
		MIO_ready = 1'b1;
		INT = 1'b0;
		
		//Wait for global reset settle down
		#100;
		
		reset = 1'b0;
	end
	
	//generate clk signal
	always @* #50 clk <= ~clk;
endmodule
