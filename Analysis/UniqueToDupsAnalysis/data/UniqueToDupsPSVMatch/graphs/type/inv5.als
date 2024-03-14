~iden
-- div,1
not iden
-- div,2
Node.adj
-- div,1
adj no iden
-- div,1
not Node.adj
-- div,1
no Node.~Node
-- div,1
no iden ^ adj
-- div,1
no iden in adj
-- div,1
no ^adj in iden
-- div,1
adj = Node -> ~Node
-- div,1
no iden & Node.^adj
-- div,1
no iden & Node:>^adj
-- div,1
all a : Node | a -> a
-- div,1
Node->Node - iden
-- div,1
all n:Node | n not in ^adj
-- div,1
all n: Node | no n->n in adj
-- div,1
all n:Node | no (n in n.^adj)
-- div,1
all n : Node | n not in ^n.adj
-- div,1
all a: Node.adj | a not in ^adj
-- div,1
all a: Node.adj | a not in adj.^adj
-- div,1
all n1, n2: Node | no n1->n2->n1 in adj
-- div,1
all n1, n2: Node | no n1->n2->n1 in Node
-- div,1
all x, y : Node | x->y in adj implies no y->x in adj
-- div,1
