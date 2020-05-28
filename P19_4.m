hold on
t = [-1 -1/2 -1/2 1/2 1/2 1];
y = [0 -1 1 -1 1 0];
plot(t,y)

xx = -1:0.001:1;
y1 = -2/pi*sin(2*pi*xx);
y2 = 1/pi*sin(4*pi*xx);
y3 = -2/(3*pi)*sin(6*pi*xx);
yy = -2/pi*sin(2*pi*xx) + 1/pi*sin(4*pi*xx) + -2/(3*pi)*sin(6*pi*xx);
plot(xx,y1,xx,y2,xx,y3,xx,yy)
grid on
