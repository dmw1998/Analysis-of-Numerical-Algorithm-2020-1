% Pick sample points
t = [1 2 3 5];
y = [3 6 19 99];

% Construct A
A = [];
for i = 1:4
    for j = 1:4
        A(i,j) = t(i)^(j-1);
    end
end

coeff = A\y.'