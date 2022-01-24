module two_to_four(in,en,out);
    input [1:0]in;
    input en ;
    
    output wire [3:0] out;

    assign out[0] = ~in[1] & ~in[0] & en;
    assign out[1] = ~in[1] & in[0] & en;
    assign out[2] = in[1] & ~in[0] & en;
    assign out[3] = in[1] & in[0] & en;

endmodule