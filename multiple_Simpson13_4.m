f = @(x) 6 + 3*cos(x);
a = 0;
b = pi/2;
n = 4;

t = linspace(a,b,n+1);
S1 = simp13(f,t(1),t(3));
S2 = simp13(f,t(3),t(5));
S = S1 + S2
e = (S-(3+3*pi))/(3+3*pi)

f = @(x) 1 - exp(-2*x);
a = 0;
b = 3;

T = Trapezoid(f,a,b,n)
e = (T-(5/2+1/(2*exp(6))))/(5/2+1/(2*exp(6)))