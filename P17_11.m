x = [0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
y = [0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];
z = log(y) - log(x);

n = length(x);
xz = x.*z;
xx = x.*x;
zz = z.*z;

a1 = (n*sum(xz)-sum(x)*sum(z))/(n*sum(xx)-sum(x)^2)

a0 = sum(z)/n - a1*sum(x)/n

a = exp(a0)
b = a1

hold on
xlabel('X');
ylabel('Y');
set(gca, 'XLim',[min(x)-0.1,max(x)+0.1], 'YLim',[min(y)-0.1,max(y)+0.1]);
scatter(x,y);
xs = linspace(min(x)-1,max(x)+1,100);
ys = a.*xs.*exp(b.*xs);
plot(xs,ys);
