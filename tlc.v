`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 10:13:50
// Design Name: 
// Module Name: tlc
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


module tlc(clk,rst,x,hw,cr);
input clk,rst,x;
output reg [1:0]hw,cr;
reg [2:0] ps,ns;
//state encoding
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100; 
//colour encoding
parameter red=2'd0,green=2'd1,yellow=2'd2;
always@(posedge clk)
 begin
  if(rst) begin
   ps<=s0;
   hw<=green;
   cr<=red;
  end
  else
   ps<=ns;
 end
always@(ps,x)
 begin
  case(ps)
   s0: begin
    if(x)
     ns=s1;
    else
     ns=s0;
   end
   s1:
    ns=s2;
   s2:
    ns=s3;
   s3: begin
    if(x)
     ns=s3;
    else
     ns=s4;
   end
   s4:
    ns=s0;
   default:
    ns=s0;
  endcase
 end
always@(ps,x)
 begin
  case(ps)
   s0:begin
    hw=green;
    cr=red;
   end
   s1: begin
    hw=yellow;
    cr=red;
   end
   s2: begin
    hw=red;
    cr=red;
   end
   s3: begin
    hw=red;
    cr=green;
   end
   s4: begin
    hw=red;
    cr=yellow;
   end
   default:begin
    hw=green;
    cr=red;
   end
  endcase
 end
endmodule
/*
| x (input) | State | HW Light | CR Light |
| --------- | ----- | -------- | -------- |
| 0         | s0    | Green    | Red      |
| 1         | s1    | Yellow   | Red      |
| 1         | s2    | Red      | Red      |
| 1         | s3    | Red      | Green    |
| 0         | s4    | Red      | Yellow   |
| 0         | s0    | Green    | Red      |*/
