`timescale 1s / 1s
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 19:36:47
// Design Name: 
// Module Name: digital_clock
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
    output reg [6:0] min, sec,
    output reg [5:0] hr
    );
    reg [3:0] sec_ones, min_ones, hr_ones;
    reg [2:0] sec_tens, min_tens;
    reg [1:0] hr_tens;
always @(*) begin
    sec = {sec_tens, sec_ones};
    min = {min_tens, min_ones};
    hr  = {hr_tens, hr_ones};
end
always @(posedge clk or negedge rst) begin
if(!rst) begin 
    {hr_tens, hr_ones}<=6'd0; 
    {min_tens,min_ones}<=7'd0; 
    {sec_tens,sec_ones}<=7'd0; 
    sec<=7'd0; min<=7'd0; hr<=6'd0;
    end
else begin
    if(sec_ones==4'd9) begin 
            sec_ones<=4'd0; 
        if(sec_tens==3'd5) begin 
            sec_tens<=3'd0; 
            if(min_ones==4'd9) begin 
                    min_ones<=4'd0; 
            if (min_tens==3'd5) begin 
                    min_tens<=3'd0; 
                    if(hr_ones==4'd3 && hr_tens==2'd2) begin 
                        hr_ones<=4'd0; hr_tens<=2'd0; end
                    else if (hr_ones==4'd9) begin
                        hr_ones<=4'd0; hr_tens<=hr_tens+1'b1; end
                    else begin hr_ones <= hr_ones + 1'b1; end                        
                 end 
           else begin min_tens <= min_tens + 1'b1; end
               end
        else begin min_ones <= min_ones + 1'b1;  end
            end 
      else begin sec_tens <= sec_tens + 1'b1; end
    end
else begin sec_ones <= sec_ones + 1'b1; end          
end
end
endmodule
