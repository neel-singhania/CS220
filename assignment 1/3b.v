module three_to_eight(in,en,out);

    input [2:0] in;
    input en ;
    
    output [7:0] out;

    two_to_four TF1(in[1:0], en & ~in[2], out[3:0]);
    two_to_four TF2(in[1:0], en & in[2], out[7:4]);

endmodule