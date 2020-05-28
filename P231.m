y = @(x) cos(x);
x = pi/4;
h = pi/12;
tv = -1/sqrt(2);

% FDOh
dy(1) = (y(x+h) - y(x))/h;

% FDOh2
dy(2) = (-y(x+2*h) + 4*y(x+h) - 3*y(x))/(2*h);

%BDOh
dy(3) = (y(x)-y(x-h))/h;

%BDOh2
dy(4) = (3*y(x)-4*y(x-h)+y(x-2*h))/(2*h);

%CDOh2
dy(5) = (y(x+h)-y(x-h))/(2*h);

%CDOh4
dy(6) = (-y(x+2*h)+8*y(x+h)-8*y(x-h)+y(x-2*h))/(12*h);

% Error
e = abs((tv-dy)./tv)*100;

data = [dy;e]