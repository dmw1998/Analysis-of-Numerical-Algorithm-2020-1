function c = ApproxCos(x,n)
c = 1;
for i = 1:n-1
    c = c + (-1)^i*x^(2*i)/factorial(2*i);
end
end