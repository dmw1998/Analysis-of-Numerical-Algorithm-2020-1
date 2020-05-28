f = @(x) exp(x).*sin(x)./(1+x.^2);
a = 0;
b = 2;

for i = 1:4
    R(i,1) = Trapezoid(f,a,b,2^(i-1));
    for j = 2:i
        R(i,j) = R(i,j-1) + (R(i,j-1)-R(i-1,j-1))/(4^(j-1)-1);
    end
end

e = (R(4,4)-1.94013)/(1.94013)