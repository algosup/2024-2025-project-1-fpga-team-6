module vga_color(
    input wire [8:0] color,     // Couleur en format RGB (3 bits pour chaque canal)
    input wire h_sync,          // Signal de synchronisation horizontal
    input wire v_sync,          // Signal de synchronisation vertical
    input wire video_on,        // Signal indiquant si on est dans la zone visible
    output wire [7:0] vga_r,    // Sortie Rouge (8 bits pour compatibilité VGA standard)
    output wire [7:0] vga_g,    // Sortie Vert (8 bits pour compatibilité VGA standard)
    output wire [7:0] vga_b     // Sortie Bleu (8 bits pour compatibilité VGA standard)
);

    // Extraction des bits pour chaque canal couleur
    wire [2:0] red = color[5:4];   // 3 bits pour rouge
    wire [2:0] green = color[3:2]; // 3 bits pour vert
    wire [2:0] blue = color[1:0];  // 3 bits pour bleu

    // Expansion des 3 bits à 8 bits pour l'affichage VGA (simple extension)
    assign vga_r = (video_on) ? {red, red[2:0], red[2:1]} : 8'b0;
    assign vga_g = (video_on) ? {green, green[2:0], green[2:1]} : 8'b0;
    assign vga_b = (video_on) ? {blue, blue[2:0], blue[2:1]} : 8'b0;

endmodule
