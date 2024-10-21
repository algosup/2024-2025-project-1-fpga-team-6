module vga_sync (
    input wire clk,              // Horloge principale
    output wire h_sync,          // Synchronisation horizontale
    output wire v_sync,          // Synchronisation verticale
    output wire video_on,        // Indicateur si on est dans la zone visible
    output wire [9:0] pixel_x,   // Position en X du pixel (0 à 639)
    output wire [9:0] pixel_y    // Position en Y du pixel (0 à 479)
);

    // Paramètres pour VGA 640x480 à 60 Hz
    localparam H_DISPLAY       = 640;  // Pixels affichés horizontalement
    localparam H_FRONT_PORCH   = 16;   // Front porch horizontal
    localparam H_SYNC_PULSE    = 96;   // Pulse de synchronisation horizontal
    localparam H_BACK_PORCH    = 48;   // Back porch horizontal
    localparam H_TOTAL         = 800;  // Total horizontal (affichage + sync + porches)

    localparam V_DISPLAY       = 480;  // Pixels affichés verticalement
    localparam V_FRONT_PORCH   = 10;   // Front porch vertical
    localparam V_SYNC_PULSE    = 2;    // Pulse de synchronisation vertical
    localparam V_BACK_PORCH    = 33;   // Back porch vertical
    localparam V_TOTAL         = 525;  // Total vertical (affichage + sync + porches)

    // Compteurs pour suivre les positions horizontale et verticale
    reg [9:0] h_count = 0;
    reg [9:0] v_count = 0;

    // Compteur horizontal (h_count)
    always @(posedge clk) begin
        if (h_count < H_TOTAL - 1)
            h_count <= h_count + 1;
        else begin
            h_count <= 0;
            if (v_count < V_TOTAL - 1)
                v_count <= v_count + 1;
            else
                v_count <= 0;
        end
    end

    // Génération des signaux de synchronisation horizontale et verticale
    assign h_sync = (h_count >= H_DISPLAY + H_FRONT_PORCH) &&
                    (h_count < H_DISPLAY + H_FRONT_PORCH + H_SYNC_PULSE);
    assign v_sync = (v_count >= V_DISPLAY + V_FRONT_PORCH) &&
                    (v_count < V_DISPLAY + V_FRONT_PORCH + V_SYNC_PULSE);

    // Indicateur de la zone visible (période d'affichage)
    assign video_on = (h_count < H_DISPLAY) && (v_count < V_DISPLAY);

    // Coordonnées des pixels (pendant la zone visible)
    assign pixel_x = (h_count < H_DISPLAY) ? h_count : 10'b0;
    assign pixel_y = (v_count < V_DISPLAY) ? v_count : 10'b0;

endmodule
