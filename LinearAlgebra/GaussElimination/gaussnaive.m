close all; clear all; clc;
function x = GaussNaive(A,b)

    [m, n] = size(A);
    if m~=n, error ('Matrix A must be square'); end
    
    nb = n+1;
    Aug = [A b];
    
    % Forward Elimination
    for k = 1:n-1
        for i = k+1:n
            factor = Aug(i, k) / Aug(k, k);
            Aug(i, k:nb) = Aug (i, k:nb) - factor * Aug(k, k:nb);
        end
    end
    
    % Back Substitution
    x = zeros(n, 1);
    x(n) = Aug(n, nb) / Aug(n, n);
    
    for i = n-1:-1:1
        x(i) = (Aug(i, nb) - Aug(i, i+1:n) * x(i+1:n)) / Aug(i, i);
    end
end

A = [3 -0.1 -0.2; 0.1 7 -0.3; 0.3 -0.2 10];
b = [7.85; -19.3; 71.4];

x = GaussNaive(A, b);

% Display the solution
disp('The solution vector x is:');
disp(x);