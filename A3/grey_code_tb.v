module gray_code_counter_tb;

    reg clk;
    wire cout;

    gray_code_counter count(clk,cout);

    always @ ( negedge clk ) begin
        $display("Time = %d, out = %d",$time,cout);
    end

    initial
        begin
        clk = 0;
        #500
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
endmodule