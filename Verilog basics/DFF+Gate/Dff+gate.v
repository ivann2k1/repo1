module top_module (
    input clk,
    input in, 
    output out);
    intitial out=0;
    always@(posedge clk)begin
        out<=out^in;
    end
endmodule
