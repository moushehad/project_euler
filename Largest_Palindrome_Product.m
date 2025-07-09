clear
clc
% Problem 4
% A palindromic number reads the same both ways. 
% The largest palindrome made from the product of two 
% 2-digit numbers is 9009 = 91 * 99.
% 
% Find the largest palindrome made from the product of two 3-digit numbers.


% using my function filled.m, we may determine if a number is palindrome
is_palindrome = @(n) n == flipped(n);

% enter number of digits of the two products (Q asks for 3)
dig = 3;

% creates the vector of all dig digit numbers from the variable dig
low = 10^(dig-1);
high = 10^(dig) - 1;
vec =  high:-1:low;

% preset the highest
highest = 0;

% begin double loop through the digits
for k = vec

    % second of the double loop
    for j = k : -1 : low

        % save the product for simpler coding
        h = k*j;

        % check if palindrome
        if is_palindrome(h)

            % since k is decreasing, once we hit the first palindrome, we
            %   know its successors will be less than it
            %   so we can stop
            if h < highest

                break

            end

            % if it is, choose the highest of this and the last highest
            highest = max([h,highest]);

            % track j * k
            fprintf('%3.0f x %3.0f = %.0f\n',j,k,highest)

        end      
    end
end

% 583 x 995 = 580085
% 913 x 993 = 906609