module Carry_Look_Ahead_Adder(a,b,cin,sum,cout);

    input[7:0] a,b;
    input cin;

    output [7:0] sum;
    output cout;

    wire [7:0] p,g;
    wire [8:0] c;


        assign p=a^b;
        assign g=a&b;

        assign c[0]=cin;
        // assign c[1]=g[0]|(p[0]&c[0]),
        //     c[2]=g[1]|(p[1]&c[1]),
        //     c[3]=g[2]|(p[2]&c[2]),
        //     c[4]=g[3]|(p[3]&c[3]);
        // integer i;
        // for( i=1;i<5;i=i+1) begin
        //     assign c[i]=g[i-1]|(p[i-1]&c[i-1]);
        // end

        genvar i;        
            generate        
                for (i = 1; i < 9 ; i=i+1) begin         
                    assign c[i]=g[i-1]|(p[i-1]&c[i-1]);  
                end
        endgenerate 


        assign sum=p^c;


        assign cout=c[8];


endmodule


            