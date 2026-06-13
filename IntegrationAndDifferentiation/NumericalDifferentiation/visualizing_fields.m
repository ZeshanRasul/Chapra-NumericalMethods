f = @(x, y) y - x - 2*x.^2 -2.*x.*y - y.^2;

[x y] = meshgrid(-2:.25:0, 1:.25:3)

z = f(x, y);

[fx fy] = gradient(z, 0.25);

cs = contour(x, y , z);
clabel(cs);
hold on;

quiver(x, y, -fx, -fy);
hold off;