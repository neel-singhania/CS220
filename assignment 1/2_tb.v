module eight_bit_comparator_top;
    reg [7:0] A;
    reg [7:0] B;

    wire Greater ;
    wire Less;
    wire Equal;

    eight_bit_comparator COMPARE(A,B,Greater,Less,Equal);

    initial
        begin
         A = 100; B = 100;
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 50; B = 60; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 32; B =  31; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 255; B = 255; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 0; B = 255; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 31; B = 128; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 26; B = 75; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 99; B = 100;
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 235; B = 200; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         A = 6; B = 6; 
         #5
         $display("time=%d: A = %d, B = %d, Greater = %d, Less = %d, Equal = %d",$time,A,B,Greater,Less,Equal);
         
        end

endmodule