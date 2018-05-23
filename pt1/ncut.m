function result = ncut(A,k)
    D = full(diag(sum(A)));
    L1 = D^(-1/2) * (D-A) * D^(-1/2); %A has no weight
    [V,~] = eigs(L1,k,'sm'); %sm means the smallest
    result = kmeans(V,k);
end