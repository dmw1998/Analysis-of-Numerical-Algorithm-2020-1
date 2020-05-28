x = [2.5 3.2];
y = [14 15];

% Construct A
A = [];
for i = 1:length(x)
    for j = 1:length(x)
        a = 1;
        for k = 1:j-1
            a = a * (x(i)-x(k));
        end
        A(i,j) = a;
    end
end

% Solving the linear equation system
w =A\y.'

% Plug weights into polynomial and calculate the values
x1 = 2.8;
y1 = [];
for k = 1:length(x1)
    X = [];
    for i = 1:length(x)
        b = 1;
        yj = 0;
        for j = 1:i-1
            b = b * (x1(k)-x(j));
            yj = yj + w(j)*b;
        end
        X = [X b];
    end
    yk = X*w;
    y1 = [y1 yk]
end

% % Plot the interpolating polynomal with sample points
% scatter(x,y,'r*');
% hold on;
% plot(x1,y1);