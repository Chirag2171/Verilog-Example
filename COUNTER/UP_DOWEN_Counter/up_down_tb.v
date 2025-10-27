`timescale 1ns / 1ps

module up_down_tb();
reg clk;
reg rst;
reg updwn;
wire [3:0]count;
counter dut (.clk(clk), .rst(rst), .updwn(updwn), .count(count));
initial 
begin 
clk=0;
forever #5 clk=~clk;
end
initial 
begin 
rst = 1; 
updwn = 1;
#10;
rst = 0;
updwn = 0;
#100;
rst = 1; #10;
rst = 0;
updwn = 1;
#100;
$finish();
end
endmodule
