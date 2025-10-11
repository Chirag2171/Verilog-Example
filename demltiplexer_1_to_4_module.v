`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 05:30:22 PM
// Design Name: 
// Module Name: demltiplexer_1_to_4_module
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


module demltiplexer_1_to_4_module(
input in,
input [1:0]sel,
output reg [3:0]y
    );
   always @(*) begin
    y = 4'b0000;  // initialize all outputs to 0

    if (sel == 2'b00)
        y = {in, 3'b000};// most significant bit of dout is the input din, and the remaining three bits are zero
    else if (sel == 2'b01)
        y = {1'b0, in, 2'b00};
    else if (sel == 2'b10)
        y = {2'b00, in, 1'b0};
    else 
        y = {3'b000, in};
end
endmodule
