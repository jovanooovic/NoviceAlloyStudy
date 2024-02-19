
sig Node {
	adj : set Node
}

/*
The graph is undirected, ie, edges are symmetric.
http://mathworld.wolfram.com/UndirectedGraph.html
*/
pred undirected {
	all disj n1,n2 : Node | n2 in n1.adj => n2 in adj.n1
}

/*
The graph is oriented, ie, contains no symmetric edges.
http://mathworld.wolfram.com/OrientedGraph.html
*/
pred oriented {
	all n : Node | n not in n.adj.adj
  	
  	no (iden & adj.adj)
}

/*
The graph is acyclic, ie, contains no directed cycles.
http://mathworld.wolfram.com/AcyclicDigraph.html
*/
pred acyclic {
	all n : Node | n not in n.^adj
  	
  	no (^adj & iden)
  	
  	iden - ^adj = iden
}

/*
The graph is complete, ie, every node is connected to every other node.
http://mathworld.wolfram.com/CompleteDigraph.html
*/
pred complete {
  	
	all n : Node | n.adj = Node
  	
  	all n1, n2 : Node | n2 in n1.adj
  	
    
  	all n : Node | n.adj = Node - n
}

/*
The graph contains no loops, ie, nodes have no transitions to themselves.
http://mathworld.wolfram.com/GraphLoop.html
*/
pred noLoops {
	no iden & adj
  	
	all n : Node | n not in n.adj
}

/*
The graph is weakly connected, ie, it is possible to reach every node from every node ignoring edge direction.
http://mathworld.wolfram.com/WeaklyConnectedDigraph.html
*/
pred weaklyConnected {
	all disj n1, n2 : Node | n2 in n1.^({n1 : Node, n2 : Node | n2 in n1.adj or n1 in n2.adj})
}

/*
The graph is strongly connected, ie, it is possible to reach every node from every node considering edge direction.
http://mathworld.wolfram.com/StronglyConnectedDigraph.html
*/
pred stonglyConnected {
	all disj n1, n2 : Node | n2 in n1.^adj
}

/*
The graph is transitive, ie, if two nodes are connected through a third node, they also are connected directly.
http://mathworld.wolfram.com/TransitiveDigraph.html
*/
pred transitive {
	
  	all  a,b,c : Node | (a in adj.b and c in b.adj) => c in a.adj
    
  	all n1,n2 : Node | n2 in n1.adj.adj => n2 in n1.adj
    
  	all disj n1,n2 : Node | n2 in n1.adj.adj => n2 in n1.adj
}
