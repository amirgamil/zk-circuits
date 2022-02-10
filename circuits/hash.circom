// include "../node_modules/circomlib/circuits/mimcsponge.circom"


//returns 1 if x1 > x2, otherwise returns 0
template GreaterThan() {
    signal private input x1;
    signal private input x2;
    signal output out;

    signal temp;
    temp <-- x1 - x2 > 0 ? 1 : 0;

    out <== temp;
}


/*
template Main() {
  signal private input x1;
  signal private input x2;
  signal private input x3;
  signal private input x4;

  signal y1;
  signal y2;

  signal output out;

  y1 <-- x1 + x2;
  y2 <-- y1 / x3;
  out <-- y2 - x4;

  y1 === x1 + x2;
  y1 === y2 * x3;
  out === y2 - x4;
}
*/

/*
template main() {
  signal private input x;
  // signal input hash;

  signal output out;

  component mimc = mimcsponge(1, 220, 1);
  mimc.ins[0] <== x;
  mimc.k <== 0;

  out <== mimc.outs[0];

  // out === hash;
}
*/

component main = GreaterThan();
