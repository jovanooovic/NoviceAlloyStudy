sig Node {
	adj : set Node
}
pred inv1 {
all n1: Node | lone n2: Node | n1 in n2.adj iff n1.adj in n2
}

pred inv1c {
	adj = ~adj
}

check correct { inv1 <=> inv1c}
pred under { inv1 and !inv1c}
pred over { !inv1 and inv1c}
run over 
run under 


