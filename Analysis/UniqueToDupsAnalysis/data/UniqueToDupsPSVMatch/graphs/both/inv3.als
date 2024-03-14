*adj not in iden
-- div,2
^adj not in iden
-- div,1
Node not in Node.adj
-- div,1
adj not in adj.^adj
-- div,1
Node not in Node.^adj
-- div,1
iden not in (*adj - adj)
-- div,2
no n:Node | n not in n.adj
-- div,1
all n: Node| n in n.adj
-- div,1
some a : Node | a -> a in adj
-- div,1
no n:Node | n not in n.^adj
-- div,1
all n:Node | n in n.^adj
-- div,1
some a,b : Node | a -> a in adj
-- div,1
no n:Node | Node in n.*adj
-- div,1
some n : Node | no n.adj & adj.n
-- div,1
all x, y, z : Node | x->y in adj and z->y in adj implies y = z
-- div,1
all v1, v2, v3 : Node | v1->v2 in adj and v2->v3 in adj implies v1 = v3
-- div,2
all x, y, z : Node | x->y in adj and z->y in adj implies y = z and z = x
-- div,1
all v1, v2, v3 : Node | v1->v2 in adj and v2->v3 in adj implies v1 = v3 & v3
-- div,1
all v1, v2, v3 : Node | v1->v2 in adj and v2->v3 in adj implies v1 = v3 & v1
-- div,1
