module eight_bit_full_adder_tb;
    reg [7:0] A;
    reg [7:0] B;
    reg opcode;

    wire [7:0] Sum;
    wire Carry;
    wire overflow;
    full_adder ADDER (A, B, opcode, Sum, Carry, overflow);

    initial
        begin
         A = 100; B = 100; opcode = 0;         
         #5
        $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);
         A = 50; B = 60; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 200; B = 200; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 10; B = 10; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 1; B = 2; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 20; B = 0; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 0; B = 0; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 255; B = 255; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 20; B = 200; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 5; B = 6; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

         A = 5; B = 7; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

        A = 5; B = 8; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

        A = 5; B = 9; opcode = 0;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

        A = 5; B = 10; opcode = 1;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

        A = 15; B = 11; opcode = 1;
         #5
                $display("time=%d: A = %d, B = %d, opcode = %d, Sum = %d, Carry = %d, Overflow = %d",$time,A,B,opcode,Sum,Carry,overflow);

        
        end

endmodule