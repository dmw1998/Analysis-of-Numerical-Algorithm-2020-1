y = [144 188 245 311 351 359 308 287 260 211 159 131];
t = 30:30:360;
N = 12;
T = 360;
w = 2*pi/T

A0 = sum(y)/N
A1 = 2/N*sum(y.*cos(w*t))
B1 = 2/N*sum(y.*sin(w*t))

hold on
xx = 0:0.1:360;
yy = A0 + A1.* cos(w*xx) + B1.* sin(w*xx);
plot(xx,yy)
scatter(t,y,'*')

yy = A0 + A1 * cos(w*(7*30+15)) + B1 * sin(w*(7*30+15))