`timescale 1 ns / 1 ps

module Upsampling_Bayes_M00_AXIS #
       (
           // Users to add parameters here
           parameter PIXEL_WIDTH = 24,
           parameter ROW_PIXEL_COUNT = 960,
           // User parameters ends
           // Do not modify the parameters beyond this line

           // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
           parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
           // Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
           parameter integer C_M_START_COUNT	= 16
       )
       (
           // Users to add ports here
           input wire [PIXEL_WIDTH*4-1:0] M_AXIS_send_data,
           input wire fifo_wren,
           output wire fifo_full,
           // User ports ends
           // Do not modify the ports beyond this line

           // Global ports
           input wire  M_AXIS_ACLK,
           //
           input wire  M_AXIS_ARESETN,
           // Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
           output wire  M_AXIS_TVALID,
           // TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
           output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
           // TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
           output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
           // TLAST indicates the boundary of a packet.
           output wire  M_AXIS_TLAST,
           // TREADY indicates that the slave can accept a transfer in the current cycle.
           input wire  M_AXIS_TREADY
       );
// 输出buffer一次存储的axi字宽数量
localparam WORD_OF_OUTPUT_BUFFER = 3;

// function called clogb2 that returns an integer which has the
// value of the ceiling of the log base 2.
function integer clogb2 (input integer bit_depth);
    begin
        for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
            bit_depth = bit_depth >> 1;
    end
endfunction

// WAIT_COUNT_BITS is the width of the wait counter.
localparam integer WAIT_COUNT_BITS = clogb2(C_M_START_COUNT-1);
// ROW_PIXEL_COUNT_BITS 是行像素的计数器，认为传出ROW_PIXEL_COUNT*4倍的数据完成一次传输
localparam integer ROW_PIXEL_COUNT_BITS = clogb2(ROW_PIXEL_COUNT-1);

// bit_num gives the minimum number of bits needed to address 'depth' size of FIFO.
localparam bit_num  = clogb2(WORD_OF_OUTPUT_BUFFER-1);

// Define the states of state machine
// The control state machine oversees the writing of input streaming data to the FIFO,
// and outputs the streaming data from the FIFO
localparam [1:0] 
    IDLE = 2'b00,        // This is the initial/idle state
    INIT_COUNTER  = 2'b01, // This state initializes the counter, once
    // the counter reaches C_M_START_COUNT count,
    // the state machine changes state to SEND_STREAM
    SEND_STREAM   = 2'b10; // In this state the
// stream data is output through M_AXIS_TDATA
// State variable
reg [1:0] mst_exec_state;
// Example design FIFO read pointer
reg [bit_num-1:0] read_pointer;

// AXI Stream internal signals
//wait counter. The master waits for the user defined number of clock cycles before initiating a transfer.
reg [WAIT_COUNT_BITS-1 : 0] 	count;
//streaming data valid
wire  	axis_tvalid;
//streaming data valid delayed by one clock cycle
reg  	axis_tvalid_delay;
//Last of the streaming data
wire  	axis_tlast;
//Last of the streaming data delayed by one clock cycle
reg  	axis_tlast_delay;
//FIFO implementation signals
reg [C_M_AXIS_TDATA_WIDTH-1 : 0] 	stream_data_out;
wire  	tx_en;
//The master has issued all the streaming data stored in FIFO
reg  	tx_done;
//行像素计数器，用于每行传输完拉高last
reg     [ROW_PIXEL_COUNT_BITS-1:0] row_count;
//写选择指针
reg     fifo_write_selector;
//定义了两个buffer
reg     [C_M_AXIS_TDATA_WIDTH-1:0] stream_data_fifo_0 [0 : WORD_OF_OUTPUT_BUFFER-1];
reg     [C_M_AXIS_TDATA_WIDTH-1:0] stream_data_fifo_1 [0 : WORD_OF_OUTPUT_BUFFER-1];
//用对应位定义两个buffer的空满，1表满
reg     [1:0] fifo_full_status;

// I/O Connections assignments

assign M_AXIS_TVALID	= axis_tvalid_delay;
assign M_AXIS_TDATA	= stream_data_out;
assign M_AXIS_TLAST	= axis_tlast_delay;
assign M_AXIS_TSTRB	= {(C_M_AXIS_TDATA_WIDTH/8){1'b1}};


// Control state machine implementation
always @(posedge M_AXIS_ACLK)
begin
    if (!M_AXIS_ARESETN)
        // Synchronous reset (active low)
    begin
        mst_exec_state <= IDLE;
        count    <= 0;
    end
    else
    case (mst_exec_state)
        IDLE:
            // The slave starts accepting tdata when
            // there tvalid is asserted to mark the
            // presence of valid streaming data
            if ( M_AXIS_TREADY ) begin
                mst_exec_state  <= INIT_COUNTER;
            end else begin
                mst_exec_state  <= IDLE;
            end

        INIT_COUNTER:
            // The slave starts accepting tdata when
            // there tvalid is asserted to mark the
            // presence of valid streaming data
            if ( count == C_M_START_COUNT - 1 )
            begin
                mst_exec_state  <= SEND_STREAM;
            end
            else
            begin
                count <= count + 1;
                mst_exec_state  <= INIT_COUNTER;
            end

        SEND_STREAM:
            // The example design streaming master functionality starts
            // when the master drives output tdata from the FIFO and the slave
            // has finished storing the S_AXIS_TDATA
            if (tx_done)
            begin
                mst_exec_state <= IDLE;
            end
            else
            begin
                mst_exec_state <= SEND_STREAM;
            end
    endcase
end


//tvalid generation
//axis_tvalid is asserted when the control state machine's state is SEND_STREAM and
//number of output streaming data is less than the WORD_OF_OUTPUT_BUFFER.
assign axis_tvalid = ((mst_exec_state == SEND_STREAM) && (read_pointer < WORD_OF_OUTPUT_BUFFER)) && (fifo_full_status[!fifo_write_selector]);
//均准备好允许传输
assign tx_en = M_AXIS_TREADY && axis_tvalid;

// AXI tlast generation
// axis_tlast is asserted number of output streaming data is WORD_OF_OUTPUT_BUFFER-1
// (0 to WORD_OF_OUTPUT_BUFFER-1)
assign axis_tlast = (read_pointer == WORD_OF_OUTPUT_BUFFER-1) && (row_count == ROW_PIXEL_COUNT - 1);


// Delay the axis_tvalid and axis_tlast signal by one clock cycle
// to match the latency of M_AXIS_TDATA
always @(posedge M_AXIS_ACLK)
begin
    if (!M_AXIS_ARESETN)
    begin
        axis_tvalid_delay <= 1'b0;
        axis_tlast_delay <= 1'b0;
    end
    else
    begin
        axis_tvalid_delay <= axis_tvalid;
        axis_tlast_delay <= axis_tlast;
    end
end


//read_pointer pointer

always@(posedge M_AXIS_ACLK)
begin
    if(!M_AXIS_ARESETN)
    begin
        read_pointer <= 0;
        // tx_done <= 1'b0;
    end
    else
        if (read_pointer <= WORD_OF_OUTPUT_BUFFER-1)
        begin
            if (tx_en)
                // read pointer is incremented after every read from the FIFO
                // when FIFO read signal is enabled.
            begin
                read_pointer <= read_pointer + 1;
                // tx_done <= 1'b0;
            end
        end
        else if (read_pointer == WORD_OF_OUTPUT_BUFFER)
        begin
            // tx_done is asserted when WORD_OF_OUTPUT_BUFFER numbers of streaming data
            // has been out.
            read_pointer <= 0;// 客制化逻辑
            // tx_done <= 1'b1;
        end
end

// row_counter
always@(posedge M_AXIS_ACLK)
begin
    if(!M_AXIS_ARESETN)
    begin
        row_count <= 0;
    end else begin
        if (read_pointer == WORD_OF_OUTPUT_BUFFER) begin
            if(row_count < ROW_PIXEL_COUNT - 1) begin
                row_count <= row_count + 1;
            end else begin
                row_count <= 0;
            end
        end
    end
end

// tx_done
always @(posedge M_AXIS_ACLK) begin
    if(!M_AXIS_ARESETN)
    begin
        tx_done <= 0;
    end else begin
        if (read_pointer == WORD_OF_OUTPUT_BUFFER && row_count == ROW_PIXEL_COUNT - 1) begin
            tx_done <= 1;
        end else begin
            tx_done <= 0;
        end
    end
end

//FIFO read enable generation
assign fifo_full = (fifo_full_status == 2'b11);

always @( posedge M_AXIS_ACLK ) begin
    if(!M_AXIS_ARESETN) begin
        fifo_full_status <= 0;
        fifo_write_selector <= 0;
    end
    else begin
        case (fifo_write_selector)
            0: begin
                if (fifo_wren && !fifo_full_status[0]) begin
                    // 写选择指针当前指向的fifo可写，就写入
                    {stream_data_fifo_0[2],stream_data_fifo_0[1],stream_data_fifo_0[0]} <= M_AXIS_send_data;
                    fifo_full_status[0] <= 1'b1;
                    // 写完后隔壁fifo腾空，则转移写指针
                    if (!fifo_full_status[1]) begin
                        fifo_write_selector <= 1'b1;
                    end
                end
                if (read_pointer == WORD_OF_OUTPUT_BUFFER) begin
                    // 隔壁fifo读完置空
                    fifo_full_status[1] <= 1'b0;
                    fifo_write_selector <= 1'b1;
                end
            end
            1: begin
                if (fifo_wren && !fifo_full_status[1]) begin
                    {stream_data_fifo_1[2],stream_data_fifo_1[1],stream_data_fifo_1[0]} <= M_AXIS_send_data;
                    fifo_full_status[1] <= 1'b1;
                    if (!fifo_full_status[0]) begin
                        fifo_write_selector <= 1'b0;
                    end
                end
                if (read_pointer == WORD_OF_OUTPUT_BUFFER) begin
                    fifo_full_status[0] <= 1'b0;
                    fifo_write_selector <= 1'b0;
                end
            end
        endcase
    end
end

// Streaming output data is read from FIFO
always @( posedge M_AXIS_ACLK )
begin
    if(!M_AXIS_ARESETN)
    begin
        stream_data_out <= 0;
    end
    else begin
        if (tx_en)// && M_AXIS_TSTRB[byte_index]
        begin
            case (fifo_write_selector)
                0: begin
                    stream_data_out <= stream_data_fifo_1[read_pointer];
                end
                1: begin
                    stream_data_out <= stream_data_fifo_0[read_pointer];
                end
            endcase
        end
    end
end

endmodule
