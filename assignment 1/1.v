module one_bit_full_adder(c_out, s, a, b, c_in);
    input a,b,c_in;
    output wire c_out, s;

    assign c_out = a&b | b&c_in | a&c_in;
    assign s = a ^ b ^ c_in; 
endmodule

module eight_bit_full_adder (
    c_out, s, a, b, c_in
);
    output wire [7:0] s;
    output wire c_out;
    input [7:0] a;
    input [7:0] b;
    input c_in;
    wire cout1,cout2,cout3,cout4,cout5,cout6,cout7;
    one_bit_full_adder O0(cout1,s[0],a[0],b[0],c_in);
    one_bit_full_adder O1(cout2,s[1],a[1],b[1],cout1);
    one_bit_full_adder O2(cout3,s[2],a[2],b[2],cout2);
    one_bit_full_adder O3(cout4,s[3],a[3],b[3],cout3);
    one_bit_full_adder O4(cout5,s[4],a[4],b[4],cout4);
    one_bit_full_adder O5(cout6,s[5],a[5],b[5],cout5);
    one_bit_full_adder O6(cout7,s[6],a[6],b[6],cout6);
    one_bit_full_adder O7(c_out,s[7],a[7],b[7],cout7);
endmodule