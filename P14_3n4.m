f = @(x,y) 2.25.*x.*y + 1.75.*y - 1.5.*x.^2 - 2.*y.^2;

syms dfx(x,y)
dfx(x,y) = diff(f,x);
syms dfy(x,y)
dfy(x,y) = diff(f,y);

equ1 = dfx == 0;
equ2 = dfy == 0;
vars = [x; y];
sol = solve([equ1; equ2], vars);
x3 = sym2poly(sol.x)
y3 = sym2poly(sol.y)
maxf3 = f(x3,y3)

dfxx = diff(dfx, x)
dfxy = diff(dfx, y);
dfyy = diff(dfy, y);
dfyx = diff(dfy, x);

H = [dfxx dfxy; dfyx dfyy];
DH = det(H);
detH = DH(x3,y3)

x4 = 1;
y4 = 1;
z(1) = f(x4,y4);
plot(x4,y4,'*');
hold on
for i = 1:2
    grandf = [dfx(x4,y4) dfy(x4,y4)];
    syms h
    var1(h) = x4 + grandf(1)*h;
    var2(h) = y4 + grandf(2)*h;
    g(h) = f(var1(h), var2(h));
    dg(h) = diff(g,h);
    equ = dg == 0;
    h = solve(equ, h);
    x4 = x4 + grandf(1)*h;
    y4 = y4 + grandf(2)*h;
    z(i+1) = f(x4,y4);
    plot(x4,y4,'*');
end
x4
y4
maxf4 = f(x4,y4)

xx = linspace(0,1.5,600);
yy = linspace(0,1.5,600);
[X,Y] = meshgrid(xx,yy);
Z = f(X,Y);
contour(X,Y,Z,10,'ShowText','on')
contour(X,Y,Z,z,'ShowText','on')



