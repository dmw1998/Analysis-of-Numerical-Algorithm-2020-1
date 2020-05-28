function y = pp(n,w,x)
y = 0;
for i = 1:n
    y = y+w(i)*x^(i-1);
end