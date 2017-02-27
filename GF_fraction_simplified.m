% This script computes what fraction of the n-by-n 
% matrices over the finite field GF(q) is invertible.
% For a proof of convergence, see 
% http://math.stackexchange.com/a/71291/95044

% Number of elements in the field
q = 2;

% Compute the fraction invertible matrices
% (i.e. |GL_n(GF(q))|/|M_n(GF(q)|)
for n = 1:30
    
    % Compute the number of invertible
    % matrices (i.e. |GL_n(GF(q))|)
    ninv = 1;
    for k=0:n-1
        ninv = ninv * (q^n-q^k);
    end
    
    % Compute the frsaction by dividing by |M_n(GF(q)|
    fracinv(n) = ninv/q^(n^2);
end

plot(fracinv)
xlabel('n')
ylabel('Fraction')
title(['Fraction invertible matrices in M_{n}(GF(',num2str(q),'))'])