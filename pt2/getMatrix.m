function graph = getMatrix(s)
    r = importdata('graph.txt');
    nodes = r(1);
    r(1,:)=[];
    i = r(:,1)' + 1;
    j = r(:,2)' + 1;
    p = r(:,3)';
    graph = full(sparse(i,j,p));
    graph = [graph;zeros(1,nodes)];
end 