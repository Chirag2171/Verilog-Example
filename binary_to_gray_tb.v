`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 05:09:07 PM
// Design Name: 
// Module Name: binary_to_gray_tb
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


module binary_to_gray_tb();
reg [3:0] b;
wire [3:0] g;
binary_to_gray dut1 (.b(b),.g(g));
initial begin 
b = 0;#10
b = 4'b0000; #10;
b = 4'b0001; #10;
b = 4'b0010; #10;
b = 4'b0011; #10;
b = 4'b0100; #10;
b = 4'b0101; #10;
b = 4'b0110; #10;
b = 4'b0111; #10;
b = 4'b1000; #10;
b = 4'b1001; #10;
b = 4'b1010; #10;
b = 4'b1011; #10;
b = 4'b1100; #10;
b = 4'b1101; #10;
b = 4'b1110; #10
b = 4'b1111; #10; $stop;
end
endmodule
