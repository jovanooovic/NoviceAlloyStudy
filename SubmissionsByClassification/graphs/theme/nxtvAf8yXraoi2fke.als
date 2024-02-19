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
	all n1,n2:Node | some n1.adj:>n2 implies some n2.adj:>n1
}

/*
The graph is oriented, ie, contains no symmetric edges.
http://mathworld.wolfram.com/OrientedGraph.html
*/
pred oriented {
	all n1,n2:Node | some n1.adj:>n2 implies no n2.adj:>n1
}

/*
The graph is acyclic, ie, contains no directed cycles.
http://mathworld.wolfram.com/AcyclicDigraph.html
*/
pred acyclic {
	all n1:Node | some n1.adj:>Node implies (n1 not in n1.^adj:>Node)
}

/*
The graph is complete, ie, every node is connected to every other node.
http://mathworld.wolfram.com/CompleteDigraph.html
*/
pred complete {
	all n1:Node | n1.adj:>Node = Node
}

/*
The graph contains no loops, ie, nodes have no transitions to themselves.
http://mathworld.wolfram.com/GraphLoop.html
*/
pred noLoops {
	all n1,n2:Node | some n1.adj:>n2 implies n1 != n2
}

/*
The graph is weakly connected, ie, it is possible to reach every node from every node ignoring edge direction.
http://mathworld.wolfram.com/WeaklyConnectedDigraph.html
*/
pred weaklyConnected {
	all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node)) = Node
}

/*
The graph is strongly connected, ie, it is possible to reach every node from every node considering edge direction.
http://mathworld.wolfram.com/StronglyConnectedDigraph.html
*/
pred stonglyConnected {
	all n1:Node | n1.^adj:>Node = Node
}

/*
The graph is transitive, ie, if two nodes are connected through a third node, they also are connected directly.
http://mathworld.wolfram.com/TransitiveDigraph.html
*/
pred transitive {
	all n1,n2,n3:Node | some (n1.adj:>n2) and some (n2.adj:>n3) implies some n1.adj:>n3
}
