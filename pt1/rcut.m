function result = rcut( A, k )
    D = full(diag(sum(A)));
    L = D - A; %A has no weight
    [V,~] = eigs(L,k,'sm'); %sm means the smallest
    result = kmeans(V,k);
end