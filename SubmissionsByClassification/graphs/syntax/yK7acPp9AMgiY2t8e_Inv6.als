sig Node {
	adj : set Node
}
pred inv6{
all n: Node | some Node.adj or some Node.~ad in adj)
}


