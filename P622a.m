g = @(x) [(x(1)^2-x(2))/(5*x(2)); -x(1)^2+x(1)+0.75];

x1 = [1.2; 1.2];
x0 = [0; 0];
k = 0;
data = [k x1(1) x1(2)];
fprintf('k      x1          x2 \n%d   %6f    %6f    \n', [k x1(1) x1(2)]);
while norm(x1-x0,inf)>=10^(-6)
    x0 = x1;
    x1 = g(x0);
    k = k+1;
    fprintf('%d   %6f    %6f    \n', [k x1(1) x1(2)]);
    data = [data;[k x1(1) x1(2)]];
end

save P622a.mat data