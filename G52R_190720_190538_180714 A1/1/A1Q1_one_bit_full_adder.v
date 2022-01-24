module one_bit_full_adder(c_out, s, a, b, c_in);
    input a,b,c_in;
    output wire c_out, s;

    assign c_out = a&b | b&c_in | a&c_in;
    assign s = a ^ b ^ c_in; 
endmodule

