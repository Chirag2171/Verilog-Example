`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 12:25:52 AM
// Design Name: 
// Module Name: mux_4_to_1_tb
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


module mux_4_to_1_tb;
reg i0, i1, i2, i3;
reg [1:0]sel;
wire out;
mux_4_to_1 dut(i0, i1, i2, i3, sel, out);
initial begin 
i0=1; i1=0; i2=1; i3=0;
sel = 2'b00;#10;
sel = 2'b01;#10;
sel = 2'b10;#10;
sel = 2'b11;#100;
//i0=0;#10; i1=1;#10; i2=0;#10; i3=1;#100;
$finish;
end
endmodule
