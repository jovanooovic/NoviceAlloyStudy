/* 
Each node as a set of outgoing edges, representing a directed graph without multiple edged.
*/
sig Node {
	adj : set Node
}

/*
The graph is undirected, ie, edges are symmetric.
http://mathworld.wolfram.com/UndirectedGraph.html
*/
pred undirected {
  	all n1,n2 :Node | n1->n2 in adj   implies n2->n1 in adj
}
pred undirected1 {
  	all n:Node |  (n.adj  in adj.n) 
	
}

pred undirected2 {
  adj in ~adj
}

/*
The graph is oriented, ie, contains no symmetric edges.
http://mathworld.wolfram.com/OrientedGraph.html
*/
pred oriented1 {
	all n1,n2 :Node | n1->n2 in adj   implies n2->n1 not in adj
}


pred oriented2 {
	adj not in ~adj
}
pred oriented3 {
	no (adj & ~adj)
}


/*
The graph is acyclic, ie, contains no directed cycles.
http://mathworld.wolfram.com/AcyclicDigraph.html
*/
pred acyclic {
 	all n :Node | n not in n.^adj 
}

/*
The graph is complete, ie, every node is connected to every other node.
http://mathworld.wolfram.com/CompleteDigraph.html
*/
pred complete {
	all  n1,n2 :Node | n2 in  n1.^adj 
}

/*
The graph contains no loops, ie, nodes have no transitions to themselves.
http://mathworld.wolfram.com/GraphLoop.html
*/
pred noLoops {
	all n1:Node | n1->n1 not in adj
}

pred noLoops1 {
	all n1:Node | n1  not in n1.adj 
}

/*
The graph is weakly connected, ie, it is possible to reach every node from every node ignoring edge direction.
http://mathworld.wolfram.com/WeaklyConnectedDigraph.html
*/
pred weaklyConnected {
	Node in Node.adj  + adj.Node
}

/*
The graph is strongly connected, ie, it is possible to reach every node from every node considering edge direction.
http://mathworld.wolfram.com/StronglyConnectedDigraph.html
*/
pred stonglyConnected {
´	Node in Node.adj & adj.Node 
}

/*
The graph is transitive, ie, if two nodes are connected through a third node, they also are connected directly.
http://mathworld.wolfram.com/TransitiveDigraph.html
*/
pred transitive {
	all n1,n2,n3 :Node | (n1->n2 in adj and n2->n3 in adj) implies n1->n3 in adj 
}


check {stonglyConnected } for 7
