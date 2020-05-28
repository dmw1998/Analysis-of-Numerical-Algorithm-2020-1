f = @(x,y,z) x^2 + y^2 + 2*z^2;

syms dfx(x,y,z)
dfx(x,y,z) = diff(f,x);
syms dfy(x,y,z)
fy(x,y,z) = diff(f,y);
syms dfy(x,y,z)
dfz(x,y,z) = diff(f,z);

G = [dfx fy dfz]

dfxx = diff(dfx, x);
dfxy = diff(dfx, y);
dfxz = diff(dfx, z);
dfyx = diff(fy, x);
dfyy = diff(fy, y);
dfyz = diff(fy, z);
dfzx = diff(dfz, x);
dfzy = diff(dfz, y);
dfzz = diff(dfz, z);

H = [dfxx dfxy dfxz; dfyx dfyy dfyz; dfzx dfzy dfzz]