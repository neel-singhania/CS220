`include "three_to_eight.v"

module three_to_eight_tb;
    reg [2:0] in;
    reg en;

    reg [7:0] out;

    three_to_eight D (in,en,out);
    
   
    initial
        begin
        #100
        $finish;
        end

    initial
        begin
         in=0; en=1'b0;
         #5
         $display("time=%d: in = %d, en = %d, out = %b",$time,in, en, out);
        //  A = 0; B = 0; Cin = 1;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        //  A = 0; B = 1; Cin = 0;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        //  A = 0; B = 1; Cin = 1;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        //  A = 1; B = 0; Cin = 0;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        //  A = 1; B = 0; Cin = 1;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        //  A = 1; B = 1; Cin = 0;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        //  A = 1; B = 1; Cin = 1;
        //  #5
        //  $display("time=%d: p = %d, q = %d, r = %d, s = %d, t = %d, u = %d, v = %d, w = %d",$time,p,q,r,s,t,u,v,w);
        
         
        end

endmodule