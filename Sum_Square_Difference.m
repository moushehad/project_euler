clear
clc

% Problem 6
% The sum of the squares of the first ten natural numbers is, 385. 
% The square of the sum of the first ten natural numbers is, 3025.
% Hence the difference between the sum of the squares of the 
%   first ten natural numbers and the square of the sum is 2640.
% 
% Find the difference between the sum of the squares of the 
%   first one hundred natural numbers and the square of the sum.

% pick a number to find the sum squares and sqaure sums of the 
% integers below it
n = 100;

% set up a vector for easy computation
v = 1:n;

% computes the sum of the squares
sm_sq = dot(v,v);

% finds the square of the sum
sq_sm = sum(v)^2;

% now find the difference between the two
diff = sq_sm - sm_sq;

% display results
fprintf('The difference is %.0f.\n',diff)

% The difference is 25164150.