sig Node {
	adj : set Node
}
pred inv4{

all n:Node | n in adj.Node & n in Node.adj
}


