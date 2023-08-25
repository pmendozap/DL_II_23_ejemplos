module mux_v2 (
    input logic [3:0]     d0,
    input logic [3:0]     d1,

    input logic           s,
    output logic [3:0]    q
);

always_comb begin
    if(s==0)
        q = d0;
    else begin
        q = d1;
    end 
end

//assign q = ( ~{s,s,s,s} & d0 ) | ({4{s}} & d1);

/*always_comb begin
    q = ( ~s & d0 ) | (s & d1);
end¨*/

//assign q = s ? d1 : d0;

/*always_comb
    q = s ? d1 : d0;
*/



endmodule