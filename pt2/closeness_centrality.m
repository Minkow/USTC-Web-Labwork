function seeds = closeness_centrality(G,k)
    A = G;
    A(A > 0) = 1;%转化为有向图
    B = digraph(A);
    num = nnz(G);
    edgecost = zeros(1,nnz(G));
    for i = 1:num
        [x,y] = findedge(B,i);
        edgecost(i) = G(x,y);
    end
    V = centrality(B,'outcloseness','Cost',edgecost);
    [~,vec] = sort(V.','descend'); %这里居然要用.'来转置，一脸懵逼
    seeds = vec(1:k);