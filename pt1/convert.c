#include <stdio.h>
#include <stdlib.h>

int main(){
	
	FILE *input_nodes,*output_nodes;
	FILE *input_edges,*output_edges;
	input_nodes=fopen("./egonet_ncut.txt","r");
	output_nodes=fopen("egonet_alinkjaccard_nodes.csv","w+");
	input_edges=fopen("./edge_egonet.txt","r");
	output_edges=fopen("egonet_edges.csv","w+");
	if(!input_nodes||!output_nodes||!input_edges||!output_edges){
		printf("Error:can't open object file.\n");
		exit(1);
	}
	int i;
    int n, m;
    int color;
	fscanf(input_edges, "%d%d", &n, &m);

	fprintf(output_nodes,"Id,Color\n");
	for(i=1;i<=n;i++){
		fscanf(input_nodes,"%d",&color);
		fprintf(output_nodes,"%d,%d\n",i,color);	
	}
	
	int from,to;
	fprintf(output_edges,"Source,Target,Type\n");
	for(i=1;i<=m;i++){
		fscanf(input_edges,"%d %d",&from,&to);
		fprintf(output_edges,"%d,%d,Undirected\n",from,to);
	}
	
	fclose(input_nodes);
	fclose(input_edges);
	fclose(output_nodes);
	fclose(output_edges);
	
	return 0;
}
 

