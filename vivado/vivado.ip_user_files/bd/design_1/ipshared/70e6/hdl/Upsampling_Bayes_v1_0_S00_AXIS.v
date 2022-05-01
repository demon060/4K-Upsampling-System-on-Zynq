
`timescale 1 ns / 1 ps

module Upsampling_Bayes_v1_0_S00_AXIS #
       (
           // Users to add parameters here

           // User parameters ends
           // Do not modify the parameters beyond this line

           // AXI4Stream sink: Data Width
           parameter integer C_S_AXIS_TDATA_WIDTH	= 32
       )
       (
           // Users to add ports here
           output wire [C_S_AXIS_TDATA_WIDTH-1:0] S_AXIS_get_data,
           input wire fifo_rden,
           output wire fifo_empty_flag,

           // User ports ends
           // Do not modify the ports beyond this line

           // AXI4Stream sink: Clock
           input wire  S_AXIS_ACLK,
           // AXI4Stream sink: Reset
           input wire  S_AXIS_ARESETN,
           // Ready to accept data in
           output wire  S_AXIS_TREADY,
           // Data in
           input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
           // Byte qualifier
           input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
           // Indicates boundary of last packet
           input wire  S_AXIS_TLAST,
           // Data is in valid
           input wire  S_AXIS_TVALID
       );
// function called clogb2 that returns an integer which has the
// value of the ceiling of the log base 2.
function integer clogb2 (input integer bit_depth);
    begin
        for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
            bit_depth = bit_depth >> 1;
    end
endfunction

// Total number of input data.
localparam NUMBER_OF_INPUT_WORDS  = 8;
// bit_num gives the minimum number of bits needed to address 'NUMBER_OF_INPUT_WORDS' size of FIFO.
localparam bit_num  = clogb2(NUMBER_OF_INPUT_WORDS-1);//4
// Define the states of state machine
// The control state machine oversees the writing of input streaming data to the FIFO,
// and outputs the streaming data from the FIFO
parameter [1:0] IDLE = 1'b0,        // This is the initial/idle state

          WRITE_FIFO  = 1'b1; // In this state FIFO is written with the
// input stream data S_AXIS_TDATA
wire  	axis_tready;
// State variable
reg mst_exec_state;
// FIFO implementation signals
genvar byte_index;
// FIFO full flag
wire fifo_full_flag;
// FIFO write enable
wire fifo_wren;
// FIFO read enable
// wire fifo_rden;
// FIFO write pointer
reg [bit_num:0] write_pointer;
// FIFO read pointer
reg [bit_num:0] read_pointer;
// sink has accepted all the streaming data and stored in FIFO
reg writes_done;

// I/O Connections assignments
assign S_AXIS_TREADY	= axis_tready;

// Control state machine implementation
always @(posedge S_AXIS_ACLK)
begin
    if (!S_AXIS_ARESETN)
        // Synchronous reset (active low)
    begin
        mst_exec_state <= IDLE;
    end
    else
    case (mst_exec_state)
        IDLE:
            // The sink starts accepting tdata when
            // there tvalid is asserted to mark the
            // presence of valid streaming data
            if (S_AXIS_TVALID)
            begin
                mst_exec_state <= WRITE_FIFO;
            end
            else
            begin
                mst_exec_state <= IDLE;
            end
        WRITE_FIFO:
            // When the sink has accepted all the streaming input data,
            // the interface swiches functionality to a streaming master
            if (writes_done)
            begin
                mst_exec_state <= IDLE;
            end
            else
            begin
                // The sink accepts and stores tdata
                // into FIFO
                mst_exec_state <= WRITE_FIFO;
            end

    endcase
end
// AXI Streaming Sink
//
// The example design sink is always ready to accept the S_AXIS_TDATA  until
// the FIFO is not filled with NUMBER_OF_INPUT_WORDS number of input words.
assign axis_tready = ((mst_exec_state == WRITE_FIFO) && (!fifo_full_flag));

always@(posedge S_AXIS_ACLK)
begin
    if(!S_AXIS_ARESETN)
    begin
        write_pointer <= 0;
        writes_done <= 1'b0;
    end
    else begin
        if (fifo_wren)
        begin
            // write pointer is incremented after every write to the FIFO
            // when FIFO write signal is enabled.
            write_pointer <= write_pointer + 1;
            writes_done <= 1'b0;
        end
        if (!fifo_wren || S_AXIS_TLAST)
        begin
            // reads_done is asserted when NUMBER_OF_INPUT_WORDS numbers of streaming data
            // has been written to the FIFO which is also marked by S_AXIS_TLAST(kept for optional usage).
            if (!fifo_full_flag) begin
                write_pointer <= write_pointer + 1;
            end
            writes_done <= 1'b1;
        end
    end
end

// FIFO write enable generation
// fifo_wren为高的时候，才会允许读入改变write_pointer
// -> pointer满了之后，write_done被拉高
// -> write_done被拉高，状态机进入IDLE
// -> 但问题不大，只要主机还是S_AXIS_TVALID，状态机下一个周期还会进WRITE_FIFO
// -> pointer如果还是满的，那什么也不发生
assign fifo_wren = S_AXIS_TVALID && axis_tready;

// FIFO Implementation
reg  [C_S_AXIS_TDATA_WIDTH-1:0] stream_data_fifo [0 : NUMBER_OF_INPUT_WORDS-1];
// Streaming input data is stored in FIFO
always @( posedge S_AXIS_ACLK )
begin
    if (fifo_wren)// && S_AXIS_TSTRB[byte_index])
    begin
        //这是一个byte的fifo，具体几个byte由generate定义
        stream_data_fifo[write_pointer] <= S_AXIS_TDATA;
    end
end

assign S_AXIS_get_data = stream_data_fifo[read_pointer];

// Add user logic here
// 定义fifo的空满
assign fifo_full_flag = (write_pointer - read_pointer == {1'b1,{(bit_num){1'b0}}}) || !S_AXIS_ARESETN;
assign fifo_empty_flag = write_pointer == read_pointer;

always @(posedge S_AXIS_ACLK) begin
    if (!S_AXIS_ARESETN) begin
        read_pointer <= 0;
    end
    else begin
        if (!fifo_empty_flag && fifo_rden) begin
            read_pointer <= read_pointer + 1;
        end
    end
end

// User logic ends

endmodule
