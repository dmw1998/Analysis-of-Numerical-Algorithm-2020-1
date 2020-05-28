f = @(x,y) 2*x*y^2 + 3*exp(x*y);

syms dfx(x,y)
dfx(x,y) = diff(f,x);
syms dfy(x,y)
dfy(x,y) = diff(f,y);

G = [dfx dfy]

dfxx = diff(dfx, x);
dfxy = diff(dfx, y);
dfyy = diff(dfy, y);
dfyx = diff(dfy, x);

H = [dfxx dfxy; dfyx dfyy]