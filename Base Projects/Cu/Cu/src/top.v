//Quickly include files from the George Rennie Verilog Modules Library:
/*`define GRVM_PATH(module_file_address) "C:/George-Rennie-Verilog-Modules/module_file_address"
`include `GRVM_PATH(GRVM_MODULE_DIRECTORY/GRVM_FILE.v)*/

module top(
    input clk,               // 100MHz clock
    input rst_n,             // reset button (active low)
    output reg [7:0] led,    // 8 user controllable LEDs
    input usb_rx,            // USB->Serial input
    output usb_tx            // USB->Serial output
    );

endmodule