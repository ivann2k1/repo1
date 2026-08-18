module top_module (
    input clk,
    input x,
    output z
); 
  reg a=0;
  reg b=0;
  reg c=0;
    always@(posedge clk) begin
        
        a<=x^a;
        b<=x&(~b);
        c<=x|(~c);
    end         
        assign z=~(a|b|c);

endmodule
