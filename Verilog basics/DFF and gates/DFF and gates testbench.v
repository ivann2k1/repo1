`timescale 1ns/1ps

module top_module_tb;
  reg clk;
  reg x;
  wire z;
  top_module dut(
    .clk(clk),
    .x(x),
    .z(z)
  );
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,top_module_tb);
    
    x=0;
    #7
    x=1;
    #7
    $finish;
 end
endmodule

