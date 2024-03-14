-- equiv pair start,6
Node->Node = adj
-- div,1
adj = Node->Node
-- div,1
all n:Node | Node in n.adj
-- div,1
all a,b:Node | a->b in adj
-- div,1
all n:Node | Node in n.~adj
-- div,1
all n1,n2 : Node| n1 in n2.adj
-- div,1
-- equiv pair end
-- equiv pair start,3
*adj = Node->Node
-- div,2
(Node -> Node) = *adj
-- div,1
-- equiv pair end
-- equiv pair start,47
Node->Node in ^adj
-- div,1
all n : Node | n.^adj = Node
-- div,3
all n : Node | Node = n.^adj
-- div,7
all x : Node | Node in x.^adj
-- div,1
all n : Node | Node in n.^adj
-- div,16
all n : Node | Node in ^adj.n
-- div,1
all n1,n2:Node | n2 in n1.^adj
-- div,4
all n1,n2:Node | n1 in n2.^adj
-- div,1
all n1,n2:Node | (n2+n1) in n1.^adj
-- div,1
all a:Node , b:Node| b in a.^adj
-- div,1
all n1:Node | n1.^adj:>Node = Node
-- div,2
all n : Node | (some adj) and (Node = (n.^adj))
-- div,1
all n : Node | Node in n.^adj and some adj
-- div,3
all n : Node | (some adj) && Node in n.^adj
-- div,1
all n : Node | (some n.adj) and (Node = (n.^adj))
-- div,1
all n : Node | some n.adj && Node in n.^adj
-- div,2
all n:Node, x:Node| n in x.^adj && x in n.^adj
-- div,1
-- equiv pair end
-- equiv pair start,3
all n1, n2 : Node | n2 in ((n1.^adj)-n1)
-- div,1
all n : Node | Node in n.^adj and iden in adj
-- div,1
inv4 and inv2
}

pred inv2{
no ~adj & adj
}

pred inv4{
adj = Node -> Node
-- div,1
-- equiv pair end
-- equiv pair start,1
all n : Node | Node in n.^adj and n->n in adj
-- div,1
-- equiv pair end
