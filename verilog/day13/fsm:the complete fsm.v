
module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output shift_ena,
    output counting,
    input done_counting,
    output done,
    input ack );

    parameter S0=4'd0, S1=4'd1, S2=4'd2, S3=4'd3;
    parameter B0=4'd4, B1=4'd5, B2=4'd6, B3=4'd7;
    parameter COUNT=4'd8, WAIT=4'd9;
    reg [3:0] state, next_state, cnt;
 
    // State transition logic (combinational)
    always @(*) begin
        case (state)
            S0: next_state = data ? S1:S0;
            S1: next_state = data ? S2:S0;
            S2: next_state = (!data) ? S3:S2;
            S3: next_state = data ? B0:S0; 
            B0: next_state = (cnt==4) ? COUNT:B0; 
            //B0: next_state = B1;
            //B1: next_state = B2;
            //B2: next_state = B3;
            //B3: next_state = COUNT;
            COUNT: next_state = (done_counting) ? WAIT:COUNT;
            WAIT: next_state = (ack) ? S0:WAIT;
            default: next_state = S0;
        endcase
    end
    
    // State flip-flops (sequential)
    always @(posedge clk) begin
        state <= (reset) ? S0:next_state ;
    end
    
    // Output logic
    always @(posedge clk) begin
        if (reset) begin
            cnt <= 4'd0;
        end
        else if (cnt==4) begin //counter stop
            cnt <= 0;
        end
        else begin
            cnt <= (next_state==B0) ? cnt+1:0; //counter
        end
    end
    
    always @(posedge clk) begin
        if (reset) begin
            shift_ena <= 0;
        end
        else begin
            shift_ena <= (next_state==B0);
            //shift_ena <= (next_state==B0 | next_state==B1 | next_state==B2 | next_state==B3);
        end
    end
    
    always @(posedge clk) begin
        if (reset) begin
            counting <= 0;
        end
        else begin
            counting <= (next_state==COUNT);
        end
    end
    
    always @(posedge clk) begin
        if (reset) begin
            done <= 0;
        end
        else begin
            done <= (next_state==WAIT);
        end
    end

endmodule
