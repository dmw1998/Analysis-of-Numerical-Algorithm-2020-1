f = @(x) -1.5*x.^6 - 2*x.^4 + 12*x;

x0 = 0;
x1 = 1;
x2 = 2;
i = 0;

while i < 4
    x3 = (f(x0)*(x1^2-x2^2) + f(x1)*(x2^2-x0^2) + f(x2)*(x0^2-x1^2)) / (2*f(x0)*(x1-x2) + 2*f(x1)*(x2-x0) + 2*f(x2)*(x0-x1));

    if f(x3)<f(x1)
        x2 = x1;
    else
        x0 = x1;
    end
    x1 = x3;
    i = i+1;
end

fprintf('f(x) = %6f is the maximum where x = %6f.', f(x1), x1)