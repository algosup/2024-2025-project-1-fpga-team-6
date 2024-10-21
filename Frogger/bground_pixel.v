module bground_pixel (
    input wire [9:0] global_pixel_x, global_pixel_y,
    output wire [4:0] obj_pixel_x, obj_pixel_y,
);

    wire [9:0] x_temp, y_temp;

    assign x_temp = (global_pixel_x >= 0 && global_pixel_x < 640) ? (global_pixel_x - 96) : 10'd0; // Outside the first 3 columns
    assign y_temp = (global_pixel_y >= 0 && global_pixel_y < 480) ? (global_pixel_y - 64) : 10'd0; // Lines 2 to 14
    
    assign obj_pixel_x = x_temp[4:0]; 
    assign obj_pixel_y = y_temp[4:0];

endmodule
