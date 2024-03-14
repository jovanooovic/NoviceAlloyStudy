
sig Node {
	adj : set Node
}


pred undirected {
    no adj - ~adj
	
}


pred oriented {
    no adj & ~adj
	
}


pred acyclic {
	all v : Node | no v.(^adj) & v
}


pred complete {
	adj = Node -> Node
    
}


pred noLoops {
	all v : Node | not v->v in adj
  	
}


pred weaklyConnected {
	all v : Node | Node in v.*(adj + ~adj)
}


pred stonglyConnected {
	all v : Node | Node in v.*adj
}


pred transitive {
  	all v1,v2,v3 : Node | v1->v2 in adj and v2->v3 in adj implies v1->v3 in adj
}
