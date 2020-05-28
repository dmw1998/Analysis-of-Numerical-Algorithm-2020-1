clear all; clc
x = [0 100 200 400 600 800 1000];
y = [0 0.82436 1 0.73576 0.40601 0.19915 0.09158];
n = 6+1;
hold on;
scatter(x,y,'r*');

% Construct A
A = [];
for i = 1:n
    for j = 1:n
        A(i,j) = x(i)^(j-1);
    end
end

% Solving the linear equation system
w = A\y.';

% Plug weights into polynomial and calculate the values
x = linspace(0,1000,1001);
y1 = [];
for i = 1:1001
    p = pp(n,w,x(i));
    y1 = [y1 p];
end

% Plot the interpolating polynomal with Runge's Function
xx = 0:1:1000;
yy = xx/200.*exp(-xx/200+1);
plot(x,y1,xx,yy);
