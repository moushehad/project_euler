% Problem 7
% By listing the first six prime numbers: 2,3,5,7,11, and 13, 
% we can see that the 6th prime is 13. 
% What is the 10,001st prime number?

clear
clc

% choose a number to find the nth prime
n = 10001;

% utilize the nprime() function
answer = nprime(n);

% display results
fprintf('The %.0fth prime number is %.0f\n',n,answer)

% The 10001th prime number is 104743