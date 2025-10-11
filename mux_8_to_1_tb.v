`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 12:56:22 AM
// Design Name: 
// Module Name: mux_8_to_1_tb
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


module mux_8_to_1_tb;
reg i0,i1,i2,i3,i4,i5,i6,i7;
reg [2:0]sel;
wire out;
mux_8_to_1 dut(i0,i1,i2,i3,i4,i5,i6,i7,sel,out);
initial begin 
i0=0;i1=1;i2=0;i3=1;i4=0;i5=1;i6=0;i7=1;
sel=000;#10;
sel=001;#10;
sel=010;#10;
sel=011;#10;
sel=100;#10;
sel=101;#10;
sel=110;#10;
sel=111;#10;
end
endmodule
