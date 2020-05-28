f1 = @(x) -x.^2 + x + 0.75;
f2 = @(x) x.^2./(1+5*x);

xx = linspace(-1,2,1000);
y1 = f1(xx);
y2 = f2(xx);
plot(xx,y1,xx,y2)
grid on