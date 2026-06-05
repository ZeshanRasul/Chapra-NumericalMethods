close all; clear;
% Chapter 8.2 Chapra

% Coefficient Matrix
K = [150 -100 0; -100 150 -50; 0 -50 50];

% gravity
gravity = 9.81

% mg vector
mg = [ 60 ; 70; 80] .* gravity

% Solve for displacements using more efficient left divide
x = K\mg

%Solve for displacement using less efficient matrix inverse
x = inv(K)*mg

% Initial relative positions
xi = [20; 40; 60];

% Final positions
xf = xi + x