module mux_v1 (
    input logic     d0,
    input logic     d1,

    input logic     s,
    output logic    q
);

/*always_comb begin
    if(s==0)
        q = d0;
    else begin
        q = d1;
    end 
end*/

assign q = ( ~s & d0 ) | (s & d1);

/*always_comb begin
    q = ( ~s & d0 ) | (s & d1);
end¨*/

//assign q = s ? d1 : d0;

/*always_comb
    q = s ? d1 : d0;
*/



endmodule