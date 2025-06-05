clear
clc

% 3
%
% The prime factors of 13195 are 
% 5, 7, 13, and 29.
% 
% What is the largest prime factor of the number 
% 600851475143?

num = 600851475143;
facts = factor(num);
largest = max(facts);

fprintf('The largest prime facter of %.0f is %.0f.\n',num,largest)

% The largest prime facter of 600851475143 is 6857.
