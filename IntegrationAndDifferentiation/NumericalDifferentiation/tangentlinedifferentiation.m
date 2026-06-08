close all, clear all, clc;

q = 75;
rw = 6e-3;
k = 0.17;
h = 12;
TempAir = 293;

T = @(ri) TempAir + q / (2 * pi) *  (1 / k * log((rw + ri) / rw) + 1 / h * 1 ./ (rw + ri));

subplot(2, 1, 1);
riplot = linspace(rw/2, 2*rw);
Tplot = T(riplot);

ri_mm = riplot * 1e3;

plot(ri_mm, Tplot), grid

xlabel('Thickness of wire insulation(mm)');
ylabel('Temp Air (K)');

delta = sqrt(eps);
dT_dri = (T(riplot + delta * riplot) - T(riplot))./(delta * riplot);

subplot(2, 1, 2);
plot(ri_mm, dT_dri), grid
xlabel('Thickness of wire insulation(mm)');
ylabel('dT/dri (K/mm)');

[rimin Tmin] = fminbnd(T, rw/2, 2 * rw);
rimin = rimin * 1e3, Tmin
