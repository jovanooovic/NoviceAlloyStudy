0 = 1
-- div,1
no adj
-- div,4
no ~adj
-- div,3
no adj.adj
-- div,1
no Node.adj
-- div,1
no adj . ~adj
-- div,1
no Node.~adj
-- div,1
no adj + ~adj
-- div,4
adj & ~adj = iden
-- div,1
no adj.~adj & iden
-- div,1
no iden & adj.~adj
-- div,3
no (Node.adj & Node.(~adj))
-- div,1
all n : Node | no adj.n
-- div,2
all n : Node | no adj:>n
-- div,1
all n : Node | no (n.adj & (~adj).n)
-- div,1
all e1 : Node | no Node.adj & adj.Node
-- div,1
all n, m : Node | n->m in adj iff m->n not in adj
-- div,1
all n, n1 : Node | n->n1 in adj iff n1->n not in adj
-- div,1
all n1,n2:Node | n1 in n2.adj implies n2 not in adj.n1
-- div,1
all n1,n2: Node | n1 in n2.adj iff n2 not in n1.adj
-- div,1
all n1,n2:Node | n1 in n2.adj <=> n2 in (univ - n1.adj)
-- div,1
no n : Node, n2 : n.adj | n in n2.adj
not inv1
}

pred inv1{
all n : Node, n2 : n.adj | n in n2.adj
-- div,2
