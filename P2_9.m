P = 55000;
i = 0.066;
for j = 1:5
    n(j,1) = j;
    A(j,1) = annual_payment(P, i, j);
end
table(n, A)