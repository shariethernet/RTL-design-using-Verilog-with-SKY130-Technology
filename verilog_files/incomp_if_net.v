/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "incomp_if.v:1" *)
module incomp_if(i0, i1, i2, y);
  (* src = "incomp_if.v:1" *)
  input i0;
  (* src = "incomp_if.v:1" *)
  input i1;
  (* src = "incomp_if.v:1" *)
  input i2;
  (* src = "incomp_if.v:1" *)
  output y;
  (* src = "incomp_if.v:2" *)
  \$_DLATCH_P_  _0_ (
    .D(i1),
    .E(i0),
    .Q(y)
  );
endmodule