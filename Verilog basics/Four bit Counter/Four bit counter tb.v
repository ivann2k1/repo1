`timescale 1ns/1ps

module top_module_tb;
  wire [3:0]q;
  reg reset;
  reg clk;
  
  top_module dut(
    .clk(clk),
    .reset(reset),
    .q(q) 
  );
  initial begin
    clk=0;
    reset=0;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,top_module_tb);
   #10
    reset=1;
    #10
    reset=0;
    #80
    $finish; 
  end
endmodule
  
  
