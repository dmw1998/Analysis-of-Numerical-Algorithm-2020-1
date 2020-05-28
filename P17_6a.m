x = 1:9;
y = [1 1.5 2 3 4 5 8 10 13];
n = length(x);
xy = x.*y;
xx = x.*x;
yy = y.*y;

a1 = (n*sum(xy)-sum(x)*sum(y))/(n*sum(xx)-sum(x)^2)

a0 = sum(y)/n - a1*sum(x)/n

Sr = sum((y - a0 - a1*x).^2);

s = sqrt(Sr/(n-2))

r = (n*sum(xy) - sum(x)*sum(y))/(sqrt(n*sum(xx)-sum(x)^2)*sqrt(n*sum(yy)-sum(y)^2))

hold on
xlabel('X');
ylabel('Y');
set(gca, 'XLim',[min(x)-1,max(x)+1], 'YLim',[min(y)-1,max(y)+1]);
scatter(x,y);
xs = linspace(min(x)-1,max(x)+1,100);
ys = a1*xs + a0;
plot(xs,ys);