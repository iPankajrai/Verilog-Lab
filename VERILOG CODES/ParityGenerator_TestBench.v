//PARITY GEN TEST BENCH

module paritygentest;
    wire z;
    reg x,reset,clk;
    parity_gen p1(x,clk,reset,z);
    // initial processes execute once, whereas always forever
    initial
    begin
        reset = 1'b0;
        clk = 1'b0;
        x=1'b0;
    end
    always
        #5  //after delay of 5 units, clock is changing its state => period 10 units
        clk = ~clk;
        initial
        begin
            #3 reset =1'b1;
            #10 reset = 1'b0;
                x=1'b1;
            #10 x=1'b0;
            #10 x=1'b1;
            #10 x=1'b1;
            #10 x=1'b0;
        end
endmodule