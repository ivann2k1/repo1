`timescale 1ns/1ps

module top_module_tb;
  reg a;
  reg b;
  wire cout;
  wire sum;
  top_module dut(
    .a(a),
    .b(b),
    .cout(cout),
    .sum(sum)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,top_module_tb);
    a=0;b=0;
    #10
    a=0; b=1;
    #10
    a=1; b=0;
    #10
    a=1; b=1;
    #10
    $finish;
  end
endmodule
  
  
    
