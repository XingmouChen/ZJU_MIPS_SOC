`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:14 06/30/2012 
// Design Name: 
// Module Name:    MIO_BUS 
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
module MIO_BUS(input clk,
					input rst,
					input[3:0]BTN, 					//from buttons
					input[15:0]SW, 					//from switched
					input mem_w, 					//memory write signal
					input[31:0]Cpu_data2bus,		//data from CPU
					input[31:0]addr_bus, 			//addr from cpu
					input[31:0]ram_data_out, 		//from ram data
					input[15:0]led_out,				//from SPIO, led state?
					input[31:0]counter_out,			//from counterX 
					input counter0_out,				//from counterX
					input counter1_out,				//from counterX
					input counter2_out,				//from counterX
					
					output reg[31:0]Cpu_data4bus,	//data for CPU
					output reg[31:0]ram_data_in,	//data write into ram
					output reg[9:0]ram_addr,		//ram address to access
					output reg data_ram_we,			//ram write enable
					output reg GPIOf0000000_we,		//led write enable
					output reg GPIOe0000000_we,		//seg7 write enable
					output reg counter_we,			//counter write enable
					output reg[31:0]Peripheral_in	//data write into peripheral devices, seg7 this case
					);


endmodule
