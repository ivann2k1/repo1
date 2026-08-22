`timescale 1ns/1ps

module top_module_tb;

  reg a_tb;
  reg b_tb;
  reg cin_tb;
  wire cout_tb;
  wire sum_tb;

  top_module dut(
    .a(a_tb),
    .b(b_tb),
    .cin(cin_tb),
    .cout(cout_tb),
    .sum(sum_tb)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, top_module_tb);
    $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
    $time, a_tb, b_tb, cin_tb, sum_tb, cout_tb);
    a_tb = 0; b_tb = 0; cin_tb = 0;
    #5;
    a_tb = 0; b_tb = 0; cin_tb = 1;
    #5;
    a_tb = 0; b_tb = 1; cin_tb = 0;
    #5;
    a_tb = 0; b_tb = 1; cin_tb = 1;
    #5;
    a_tb = 1; b_tb = 0; cin_tb = 0;
    #5;
    a_tb = 1; b_tb = 0; cin_tb = 1;
    #5;
    a_tb = 1; b_tb = 1; cin_tb = 0;
    #5;
    a_tb = 1; b_tb = 1; cin_tb = 1;
    #10;
    $finish;
  end

endmodule
