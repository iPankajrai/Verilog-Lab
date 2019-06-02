//SISO Test Bench

initial
    clk=1'b1;
always #10 clk=~clk;
initial 
begin
    a=1'b0;
    rst=1'b1;
    #100 rst=1'b0;
    #100 a=1'b1;
    #100 rst=1'b1;
    #100 rst=1'b0;   
end
initial
#1000 $stop;
endmodule
