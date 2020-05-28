TureValue = cos(pi/3);
err = 0.005;
n = 0;
Ap = 1;
while abs(Ap) > err
    n = n+1;
    Approx(n,1) = ApproxCos(pi/3,n);
    TrueRE1(n,1) = (TureValue - Approx(n))/TureValue*100;
    if n > 1
        Ap = Approx(n)-Approx(n-1);
        ApRE1(n,1) = Ap/Approx(n)*100;
    end
end

T = table(Approx,TrueRE1, ApRE1)

input.data = T;
input.dataFormat = {'%.4f'};
input.tableColumnAlignment = 'c';
input.tableBorders = 0;
input.makeCompleteLatexDocument = 1;
latex = latexTable(input);