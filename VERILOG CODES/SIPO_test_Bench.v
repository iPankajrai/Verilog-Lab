//SIPO Test bench Verilog code



initial
clk=1'b0;
always #10 clk=~clk;
initial
begin
    rst=1'b1;
    a=1'b1;
    #500 rst=1'b0;
    #100 a=1'b0;
    #100 a=1'b1;
    #100 a=1'b0;
    #100 a=1'b0;
    #100 a=1'b1;
    #100 a=1'b0;
end
initial
#1300 $stop;
 endmodule
