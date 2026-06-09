`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 22:28:42
// Design Name: 
// Module Name: dg_tb
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
module dg_tb;
    reg clk;
    reg rst;
    wire [6:0] min;
    wire [6:0] sec;
    wire [5:0] hr;
    wire clock;   
top_module  uut (.clk(clk), .rst(rst),.min(min), .sec(sec), .hr(hr),.clock(clock));
    initial clk = 1;
    always #5 clk = ~clk;
initial begin
        rst = 0; #20;         
        rst = 1;    end
initial $monitor("Time = %0t | Hr: %0d Min: %0d Sec: %0d", $time, hr, min, sec);
endmodule
