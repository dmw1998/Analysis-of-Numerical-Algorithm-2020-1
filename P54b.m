f = @(x) -12-21*x+18*x^2-2.75*x^3;

x = [-1 0];
k = 0;
data = [];
fprintf('k        a          f(a)          b           f(b) \n')
m = x(1);
while abs((x(2)-x(1))/m) >= 0.01
    fprintf('%d    %6f    %6f    %6f    %6f\n', [k x(1) f(x(1)) x(2) f(x(2))]);
    data = [data;k x(1) f(x(1)) x(2) f(x(2))];
    m = x(1) + 1/2 * (x(2)-x(1));
    v = f(m);
    if sign(v) == sign(f(x(1)))
        x(1) = m;
    else
        x(2) = m;
    end
    k = k+1;
end
fprintf('%d    %6f    %6f    %6f    %6f\n', [k x(1) f(x(1)) x(2) f(x(2))]);
data = [data;k x(1) f(x(1)) x(2) f(x(2))];

save P54b.mat data