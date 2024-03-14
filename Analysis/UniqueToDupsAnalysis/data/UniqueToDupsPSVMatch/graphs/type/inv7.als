Node in ^adj
-- div,2
*adj in Node.adj
-- div,1
^(adj + ~adj)
-- div,7
all n: Node | n.adj
-- div,1
all n: Node | n.adj.Node
-- div,1
all a:Node | adj = a.^adj
-- div,1
all n:Node | Node in n.*Node
-- div,1
all n : Node | some n<:adj & n
-- div,1
all n : Node | some Node<:adj & n
-- div,1
all n : Node | (some adj) & (Node = (n.^adj))
-- div,2
all v1, v2 : Node | v1->v2 in adj & v2->v1 in adj
-- div,1
inv4 & inv2
}

pred inv2{
no ~adj & adj
}

pred inv4{
adj = Node -> Node
-- div,1
