
`include "one_bit_full_adder.v"

module eight_bit_ripple_carry_adder(s,cout,a,b,cin);

    input [7:0] a;
    input [7:0] b;
    input cin;

    output[7:0] s;
    output cout;

    wire [6:0] mid_carry;

    one_bit_full_adder A0(s[0],mid_carry[0],a[0],b[0],cin);
    one_bit_full_adder A1(s[1],mid_carry[1],a[1],b[1],mid_carry[0]);
    one_bit_full_adder A2(s[2],mid_carry[2],a[2],b[2],mid_carry[1]);
    one_bit_full_adder A3(s[3],mid_carry[3],a[3],b[3],mid_carry[2]);
    one_bit_full_adder A4(s[4],mid_carry[4],a[4],b[4],mid_carry[3]);
    one_bit_full_adder A5(s[5],mid_carry[5],a[5],b[5],mid_carry[4]);
    one_bit_full_adder A6(s[6],mid_carry[6],a[6],b[6],mid_carry[5]);
    one_bit_full_adder A7(s[7],cout,a[7],b[7],mid_carry[6]);
    
endmodule