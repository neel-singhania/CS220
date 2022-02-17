`include "A3Q1_seq_1010.v"
module tb;
    reg clk, in;
    wire out;

    det_1010 d(clk,in,out);

    always @ ( negedge clk ) begin
        if ($time > 0) begin
            $display("Time = %d, in = %d, out = %d",$time,in,out);
        end
    end

    initial
        begin
        #100
        $finish;
        end

    
    initial begin
        forever begin
         clk = 0;
         #3        
         clk = 1;
         #3      
         clk = 0;
        end
    end

    initial begin
        #3
        in <= 0;
        #6
        in <= 1;
        #6
        in <= 1;
        #6
        in <= 0;
        #6
        in <= 1;
        #6
        in <= 0;
        #6
        in <= 1;
        #6
        in <= 0;
        #6
        in <= 0;
        #6
        in <= 1;
        #6
        in <= 0;
        #6
        in <= 1;
        #6
        in <= 1;
        #6
        in <= 0;
        #6
        in <= 1;
        #6
        in <= 0;
    end
endmodule