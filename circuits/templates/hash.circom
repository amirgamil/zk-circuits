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
