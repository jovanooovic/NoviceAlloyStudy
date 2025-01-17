sig Node {
	adj : set Node
}
pred inv4 {
all x, y: Node | x in y.^(adj) and y in x.^(adj)
}

pred inv4c {
	adj = Node -> Node
}

check correct { inv4 <=> inv4c}
pred under { inv4 and !inv4c}
pred over { !inv4 and inv4c}
run over 
run under 


