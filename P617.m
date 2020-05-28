f = @(x) 0.0074*x.^4 - 0.284*x.^3 + 3.355*x.^2 - 12.183*x + 5;
df = @(x) 4*0.0074*x.^3 - 3*0.284*x.^2 + 2*3.355*x - 12.183;

xx = linspace(-5,20,1000);
yy = f(xx);
plot(xx,yy)
hold on
grid on

k = 0;
x = 16.15;
fx = f(x);
dfx = df(x);
data = [k x fx dfx];
fprintf('k     x           f(x)        df(x) \n%d  %6f    %6f    %6f\n', [k x fx dfx]);

while k<=7
    k = k+1;
    x0 = x;
    fx0 = fx;
    x = x - fx/dfx;
    plot([x0,x],[fx0,0])
    str = {'x1','x2','x3','x4','x5','x6','x7','x8'};
    text(x,0,str(k));
    fx = f(x);
    dfx = df(x);
    data = [data; [k x fx dfx]];
    fprintf('%d  %6f    %6f    %6f\n', [k x fx dfx])
end

save P617.mat data