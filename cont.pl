quant([],0).
quant([X|Y],Z):-quant(Y,Z1), Z is Z1 + 1.
