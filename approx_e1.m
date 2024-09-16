function c = approx_e1(x,n)
c = 1;
for i = 1:n-1
    c = c + (-1)^i*x^i/factorial(i);
end
end