%nextItem predicts the next number in a sequence

nextItem([Final], Final).
nextItem(Y, Z) :- lastItem(Y, X), nextRow(Y, B), nextItem(B, L), Z is +(X, L).

nextRow([X,Y], [Result]) :- Result is -(Y, X).
nextRow([X,Y|R], [A|B]) :- A is -(Y, X), nextRow([Y|R], B).

lastItem([Last],Last).
lastItem([_|X],Y) :- lastItem(X,Y). 

