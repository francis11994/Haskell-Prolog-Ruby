%
%       Name: Francis Kim
%       File: subsetofall.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail: Given a set, and a set of sets, is the first set a subset of all of the sets in the set of sets? Write
%		subsetofall to accomplish this task.
%		Give result as true or false.
%

subsetofall(A,[H|T]) :- countLeft(A,X), countRight(H,Y), X=Y, mysubset(A,H), !. % Compare the elements of list, if it is true, then stop 
subsetofall(A,[H|T]) :- subsetofall(A, T). % If elements are not matched, then go next Tail of list

% count number of elements on the left side
countLeft([], 0).	% If list is empty, then X is 0
countLeft([H|T], X) :- countLeft(T, X1), X is X1+1.	% Count number of list

% count number of elements on the right side
countRight([],0).	% If list is empty, then Y is 0
countRight([H|T], Y) :- countRight(T, Y1), Y is Y1+1.	% Count number of list


% Created my own subset
mysubset([], _).	% if list is empty, then return true
mysubset([H|T1], T2) :- member(H, T2), mysubset(T1, T2).	% if H is member of Tail 2, then recursive T1
mysubset([H1|T1], [H2|T2]) :- \+ member(H1, T2), mysubset([H1|T1], T2).	% if H is not member of Tail2, then  recursive [H1|T1] 
