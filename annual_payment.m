function A = annual_payment(P, i, n)
A = P*(i*(1+i)^n)/((1+i)^n-1);
end