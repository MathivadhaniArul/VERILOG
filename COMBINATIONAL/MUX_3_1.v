module mux_2_1(input sel,i0,i1,output y);
  assign y=sel?i1:i0;
endmodule

module mux_3_1(input sel0,sel1,i0,i1,i2,i3,output y);
  wire y0;
  
  mux_2_1 mux(sel0,i0,i1,y0);
  mux_2_1 mux1(sel1,y0,i2,y);
endmodule  
