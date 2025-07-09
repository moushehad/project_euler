function rev = flipped(n)

rev = 0;

while n > 0
    
    rem = mod(n,10);

    rev = 10*rev + rem;

    n = floor(n/10);

end

