function result = modularity( A, k )
    d = (sum(A));
    m = nnz(A);
    B = A - d * d'/m;
    [V,~] = eigs(B,k);
    result = kmeans(V,k);
end