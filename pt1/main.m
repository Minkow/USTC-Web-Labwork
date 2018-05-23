load('polbooks.mat');
clustering = alinkjaccard(A,k);
%http://blog.sina.com.cn/s/blog_5e73a8fc01013fob.html
dlmwrite('polbooks_alinkjaccard.txt',clustering,'precision','%d','newline','pc');
clustering = girvannewman(A,k);
dlmwrite('polbooks_girvannewman.txt',clustering,'precision','%d','newline','pc');
clustering = rcut(A,k);
dlmwrite('polbooks_rcut.txt',clustering,'precision','%d','newline','pc');
clustering = ncut(A,k);
dlmwrite('polbooks_ncut.txt',clustering,'precision','%d','newline','pc');
clustering = modularity(A,k);
dlmwrite('polbooks_modularity.txt',clustering,'precision','%d','newline','pc');

load('football.mat');
clustering = alinkjaccard(A,k);
dlmwrite('football_alinkjaccard.txt',clustering,'precision','%d','newline','pc');
clustering = girvannewman(A,k);
dlmwrite('football_girvannewman.txt',clustering,'precision','%d','newline','pc');
clustering = rcut(A,k);
dlmwrite('football_rcut.txt',clustering,'precision','%d','newline','pc');
clustering = ncut(A,k);
dlmwrite('football_ncut.txt',clustering,'precision','%d','newline','pc');
clustering = modularity(A,k);
dlmwrite('football_modularity.txt',clustering,'precision','%d','newline','pc');

load('DBLP.mat');
clustering = alinkjaccard(A,k);
dlmwrite('DBLP_alinkjaccard.txt',clustering,'precision','%d','newline','pc');
clustering = girvannewman(A,k );
dlmwrite('DBLP_girvannewman.txt',clustering,'precision','%d','newline','pc');
clustering = rcut(A,k);
dlmwrite('DBLP_rcut.txt',clustering,'precision','%d','newline','pc');
clustering = ncut(A,k);
dlmwrite('DBLP_ncut.txt',clustering,'precision','%d','newline','pc');
clustering = modularity(A,k);
dlmwrite('DBLP_modularity.txt',clustering,'precision','%d','newline','pc');

load('Egonet.mat');
k = 16;
clustering = alinkjaccard(x,k);
dlmwrite('Egonet_alinkjaccard.txt',clustering,'precision','%d','newline','pc');
clustering = rcut(x,k);
dlmwrite('Egonet_rcut.txt',clustering, 'precision','%d','newline','pc');
clustering = ncut(x,k);
dlmwrite('Egonet_ncut.txt',clustering, 'precision','%d','newline','pc');
clustering = modularity(x,k);
dlmwrite('Egonet_modularity.txt',clustering,'precision','%d','newline','pc');
clustering = girvannewman(x,k);
dlmwrite('Egonet_girvannewman.txt',clustering,'precision','%d','newline','pc'); %太慢了，我丢最后了...