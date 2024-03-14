-- equiv pair start,24
no adj & iden
-- div,2
no iden & ~adj
-- div,1
no n:Node | n in n.adj
-- div,2
all x: Node | x not in x.adj
-- div,1
all n : Node | n not in adj.n
-- div,2
all n: Node| n !in n.adj
-- div,6
all n: Node | n->n not in adj
-- div,1
no p: Node | p in p.~adj
-- div,1
all v : Node | no v.adj & v
-- div,1
all n:Node | n not in n.~adj
-- div,2
all v1, v2 : Node | v1->v2 in adj implies not v1->v1 in adj
-- div,1
all v1, v2 : Node | v1->v2 in adj and v2->v1 in adj implies not v1 = v2 & v1
-- div,2
all v1, v2 : Node | v1->v2 in adj implies not (v1->v1 in adj and v2->v2 in adj)
-- div,1
all v1, v2 : Node | v1->v2 in adj implies not (v2->v1 in adj and v2->v2 in adj)
-- div,1
-- equiv pair end
-- equiv pair start,9
iden not in ^adj
-- div,5
not iden in ^adj
-- div,2
iden not in (^adj - adj)
-- div,1
iden not in ^adj or iden in adj
-- div,1
-- equiv pair end
-- equiv pair start,1
no n:Node | Node in n.adj
-- div,1
-- equiv pair end
-- equiv pair start,2
all n : Node | n != n.adj
-- div,2
-- equiv pair end
-- equiv pair start,1
no n:Node | Node in n.^adj
-- div,1
-- equiv pair end
-- equiv pair start,10
all x, y : Node | x->y in adj implies y->x not in adj
-- div,4
all x, y : Node | x->y in adj implies ^(y->x) not in adj
-- div,1
all x, y : Node | ^(x->y) in adj implies (y->x) not in adj
-- div,1
all x, y : Node | ^(x->y) in adj implies ^(y->x) not in adj
-- div,1
all v1, v2 : Node | v1->v2 in adj implies not v2->v1 in adj
-- div,1
inv2
}

pred inv2{
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
all v1, v2, v3 : Node | v1->v2 in adj and v2->v3 in adj implies not v1 = v3
-- div,1
-- equiv pair end
-- equiv pair start,1
all n1:Node| some n2:Node | n1->n2 in adj implies n2->n1 not in adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all v1, v2 : Node | v1->v2 in adj and v2->v1 in adj implies v1 = v2 & v1
-- div,1
-- equiv pair end
