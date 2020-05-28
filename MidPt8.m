function I = MidPt8(f,a,b)
t = linspace(a,b,9);
h = (b-a)/8;
for i = 1:8
    x(i) = (t(i) + t(i+1))/2;
    m(i) = f(x(i))*h;
end
I = sum(m);