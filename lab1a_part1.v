//============================================================
// Module: lab1a_part1
// Function: 8-bit 2-to-1 Multiplexer
//============================================================
module lab1a_part1 (x, y, s, m);
    input  [7:0] x, y; //Input 1 and 2
    input        s;   // Select signal
    output [7:0] m;    // Mux output

    assign m = s? y : x;

endmodule




