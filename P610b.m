f = @(x) 7*sin(x).*exp(-x) - 1;
df = @(x) 7*cos(x).*exp(-x) - 7*sin(x).*exp(-x);

k = 0;
x = 0.3;
fx = f(x);
dfx = df(x);
data = [k x fx dfx];
fprintf('k     x          f(x)        df(x) \n%d  %6f    %6f    %6f\n', [k x fx dfx]);

while k<=2
    k = k+1;
    x = x - fx/dfx;
    fx = f(x);
    dfx = df(x);
    data = [data; [k x fx dfx]];
    fprintf('%d  %6f    %6f    %6f\n', [k x fx dfx])
end

save P610b.mat data