`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 12:10:58 AM
// Design Name: 
// Module Name: up_counter_bh
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


module up_counter_bh(rst, clk, out);
input rst, clk;
output reg [3:0] out;
 always @(posedge clk or posedge rst)begin
 if(rst)
 out <= 4'd0;
 else
 out <= out + 4'd1;
 end
endmodule
