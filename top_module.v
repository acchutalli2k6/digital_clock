`timescale 1s / 1s
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 22:22:21
// Design Name: 
// Module Name: top_module
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


module top_module (input clk, rst, output [6:0] min, output [6:0] sec, output [5:0] hr, output clock );

    digital_clock dg(.clk(clock),.rst(rst),.sec(sec),.min(min),.hr(hr));
    freq_div fd(.clk(clk),.rst(rst),.pclk(clock));
endmodule
