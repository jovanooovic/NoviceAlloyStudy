
sig Node {
\tadj : set Node
}


pred undirected {
  all x, y : Node | x->y in adj implies y->x in adj
}


pred oriented {
  all x, y : Node | x->y in adj implies y->x not in adj
}


pred acyclic {
  all x : Node | no x.(^adj) & x 
}


pred complete {
  all x : Node | x.adj = Node 
}


pred noLoops {
  all x : Node | not x->x in adj
}


pred weaklyConnected {
    all x : Node | Node in x.^adj + x + x.^~adj
}


pred stonglyConnected {
  all x : Node | Node in x.^adj + x
}


pred transitive {
  all x, y, z : Node | x->y in adj and y->z in adj implies x->z in adj

}
