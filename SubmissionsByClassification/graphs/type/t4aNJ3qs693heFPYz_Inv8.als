sig Node {
	adj : set Node
}
pred inv8{
all disj n1,n2,n3: Node | (n1 in (n3.adj or ~(n3.adj)) and n2 in n3.adj) implies (n1 in n2.adj or n2 in n1.adj)
}



