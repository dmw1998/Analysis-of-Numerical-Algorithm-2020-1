% Pick sample points
t = [1 2 3 5 7];
y = [3 6 19 99 291];

% Calculate the interpolating polynomal
x = 4;
y1 = [];
for i = 1:length(x)
    y1 = [y1 L(t,y,x(i))];
end
y1