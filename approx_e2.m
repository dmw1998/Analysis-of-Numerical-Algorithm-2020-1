function c = approx_e1(x,n)
c = 1;
for i = 1:n-1
    c = c + x^i/factorial(i);
end
c = 1/c;
end