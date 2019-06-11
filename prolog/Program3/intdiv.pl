%
%       Name: Francis Kim
%       File: intdiv.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail:	Write intdiv so that the third argument returns the quotient of
%		the integer division of the dividend by the divisor.
%

intdiv(X,0,Z) :- write('ERROR: intdiv/3: Arithmetic: evaluation error: ‘zero_divisor’'). % if divide by 0, then print error
intdiv(X,Y,0) :- X < Y.	% if X is less than Y, then Z is 0
intdiv(X,Y,Z) :- X1 is X-Y, intdiv(X1, Y, Z1), Z is Z1+1.	% Minus X to Y until X is less than Y, and add 1 from Z each recursion to get answer.
