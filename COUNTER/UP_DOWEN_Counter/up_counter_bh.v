`timescale 1ns / 1ps


module counter (clk,rst,updwn,count);
input clk,rst,updwn;
output reg [3:0] count;
always @(posedge clk or posedge rst)
begin
if(rst)
count <= 4'b0000;
else 
count <= (updwn) ? (count + 4'b1) : (count - 4'd1);
end
endmodule
