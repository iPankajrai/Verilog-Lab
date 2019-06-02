//SEQUENCE GEN VERILOG CODE

module sequence_detect(x,clk,reset,z);
    input x,clk,reset;
    output reg z;
    parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
    reg [1:0]present_state,next_state;
    always@(posedge clk)
    begin
        if(reset ==1)
            present_state <= s0;
        else
            present_state <= next_state;
    end
    always@(present_state,x)
    begin
        case(present_state)
        s0: 
            begin 
            if(x==0) 
                begin 
                    next_state = s1;
                     z=0; 
                end
            else 
            begin 
                next_state = s0;
                z=0; 
            end
            end
        s1: 
            begin 
            if(x==1) 
                begin 
                    next_state = s2;
                    z=0; 
                end
            else 
            begin 
                next_state = s1;
                z=0;
            end
            end
        s2: 
            begin 
            if(x==1)
                begin
                     next_state = s3;
                     z=0; 
                end
            else 
            begin 
            next_state = s1;
            z=0; 
            end
            end
        s3: 
            begin 
                if(x==1) 
                    begin 
                        next_state = s0;
                        z=0;
                    end
                else 
                    begin 
                        next_state = s1;
                         z=1; 
                    end
            end
        endcase
    end
endmodule