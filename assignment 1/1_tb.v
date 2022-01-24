module eight_bit_full_adder_tb;
    reg [7:0] A;
    reg [7:0] B;
    reg Cin;

    wire [7:0] Sum;
    wire Carry;

    eight_bit_full_adder ADDER (Carry, Sum, A, B, Cin);

    initial
        begin
         A = 100; B = 100; Cin = 1;         
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 50; B = 60; Cin = 0;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 200; B = 200; Cin = 0;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 10; B = 10; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 1; B = 2; Cin = 0;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 20; B = 0; Cin = 0;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 0; B = 0; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 255; B = 255; Cin = 0;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 20; B = 200; Cin = 0;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 5; B = 6; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
         A = 5; B = 7; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
        A = 5; B = 8; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
        A = 5; B = 9; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
        A = 5; B = 10; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
        A = 5; B = 11; Cin = 1;
         #5
        $display("time=%d: A = %d, B = %d, Cin = %d, Sum = %d, Carry = %d",$time,A,B,Cin,Sum,Carry);
        
        end

endmodule