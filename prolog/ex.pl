
qm(1).
qm(X) :- X > 1, Y is X-3, qm(Y).

qm1(a,b).
qm1(b,a).
qm1(X,Y) :- qm1(X,Y), qm(Y,X).
