module mux_4_1(input [1:0]sel,i0,i1,i2,i3,output reg y);
  always @(*) begin
    case(sel)
      1'h0 : y=i0;
      1'h1 : y=i1;
      1'h2 : y=i2;
      1'h3 : y=i3;
      default: $display("Invaild ");
    endcase
  end
endmodule
