clear
clc
format long g

% 2
%
% Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
% By starting with 1, 1 and 2, the first 10 terms will be:
%   1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
% By considering the terms in the Fibonacci sequence 
%   whose values do not exceed four million, 
%   find the sum of the even-valued terms.

fib(1) = 1; %   first term
fib(2) = 1; %   second term

stop = 4e6; %   upper bound for fib seq (four million)
n = 3; %            counter for fib indices
while(1) %      while true 
    fib(n) = fib(n-1) + fib(n-2); % def of fib seq
    if fib(n) > stop %              stops the loop one term past
        break % end the loop
    end
    n = n+1; %      increase the counter
end
fib = fib(1:end-1); %               erases the extra term
pos = find(mod(fib,2)==0);% finds the index for evens by seeing if they're divisible by 2
evens = fib(pos); %         finds evens
total = sum(evens); %       sums them

fprintf(['The sum of all even terms in the Fibonacci sequence \n' ...
    'whose values do not exceed %.0f is %.0f.\n'],stop,total)

fprintf('Those even numbers are:\n')
disp(evens')


% The sum of all even terms in the Fibonacci sequence 
% whose values do not exceed 4000000 is 4613732.
% Those even numbers are:
%            2
%            8
%           34
%          144
%          610
%         2584
%        10946
%        46368
%       196418
%       832040
%      3524578