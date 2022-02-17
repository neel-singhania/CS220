`include "A3Q2_odd_parity_gen.v"

module odd_parity_gen_tb;
    reg clk, rst, in;
    wire out;
    odd_parity_gen block(clk,rst,in,out);
    always #1 clk=~clk;
    always @(negedge clk) $display("Time=%d reset=%b in=%b out=%b", $time,rst,in,out);
    initial begin
        #100 $finish;
    end
    initial begin
        clk=1;
        rst=1;

        #2;
        rst=0;
        in=0;
        #2 in=0;
        #2 in=0;
        #2 in=0;
        #2 rst=1;

        #2;
        rst=0;
        in=0;
        #2 in=0;
        #2 in=0;
        #2 in=1;
        #2 rst=1;

        #2;
        rst=0;
        in=0;
        #2 in=0;
        #2 in=1;
        #2 in=0;
        #2 rst=1;

        #2;
        rst=0;
        in=0;
        #2 in=0;
        #2 in=1;
        #2 in=1;
        #2 rst=1;

        #2;
        rst=0;
        in=1;
        #2 in=0; 
        #2 in=0;
        #2 in=0; 
        #2 rst=1;

        #2;
        rst=0;
        in=1; 
        #2 in=0; 
        #2 in=1;
        #2 in=0; 
        #2 rst=1;
        
        #2;
        rst=0;
        in=1; 
        #2 in=1; 
        #2 in=0;
        #2 in=0;
        #2 rst=1;

        #2;
        rst=0;
        in=1; 
        #2 in=1; 
        #2 in=1;
        #2 in=0; 
        #2 rst=1;
        
    end
endmodule