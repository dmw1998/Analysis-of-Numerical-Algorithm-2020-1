f = @(x) 6 + 3*cos(x);
a = 0;
b = pi/2;

S = simp13(f,a,b)
e = (S-(3+3*pi))/(3+3*pi)

f = @(x) 1 - exp(-2*x);
a = 0;
b = 3;

T = Trapezoid(f,a,b,n)
e = (T-(5/2+1/(2*exp(6))))/(5/2+1/(2*exp(6)))