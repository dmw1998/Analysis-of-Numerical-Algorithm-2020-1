f = @(x) -1.5*x.^6 - 2*x.^4 + 12*x;
df  =@(x) -1.5*6*x.^5 - 2*4*x.^3 + 12;
ddf = @(x) -1.5*6*5*x.^4 - 2*4*3*x.^2;

x = 2;
i = 0;

while i < 4
    x = x - df(x)/ddf(x);
    i = i+1;
end

fprintf('f(x) = %6f is the maximum where x = %6f.', f(x), x)