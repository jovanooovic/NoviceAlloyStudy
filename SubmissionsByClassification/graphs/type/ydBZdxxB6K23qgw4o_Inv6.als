sig Node {
	adj : set Node
}
pred inv6{
all x : Node | Node in ^(x.adj) + ^(adj.x) + x
}


