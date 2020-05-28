% Pick sample points
t = linspace(-1,1,9);
y = 1./(1+25.*t.^2);

% Construct A
A = [];
for i = 1:9
    for j = 1:9
        A(i,j) = t(i)^(j-1);
    end
end

% Solving the linear equation system
w = A\y.';

% Plug weights into polynomial and calculate the values
x = linspace(-1,1,200);
y1 = [];
for i = 1:200
    p = pp(9,w,x(i));
    y1 = [y1 p];
end

% Plot the interpolating polynomal with Runge's Function
y2 = 1./(1+25.*x.^2);

scatter(t,y,'r*');
hold on;
plot(x,y1,x,y2);