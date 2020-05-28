f =  @(x) [x(2)+x(1)^2-x(1)-0.75; x(2)+5*x(1)*x(2)-x(1)^2];
df = @(x) [2*x(1)-1 1; 5*x(2)-2*x(1) 1+5*x(1)];

k = 0;
x = [1.2; 1.2];
x0 = [0; 0];
fx = f(x);
dfx = df(x);
data1 = [k x(1) x(2)];
fprintf('k      x            y \n%d  %6f    %6f\n', [k x(1) x(2)]);

while norm(x-x0,inf)>=10^(-6)
    k = k+1;
    x0 = x;
    x = x - dfx\fx;
    fx = f(x);
    dfx = df(x);
    data1 = [data1; [k x(1) x(2)]];
    fprintf('%d  %6f    %6f\n', [k x(1) x(2)])
end

save P622b.mat data