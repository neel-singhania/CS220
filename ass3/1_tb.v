module tb;
    reg clk, in;
    wire out;

    det_1010 d(clk,in,out);

    always @ ( negedge clk ) begin
        if ($time > 0) begin
            $display(out);
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
         #5        
         clk = 1;
         #5        
         clk = 0;
        end
    end

    initial begin
        #3
        in <= 0;
        #10
        in <= 1;
        #10
        in <= 1;
        #10
        in <= 0;
        #10
        in <= 1;
        #10
        in <= 0;
        #10
        in <= 1;
        #10
        in <= 0;
    end
endmodule