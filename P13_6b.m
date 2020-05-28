f = @(x) 4*x - 1.8*x^2 + 1.2*x^3 - 0.3*x^4;

x0 = 1.75;
x1 = 2;
x2 = 2.5;
i = 0;

while i < 5
    x3 = (f(x0)*(x1^2-x2^2) + f(x1)*(x2^2-x0^2) + f(x2)*(x0^2-x1^2)) / (2*f(x0)*(x1-x2) + 2*f(x1)*(x2-x0) + 2*f(x2)*(x0-x1));
    
    x0 = x1;
    x1 = x2;
    x2 = x3;
    
    i = i+1;
end

fprintf('f(x) = %6f is the maximum where x = %6f.', f(x1), x1)