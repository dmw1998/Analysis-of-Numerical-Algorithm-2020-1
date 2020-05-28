hold on

xlabel('X');
ylabel('Y');
set(gca, 'XLim',[-0.5,8.5], 'YLim',[-0.5,10.5]);

%% Plot constraint lines

xx = -0.5:0.001:8.5;
yy = -0.5:0.001:10.5;
f1 = @(x) (40-5*x)/2;
f2 = @(x) (60-6*x)/6;
f3 = @(x) (32-2*x)/4;
f4 = @(x) 0*x;
p1 = plot(xx, f1(xx), 'LineWidth',1);
p2 = plot(xx, f2(xx), 'LineWidth',1);
p3 = plot(xx, f3(xx), 'LineWidth',1);
p4 = plot(xx, f4(xx), 'LineWidth',1);
p5 = plot(f4(yy), yy, 'LineWidth',1);

%% Plot feasible solution space

xx = 0:0.001:8.5;
yy = 0:0.001:10.5;
[x y] = meshgrid(xx,yy);
cond1 = 5*x + 2*y <= 40; 
cond2 = 6*x + 6*y <= 60;
cond3 = 2*x + 4*y <= 32;
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
xx = -0.5:0.01:8.5;
for i = 0:35:70
    eqn = 6*x + 8*y == i;
    Z(x) = solve(eqn,y);
    plot(xx, Z(xx), 'k--', 'LineWidth',2);
end

for i = 71:1:73
    eqn = 6*x + 8*y == i;
    Z(x) = solve(eqn,y);
    plot(xx, Z(xx), 'r--', 'LineWidth',1);
end

legend([p1, p2, p3, p4, p5, s], {'5*x + 2*y = 40', '6*x + 6*y = 60', '2*x + 4*y = 32', 'y = 0', 'x = 0','Area'})
