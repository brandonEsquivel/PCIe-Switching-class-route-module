// Belinda Brown Ramírez
// June, 2020
// timna.brown@ucr.ac.cr

`ifndef ROUTING
`define ROUTING

`timescale 1ns/1ps

`include "./src/class.v"
`include "./src/routing.v"
`include "./src/serial.v"

// Implementation of first layer device 1 for Adaptative PCIe Switching, 
// Assign 0 relative to fifo0
// Assign 1 relative to fifo1

module disp1 #(
  parameter DATA_SIZE = 10, 
  parameter MAIN_SIZE = 8) 
  
  (

//INPUTS
input wire clk,
input wire reset,
input wire [DATA_SIZE-1:0] in,


//Outputs
output reg [7:0] out0, // out from fifo6x8 #0
output reg [7:0] out1,  // out from fifo6x8 #1
output reg Error

//control for fifos Internal - now in beta version
/*
output reg almost_full0,
output reg almost_empty0,
output reg fifo0_empty,
output reg fifo0_error,
output reg fifo0_pause,
output reg fifo_full0,
output reg fifo_full1,
output reg almost_full1,
output reg almost_empty1,
output reg fifo1_empty,
output reg fifo1_error,
output reg fifo1_pause,*/


);

// wires internally
wire [DATA_SIZE-1:0] out0_class, out1_class;   // outputs from class to route
wire fifo0_empty, fifo1_empty;                 // from class fifos to mux P0 P1 in routing, tells when fifos are empty and block pop
wire [DATA_SIZE-3:0] out0_route, out1_route;   // outputs from route to serial
wire out0_serial, out1serial;

// for fifos control, not used for now
// fifos in class
wire almost_full0_class, almost_empty0_class, fifo0_empty_class, fifo_full0_class, fifo0_error_class, fifo0_pause_class;
wire almost_full1_class, almost_empty1_class, fifo1_empty_class, fifo_full1_class, fifo1_error_class, fifo1_pause_class;
wire Error_class;

//fifos in route

classswitching classwit(/*AUTOINST*/
// Outputs   
    .out0     ( out0_class ),
    .out1     ( out1_class ),
    .almost_full0 (almost_full0_class),
    .almost_empty0 (almost_empty0_class),
    .fifo0_empty (fifo0_empty_class),
    .fifo_full0 (fifo_full0_class),
    .fifo0_error (fifo0_error_class),
    .fifo0_pause (fifo0_pause_class),
    .almost_full1 (almost_full1_class),
    .almost_empty1 (almost_empty1_class),
    .fifo1_empty (fifo1_empty_class),
    .fifo_full1 (fifo_full1_class),
    .fifo1_error (fifo1_error_class),
    .fifo1_pause (fifo1_pause_class),
    .Error (Error_class),
    // Inputs
    .in       ( in     ),
    .clk      ( clk    ),
    .reset    ( reset  )

);



route route_TB(/*AUTOINST*/
  //Outputs
  .out0 (out0_route),
  .out1 (out1_route),
  .almost_full0 (almost_full0_route),
  .almost_empty0 (almost_empty0_route),
  .fifo0_empty (fifo0_empty_route),
  .fifo0_error (fifo0_error_route),
  .fifo0_pause (fifo0_pause_route),
  .almost_full1 (almost_full1_route),
  .almost_empty1 (almost_empty1_route),
  .fifo1_empty (fifo1_empty_route),
  .fifo1_error (fifo1_error_route),
  .fifo1_pause (fifo1_pause_route),
  .fifo_full0 (fifo_full0_route),
  .fifo_full1 (fifo_full1_route),
  .Error (Error_route),
  // Inpu_routets
  .clk (clk),
  .reset (reset),
  .in0 (out0_class),
  .in1 (out1_class),
  .emptyF0 (fifo0_empty_class),
  .emptyF1 (fifo1_empty_class),
  //.classif (classif)

);

















  always@(*) begin      // pass to outputs
    out0 = n_out0;
    out1 = n_out1;
    Error = Error_F;
    almost_full0  = n_almost_full0;
    almost_empty0  = n_almost_empty0;
    fifo0_empty  = n_fifo0_empty;
    fifo0_error  = n_fifo0_error;
    fifo0_pause = n_fifo0_pause;
    almost_full1 = n_almost_full1;
    almost_empty1  = n_almost_empty1;
    fifo1_empty  = n_fifo1_empty;
    fifo1_error = n_fifo1_error;
    fifo1_pause  = n_fifo1_pause;
    fifo_full0 = n_Fifo_full0;
    fifo_full1 = n_Fifo_full1;

  end



endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
