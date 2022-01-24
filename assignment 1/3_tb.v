module three_to_eight_tb;
    reg [2:0] in;
    reg en;

    wire [7:0] out;

    three_to_eight D (in,en,out);
    
   
    initial
        begin
        #100
        $finish;
        end

    initial
        begin
         in=0; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=1; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=2; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=3; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=4; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=5; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=6; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=7; en=0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=0; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=1; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=2; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=3; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=4; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=5; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=6; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         in=7; en=1;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
         
        end

endmodule