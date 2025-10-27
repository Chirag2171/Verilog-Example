`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 01:22:12 AM
// Design Name: 
// Module Name: down_counter_tb
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


module down_counter_tb();
reg clk, rst;
 wire [3:0]out;
 down_counter_bh dut(.clk(clk), .rst(rst), .out(out));
initial  begin 
clk = 0;
forever #5 clk = ~clk;
end
initial begin 
rst = 1;#10;
rst = 0;#200;
rst = 1;#10;
rst = 0;#200;
$finish;
end
endmodule
