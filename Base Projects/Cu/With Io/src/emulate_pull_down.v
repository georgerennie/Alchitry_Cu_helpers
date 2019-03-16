//A module to emulate pull down resistors by occasionally pulling outputs low
//Built for use with alchitry CU and first gen alchitry IO boards

`ifndef _emulate_pull_down_v_
`define _emulate_pull_down_v_

module emulate_pull_down #(parameter SIZE = 1) ( //Number of input pins
    input                 clk, //Clock
    inout      [SIZE-1:0] in,
    output reg [SIZE-1:0] out);

    reg  [SIZE-1:0] in_enable;
    wire [SIZE-1:0] in_read;

    genvar count;
    generate
        for (count = 0; count < SIZE; count = count + 1) begin
            assign in[count] = in_enable[count] ? 1'h0 : 1'bz; //Output either 0 or Hi-Z
        end
    endgenerate

    assign in_read = in;
    
    reg [3:0] flip_d, flip_q; //4 Bit Counter
    reg [SIZE-1:0] saved_d, saved_q;
    
    always @* begin
        saved_d = saved_q;
        flip_d = flip_q;
        
        flip_d = flip_q + 1'h1;
        in_enable = {SIZE {flip_q == 1'h0}}; //Output low on 1st stage of counter
        if (flip_q > 2'h2) begin //Save input on stages 4 and onwards of counter
            saved_d = in_read;
        end
        out = saved_q;
    end
    
    always @(posedge clk) begin
        flip_q <= flip_d;
        saved_q <= saved_d;
    end
endmodule

`endif