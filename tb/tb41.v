`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 12:37:32
// Design Name: 
// Module Name: tb41
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


module tb41();
reg clk,en,rst;
wire [2:0]out;
up_down_counter uut(clk,en,rst,out);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
en=0;rst=1;#5
en=1;rst=1;#5
en=1;rst=0;#10
en=0;rst=1;#10
en=0;#45
en=1;#45
rst=1;#90
$finish;
end

endmodule
