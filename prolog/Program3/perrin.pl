%
%       Name: Francis Kim
%       File: perrin.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail:	The recurrence relation that defines the Perrin sequence is: p(n) = p(n - 2) + p(n - 3), where p(0) =
%		3, p(1) = 0, and p(2) = 2. Using this recurrence, write the perrin rule.
%

perrin(0,X) :- X is 3.	% if 0, then X is 3
perrin(1,X) :- X is 0.	% if 1, then X is 0
perrin(2,X) :- X is 2.	% if 2, then X is 2
perrin(Y,X) :- Y > 2,	% if Y is bigger than 2
               Y1 is Y-2,	% Y1 is Y minus 2 for p(n-2)
               Y2 is Y-3,	% Y2 is Y minus 3 for p(n-3)
               perrin(Y1,V1), perrin(Y2,V2),	% recursive
               X is V1+V2.	% p(n) = p(n-2) + p(n-3)

