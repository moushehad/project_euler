% This function is to be used with Ten_Thousand_and_Oneth_Prime.m 
% to solve the 7th Project Euler problem

% build a  function to find the nth prime number
function p = nprime(n)

    % start a count for the number of primes and the number were checking
    count = 0;
    num = 1;
    
    % begin loop to find the primes less than a number
    while count < n

        % proceed to the next number (since 1 is not prime)
        num = num + 1;

        % check if its prime
        if isprime(num)
            
            % if its prime, count it
            count = count + 1;
        end
    end

    % return the number
    p = num;

end