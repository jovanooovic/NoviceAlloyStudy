sig Node {
	adj : set Node
}
pred both{
not (directed and inv1)
}

pred inv1{
all n : Node, n2 : n.adj | n in n2.adj
}


