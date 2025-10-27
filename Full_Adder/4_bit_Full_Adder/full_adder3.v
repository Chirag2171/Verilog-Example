`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 12:05:41 AM
// Design Name: 
// Module Name: full_adder3
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
//Half Adder Module
module half_adder(a,b,sum,cout);
    input a, b;
    output sum, cout;

    assign sum = a ^ b;
    assign cout = a & b;
endmodule
//Full Adder Module
module full_adder(a,b,cin,sum,cout);
    input a, b, cin;
    output sum, cout;
    wire sum1, carry1, carry2;
    half_adder ha1 (.a(a), .b(b), .sum(sum1), .cout(carry1));
    half_adder ha2 (.a(sum1), .b(cin), .sum(sum), .cout(carry2));
    assign cout = carry1 | carry2;
endmodule
//4-bit full adder using 1-bit adder 
module four_bit_adder (a,b,cin,sum,cout);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    wire c1, c2, c3;
//Chai the 1-bit adder 
    full_adder FA0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder FA1 (.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2));
    full_adder FA2 (.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3));
    full_adder FA3 (.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout));
endmodule