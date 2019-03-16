//Quickly include files from the George Rennie Verilog Modules Library:
/*GRVM_PATH = "C:/George-Rennie-Verilog-Modules/"
`include {GVRM_PATH, "FILENAME.v");*/

module top(
    input clk,               // 100MHz clock
    input rst_n,             // reset button (active low)
    output reg [7:0] led,    // 8 user controllable LEDs
    input usb_rx,            // USB->Serial input
    output usb_tx            // USB->Serial output
    );

endmodule