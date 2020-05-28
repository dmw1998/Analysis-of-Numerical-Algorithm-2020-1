TureValue = 6.737947*10^(-3);

for n = 1:20
    ap1(n,1) = approx_e1(5,n);
    ap2(n,1) = approx_e2(5,n);
    TrueRE1(n,1) = (TureValue - ap1(n))/TureValue;
    TrueRE2(n,1) = (TureValue - ap2(n))/TureValue;
    if n >1
        apRE1(n,1) = (ap1(n)-ap1(n-1))/ap1(n);
        apRE2(n,1) = (ap2(n)-ap2(n-1))/ap2(n);
    end
end

T1 = table(ap1,TrueRE1, apRE1);
T2 = table(ap2,TrueRE2, apRE2);

input.data = T2;
input.dataFormat = {'%.2e'};
input.tableColumnAlignment = 'c';
input.tableBorders = 0;
input.makeCompleteLatexDocument = 1;
latex = latexTable(input);