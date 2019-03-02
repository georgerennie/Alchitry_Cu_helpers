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
    
endmodule