`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 12:17:18 AM
// Design Name: 
// Module Name: mux_4_to_1
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


module mux_4_to_1(i0, i1, i2, i3, sel, out);
input i0, i1, i2, i3;
input  [1:0]sel;
output reg out;
always @(*)begin 
if(sel == 2'b00)
out = i0;
else if (sel == 2'b01)
out = i1;
else if (sel == 2'b10)
out = i2;
else
out = i3;
end 
endmodule 
