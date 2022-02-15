module test_tb;
    reg a,b;
    wire c;

    test t1(a,b,c);
    initial begin
        a = 1;
        b = 0;
        $display("a = %d, b = %d, c = %d",a,b,c);
        #5

        a = 0;
        b = 1;
        $display("a = %d, b = %d, c = %d",a,b,c);
        #5

        a = 1;
        b = 1;
        $display("a = %d, b = %d, c = %d",a,b,c);
        #5

        a = 0;
        b = 0;
        $display("a = %d, b = %d, c = %d",a,b,c);
        #5
endmodule