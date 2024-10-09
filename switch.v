module switch (
    input clock,
    input switch,
    output reg r_switch, r_switch_prev,
    output wire switch_stable,
);
    reg [19:0] debounce_counter = 20'd0;
    
    always @(posedge clock) begin
        r_switch_prev <= r_switch;
        r_switch <= switch;
        if (r_switch != r_switch_prev) begin
            debounce_counter <= 20'b0;
        end else if (debounce_counter < 20'hFFFFF) begin
            debounce_counter <= debounce_counter + 1;
        end
    end
    assign switch_stable = (debounce_counter == 20'hFFFFF);
    
endmodule