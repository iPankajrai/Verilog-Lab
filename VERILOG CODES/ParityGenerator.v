//Parity Generator VERILOG Code

module parity_gen(x,clk,reset,z);
    input x,clk,reset;
    output reg z;
    parameter even =1'b0, odd = 1'b1;
    reg state;
    always@(posedge clk)
    begin
        if (reset ==1'b1)
            state <= even;
        else
        begin
            case(state)
            //Even Parity Generator => number of 1's kept even
            even:
            begin 
                if(x == 1'b1)
                    state <= odd;
                else
                    state <= even;
            end
            //Odd parity Generator => number of 1's kept odd
            odd: 
            begin 
                if(x == 1'b1)
                    state <= even;
                else
                    state <= odd;
            end
            endcase
        end
    end
    always@(state)
    begin
        case(state)
            even: z=1;
            odd: z=0;
        endcase
    end
endmodule
