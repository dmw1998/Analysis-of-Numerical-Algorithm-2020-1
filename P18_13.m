clear all;clc
t = [1.6 2 2.5 3.2 4 4.5];
f = [2 8 14 15 8 2];

scatter(t,f,'r*');
hold on;

% Calculate the step
h = [];
for i = 1:length(t)-1
	h = [h t(i+1)-t(i)];
end

% Construct the matrix for the linear equation system
A(1,1) = 1;
for i = 2:length(h)
	A(i,i-1) = 1;
	A(i,i) = 1;
end

% Construct b for linear equation system
y = [(f(2) - f(1))/h(1)];
for i = 2:length(h)
	y = [y; 2*(f(i)-f(i-1))/h(i-1)];
end

% Solve the linear system for m
b = A\y;

% Construct the coefficient vectors
a = [];
c = [];
for i = 1:length(b)-1
	a = [a; f(i)];
	c = [c; (b(i+1)-b(i))/(2*h(i))];
end
a = [a; f(length(b))];
c = [c; (f(length(f))-a(length(a))-b(length(b))*h(length(h)))/h(length(h))^2];

% Construct the polynomials for each interval and plot them
for i = 1:length(t)-2
	x = linspace(t(i),t(i+1),100);
	y = a(i) + b(i)*(x-t(i)) + c(i)*(x-t(i)).^2;
	plot(x,y);
end

i = 4; x = 3.4;
y1 = a(i) + b(i)*(x-t(i)) + c(i)*(x-t(i)).^2

i = 2; x = 2.2;
y2 = a(i) + b(i)*(x-t(i)) + c(i)*(x-t(i)).^2

syms x y
for i = 1:length(t)-1
	y = a(i) + b(i)*(x-t(i)) + c(i)*(x-t(i)).^2
end