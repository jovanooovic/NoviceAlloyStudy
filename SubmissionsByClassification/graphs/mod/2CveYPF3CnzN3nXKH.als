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

/*
The graph is oriented, ie, contains no symmetric edges.
http://mathworld.wolfram.com/OrientedGraph.html
*/
pred oriented {

}

/*
The graph is acyclic, ie, contains no directed cycles.
http://mathworld.wolfram.com/AcyclicDigraph.html
*/
pred acyclic {

}

/*
The graph is complete, ie, every node is connected to every other node.
http://mathworld.wolfram.com/CompleteDigraph.html
*/
pred complete {

}

/*
The graph contains no loops, ie, nodes have no transitions to themselves.
http://mathworld.wolfram.com/GraphLoop.html
*/
pred noLoops {

}

/*
The graph is weakly connected, ie, it is possible to reach every node from every node ignoring edge direction.
http://mathworld.wolfram.com/WeaklyConnectedDigraph.html
*/
pred weaklyConnected {

}

/*
The graph is strongly connected, ie, it is possible to reach every node from every node considering edge direction.
http://mathworld.wolfram.com/StronglyConnectedDigraph.html
*/
pred stonglyConnected {

}



assert union {
  all s: set univ, p, q: univ -> univ | s.(p + q) = s.p + s.q
}

assert difference {
  all s: set univ, p, q: univ -> univ | s.(p - q) = s.p - s.q
}

assert intersection {
  all s: set univ, p, q: univ -> univ | s.(p & q) = s.p & s.q
}


check union for 4
check difference for 2
check intersection for 2
