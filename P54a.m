f = @(x) -12-21*x+18*x.^2-2.75*x.^3;

xx = linspace(-1,5,500);
yy = f(xx);

plot(xx,yy)
grid on