sig Node {
	adj : set Node
}
pred inv6 {
all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node) + (n1.^adj:>n1)) = Node
}

pred inv6c {
	all n:Node | Node = n.*(adj+~adj)
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 


