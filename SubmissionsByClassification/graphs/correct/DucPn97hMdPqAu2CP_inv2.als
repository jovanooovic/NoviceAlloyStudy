sig Node {
	adj : set Node
}
pred inv2 {
all n,m: Node | m in n.adj => n not in m.adj
}

pred inv2c {
	no adj & ~adj
}

check correct { inv2 <=> inv2c}
pred under { inv2 and !inv2c}
pred over { !inv2 and inv2c}
run over 
run under 


