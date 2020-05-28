y = @(x) cos(x);
x = pi/4;
h1 = pi/3;
h2 = pi/6;
tv = -1/sqrt(2);

Dh1 = (y(x+h1)-y(x-h1))/(2*h1);
Dh2 = (y(x+h2)-y(x-h2))/(2*h2);

D = 4/3*Dh2 - 1/3*Dh1