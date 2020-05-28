f = @(x) (0.8-0.3*x)./x;

xx = linspace(2.5,3,300);
yy = f(xx);

plot(xx,yy)
grid on