not iden & ^adj
-- div,1
Node.adj in iden
-- div,1
Node.^adj in iden
-- div,1
Node.^adj not in iden
-- div,1
all n: Node | no n->n in adj
-- div,1
adj.adj implies not adj = adj
-- div,1
all a:Node | a not int a.^adj
-- div,2
all n: Node | n not in n.^(n.adj)
-- div,1
all a:Node | no a.^adj & ~(a.^adj)
-- div,1
all a:Node | no ^a.adj & ~(^a.adj)
-- div,1
all a:Node | no ^(a.adj) & ~(^a.adj)
-- div,1
all v1, v2, v3 : Node | v1->v2 in adj and v2->v3 implies not v1 = v3
-- div,1
all x, y : Node | x->y in adj implies y->x not in adj and no ^(x.adj) & x
-- div,1
inv2
all n : Node | no n.Node
}

pred inv2{
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
