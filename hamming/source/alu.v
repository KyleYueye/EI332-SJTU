module alu (a,b,aluc,s,z);
   input [31:0] a,b;
   input [3:0] aluc;
   output [31:0] s;
   output        z;
   reg [31:0] s;
   reg        z;
   reg [31:0] tmp;
	reg [31:0] tmp1;
   always @ (a or b or aluc) 
      begin                                   // event
         casex (aluc)
             4'b1011:                         //1011 HADS
             begin
               tmp = a ^ 4'b1000;
					tmp1 = b^ 4'b1000;
               s = tmp[0] + tmp[1] + tmp[2] + tmp[3]+ tmp1[0] + tmp1[1] + tmp1[2] + tmp1[3];
             end
             4'bx000: s = a + b;              //x000 ADD
             4'bx100: s = a - b;              //x100 SUB
             4'bx001: s = a & b;              //x001 AND
             4'bx101: s = a | b;              //x101 OR
             4'bx010: s = a ^ b;              //x010 XOR
             4'bx110: s = b << 16;        //x110 LUI: imm << 16bit             
             4'b0011: s = b << a;            //0011 SLL: rd <- (rt << sa)
             4'b0111: s = b >> a;            //0111 SRL: rd <- (rt >> sa) (logical)
             4'b1111: s = $signed(b) >>> a;   //1111 SRA: rd <- (rt >> sa) (arithmetic)
             default: s = 0;
         endcase
         if (s == 0)  z = 1;
            else z = 0;         
      end      
endmodule 