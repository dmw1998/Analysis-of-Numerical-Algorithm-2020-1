f =  @(x) [x(2)+x(1)^2-x(1)-0.75; x(2)+5*x(1)*x(2)-x(1)^2];
df = @(x) [2*x(1)-1 1; 5*x(2)-2*x(1) 1+5*x(1)];

%% Root 1

k = 0;
x = [-0.5 -0.2];
fx = f(x);
dfx = df(x);
data1 = [k x(1) x(2)];
fprintf('k      x            y \n%d  %6f    %6f\n', [k x(1) x(2)]);

while k<=3
    k = k+1;
    x = x - dfx\fx;
    fx = f(x);
    dfx = df(x);
    data1 = [data1; [k x(1) x(2)]];
    fprintf('%d  %6f    %6f\n', [k x(1) x(2)])
end

%% Root 2

k = 0;
x = [-0.2 0.5];
fx = f(x);
dfx = df(x);
data2 = [k x(1) x(2)];
fprintf('k      x            y \n%d  %6f    %6f\n', [k x(1) x(2)]);

while k<=3
    k = k+1;
    x = x - dfx\fx;
    fx = f(x);
    dfx = df(x);
    data2 = [data2; [k x(1) x(2)]];
    fprintf('%d  %6f    %6f\n', [k x(1) x(2)])
end

%% Root 3

k = 0;
x = [1.3 0.2];
fx = f(x);
dfx = df(x);
data3 = [k x(1) x(2)];
fprintf('k      x           y \n%d  %6f    %6f\n', [k x(1) x(2)]);

while k<=3
    k = k+1;
    x = x - inv(dfx)*fx;
    fx = f(x);
    dfx = df(x);
    data3 = [data3; [k x(1) x(2)]];
    fprintf('%d  %6f    %6f\n', [k x(1) x(2)])
end

data = [data1 data2 data3];
save P622bb.mat data
