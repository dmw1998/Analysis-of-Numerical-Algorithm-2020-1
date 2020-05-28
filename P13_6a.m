f = @(x) 4*x - 1.8*x^2 + 1.2*x^3 - 0.3*x^4;

x1 = -2;
x2 = 4;
xopt = x2;
d = (sqrt(5)-1)/2 * (x2 - x1);

while (1-d)*abs((x2-x1)/xopt) <0.01
    d = (sqrt(5)-1)/2 * (x2 - x1);
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
end

fprintf('f(x) = %6f is the maximum where x = %6f.', f(xopt), xopt)