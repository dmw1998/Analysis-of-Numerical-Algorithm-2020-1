f = @(x) x.^2.*abs(cos(sqrt(x)))-5;

xx = linspace(0,5,300);
yy = f(xx);

plot(xx,yy)
grid on

x = [3.5 4];
k = 0;
data = [];
fprintf('k        x_l         f(x_l)        e_a\n')
m = x(2);
while abs((x(1)-m)/x(1)) >= 0.01
    e_a = (x(1)-m)/x(1);
    fprintf('%d     %6f     %6f    %6f\n', [k x(1) f(x(1)) e_a]);
    data = [data;k x(1) f(x(1)) e_a];
    m = x(1);
    x(1) = x(2) - f(x(2))*(x(1)-x(2))/(f(x(1))-f(x(2)));
    k = k+1;
end
e_a = (x(1)-m)/x(1);
fprintf('%d     %6f     %6f    %6f\n', [k x(1) f(x(1)) e_a]);
data = [data;k x(1) f(x(1)) e_a];

save P59.mat data