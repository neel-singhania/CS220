module priority_encoder(in, out);
    	input [7:0] in;

  output reg [2:0] out;  

	always @( in )
        begin
            casex (in)
              8'b10000000: out = 3'b111;
              8'bx1000000: out = 3'b110;
              8'bxx100000: out = 3'b101;
              8'bxxx10000: out = 3'b100;
              8'bxxxx1000: out = 3'b011;
              8'bxxxxx100: out = 3'b010;
              8'bxxxxxx10: out = 3'b001;
              8'bxxxxxxx1: out = 3'b000;
            endcase
        end
endmodule