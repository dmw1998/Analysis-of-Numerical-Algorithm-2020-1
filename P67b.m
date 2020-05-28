f = @(x) sin(x) + cos(1+x.^2) - 1;

xx = linspace(1.5,3,500);
yy = f(xx);
plot(xx,yy);
hold on

k = 1;
x0 = 1.5;
x1 = 2.5;
fprintf('k     x          f(x) \n%d  %6f    %6f    \n%d  %6f    %6f\n', [0 x0 f(x0) 1 x1 f(x1)]);
data = [0 x0 f(x0); 1 x1 f(x1)];
while k<=4
    k = k+1;
    x = x1 - f(x1)*(x0-x1)/(f(x0)-f(x1));
    if abs(f(x1))>abs(f(x0))
        xx = [x1 x];
        yy = [f(x1) 0];
    else
        xx = [x0 x];
        yy = [f(x0) 0];
    end
    plot(xx,yy);
    str = {'x1','x2','x3','x4','x5'};
    text(x,0,str(k));
    x0 = x1;
    x1 = x;
    fprintf('%d  %6f    %6f\n', [k x1 f(x1)]); 
    data = [data;[k x1 f(x1)]];
end
grid on

save P67b.mat data
