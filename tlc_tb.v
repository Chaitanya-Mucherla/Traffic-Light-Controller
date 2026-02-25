`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 21:12:51
// Design Name: 
// Module Name: tlc_tb
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


module tlc_tb;
reg clk,rst,x;
wire [1:0]hw,cr;
tlc uut(.clk(clk),.rst(rst),.x(x),.hw(hw),.cr(cr));
initial clk=1'b0;
always #50 clk=~clk;
initial begin
  rst=1;
  #100 rst=0;
  x=0;
  #200 x=1;
  #200 x=1;
  #200 x=00;
  #100 $finish;
 end
initial
 $monitor("%t: state=%b, hw=%s, cr=%s",$time,uut.ps,hw,cr);
endmodule

