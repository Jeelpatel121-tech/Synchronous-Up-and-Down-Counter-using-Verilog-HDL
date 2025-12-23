`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 12:30:57
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,en,rst,
    output reg [3:0]out
    );
    always@(posedge clk)
    begin
    if(!rst)
    out=3'b000;
    else if(en)
    out=out+1;
    else
    out=out-1;
    end
endmodule
