`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2023 02:56:24 PM
// Design Name: 
// Module Name: counterUD16L_tb
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

module counterUD16L_tb();
  reg Up, Dw, LD, clk;
  reg [15:0] sw;
  wire [15:0] Q;
  wire up4, dw4;

  counterUD16L DUT (
    .Up(Up),
    .Dw(Dw),
    .LD(LD),
    .clk(clk),
    .sw(sw),
    .Q(Q),
    .up4(up4),
    .dw4(dw4)
  );

  // Initialize input signals
  initial begin
    Up = 0;
    Dw = 0;
    LD = 0;
    sw = 0;
    clk = 0;
  end
  initial begin
    
    sw = 16'h1234;
    LD = 1;
    #110 LD = 0;
    Up = 1;
    #130 Up = 0;
    Dw = 1;
    
    
    
end



  // Generate a clock signal
  always #5 clk = ~clk;

endmodule
