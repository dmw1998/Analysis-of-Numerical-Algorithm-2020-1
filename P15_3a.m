hold on

xlabel('X');
ylabel('Y');
set(gca, 'XLim',[-0.5,4], 'YLim',[-0.5,9.5]);

%% Plot constraint lines

xx = -0.5:0.001:4;
yy = -0.5:0.001:9.5;
f1 = @(x) (14-1.2*x)/2.25;
f2 = @(x) (8-x)/1.1;
f3 = @(x) 9-2.5*x;
f4 = @(x) 0*x;
p1 = plot(xx, f1(xx), 'LineWidth',1);
p2 = plot(xx, f2(xx), 'LineWidth',1);
p3 = plot(xx, f3(xx), 'LineWidth',1);
p4 = plot(xx, f4(xx), 'LineWidth',1);
p5 = plot(f4(yy), yy, 'LineWidth',1);

%% Plot feasible solution space

xx = 0:0.001:4;
yy = 0:0.001:9.5;
[x y] = meshgrid(xx,yy);
cond1 = 1.2*x + 2.25*y <= 14; 
cond2 = x + 1.1*y <= 8;
cond3 = 2.5*x + y <= 9;
cond1 = double(cond1); 
cond2 = double(cond2);
cond3 = double(cond3);
cond1(cond1 == 0) = NaN; 
cond2(cond2 == 0) = NaN;
cond3(cond3 == 0) = NaN;
cond = cond1.*cond2.*cond3;
s = surf(x,y,cond,'FaceAlpha',0.5);
s.EdgeColor = 'none';
view(0,90)

%% Plot objective function

syms x y
xx = -0.5:0.01:4;
for i = 0:5:10
    eqn = 1.75*x + 1.25*y == i;
    Z(x) = solve(eqn,y);
    plot(xx, Z(xx), 'k--', 'LineWidth',2);
end

for i = 9.3:0.01:9.32
    eqn = 1.75*x + 1.25*y == i;
    Z(x) = solve(eqn,y);
    plot(xx, Z(xx), 'r--', 'LineWidth',1);
end

legend([p1, p2, p3, p4, p5, s], {'1.2*x + 2.25*y = 14', 'x + 1.1*y = 8', '2.5*x + y = 9', 'y = 0', 'x = 0','Area'})
