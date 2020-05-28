clear all; clc
t = [0 100 200 400 600 800 1000];
f = [0 0.82436 1 0.73576 0.40601 0.19915 0.09158];

hold on;
xx = 0:1:1000;
yy = spline(t,f,xx);
plot(t,f,'*',xx,yy)

ff = xx/200.*exp(-xx/200+1);
plot(xx,ff)
