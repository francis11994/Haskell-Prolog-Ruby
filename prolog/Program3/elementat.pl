%
%       Name: Francis Kim
%       File: elementat.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail:	elementat produces the list element at the (0-based) index provided by the first argument.
%

elementat(0,[X|_],X) :- !.	% cut if Index is 0
elementat(Index,[_|T],X) :-	% loop until index is 0
    Index > 0,			% index should be bigger than 0
    Index1 is Index-1,		% Index1 is index - 1
    elementat(Index1,T,X).	% recursive with Index1
