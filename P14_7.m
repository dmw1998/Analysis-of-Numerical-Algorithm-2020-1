f = @(x,y) 4*x + 2*y + x^2 - 2*x^4 + 2*x*y - 3*y^2;

x0 = 0;
y0 = 0;
syms dfx(x,y)
dfx(x,y) = diff(f,x);
syms dfy(x,y)
dfy(x,y) = diff(f,y);
grandf = [dfx(x0,y0) dfy(x0,y0)]

syms h
var1(h) = x0 + grandf(1)*h;
var2(h) = y0 + grandf(2)*h;
g(h) = f(var1, var2);
dg(h) = diff(g,h);

hl = 0;
hu = 1;
for i = 1: 10
    m = (hu-hl)/2;
    if dg(hl)*dg(m) > 0
        hu = m;
    else
        hl = m;
    end
end
h = m
x = var1(h)
y = var2(h)
maxf = f(x,y)
