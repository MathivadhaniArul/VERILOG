module tb;
  reg [1:0]sel;
  reg i0,i1,i2,i3;
  wire y;
  mux_4_1 mux(sel,i0,i1,i2,i3,y);
  initial begin
    $monitor("sel = %0h -> i3 = %0h, i2 = %0h ,i1 = %0h, i0 = %0h -> y = %0h", sel,i3,i2,i1,i0, y);
    {i3,i2,i1,i0} = 4'h5;
    repeat(5) begin
      sel = $random;
      #5;
    end
  end
endmodule
