clear all; clc
t = [0 100 200 400 600 800 1000];
f = [0 0.82436 1 0.73576 0.40601 0.19915 0.09158];

scatter(t,f,'r*');
hold on;

% Calculate the step
h = [];
for i = 1:length(t)-1
	h = [h t(i+1)-t(i)];
end

% Construct the matrix for the linear equation system
A(1,1) = 1;
A(length(t),length(t)) = 1;
for i = 2:length(h)
	A(i,i-1) = h(i-1);
	A(i,i) = 2*(h(i-1)+h(i));
	A(i,i+1) = h(i);
end

% Construct b for linear equation system
y = [0];
for i = 1:length(t)-2
	y = [y; (f(i+2)-f(i+1))/h(i+1) - (f(i+1)-f(i))/h(i)];
end
y = 6*[y; 0];

% Solve the linear system for m
m = A\y;

% Construct the coefficient vectors
a = [];
b = [];
c = [];
d = [];
for i = 1:length(m)-1
	a = [a; f(i)];
	b = [b; (f(i+1)-f(i))/h(i) - h(i)/2*m(i) - h(i)/6*(m(i+1)-m(i))];
	c = [c; 1/2*m(i)];
	d = [d; (m(i+1)-m(i))/(6*h(i))];
end

% Construct the polynomials for each interval and plot them
for i = 1:length(t)-1
	x = linspace(t(i),t(i+1),100);
	y = a(i) + b(i).*(x-t(i)) + c(i).*(x-t(i)).^2 + d(i)*(x-t(i)).^3;
	plot(x,y,'k');
end

xx = 0:1:1000;
yy = xx/200.*exp(-xx/200+1);
plot(xx,yy)