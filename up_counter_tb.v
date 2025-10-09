`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 12:11:28 AM
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb();
reg clk, rst;
wire [3:0] out;
up_counter_bh udt (.clk(clk), .rst(rst), .out(out));
initial begin 
clk = 0;
forever #5 clk = ~clk;
end
initial begin
rst = 1; #10;
rst = 0; #500;

$finish;
end
endmodule
