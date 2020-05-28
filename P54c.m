f = @(x) -12-21*x+18*x.^2-2.75*x.^3;

x = [-1 0];
k = 0;
data = [];
fprintf('k        x_l          f(x_l) \n')
m = x(2);
while abs((x(1)-m)/x(1)) >= 0.01
    fprintf('%d     %6f     %6f\n', [k x(1) f(x(1))]);
    data = [data;k x(1) f(x(1))];
    m = x(1);
    x(1) = x(2) - f(x(2))*(x(1)-x(2))/(f(x(1))-f(x(2)));
    k = k+1;
end
fprintf('%d     %6f     %6f\n', [k x(1) f(x(1))]);
data = [data;k x(1) f(x(1))];

save P54c.mat data