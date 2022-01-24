module two_to_four(in,en,out);
    input [1:0]in;
    inout en ;
    
    output reg [3:0] out;

    always @(in) begin
        out=4'd0;
        if (en) begin
            casex (in)
            2'b00: out[0]=1'b1;
            2'b01: out[1]=1'b1;
            2'b10: out[2]=1'b1;
            2'b11: out[3]=1'b1;
            endcase 
        end
        else begin
            out=4'd0;
        end
    end


endmodule