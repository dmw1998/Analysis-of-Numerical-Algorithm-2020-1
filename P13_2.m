f = @(x) -1.5*x.^6 - 2*x.^4 + 12*x;
df =@(x) -1.5*6*x.^5 - 2*4*x.^3 + 12;

xx = linspace(-1,2,300);
yy = f(xx);
plot(xx,yy)
grid on

x = [-1 2];

while x(2)-x(1) >= 1*10^(-6)
    m = x(1) + 1/2 * (x(2)-x(1));
    v = df(m);
    if sign(v) == sign(df(x(1)))
        x(1) = m;
    else
        x(2) = m;
    end
end

fprintf('f(x) = %6f is the maximum where x = %6f.', f(x(2)), x(2))