module one_bit_full_adder(s,cout,a,b,cin);

    input a;
    input b;
    input cin;

    output s;
    output cout;

    assign s=a^b^cin;
    assign cout=((a&b)|(a&cin)|(b&cin)); 

endmodule
