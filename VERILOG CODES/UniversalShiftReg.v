//UNIVERSAL SHIFT REGISTER VERILOG CODE

module universal_shift(a,s,clk,p);
    input [3:0]a;
    input [1:0]s;
    input clk;
    output reg [3:0]p;

    initial
        p<=4'b0110;
    always@(posedge clk)
    begin
        case (s)
        2'b00:
                begin
                    p[3]<=p[3];
                    p[2]<=p[2];
                    p[1]<=p[1];
                    p[0]<=p[0];
                end
        2'b01:
                begin
                    p[3]<=p[0];
                    p[2]<=p[3];	
                    p[1]<=p[2];
                    p[0]<=p[1];
                end
        2'b10:
                begin
                    p[0]<=p[3];
                    p[1]<=p[0];
                    p[2]<=p[1];
                    p[3]<=p[2];
                end
        2'b11:
                begin
                    p[0]<=a[0];
                    p[1]<=a[1];
                    p[2]<=a[2];
                    p[3]<=a[3];
                end
        endcase
    end
endmodule
