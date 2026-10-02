module sram #(parameter ADDR_WIDTH = 8, 
              parameter DATA_WIDTH = 32)
(
    input clk, 
    input en_write,
    input [ADDR_WIDTH-1:0] addr, 
    input [DATA_WIDTH-1:0] w_data, 
    output reg [DATA_WIDTH-1:0] r_data
);