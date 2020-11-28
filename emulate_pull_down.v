// A module to emulate pull down resistors by occasionally pulling outputs low.
// Built for use with alchitry CU and early gen alchitry IO boards which didn't
// have pull down resistors in hardware

`ifndef _ALCHITRY_EMULATE_PULL_DOWN_
`define _ALCHITRY_EMUALTE_PULL_DOWN_

module emulate_pull_down #(parameter WIDTH = 1) (
    input                 clk,
    inout      [WIDTH-1:0] in,
    output reg [WIDTH-1:0] out);

    reg [3:0] counter;
    reg pull_low;

    assign in = {WIDTH {pull_low ? 1'b0 : 1'bz}};

    always @(posedge clk) begin
        if (counter == 0)
            pull_low <= 1;
        else if (counter > 2) begin
            pull_low <= 0;
            out <= in;
        end

        counter <= counter + 1;
    end
endmodule

`endif // _ALCHITRY_EMULATE_PULL_DOWN_
