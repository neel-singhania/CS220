`include "A2Q2_johnson_counter.v"
module johnson_counter_tb;                               
    reg clk;
    wire [0:7] out; 

    johnson_counter jc(clk,out);

    always #5 clk = ~clk; 

    initial begin
        clk<=0;
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);
        // #10
        // $display("time=%d, out=%b",$time,out);


        $monitor ("T=%0t    out=%b", $time, out);  

        repeat (17) @(posedge clk);  
        $finish;  
        
        
    end  
endmodule