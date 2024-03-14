sig Node {
	adj : set Node
}
pred inv8 {
all disj a,b,c : Node | (a in adj.b and c in b.adj) => c in a.adj
}

pred inv8c {
	adj = ^adj
}

check correct { inv8 <=> inv8c}
pred under { inv8 and !inv8c}
pred over { !inv8 and inv8c}
run over 
run under 


