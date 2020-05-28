f = @(x) 7*sin(x).*exp(-x) - 1;

xx = linspace(0,0.5,500);
yy = f(xx);
plot(xx,yy);
grid on