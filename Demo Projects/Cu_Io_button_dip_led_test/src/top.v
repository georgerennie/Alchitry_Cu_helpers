module top(
    input clk,               // 100MHz clock
    input rst_n,             // reset button (active low)
    output reg [7:0] led,    // 8 user controllable LEDs

    output reg [23:0] io_led, // Alchitry IO pins
    inout [23:0] io_dip,
    inout [4:0] io_button,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,

    input usb_rx,            // USB->Serial input
    output usb_tx            // USB->Serial output
    );
    
    wire rst = ~rst_n;
    assign usb_tx = usb_rx;  // echo the serial data

    wire[23:0] dip_pd_out;
    emulate_pull_down #(.SIZE (24)) dip_pd(
        .clk(clk),
        .in(io_dip),
        .out(dip_pd_out));

    wire[4:0] button_pd_out;
    emulate_pull_down #(.SIZE (5)) button_pd(
        .clk(clk),
        .in(io_button),
        .out(button_pd_out));
    
    always @* begin
        io_seg = 8'hFF;
        io_sel = 4'hF;

        led = {3'h0, button_pd_out};
        io_led = dip_pd_out;
    end
endmodule