`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 06:38:18 PM
// Design Name: 
// Module Name: DMUX_1_to_8_module
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


module DMUX_1_to_8_module(
input in,
input [2:0]sel,
output reg [7:0]out
    );
    integer i;
    always @(*)begin 
    out = 8'b0;
    for (i=0; i<8; i=i+1)begin 
    if (sel == i)
    out[i]=in;
    end
    end
endmodule
