function seeds = degree_centrality(G,k)
    V = sum(G);
    [~,vec] = sort(V,'descend');
    seeds = vec(1:k); %max k values