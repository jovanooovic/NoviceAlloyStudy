-- equiv pair start,141
no ^adj & iden
-- div,7
no iden & ^adj
-- div,11
iden - ^adj = iden
-- div,1
no p: Node | p in p.^adj
-- div,1
no n:Node | n in n.^adj
-- div,8
all x: Node | x not in x.^adj
-- div,3
all a:Node| a not in a.^adj
-- div,7
all n: Node| n !in n.^adj
-- div,78
all n : Node | n->n not in ^adj
-- div,1
no n1: Node | n1 in n1.^adj
-- div,2
all n : Node | not (n in n.^adj)
-- div,1
all e1 : Node | e1 not in e1.^adj
-- div,2
all n : Node | no n.^adj & n
-- div,3
all v : Node | no v.^adj & v
-- div,4
all x : Node | no x.(^adj) & x
-- div,3
all n : Node | no (^adj).n & n
-- div,1
all n : Node | n not in  n.adj.*adj
-- div,1
all a:Node | no a.^adj & a.~(^adj)
-- div,1
all n : Node | n not in n.^adj

no (^adj & iden)
-- div,1
all x, y : Node | x->y in adj implies y->x not in adj and no x.(^adj) & x
-- div,1
all n : Node | n not in n.^adj

no (^adj & iden)

iden - ^adj = iden
-- div,3
inv2
all n : Node | n not in n.(^adj)
}

pred inv2{
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
-- equiv pair end
