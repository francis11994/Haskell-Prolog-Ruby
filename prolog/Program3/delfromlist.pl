%
%       Name: Francis Kim
%       File: elementat.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail:	delfromlist deletes all occurrences of a constant (the first argument) from a list (the second argument),
%		returning the (potentially) shortened list (the third argument). 
%


delfromlist(_, [], []).	% done when list is empty
delfromlist(X, [X|Xs], Y) :- delfromlist(X, Xs, Y). % recursive with tail of second list
delfromlist(X, [T|Xs], [T|Y]) :- dif(X, T), delfromlist(X, Xs, Y).	% check dif, and recursive with tail of second list and tail of third list
