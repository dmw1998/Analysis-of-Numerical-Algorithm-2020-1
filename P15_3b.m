M = [[1.2; 1; 2.5], [2.25; 1.1; 1], eye(3)];
b = [14; 8; 9];
data = [];

for i = 1:4
    for j = i+1:5
        A = M;
        A(:, i) = [];
        A(:, j-1) = [];
        sol = A\b;
        if sol(1) >= 0
            if sol(2)>= 0
                if sol(3) >= 0
                    S(i) = 0;
                    S(j) = 0;
                    S(1: i-1) = sol(1: i-1);
                    S(i+1: j-1) = sol(i: j-2);
                    S(j+1: 5) = sol(j-1: 3);
                    Z = 1.75*S(1) + 1.25*S(2);
                    data = [data; S Z];
                end
            end
        end
    end
end

Z = data(:, 6);
maxZ = max(Z)
for i = 1: length(Z)
    if Z(i) == maxZ
        x = data(i,1)
        y = data(i,2)
    end
end

T = table(data);
save P15_3.mat T