fa = @(t) 1./(1+2.*t);
aa = 0;
ba = 1/2;
Ia = MidPt8(fa,aa,ba)

fb1 = @(t) exp(-t)*sin(t)^2;
fb2 = @(t) exp(-1/t)*sin(1/t)^2*(1/t^2);
ab1 = 0;
ab2 = 0;
bb1 = 2;
bb2 = 1/2;
Ib1 = MidPt8(fb1,ab1,bb1);
Ib2 = MidPt8(fb2,ab2,bb2);
Ib = Ib1 + Ib2

fc1 = @(t) 1/((1+t^2)*(1+t^2/2));
fc2 = @(t) 1/((1+(1/t)^2)*(1+(1/t)^2/2))*(1/t^2);
ac1 = 0;
ac2 = 0;
bc1 = 2;
bc2 = 1/2;
Ic1 = MidPt8(fc1,ac1,bc1);
Ic2 = MidPt8(fc2,ac2,bc2);
Ic = Ic1 + Ic2

fd1 = @(t) t*exp(-t);
fd2 = @(t) (1/t)*exp(-1/t)*(1/t^2);
ad1 = -2;
ad2 = 0;
bd1 = 2;
bd2 = 1/2;
Id1 = MidPt8(fd1,ad1,bd1);
Id2 = MidPt8(fd2,ad2,bd2);
Id = Id1 + Id2

fe1 = @(t) 1/sqrt(2*pi)*exp(-t^2/2);
fe2 = @(t) 1/sqrt(2*pi)*exp(-1/(2*t^2))*(1/t^2);
ae1 = 0;
ae2 = 0;
be1 = 2;
be2 = 1/2;
Ie1 = MidPt8(fe1,ae1,be1);
Ie2 = MidPt8(fe2,ae2,be2);
Ie = Ie1 + Ie2
