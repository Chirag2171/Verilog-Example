`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 05:31:09 PM
// Design Name: 
// Module Name: demultiplexer_1_to_4_tb
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


module demultiplexer_1_to_4_tb();
reg in;
reg [1:0]sel;
wire [3:0]y;
demltiplexer_1_to_4_module uut(in, sel, y);
initial begin 
sel=2'b00; in=0;#10;
sel=2'b00;in=1;#10;
sel=2'b01;in=0;#10;
sel=2'b01;in=1;#10;
sel=2'b10;in=0;#10;
sel=2'b10;in=1;#10;
sel=2'b11;in=0;#10;
sel=2'b11;in=1;#10;
$finish();
end
endmodule
