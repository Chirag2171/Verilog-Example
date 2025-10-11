`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 06:39:02 PM
// Design Name: 
// Module Name: DMUX_1_to_8_tb
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


module DMUX_1_to_8_tb();
reg in;
reg [2:0]sel;
wire [7:0]out;

DMUX_1_to_8_module uut(in,sel,out);
integer j;
initial begin 
for (j=0; j<8; j=j+1) begin
sel=j;
in=0;#10;
in=1;#10;
end
$finish;
end
endmodule
