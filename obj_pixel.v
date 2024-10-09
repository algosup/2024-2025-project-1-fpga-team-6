module obj_pixel (
    input wire [9:0] global_pixel_x, global_pixel_y,
    output wire [4:0] obj_pixel_x, obj_pixel_y,
    input wire [9:0] OBJ_X_POS, OBJ_Y_POS,
);

    wire [9:0] x_temp, y_temp;

    assign x_temp = (global_pixel_x >= OBJ_X_POS && global_pixel_x < OBJ_X_POS + 32) ? (global_pixel_x - OBJ_X_POS) : 10'd0;
    assign y_temp = (global_pixel_y >= OBJ_Y_POS && global_pixel_y < OBJ_Y_POS + 32) ? (global_pixel_y - OBJ_Y_POS) : 10'd0;
    
    assign obj_pixel_x = (x_temp < 32) ? x_temp[4:0] : 5'b0; 
    assign obj_pixel_y = (y_temp < 32) ? y_temp[4:0] : 5'b0;

endmodule
