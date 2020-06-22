/* Generated by Yosys 0.9 (git sha1 UNKNOWN, gcc 7.5.0-3ubuntu1~18.04 -fPIC -Os) */

(* top =  1  *)
(* src = "./src/df_control.v:13" *)
module dfcontrol_syn(reset, push_0, push_1, almost_full1, almost_empty1, fifo_empty1, Fifo_full1, fifo_error1, fifo_pause1, almost_full2, almost_empty2, fifo_empty2, Fifo_full2, fifo_error2, fifo_pause2, read1, write1, read2, write2, Error);
  (* src = "./src/df_control.v:62" *)
  wire _00_;
  (* src = "./src/df_control.v:62" *)
  wire _01_;
  (* src = "./src/df_control.v:62" *)
  wire _02_;
  (* src = "./src/df_control.v:62" *)
  wire _03_;
  (* src = "./src/df_control.v:62" *)
  wire _04_;
  (* src = "./src/df_control.v:101" *)
  wire _05_;
  (* src = "./src/df_control.v:101" *)
  wire _06_;
  (* src = "./src/df_control.v:101" *)
  wire _07_;
  (* src = "./src/df_control.v:109" *)
  wire _08_;
  (* src = "./src/df_control.v:109" *)
  wire _09_;
  (* src = "./src/df_control.v:109" *)
  wire _10_;
  (* src = "./src/df_control.v:101" *)
  wire _11_;
  (* src = "./src/df_control.v:101" *)
  wire _12_;
  (* src = "./src/df_control.v:109" *)
  wire _13_;
  (* src = "./src/df_control.v:109" *)
  wire _14_;
  (* src = "./src/df_control.v:117" *)
  wire _15_;
  (* src = "./src/df_control.v:125" *)
  wire _16_;
  (* src = "./src/df_control.v:48" *)
  output Error;
  (* src = "./src/df_control.v:23" *)
  input Fifo_full1;
  (* src = "./src/df_control.v:30" *)
  input Fifo_full2;
  (* src = "./src/df_control.v:21" *)
  input almost_empty1;
  (* src = "./src/df_control.v:28" *)
  input almost_empty2;
  (* src = "./src/df_control.v:20" *)
  input almost_full1;
  (* src = "./src/df_control.v:27" *)
  input almost_full2;
  (* src = "./src/df_control.v:22" *)
  input fifo_empty1;
  (* src = "./src/df_control.v:29" *)
  input fifo_empty2;
  (* src = "./src/df_control.v:24" *)
  input fifo_error1;
  (* src = "./src/df_control.v:31" *)
  input fifo_error2;
  (* src = "./src/df_control.v:25" *)
  input fifo_pause1;
  (* src = "./src/df_control.v:32" *)
  input fifo_pause2;
  (* src = "./src/df_control.v:16" *)
  input push_0;
  (* src = "./src/df_control.v:17" *)
  input push_1;
  (* src = "./src/df_control.v:35" *)
  output read1;
  (* src = "./src/df_control.v:37" *)
  output read2;
  (* src = "./src/df_control.v:15" *)
  input reset;
  (* src = "./src/df_control.v:36" *)
  output write1;
  (* src = "./src/df_control.v:38" *)
  output write2;
  assign _02_ = ~(* src = "./src/df_control.v:125" *) _16_;
  assign _01_ = ~(* src = "./src/df_control.v:117" *) _15_;
  assign write2 = reset ? (* src = "./src/df_control.v:77" *) _04_ : 1'h0;
  assign read1 = reset ? (* src = "./src/df_control.v:77" *) _01_ : 1'h0;
  assign write1 = reset ? (* src = "./src/df_control.v:77" *) _03_ : 1'h0;
  assign read2 = reset ? (* src = "./src/df_control.v:77" *) _02_ : 1'h0;
  assign Error = reset ? (* src = "./src/df_control.v:77" *) _00_ : 1'h0;
  assign _05_ = ~(* src = "./src/df_control.v:101" *) Fifo_full1;
  assign _06_ = ~(* src = "./src/df_control.v:101" *) almost_full1;
  assign _07_ = ~(* src = "./src/df_control.v:101" *) fifo_pause1;
  assign _10_ = ~(* src = "./src/df_control.v:109" *) Fifo_full2;
  assign _08_ = ~(* src = "./src/df_control.v:109" *) almost_full2;
  assign _09_ = ~(* src = "./src/df_control.v:109" *) fifo_pause2;
  assign _11_ = _05_ |(* src = "./src/df_control.v:101" *)  _06_;
  assign _14_ = _13_ |(* src = "./src/df_control.v:109" *)  _09_;
  assign _12_ = _11_ |(* src = "./src/df_control.v:101" *)  _07_;
  assign _03_ = push_0 &(* src = "./src/df_control.v:101" *)  _12_;
  assign _13_ = _10_ |(* src = "./src/df_control.v:109" *)  _08_;
  assign _04_ = push_1 &(* src = "./src/df_control.v:109" *)  _14_;
  assign _15_ = almost_empty1 |(* src = "./src/df_control.v:117" *)  fifo_empty1;
  assign _16_ = almost_empty2 |(* src = "./src/df_control.v:125" *)  fifo_empty2;
  assign _00_ = fifo_error1 |(* src = "./src/df_control.v:131" *)  fifo_error2;
endmodule