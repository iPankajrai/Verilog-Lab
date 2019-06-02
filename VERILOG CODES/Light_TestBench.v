//LIGHT TEST BENCH


module light_test;
    // Inputs
    reg clk;
    reg reset;
    // Outputs
    wire [1:0] color;
    // Instantiate the Unit Under Test (UUT)

    light uut (
        .clk(clk),
        .reset(reset),
        .color(color)
    );

    initial begin
    // Initialize Inputs
        clk = 0;
        reset = 0;
    // Wait 100 ns for global reset to finish

    // Add stimulus here
    end
    always
    #5 clk = ~clk;
    initial begin
    #3 reset =1;
    #10 reset = 0;
    end
endmodule