function seeds = greedy(G,k)
    Nodes = [];
    for i = 1:k
        influences = zeros(length(G),1); 
        for j = 1:length(G)
            if ismember(j,Nodes) == 0
                [~,inum] = ICM(G,[Nodes,j],1); %��д̰�ģ���д����... ��̰1�ΰ�
                influences(j) = inum(1);
            else
                influences(j) = 0;
            end
        end
        [~,maxInd] = max(influences);
        Nodes = [Nodes,maxInd];
    end
    seeds = Nodes;