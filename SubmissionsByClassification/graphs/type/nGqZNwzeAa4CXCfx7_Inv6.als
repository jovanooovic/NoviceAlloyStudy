sig Node {
	adj : set Node
}
pred inv6{
all n : Node | adj in n.(^adj)
}


