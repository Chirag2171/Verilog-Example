`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 11:33:19 PM
// Design Name: 
// Module Name: down_counter_3bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module down_counter_3bit_tb;
reg clk, rst;
wire [2:0] out;
down_counter_3bit dut(clk, rst, out);
initial begin 
clk = 0;
forever #5 clk = ~clk;
end
initial begin 
rst = 1; #10;
rst = 0; #1000;
$finish;
end
endmodule
