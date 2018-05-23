function [Igraph,Inum] = ICM(Graph,Initnodes,iterTime)
    L = length(Graph);
    Igraph = zeros(1,L); %Igraph：最后输出的迭代节点图
    Left = zeros(1,L);   %left：左边的图
    Tried = zeros(L);
    Inum = zeros(1,iterTime);
    
    disp(Initnodes);
    for i = 1:length(Initnodes)
        Left(Initnodes(i)) = 1;
    end
    
    for t= 1:iterTime
        Newnodes = Left;
        for i = 1:length(Left)
            if Left(i) == 1 
                for j = 1:length(Left)
                    if (Tried(i,j) == 0 && Newnodes(j) == 0)
                        if (Graph(i,j) > 0 && rand() < Graph(i,j))
                            Newnodes(j) = 1;
                        else
                            Tried(i,j) = 1;
                        end
                    end
                end
            end
        end
        Left = Newnodes;
        Inum(t) = sum(Left);
        Igraph(t,:) = Left;
    end