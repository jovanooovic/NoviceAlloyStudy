sig Node {
	adj : set Node
}
pred inv2 {
all disj n, n1 : Node | n->n1 in adj => n1->n not in adj
all n: Node, n1 : n.adj | n not in n1.adj
}

pred inv2c {
	no adj & ~adj
}

check correct { inv2 <=> inv2c}
pred under { inv2 and !inv2c}
pred over { !inv2 and inv2c}
run over 
run under 


