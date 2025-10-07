`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 12:14:28 AM
// Design Name: 
// Module Name: full_adder3_tb
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


module testbench();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    four_bit_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    initial begin
    cin = 0;
    forever #5 cin = ~cin;
    end

    initial begin
        a = 4'b0000; b = 4'b0001;
        #10;
        a = 4'b0101; b = 4'b0011;
        #10;
        a = 4'b1111; b = 4'b1111;
        #10;
        a = 4'b1010; b = 4'b0101;
        #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0t a=%b b=%b cin=%b | sum=%b cout=%b", $time, a, b, cin, sum, cout);
    end
endmodule