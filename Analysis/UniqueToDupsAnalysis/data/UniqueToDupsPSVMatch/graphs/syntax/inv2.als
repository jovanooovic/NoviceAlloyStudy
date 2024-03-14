all
-- div,1
all n:Node
-- div,1
no adj & -adj
-- div,7
null adj & ~adj
-- div,1
irreflexive[adj]
-- div,1
not (Node.adj = )
-- div,1
null (adj & ~adj)
-- div,1
adj & ~adj = null
-- div,1
antisymmetric[adj]
-- div,1
adj & ~adj in null
-- div,1
a: adj | a not in adj
-- div,1
all adj | adj != ~adj
-- div,1
no iden & graph.~graph
-- div,1
all a: adj | -a not in ~adj
-- div,1
all n1, n2 : Node | n1->n2 in adj =>
-- div,1
all n : Node | n.adj & (~adj).n = null
-- div,1
all n:adj |all x:n.adj => n not in x.adj
-- div,1
all n:adj |all x in n.adj => n not in x.adj
-- div,1
all n1,n2: Node | n1 in n2.adj
-- div,1
all n:adj x:adj | n in x.adj => x not in n.adj
-- div,1
all n1,n2:Node | n1 in n2.adj => n2 in -n1.adj
-- div,1
all n1:Node | n1->n2 in adj implies n2->n1 not in adj
-- div,1
all x, y : Node | x->y in adj and y->x in adj implies y == x
-- div,1
all n1,n2: Node | n1 in n2.adj implies n2 in n1.adj
-- div,1
all n1,n2: Node | n1 in n2.adj implies n2 not in n1.adj
-- div,2
all n, n1 : Node | n->n1 in adj => n1->n not in adj

adj & ~adj in id
-- div,1
