module cache_ctrl #(parameter ADDR_WIDTH = 32, //CPU Address bus width
                   parameter ID_BIT= 8, //8 bits for the index 
                   parameter OFFSET_BIT = 4, //4 bits for the offset
                   parameter TAG_BIT = ADDR_WIDTH - ID_BIT - OFFSET_BIT ) //calculate the tag bits
( 
    input clk, 
    input rst_n, //reset on falling edge 
    input [ADDR_WIDTH-1:0] cpu_addr, //CPU address 
    output [TAG_BIT-1:0] tag, 
    output [ID_BIT-1:0] index, 
    output [OFFSET_BIT-1:0] offset
); 

assign offset = cpu_addr[OFFSET_BIT-1:0]; 
assign index = cpu_addr[OFFSET_BIT + ID_BIT -1: OFFSET_BITt]; 
assign tag = cpu_addr[OFFSET_BIT - 1: OFFSET_BIT + ID_BIT]; 

