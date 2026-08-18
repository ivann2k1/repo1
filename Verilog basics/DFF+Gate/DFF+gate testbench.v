`timescale 1ns/1ps
​
module top_module_tb;
​
  reg clk;
  reg in;
  wire out;
​
  top_module dut(
    .clk(clk),
    .in(in),
    .out(out)
  );
​
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
​
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);
​
    in = 0;
​
    #7;
    in = 1;
​
    #10;
    in = 0;
​
    #10;
    in = 1;
​
    #10;
    in = 0;
​
    #5;
    $finish;
  end
​
endmodule
​
