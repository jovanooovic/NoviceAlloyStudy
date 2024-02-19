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

}

//SECRET
pred undirectedO {
	adj = ~adj
}

/*
The graph is oriented, ie, contains no symmetric edges.
http://mathworld.wolfram.com/OrientedGraph.html
*/
pred oriented {

}

//SECRET
pred orientedO {
	no adj & ~adj
}

/*
The graph is acyclic, ie, contains no directed cycles.
http://mathworld.wolfram.com/AcyclicDigraph.html
*/
pred acyclic {

}

//SECRET
pred acyclicO {
	all n : Node | n not in n.^adj
}

/*
The graph is complete, ie, every node is connected to every other node.
http://mathworld.wolfram.com/CompleteDigraph.html
*/
pred complete {

}

//SECRET
pred completeO {
	adj = Node -> Node
}

/*
The graph contains no loops, ie, nodes have no transitions to themselves.
http://mathworld.wolfram.com/GraphLoop.html
*/
pred noLoops {

}

//SECRET
pred noLoopsO {
	no adj & iden
}

/*
The graph is weakly connected, ie, it is possible to reach every node from every node ignoring edge direction.
http://mathworld.wolfram.com/WeaklyConnectedDigraph.html
*/
pred weaklyConnected {

}

//SECRET
pred weaklyConnectedO {
	all n:Node | Node = n.*(adj+~adj)
}

/*
The graph is strongly connected, ie, it is possible to reach every node from every node considering edge direction.
http://mathworld.wolfram.com/StronglyConnectedDigraph.html
*/
pred stonglyConnected {

}

//SECRET
pred stonglyConnectedO {
	all n:Node | Node = n.*adj
}

/*
The graph is transitive, ie, if two nodes are connected through a third node, they also are connected directly.
http://mathworld.wolfram.com/TransitiveDigraph.html
*/
pred transitive {

}

//SECRET
pred transitiveO {
	adj = ^adj
}

//SECRET
check undirected {undirected iff undirectedO}
//SECRET
check oriented {oriented iff orientedO}
//SECRET
check acyclic {acyclic iff acyclicO}
//SECRET
check complete {complete iff completeO}
//SECRET
check noLoops {noLoops iff noLoopsO}
//SECRET
check weaklyConnected {weaklyConnected iff weaklyConnectedO}
//SECRET
check stonglyConnected {stonglyConnected iff stonglyConnectedO}
//SECRET
check transitive {transitive iff transitiveO}
