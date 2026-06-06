close all, clear all, clc;

A = [3 -.1 -.2; .1 7 -.3; .3 -.2 10];
b = [7.85; -19.3; 71.4];

[L, U] = lu(A);

d = L\b

x = U\d