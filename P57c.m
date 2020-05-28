f = @(x) (0.8-0.3*x)./x;

x = [1 3];
k = 0;
data = [];
fprintf('k        x_l        f(x_l)        e_a         e_t\n')
m = x(2);
while k < 3
    e_a = (x(1)-m)/x(1);
    e_t = abs(x(1)-8/3);
    fprintf('%d     %6f     %6f    %6f    %6f\n', [k x(1) f(x(1)) e_a e_t]);
    data = [data;k x(1) f(x(1)) e_a e_t];
    m = x(1);
    x(1) = x(2) - f(x(2))*(x(1)-x(2))/(f(x(1))-f(x(2)));
    k = k+1;
end
e_a = (x(1)-m)/x(1);
e_t = abs(x(1)-8/3);
fprintf('%d     %6f     %6f    %6f    %6f\n', [k x(1) f(x(1)) e_a e_t]);
data = [data;k x(1) f(x(1)) e_a e_t];

save P57c.mat data