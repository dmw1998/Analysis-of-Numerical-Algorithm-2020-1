function S = simp13(f,a,b)
h = (b-a)/2;
S = 2*h*(f(a) + 4*f((a+b)/2) + f(b))/6;
end
