function [mx, my, mz] = GridSearch(x, y, n, f)
xx = linspace(x(1),x(2),n);
yy = linspace(y(1),y(2),n);
mz = f(xx(1), yy(1));
for i = 1:n
    for j = 1:n
        if f(xx(i),yy(j))>=mz
            mx = xx(i);
            my = yy(j);
            mz = f(xx(i),yy(j));
        end
    end
end
end