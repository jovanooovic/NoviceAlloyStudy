abstract sig Status {}
one sig Visited, Unvisited extends Status {}

sig Node {
	vizinhos : set Status->Node
}

fact {
 all n1,n2: Node | n1 in n2.vizinhos.Status implies n1 != n2
}
