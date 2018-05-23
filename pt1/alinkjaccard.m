function result = alinkjaccard(A,k)
    D = pdist(A,'jaccard');
    X = linkage(D,'average');
    result = cluster(X,k);
end