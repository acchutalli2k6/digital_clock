`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 19:44:10
// Design Name: 
// Module Name: clock
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


module digital_clock(
input clk, input rst,
output reg [5:0] min, sec,
output reg [4:0] hr
    );

always @(posedge clk or negedge rst) begin
if(!rst) begin hr<=0; min<=0; sec<=0; end
else begin
     if(sec==59) 
        begin 
        sec<=0; 
        if(min==59) 
           begin 
           min<=0;  
              if(hr==23) hr<=0;
              else hr<=hr+1;
            end
         else min<=min+1; 
         end
         else sec<=sec+1;
    end
end
endmodule
