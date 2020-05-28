x1 = [0 1 1 2 2 3 3 4 4];
x2 = [0 1 2 1 2 1 2 1 2];
y = [15.1 17.9 12.7 25.6 20.5 35.1 29.7 45.4 40.2];

n = length(y);
sumx1 = sum(x1);
sumx2 = sum(x2);
sumxx1 = sum(x1.^2);
sumxx2 = sum(x2.^2);
sumx12 = sum(x1.*x2);

A = [n sumx1 sumx2; sumx1 sumxx1 sumx12; sumx2 sumx12 sumxx2];
b = [sum(y); sum(x1.*y); sum(x2.*y)];
a = A\b

Sr = sum((y - a(1) - a(2)*x1 - a(3)*x2).^2);

s = sqrt(Sr/(n-3))

St = sum((y - sum(y)/n).^2);

r = sqrt((St-Sr)/St)

scatter3(x1,x2,y);

hold on
xx1 = linspace(0,4,100);
xx2 = linspace(0,2,100);
yy = a(1) + a(2)*xx1 + a(3)*xx2;
plot3(xx1,xx2,yy);
grid on