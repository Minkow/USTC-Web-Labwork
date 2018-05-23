graph = getMatrix('graph.txt');
itertime = 1;
tRan = zeros(itertime);
tDeg = zeros(itertime);
tClose = zeros(itertime);
tGreedy = zeros(itertime);
tranFile = fopen('randomtime.txt', 'w');
ranFile = fopen('random.txt','w');
tdegFile = fopen('degreetime.txt', 'w');
degFile = fopen('degree_centrality.txt','w');
tcloFile = fopen('closetime.txt', 'w');
cloFile = fopen('closeness_centrality.txt','w');
tgreFile = fopen('greedytime.txt', 'w');
greFile = fopen('greedy.txt','w');

for k = 1:20
    disp(k);
    tic;
    Ranseeds = randomseeds(graph, k);
    time = toc;
    if k>1
        for j = 1:k-1
            fprintf(ranFile,'%d,',Ranseeds(j));
        end
    end
    fprintf(ranFile,'%d;',Ranseeds(k));
    [~,tRan(k,:)] = ICM(graph,Ranseeds(1:k),itertime);
    fprintf(ranFile,'%d\r\n',tRan(k,itertime));
    fprintf(tranFile, '%d : \t%f seconds\r\n',k, time);
    disp('random finished');
    
    tic;
    seedsDeg = degree_centrality(graph, k);
    time = toc;
    if k>1
        for j = 1:k-1
            fprintf(degFile,'%d,',seedsDeg(j));
        end
    end
    fprintf(degFile,'%d;',seedsDeg(k));
    [~,tDeg(k,:)] = ICM(graph,seedsDeg(1:k),itertime);
    fprintf(degFile,'%d\r\n',tDeg(k,itertime));
    fprintf(tdegFile, '%d : \t%f seconds\r\n',k, time);
    disp('degree_centrality finished');
   
    tic;
    seedsClose = closeness_centrality(graph, k);
    time = toc;
    if k>1
        for j = 1:k-1
            fprintf(cloFile,'%d,',seedsClose(j));
        end
    end
    fprintf(cloFile,'%d;',seedsClose(k));
    [~,tClose(k,:)] = ICM(graph,seedsClose(1:k),itertime);
    fprintf(cloFile,'%d\r\n',tClose(k,itertime));
    fprintf(tcloFile, '%d : \t%f seconds\r\n',k, time);
    disp('closeness_centrality finished');
  
    tic;
    seedsGreedy = greedy(graph,k);
    time = toc;
    if k>1
        for j = 1:k-1
            fprintf(greFile,'%d,',seedsGreedy(j));
        end
    end
    fprintf(greFile,'%d;',seedsGreedy(k));
    [~,tGreedy(k,:)] = ICM(graph,seedsGreedy(1:k),itertime);
    fprintf(greFile,'%d\r\n',tGreedy(k,itertime)); 
    fprintf(tgreFile, '%d : \t%f seconds\r\n',k, time);
    disp('greedy finished');
end
fclose(ranFile);
fclose(degFile);
fclose(cloFile);
fclose(greFile);