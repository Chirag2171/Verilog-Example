`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 12:55:39 AM
// Design Name: 
// Module Name: mux_8_to_1
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


module mux_8_to_1(
input i0,i1,i2,i3,i4,i5,i6,i7,
input  [2:0]sel,
output reg out
);
always @(*)begin 
if (sel == 3'b000)
out=i0;
else if (sel == 3'b001)
out=i1;
else if (sel == 3'b010)
out=i2;
else if (sel == 3'b011)
out=i3;
else if (sel == 3'b100)
out=i4;
else if (sel == 3'b101)
out=i5;
else if (sel == 3'b110)
out=i6;
else if (sel == 3'b111)
out=i7;
//case(sel)
//3'b000: out=i0;
//3'b001: out=i1;
//3'b010: out=i2;
//3'b011: out=i3;
//3'b100: out=i4;
//3'b101: out=i5;
//3'b110: out=i6;
//3'b111: out=i7;
//endcase 
end
endmodule
