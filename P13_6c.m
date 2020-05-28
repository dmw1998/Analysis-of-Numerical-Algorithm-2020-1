f = @(x) 4*x - 1.8*x^2 + 1.2*x^3 - 0.3*x^4;
df = @(x) 4 - 1.8*2*x + 1.2*3*x^2 - 0.3*4*x^3;
ddf = @(x) - 1.8*2 + 1.2*3*2*x - 0.3*4*3*x^2;

x0 = 3;
x = 0;

while abs(x0-x) > 0.01
    x = x0;
    x0 = x - df(x)/ddf(x);
end

fprintf('f(x) = %6f is the maximum where x = %6f.', f(x0), x0)