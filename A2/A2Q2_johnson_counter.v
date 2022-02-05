    module johnson_counter
      (  
        input clk,   
        output reg [0:7] out  
      );  
      initial out = 8'b00000000;
      always @ (posedge clk) begin 
          begin  
            out[0] <= ~out[7];  
            for (integer  i = 0; i < 7; i=i+1) begin  
              out[i+1] <= out[i];  
            end  
          end  
      end  
    endmodule