`timescale 1ns / 1ps

module R4MDC_Top #(parameter WL=16)(
        input [2*WL-1:0]in,
        input Start,
        input clk,
        output done,
        output [WL-1:0]out_r,
        output [WL-1:0]out_i
    );
        wire Enable_comm1,Enable_comm2,Output_valid_but1,Output_valid_but2;
        
    Datapath #(.WL(WL)) datapath(
        .in(in),
        .Enable_comm1(Enable_comm1),
        .Enable_comm2(Enable_comm2),
        .clk(clk),
        .Output_valid_but1(Output_valid_but1),
        .Output_valid_but2(Output_valid_but2),
        .out_r(out_r),
        .out_i(out_i)
        );
        
    Controller controller(
            .Start(Start),
            .Output_valid_but1(Output_valid_but1),
            .Output_valid_but2(Output_valid_but2),
            .clk(clk),
            .Enable_comm1(Enable_comm1),
            .Enable_comm2(Enable_comm2),
            .done(done)
            );       
             
endmodule
