% Pick sample points
t = linspace(-1,1,9);
y = 1./(1+25.*t.^2);

hold on
xx = -1:0.01:1;
ff = 1./(1+25.*xx.^2);
plot(xx,ff)

yy = spline(t,y,xx);
plot(t,y,'*',xx,yy)