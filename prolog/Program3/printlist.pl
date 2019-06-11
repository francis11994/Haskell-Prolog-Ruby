%
%       Name: Francis Kim
%       File: printlist.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail:	Print out odd index in the list
%

% print answer
print135([]).	% if list is empty, then done.
print135([H|T]) :- getlength([H|T],X), 0 is X mod 2, printodd([H|T]).	% if length of list is even
print135([H|T]) :- getlength([H|T],X), 1 is X mod 2, printeven([H|T]).	% if length of list is odd

% length of list is odd, print out result
printodd([]).	% if list is empty, then done.
printodd([H|T]) :- getlength([H|T],X), 0 is X mod 2, write(H), nl, printodd(T).	% print out index of even value in list
printodd([H|T]) :- getlength([H|T],X), 1 is X mod 2, printodd(T).	% recursive if index is odd

% length of list is even, print out result
printeven([]).	% if list is empty, then done
printeven([H|T]) :- getlength([H|T],X), 1 is X mod 2, write(H), nl, printeven(T).	% print out index of even value in list
printeven([H|T]) :- getlength([H|T],X), 0 is X mod 2, printeven(T).	% recursive if index is odd

% get length
getlength([], 0).	% if list is empty
getlength([_|T], X) :- getlength(T, X1), X is X1+1.	% add 1 for each element



