module Mux_dft  (

 input   wire                  IN_0,
 input   wire                  IN_1,
 input   wire                  SEL,
 output  wire                  OUT 

 );

 
assign OUT = SEL ? IN_1 : IN_0 ;
 
 
endmodule
 