`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 11:11:20 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg a,b,cin;
wire sum,carry;

full_adder dut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
initial begin 
$monitor("At time %0t: a=%b, b=%b, c=%b, sum=%b, carry=%b",$time, a,b,c,sum,carry);
  a=0; b=0; cin=0;
#100 a=0; b=0; cin=1;
#100 a=0; b=1; cin=0;
#100 a=0; b=1; cin=1;
#100 a=1; b=0; cin=0;
#100 a=1; b=0; cin=1;
#100 a=1; b=1; cin=0;
#100 a=1; b=1; cin=1; #200;
$finish();
end 
endmodule
