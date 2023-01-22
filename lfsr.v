`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2023 00:25:12
// Design Name: 
// Module Name: lfsr
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


module lfsr (clk, rst,q);
input clk, rst;
output reg [7:0]q;
wire tap;
assign tap = ~(q[7]^q[5]^q[4]);
always @(posedge clk, negedge rst)
begin
if (!rst)
q<= 8'b00000000;
else
q<={q[6:0],tap};
end
endmodule
