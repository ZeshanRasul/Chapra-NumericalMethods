f=@(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

x = 0:0.1:0.8;
y = f(x);

diff(x);
diff(y);

d = diff(y)./diff(x)

n = length(x);

xm = (x(1:n-1) + x(2:n)) ./2

xa = 0:0.01:0.8;
ya = 25 - 400*xa + 3*675*xa.^2 - 4*900*xa.^3 + 5*400*xa.^4;

plot(xm, d, 'o', xa, ya)