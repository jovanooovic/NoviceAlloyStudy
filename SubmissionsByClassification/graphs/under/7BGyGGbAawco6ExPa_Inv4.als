sig Node {
	adj : set Node
}
pred inv4 {
all disj n1,n2: Node | ((n1 in n2.*adj))
}

pred inv4c {
	adj = Node -> Node
}

check correct { inv4 <=> inv4c}
pred under { inv4 and !inv4c}
pred over { !inv4 and inv4c}
run over 
run under 


