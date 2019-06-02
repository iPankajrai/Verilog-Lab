//LIGHT VERILOG CODE


module light(clk,reset,color);
    input clk,reset;
    output reg [1:0]color;
    parameter s0=2'b00,s1=2'b01,s2=2'b10;
    parameter red = 2'b00, green =2'b01, yellow =2'b10;
    reg [1:0]state;

    always@(posedge clk)
    begin
        if (reset == 1'b1)
            state <= s0;
        else
        begin
        case(state)
            s0: state <= s1;
            s1: state <= s2;
            s2: state <= s0;
        endcase
        end
    end
    always@(state)
    begin
    case(state)
        s0: color = red;
        s1: color = green;
        s2: color = yellow;
    endcase
    end
endmodule
