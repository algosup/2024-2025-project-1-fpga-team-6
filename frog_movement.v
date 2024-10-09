module frog_movement (
    input clock,
    output reg r_switch_1, r_switch_2, r_switch_3, r_switch_4, r_switch_prev_1, r_switch_prev_2, r_switch_prev_3, r_switch_prev_4,
    input wire switch_stable_1, switch_stable_2, switch_stable_3, switch_stable_4,
    output reg [4:0] x_pos,
    output reg [3:0] y_pos,
);

    always @(posedge clock) begin
        if (switch_stable_1 && r_switch_prev_1 == 1'b1 && r_switch_1 == 1'b0) begin
            if (y_pos > 0)
                y_pos <= y_pos - 1;
        end
        if (switch_stable_2 && r_switch_prev_2 == 1'b1 && r_switch_2 == 1'b0) begin
            if (x_pos > 0)
                x_pos <= x_pos - 1;
        end
        if (switch_stable_3 && r_switch_prev_3 == 1'b1 && r_switch_3 == 1'b0) begin
            if (x_pos < 19)
                x_pos <= x_pos + 1;
        end
        if (switch_stable_4 && r_switch_prev_4 == 1'b1 && r_switch_4 == 1'b0) begin
            if (y_pos < 14)
                y_pos <= y_pos + 1;
        end
    end
    

endmodule
