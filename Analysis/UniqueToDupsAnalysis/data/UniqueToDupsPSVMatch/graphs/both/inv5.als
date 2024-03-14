no adj - iden
-- div,1
Node not in Node.adj
-- div,1
adj.~adj not in iden
-- div,2
Node not in Node . ^adj
-- div,1
all n : Node | n.adj not in n
-- div,1
all a : Node | a -> a in adj
-- div,1
all n: Node | n->n in adj
-- div,1
all n: Node | n in n.^adj
-- div,1
all disj n1,n2: Node | not ((n2 in n1.adj) and (n1 in n2.^adj))
-- div,1
