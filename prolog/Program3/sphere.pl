%
%       Name: Francis Kim
%       File: sphere.pl
%       Course: csc372
%       Instruction and TA: Lester I. McCann, Patrick Hichey, and Andrea Padula
%       DueDate: 04/21/2017 2:00pm
%       Detail: Get the The formulae for the (surface) area and volume of a sphere are 4pr^2 and 4/3pr^3
%

spherearea(Y,X) :- X is 4.0 * 3.141592653589793 * Y * Y.	% calculate sphere area

spherevolume(Y,V) :- spherearea(Y,X), V is 1/3 * Y * X.  	% calculate sphere volume with sphere area
