x = 1:9;
y = [1 1.5 2 3 4 5 8 10 13];
n = length(x);
xy = x.*y;
xx = x.*x;
xxy = xx.*y;
x3 = xx.*x;
x4 = x3.*x;

A = [n sum(x) sum(xx); sum(x) sum(xx) sum(x3); sum(xx) sum(x3) sum(x4)];

b = [sum(y); sum(xy); sum(xxy)];

a = A\b

Sr = sum((y - a(1) - a(2)*x - a(3)*xx).^2);

s = sqrt(Sr/(n-3))

St = sum((y - sum(y)/n).^2);

r = sqrt((St-Sr)/St)

hold on
xlabel('X');
ylabel('Y');
set(gca, 'XLim',[min(x)-1,max(x)+1], 'YLim',[min(y)-1,max(y)+1]);
scatter(x,y);
xs = linspace(min(x)-1,max(x)+1,100);
ys = a(3)*xs.*xs + a(2)*xs + a(1);
plot(xs,ys);