`timescale 1ns/1ns
module testoperation;
   reg [31:0] a,b;
   reg [3:0] aluc;
   wire [31:0] s;
   wire        z;

   initial
   begin
     a = 32'b00000000000000000000000000000011;
     b = 32'b10000000000000000000000000001101;
     aluc = 4'b1111;
   end   
   alu test_alu(a,b,aluc,s,z);
   
endmodule
