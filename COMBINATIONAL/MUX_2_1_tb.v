module mux_tb;
  reg i0, i1, sel;
  wire y;
  
  mux_2_1 mux(.i0(i0), .i1(i1),.sel(sel), .y(y));
  initial begin
    $dumpfile("mux_2_1.vcd");
    $dumpvars(1);
    $monitor(" %0t sel = %b: i0 = %b, i1 = %b --> y = %b", $time,sel, i0, i1, y);
    i0 = 0; i1 = 1;
    sel = 0;
    #1;
    sel = 1;#1;
    
  end
endmodule 
