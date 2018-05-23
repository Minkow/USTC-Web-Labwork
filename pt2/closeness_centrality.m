function seeds = closeness_centrality(G,k)
    A = G;
    A(A > 0) = 1;%ת��Ϊ����ͼ
    B = digraph(A);
    num = nnz(G);
    edgecost = zeros(1,nnz(G));
    for i = 1:num
        [x,y] = findedge(B,i);
        edgecost(i) = G(x,y);
    end
    V = centrality(B,'outcloseness','Cost',edgecost);
    [~,vec] = sort(V.','descend'); %�����ȻҪ��.'��ת�ã�һ���±�
    seeds = vec(1:k);