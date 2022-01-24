`include "A1Q4_priority_encoder.v"
module pririty_encoder_tb;
	reg [7:0] Input;    
    wire [2:0] Output;

    priority_encoder PRIORITY_ENCODER (Input, Output);

    initial
        begin
        #100
        $finish;
        end

    initial
        begin
         Input = 0;
         #5
         $display("time=%d: Input = %b, Output = %b",$time,Input,Output);
         Input = 1;
         #5
         $display("time=%d: Input = %b, Output = %b",$time,Input,Output);
         Input = 2;
         #5
         $display("time=%d: Input = %b, Output = %b",$time,Input,Output);
         Input = 32;
         #5
         $display("time=%d: Input = %b, Output = %b",$time,Input,Output);
         Input = 40;
         #5
         $display("time=%d: Input = %b, Output = %b",$time,Input,Output);
         Input = 64;
         #5
         $display("time=%d: Input = %b, Output = %b",$time,Input,Output);
        
        end


endmodule