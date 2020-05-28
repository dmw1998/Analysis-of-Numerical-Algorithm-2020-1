f = @(x) 7*sin(x).*exp(-x) - 1;

k = 1;
x0 = 0.5;
x1 = 0.4;
fprintf('k     x          f(x) \n%d  %6f    %6f    \n%d  %6f    %6f\n', [0 x0 f(x0) 1 x1 f(x1)]);
data = [0 x0 f(x0); 1 x1 f(x1)];
while k<=5
    k = k+1;
    x = x1 - f(x1)*(x0-x1)/(f(x0)-f(x1));
    x0 = x1;
    x1 = x;
    fprintf('%d  %6f    %6f\n', [k x1 f(x1)]); 
    data = [data;[k x1 f(x1)]];
end

save P610c.mat data
