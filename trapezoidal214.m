f = @(x) (x+2./x).^2;
a = 1;
b = 2;

for i = 1:4
    T(i) = Trapezoid(f,a,b,i);
    e(i) = (T(i)-25/3)/(25/3);
end
T
e
