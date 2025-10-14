module apb_dut #(
    parameter addr_width = 32,
    parameter data_width = 32
)(
    input pclk,
    input presetn,
    input [addr_width-1:0] paddr,
    input [data_width-1:0] pwdata,
    output reg [data_width-1:0] prdata,
    input pwrite,
    input pselx,
    input penable,
    input pslave_error,
    input ptransfer,
    output reg pready
);

    reg [2:0] state, next_state;
    reg [data_width-1:0] mem [0:(1<<addr_width)-1];

    parameter IDLE   = 3'b000;
    parameter SETUP  = 3'b001;
    parameter ACCESS = 3'b010;

    // Reset and state transition
    always @(posedge pclk or negedge presetn) begin
        if (!presetn) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // FSM next-state logic
    always @(*) begin
        next_state = state;
        case (state)
            IDLE: begin
                if (pselx && !penable)
                    next_state = SETUP;
            end

            SETUP: begin
                if (penable)
                    next_state = ACCESS;
            end

            ACCESS: begin
                if (pselx && penable) begin
                    if (!ptransfer)
                        next_state = IDLE;
                    else
                        next_state = SETUP;
                end
            end

            default: next_state = IDLE;
        endcase
    end

    // Output logic and memory handling
    always @(posedge pclk or negedge presetn) begin
        if (!presetn) begin
            pready  <= 0;
            prdata  <= 0;
        end else begin
            case (state)
                IDLE: begin
                    pready <= 0;
                    prdata <= 0;
                end

                SETUP: begin
                    pready <= 0;
                    prdata <= 0;
                end

                ACCESS: begin
                    pready <= 1;
                    if (pwrite) begin
                        mem[paddr] <= pwdata;
                    end else begin
                        prdata <= mem[paddr];
                    end
                end

                default: begin
                    pready <= 1;
                    prdata <= 1;
                end
            endcase
        end
    end

endmodule

           		
   		
