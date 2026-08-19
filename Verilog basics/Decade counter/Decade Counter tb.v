`timescale 1ns/1ps
module top_module_tb;

  reg clk_tb;
  reg reset_tb;
  wire [3:0] out_tb;

  top_module dut (
    .clk(clk_tb),
    .reset(reset_tb),
    .q(out_tb)
  );
  always #5 clk_tb = ~clk_tb;
  initial begin
    
    clk_tb = 0;
    reset_tb = 1;

    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);

    #10;
    reset_tb = 0;

    #100;
  
    reset_tb = 1;

    #10;
    reset_tb = 0;
  
    #50;

    $finish;
  end
  initial begin
    $monitor("time=%0t | clk=%b | reset=%b | q=%d",
             $time, clk_tb, reset_tb, out_tb);
  end
endmodule
