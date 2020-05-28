f = @(x) -1.5*x.^6 - 2*x.^4 + 12*x;

x1 = 0;
x2 = 2;
d = (sqrt(5)-1)/2 * (x2 - x1);
i = 0;
while i < 4
    x1 = x1 + d;
    x2 = x2 - d;

    if f(x1) > f(x2)
        xopt = x1;
        x1 = x2;
        x2 = x2 + d;
    else
        xopt = x2;
        x2 = x1;
        x1 = x1 - d;
    end
    
    d = (sqrt(5)-1)/2 * (x2 - x1);
    i = i+1;
end
fprintf('f(x) = %6f is the maximum where x = %6f.', f(xopt), xopt)