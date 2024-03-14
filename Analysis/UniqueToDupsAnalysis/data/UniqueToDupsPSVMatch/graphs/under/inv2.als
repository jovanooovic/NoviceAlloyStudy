adj & ~adj in iden
-- div,6
no adj or !(~adj=adj)
-- div,1
all n : Node | n not in n.adj
-- div,1
all n : Node | n not in adj.n
-- div,1
all n:Node, n2:n.adj | not n in n2
-- div,1
all n1, n2: Node | (n1 -> n2 in adj) implies (n2 -> n2 not in adj)
-- div,1
all disj n1, n2: Node | n1 in n2.adj => n2 not in n1.adj
-- div,2
all x, y : Node | x->y in adj and y->x in adj implies y = x
-- div,1
all disj n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
not some disj n1, n2:Node | n1->n2 in adj and n2->n1 in adj
-- div,1
all n, n1 : Node | n->n1 in adj and n1->n in adj => n1 = n
-- div,2
all n, n1 : Node | n->n1 in adj and n1->n in adj => n = n1
-- div,1
all n, n1 : Node | n->n1 in adj and n1->n in adj => n1 != n
-- div,1
all n1: Node, n2: Node | n1 -> n2 in adj implies n2 -> n2 not in adj
-- div,4
all disj n, n1 : Node | n->n1 in adj and n1->n in adj => n1 = n
-- div,1
all n1:Node | some n2:Node | n2 in n1.adj implies n1 not in n2.adj
-- div,1
all disj n1,n2: Node | n1 in n2.adj implies n2 not in n1.adj and n2 in n1.adj implies n1 not in n2.adj
-- div,1
