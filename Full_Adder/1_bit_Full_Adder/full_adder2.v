`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 11:55:56 PM
// Design Name: 
// Module Name: full_adder2
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
//Full Adder Module using two Half Adders
module full_adder (a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire sum1, carry1, carry2;
//First half adder: adds a and b
half_adder ha1(.a(a), .b(b), .sum(sum1), .carry(carry1));
//Second half adder: adds sum1 and cin
half_adder ha2(.a(sum1), .b(cin), .sum(sum), .carry(carry2));
//Or the carries for full adder's carry out
assign carry = carry1 | carry2;
endmodule
//Half Adder Module
module half_adder (a,b,sum,carry);
input a,b;
output sum,carry;
assign sum = a^b; //XOR for sum
assign carry = a&b;  //AND for carry

endmodule
