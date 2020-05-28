function S = simp38(f,a,b)
h = (b-a)/3;
S = 3*h*(f(a) + 3*(f(a+h)+f(b-h)) + f(b))/8;
end
