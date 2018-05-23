load('football.mat') ;
outfile = fopen('edge_football.txt','wt');
n = size(A,1);
e = nnz(A)/2;
fprintf(outfile,'%d %d\n',n,e);
for i=1:n
    for j=i+1:n
        if A(i,j)~=0
            fprintf(outfile,'%d %d\n',i,j);
        end
    end
end
fclose(outfile);

load('polbooks.mat') ;
outfile=fopen('edge_polbooks.txt','wt');
n = size(A,1);
e = nnz(A)/2;
fprintf(outfile,'%d %d\n',n,e);
for i=1:n
    for j=i+1:n
        if A(i,j)~=0
            fprintf(outfile,'%d %d\n',i,j);
        end
    end
end
fclose(outfile);

load('DBLP.mat') ;
outfile=fopen('edge_DBLP.txt','wt');
n = size(A,1);
e = nnz(A)/2;
fprintf(outfile,'%d %d\n',n,e);
for i=1:n
    for j=i+1:n
        if A(i,j)~=0
            fprintf(outfile,'%d %d\n',i,j);
        end
    end
end
fclose(outfile);

load('egonet.mat') ;
outfile=fopen('edge_egonet.txt','wt');
n = size(x,1);
e = nnz(x)/2;
fprintf(outfile,'%d %d\n',n,e);
for i=1:n
    for j=i+1:n
        if x(i,j)~=0
            fprintf(outfile,'%d %d\n',i,j);
        end
    end
end
fclose(outfile);
        