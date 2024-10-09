`include "Sprites/frog_sprite.v"
`include "Sprites/grass_sprite.v"
`include "Sprites/road_sprite.v"
`include "Sprites/car3_sprite.v"
`include "VGA/vga_color.v"
`include "VGA/vga_sync.v"

module main(
    input wire i_CLK,           
    input wire i_SW1,           
    input wire i_SW2,           
    input wire i_SW3,           
    input wire i_SW4,           
    output wire VGA_HS,         
    output wire VGA_VS,         
    output wire [2:0] VGA_R,    
    output wire [2:0] VGA_G,    
    output wire [2:0] VGA_B,     
    output reg S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G,
    output reg S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G,
    output wire o_LED_1, o_LED_2, o_LED_3, o_LED_4
);

    reg [2:0] r_Lives;
    always @(posedge i_CLK) begin
        if(r_Lives == 4) begin
            o_LED_1 <= 1;
            o_LED_2 <= 1;
            o_LED_3 <= 1;
            o_LED_4 <= 1;
        end else if (r_Lives == 3) begin
            o_LED_1 <= 1;
            o_LED_2 <= 1;
            o_LED_3 <= 1;
            o_LED_4 <= 0;
        end else if (r_Lives == 2) begin
            o_LED_1 <= 1;
            o_LED_2 <= 1;
            o_LED_3 <= 0;
            o_LED_4 <= 0;
        end else if (r_Lives == 1) begin
            o_LED_1 <= 1;
            o_LED_2 <= 0;
            o_LED_3 <= 0;
            o_LED_4 <= 0;
        end else if (r_Lives == 0) begin
            r_Lives <= 3;
        end
    end

    wire [9:0] pixel_x, pixel_y;  
    wire video_on;                
    wire h_sync, v_sync;
    reg [8:0] pixel_color;        

    reg [4:0] frog_x_pos = 10;    
    reg [3:0] frog_y_pos = 14;    
    reg [9:0] car3_x_pos = 0;
    reg [3:0] car3_y_pos = 11; 

    reg r_SW1, r_SW1_prev;
    reg r_SW2, r_SW2_prev;
    reg r_SW3, r_SW3_prev;
    reg r_SW4, r_SW4_prev;
    wire switch_1_stable, switch_2_stable, switch_3_stable, switch_4_stable;

    reg [6:0] r_CurrentNumber = 0; 

    function [6:0] get_7seg_encoding;
        input [3:0] num;
        case (num)
            4'b0000: get_7seg_encoding = 7'b0000001; 
            4'b0001: get_7seg_encoding = 7'b1001111; 
            4'b0010: get_7seg_encoding = 7'b0010010; 
            4'b0011: get_7seg_encoding = 7'b0000110; 
            4'b0100: get_7seg_encoding = 7'b1001100; 
            4'b0101: get_7seg_encoding = 7'b0100100; 
            4'b0110: get_7seg_encoding = 7'b0100000; 
            4'b0111: get_7seg_encoding = 7'b0001111; 
            4'b1000: get_7seg_encoding = 7'b0000000; 
            4'b1001: get_7seg_encoding = 7'b0000100; 
            default: get_7seg_encoding = 7'b1111111; 
        endcase
    endfunction

    
    always @(posedge i_CLK) begin
        {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} <= get_7seg_encoding(r_CurrentNumber / 10);
        {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} <= get_7seg_encoding(r_CurrentNumber % 10);
    end

    switch switch_inst_1 (
        .clock(i_CLK), 
        .switch(i_SW1), 
        .r_switch(r_SW1), 
        .r_switch_prev(r_SW1_prev), 
        .switch_stable(switch_1_stable)
    );
    
    switch switch_inst_2 (
        .clock(i_CLK), 
        .switch(i_SW2), 
        .r_switch(r_SW2), 
        .r_switch_prev(r_SW2_prev), 
        .switch_stable(switch_2_stable)
    );

    switch switch_inst_3 (
        .clock(i_CLK), 
        .switch(i_SW3), 
        .r_switch(r_SW3), 
        .r_switch_prev(r_SW3_prev), 
        .switch_stable(switch_3_stable)
    );

    switch switch_inst_4 (
        .clock(i_CLK), 
        .switch(i_SW4), 
        .r_switch(r_SW4), 
        .r_switch_prev(r_SW4_prev), 
        .switch_stable(switch_4_stable)
    );

    wire [9:0] FROG_X_POS = frog_x_pos * 32;
    wire [9:0] FROG_Y_POS = frog_y_pos * 32;
    wire [9:0] CAR3_X_POS = car3_x_pos; 
    wire [9:0] CAR3_Y_POS = car3_y_pos * 32;    

    reg [3:0] r_previous_direction = 1;
    
    always @(posedge i_CLK) begin
        
        if(switch_1_stable && r_SW1_prev == 1'b1 && r_SW1 == 1'b0) begin
            if (frog_y_pos >= 0)   
                frog_y_pos <= frog_y_pos - 1;
                r_previous_direction <= 1;
        end
        if(switch_2_stable && r_SW2_prev == 1'b1 && r_SW2 == 1'b0) begin
            if (frog_x_pos > 0)   
                frog_x_pos <= frog_x_pos - 1;
                r_previous_direction <= 2;
        end
        if(switch_3_stable && r_SW3_prev == 1'b1 && r_SW3 == 1'b0) begin
            if (frog_x_pos < 19)   
                frog_x_pos <= frog_x_pos + 1;
                r_previous_direction <= 3;
        end
        if(switch_4_stable && r_SW4_prev == 1'b1 && r_SW4 == 1'b0) begin
            if (frog_y_pos < 14)   
                frog_y_pos <= frog_y_pos + 1;
                r_previous_direction <= 4;
        end

        
        if (((FROG_X_POS >= car3_x_pos && FROG_X_POS <= car3_x_pos + 32) || (FROG_X_POS + 32 >= car3_x_pos && FROG_X_POS + 32 <= car3_x_pos + 32)) && frog_y_pos == car3_y_pos) begin
            frog_x_pos <= 10;    
            frog_y_pos <= 14;    
            r_CurrentNumber <= 0; 
            r_previous_direction <= 1;
            r_Lives <= r_Lives - 1;
        end
        
        if (frog_y_pos == 0 && switch_1_stable && r_SW1_prev == 1'b1 && r_SW1 == 1'b0) begin
            frog_x_pos <= 10;    
            frog_y_pos <= 14;    
            r_CurrentNumber <= r_CurrentNumber + 1; 
            r_previous_direction <= 1;
        end
    end

    wire [4:0] road_pixel_x, road_pixel_y;
    wire [8:0] road_pixel_color;
    bground_pixel road_pixel_inst (
        .global_pixel_x(pixel_x), .global_pixel_y(pixel_y),
        .obj_pixel_x(road_pixel_x), .obj_pixel_y(road_pixel_y),
    );
    road_sprite road_inst (
        .clk(i_CLK),
        .pixel_x(road_pixel_x),
        .pixel_y(road_pixel_y),
        .pixel_color(road_pixel_color)
    );
    
    wire [4:0] grass_pixel_x, grass_pixel_y;
    wire [8:0] grass_pixel_color;
    bground_pixel grass_pixel_inst (
        .global_pixel_x(pixel_x), .global_pixel_y(pixel_y),
        .obj_pixel_x(grass_pixel_x), .obj_pixel_y(grass_pixel_y),
    );
    grass_sprite grass_inst (
        .clk(i_CLK),
        .pixel_x(grass_pixel_x),
        .pixel_y(grass_pixel_y),
        .pixel_color(grass_pixel_color)
    );
    
    wire [4:0] frog_pixel_x, frog_pixel_y;
    wire [4:0] actual_frog_pixel_x, actual_frog_pixel_y;
    wire [8:0] frog_pixel_color;
    obj_pixel frog_pixel_inst (
        .global_pixel_x(pixel_x), .global_pixel_y(pixel_y),
        .obj_pixel_x(frog_pixel_x), .obj_pixel_y(frog_pixel_y),
        .OBJ_X_POS(FROG_X_POS), .OBJ_Y_POS(FROG_Y_POS),
    );
    
    always @(*) begin
        case (r_previous_direction)
            1: begin 
                actual_frog_pixel_x = frog_pixel_x;
                actual_frog_pixel_y = frog_pixel_y;
            end
            2: begin 
                actual_frog_pixel_x = frog_pixel_y;
                actual_frog_pixel_y = frog_pixel_x;
            end
            3: begin 
                actual_frog_pixel_x = ~frog_pixel_y;
                actual_frog_pixel_y = ~frog_pixel_x;
            end
            4: begin 
                actual_frog_pixel_x = ~frog_pixel_x;
                actual_frog_pixel_y = ~frog_pixel_y;
            end
            default: begin 
                actual_frog_pixel_x = frog_pixel_x;
                actual_frog_pixel_y = frog_pixel_y;
            end
        endcase
    end

    frog_sprite frog_inst (
        .clk(i_CLK),
        .pixel_x(actual_frog_pixel_x),
        .pixel_y(actual_frog_pixel_y),
        .pixel_color(frog_pixel_color)
    );
    
    parameter CAR3_SPEED = 166667;
    reg [31:0] r_Car3_Count = 0;
    
    always @(posedge i_CLK) begin
        if (r_Car3_Count < CAR3_SPEED) begin
            r_Car3_Count <= r_Car3_Count + 1;
        end else begin
            r_Car3_Count <= 0;
            if (car3_x_pos == 0) begin 
                car3_x_pos <= 608;
            end else begin
                car3_x_pos <= car3_x_pos - 1;
            end
        end
    end
    wire [4:0] car3_pixel_x, car3_pixel_y;
    wire [8:0] car3_pixel_color;
    obj_pixel car3_pixel_inst (
        .global_pixel_x(pixel_x), .global_pixel_y(pixel_y),
        .obj_pixel_x(car3_pixel_x), .obj_pixel_y(car3_pixel_y),
        .OBJ_X_POS(CAR3_X_POS), .OBJ_Y_POS(CAR3_Y_POS),
    );
    car3_sprite car3_inst (
        .clk(i_CLK),
        .pixel_x(~car3_pixel_x),
        .pixel_y(~car3_pixel_y),
        .pixel_color(car3_pixel_color)
    );

    always @(*) begin
        pixel_color = 9'b000_000_000;  
        if (pixel_x >= FROG_X_POS && pixel_x < FROG_X_POS + 32 &&
            pixel_y >= FROG_Y_POS && pixel_y < FROG_Y_POS + 32) begin
                if (frog_pixel_color != 9'b000_000_000) begin
                    pixel_color = frog_pixel_color;  
                end else if (pixel_y >= 0 && pixel_y < 32 || pixel_y >= 224 && pixel_y < 288 || pixel_y >= 448 && pixel_y <= 480) begin
                    pixel_color = grass_pixel_color; 
                end else if (pixel_y >= 32 && pixel_y < 224 || pixel_y >= 288 && pixel_y < 448) begin
                    pixel_color = road_pixel_color;  
                end
        end else if (pixel_x >= CAR3_X_POS && pixel_x < CAR3_X_POS + 32 &&
            pixel_y >= CAR3_Y_POS && pixel_y < CAR3_Y_POS + 32) begin
                if (car3_pixel_color != 9'b000_000_000) begin
                    pixel_color = car3_pixel_color;  
                end else if (pixel_y >= 32 && pixel_y < 224 || pixel_y >= 288 && pixel_y < 448) begin
                    pixel_color = road_pixel_color;  
                end
        end else if (pixel_x >= 1 && pixel_x < 640) begin
            if (pixel_y >= 0 && pixel_y < 32 || pixel_y >= 224 && pixel_y < 288 || pixel_y >= 448 && pixel_y <= 480) begin
                pixel_color = grass_pixel_color; 
            end
            if (pixel_y >= 32 && pixel_y < 224 || pixel_y >= 288 && pixel_y < 448) begin
                pixel_color = road_pixel_color;  
            end
        end
    end

    vga_sync vga_sync_inst (
        .clk(i_CLK),
        .h_sync(h_sync),
        .v_sync(v_sync),
        .video_on(video_on),
        .pixel_x(pixel_x),
        .pixel_y(pixel_y)
    );
    
    assign VGA_R = pixel_color[8:6];
    assign VGA_G = pixel_color[5:3];
    assign VGA_B = pixel_color[2:0];
    
    assign VGA_HS = h_sync;
    assign VGA_VS = v_sync;

endmodule