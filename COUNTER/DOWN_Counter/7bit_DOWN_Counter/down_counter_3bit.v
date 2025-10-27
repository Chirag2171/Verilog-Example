`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 11:29:34 PM
// Design Name: 
// Module Name: down_counter_3bit
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


module down_counter_3bit(clk, rst, out);
input rst, clk;
output reg [2:0]out;
always @(posedge clk or posedge rst)begin 
if(rst)
out <= 3'd7;
else
out <= out-3'd1;
end 
endmodule
