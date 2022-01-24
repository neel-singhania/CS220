`include "two_to_four.v"

module three_to_eight(in,en,out);

    input [2:0] in;
    input en ;
    
    output reg [7:0] out;
    inp[0] = 

    if(en & ~in[2]) begin 
        two_to_four d1(in[1:0],en,out[3:0]);
    end else if(en & in[2]) begin
            two_to_four d1(in[1:0],en,out[7:4]);
    end else begin
        out <= 0;
    end

endmodule