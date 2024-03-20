module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output [3:0] count,
    output counting,
    output done,
    input ack );
 
/* vvv=================== same ===================vvv */
    parameter S0=4'd0, S1=4'd1, S2=4'd2, S3=4'd3;
    parameter B0=4'd4, COUNT=4'd5, WAIT=4'd6;
    reg [3:0] state, next_state, cnt;
/* ^^^=================== same ===================^^^ */
    
    reg [3:0] delay;
    reg shift_ena, done_counting;
    reg [15:0] num_cnt;
    
/* vvv=================== same ===================vvv */
    // State transition logic (combinational)
    always @(*) begin
        case (state)
            S0: next_state = data ? S1:S0;
            S1: next_state = data ? S2:S0;
            S2: next_state = (!data) ? S3:S2;
            S3: next_state = data ? B0:S0; 
            B0: next_state = (cnt==4) ? COUNT:B0; 
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
/* ^^^=================== same ===================^^^ */

    
    always @(posedge clk) begin //number counter
        if (reset) begin
            num_cnt <= 0;
        end
        else begin
            num_cnt <= (counting) ? num_cnt+1:0;
        end
    end
    
    always@(posedge clk) begin
        if(reset)begin
            delay <= 0;
        end           
        else if (shift_ena) begin
            delay <= {delay[2:0],data};
        end
    end
    
    //assign count = delay-num_cnt/1000;
    always@(posedge clk) begin
        if(reset)begin
            count <= 0;
        end           
        else if (shift_ena) begin
            count <= {delay[2:0],data}-(num_cnt+1)/1000; 
        end
        else begin
            count <= delay-(num_cnt+1)/1000;
        end
    end
 
    //assign done_counting = (num_cnt == (delay+1)*1000-1);
    always@(posedge clk) begin
        if(reset)begin
            done_counting <= 0;
        end           
        else if (counting) begin
            done_counting <= (num_cnt+1 == (delay+1)*1000-1);
        end
    end

endmodule
