function result = girvannewman( A, k )
    [result,size] = components( A );
    while length(size) < k
        [~,E] = betweenness_centrality(A);
        [x,y] = find(E == max(max(E)),1);
        A(x,y) = 0;
        A(y,x) = 0;
        [result,size] = components( A );
    end
end