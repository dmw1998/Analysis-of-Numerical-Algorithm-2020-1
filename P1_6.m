D = [220.13, 220.13, 216.80, 216.80, 450.35, 450.35, 127.31, 127.31];
W = [327.26, 327.26, 378.51, 378.51, 106.80, 106.80, 350.61, 350.61];
B(1) = 1522.33;
h = 0.5;
for i = 1:4/h
    B(i+1) = B(i) + (0.01*B(i)+1/2*D(i)-1/2*W(i))*h;
end
bb = 0:0.5:4;

A = [1522.33, 1430.42, 1283.01, 1639.39, 1432.48];
aa = 0:4;

p = plot(aa,A, bb,B);
p(1).Marker = '.';
p(1).MarkerSize = 20;
p(1).LineWidth = 2;
p(2).Marker = '*';
p(2).MarkerSize = 10;
p(2).LineWidth = 2;
xlabel('Time(month)');
ylabel('Blance($)');
legend('per month', 'per half month');