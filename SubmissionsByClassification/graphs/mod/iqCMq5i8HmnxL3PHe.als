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
	all a,b : Node | b in a.adj implies a in b.adj
}

/*
The graph is oriented, ie, contains no symmetric edges.
http://mathworld.wolfram.com/OrientedGraph.html
*/
pred oriented {
	all a,b : Node | b in a.adj implies a not in b.adj
}

/*
The graph is acyclic, ie, contains no directed cycles.
http://mathworld.wolfram.com/AcyclicDigraph.html
*/
pred acyclic {
	all n : Node | n not in n.^adj
}

/*
The graph is complete, ie, every node is connected to every other node.
http://mathworld.wolfram.com/CompleteDigraph.html
*/
pred complete {
	all a,b : Node | a in b.adj
}

/*
The graph contains no loops, ie, nodes have no transitions to themselves.
http://mathworld.wolfram.com/GraphLoop.html
*/
pred noLoops {
	all n : Node | n not in n.adj
}

fun conn[a : Node] : set Node {
  a.adj + adj.a
}

/*
The graph is weakly connected, ie, it is possible to reach every node from every node ignoring edge direction.
http://mathworld.wolfram.com/WeaklyConnectedDigraph.html
*/
pred weaklyConnected {
	all a, b : Node | a in b.*conn
}

/*
The graph is strongly connected, ie, it is possible to reach every node from every node considering edge direction.
http://mathworld.wolfram.com/StronglyConnectedDigraph.html
*/
pred stonglyConnected {
	all a, b : Node | a in b.*adj
}

/*
The graph is transitive, ie, if two nodes are connected through a third node, they also are connected directly.
http://mathworld.wolfram.com/TransitiveDigraph.html
*/
pred transitive {
	all a,b,c : Node | c in b.adj and b in a.adj implies c in a.adj
}
