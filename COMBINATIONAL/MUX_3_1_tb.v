module tb;
  reg sel0,sel1,i0,i1,i2,i3;
  wire y;
  
  mux_3_1 mux(sel0,sel1,i0,i1,i2,i3,y);
  initial begin
    $monitor("sel0=%0b sel1=%0b i0=%0h i1=%0h i2=%0h  y=%0h",sel0,sel1,i0,i1,i2,y);
    
   i0=0;i1=1;i2=1;
    sel0=0;sel1=0;#1
    sel0=0;sel1=1;#1
      sel0=1;sel1=0;#1
      sel0=1;sel1=1;#1
    $finish;
  end
endmodule
