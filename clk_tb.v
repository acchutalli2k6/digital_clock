`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 23:33:23
// Design Name: 
// Module Name: clk_tb
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


module clk_tb;

reg clk;
reg rst;

wire [5:0] sec;
wire [5:0] min;
wire [4:0] hr;

digital_clock uut(
    .clk(clk),
    .rst(rst),
    .sec(sec),
    .min(min),
    .hr(hr)
);

initial
begin
    clk = 0;
    forever #500000000 clk = ~clk;
end

initial
begin
    rst = 0;
    #20;
    rst = 1;

    #10000000000;
end

endmodule
