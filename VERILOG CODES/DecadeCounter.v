/*
        DECADE COUNTER VERILOG CODE

*/

module decade_counter(input clock,input reset,output reg [3:0] q );

        always@(posedge clock)
        begin
            if(reset)
                q <=4'b0000;
            else if(q<=4'b1000)
                q <= q+1'b1;
            else
                q <= 4'b0000;
        end
endmodule
