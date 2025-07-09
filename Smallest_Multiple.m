clear
clc

% Problem 5
% 2520 is the smallest number that can be divided by each of the numbers 
% from 1 to 10 without any remainder.
% 
% What is the smallest positive number that is evenly divisible 
% by all of the numbers from 1 to 20?

% choose a number to find the lcm of the integers less than it
n = 20;

% preset lcm of 1 and 1, namely 1
x = 1;

% set up loop that finds successive lcms 
for k = 2:n
    x = lcm(x,k);
end

% print results
fprintf('The least common multiple of the integers less than %.0f is %.0f\n',n,x)

% The least common multiple of the integers less than 20 is 232792560