`timescale 1ns/1ps

module dff_tb;

  reg clk, d;
  wire q;
  
  dff dut (
    .clk(clk),
    .d(d),
    .q(q)
  );
 
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, dff_tb);

    d = 0;

    #10  d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;

    #10 $finish;
  end

endmodule
