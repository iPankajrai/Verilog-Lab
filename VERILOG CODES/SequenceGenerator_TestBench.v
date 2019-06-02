//SEQUENCE GEN TEST BENCH

module seq_detect_test;
wire z;
reg x,reset,clk;
sequence_detect s1(x,clk,reset,z);
initial
    begin
    //clk, reset and x initiated with 0
        clk=1'b0; 
        reset=1'b0;
        x=1'b0;
    end

always
//clock of 10 units time period
#5 clk=~clk;
initial
begin
    #3 reset = 1'b1;
    #10 reset = 1'b0;
    #10 x = 1'b0;
    #10 x = 1'b1;
    #10 x = 1'b1;
    #10 x = 1'b0;
    #10 x = 1'b1;
    #10 x = 1'b0;
end
initial
begin
    $monitor($time,"%b%b%b%b",x,clk,reset,z);
    #100 $stop;
end
endmodule