`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 01:20:46 AM
// Design Name: 
// Module Name: down_counter_bh
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


module down_counter_bh(
input clk, rst,
output reg [3:0]out
    );
    always @(posedge clk or posedge rst)begin 
    if (rst)
    out <= 4'd15;
    else
    out <= out-4'd1;
    end
endmodule
