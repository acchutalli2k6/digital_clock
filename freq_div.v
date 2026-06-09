`timescale 1s / 1s
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 20:00:51
// Design Name: 
// Module Name: freq_div
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


module freq_div #(
    parameter TARGET = 27'h2FAF07F // Default value for real hardware
)(
input clk, rst, output reg pclk
    );
// period =10ns
reg [26:0] count;
    always @(posedge clk) begin
    if(!rst) begin count<=0; pclk<=1'b1; end
    else if(count==TARGET) begin count<=0; pclk<=~pclk; end
    else count<=count+1; 
    end
endmodule
