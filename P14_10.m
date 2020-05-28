f = @(x,y) y - x - 2.*x.^2 - 2.*x.*y - y.^2;

x = [-2,2];
y = [1,3];
maxvalue = [];

for i = 1:10
    n(i,1) = 100*i;
    [maxx(i,1), maxy(i,1), maxf(i,1)] = GridSearch(x, y, n(i,1), f);
end

T = table(n, maxx, maxy, maxf)
save P14_10.mat T