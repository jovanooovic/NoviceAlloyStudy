adj=~adj
-- div,67
~adj=adj
-- div,4
adj in ~adj
-- div,9
no adj - ~adj
-- div,7
adj & ~adj = adj
-- div,7
adj = adj + ~adj
-- div,3
adj in adj & ~adj
-- div,1
(adj in ~adj) and (~adj in adj)
-- div,1
all n:Node | n.adj = adj.n
-- div,3
all n:Node | n.adj in adj.n
-- div,2
all n:Node | adj.n in n.adj
-- div,3
all n1 : Node | n1.adj = adj.n1
-- div,1
all n : Node | ~(n->(n.adj)) in adj
-- div,1
all n : Node, a : n.adj | a->n in adj
-- div,2
all n:Node, n2:n.adj | n in n2.adj
-- div,2
all a,b : Node | b in a.adj implies a in b.adj
-- div,1
all x, y: Node | y in x.adj implies x in y.adj
-- div,1
all n,m: Node | m in n.adj => n in m.adj
-- div,2
all x,y:Node | x->y in adj implies y->x in adj
-- div,12
all n,x:Node | n->x in adj implies x->n in adj
-- div,1
all a,b:Node | a->b in adj implies b->a in adj
-- div,5
all a,b:Node | b->a in adj implies a->b in adj
-- div,1
all n, m : Node | n->m in adj iff m->n in adj
-- div,1
all n: Node | all a: n.adj | n in a.adj
-- div,6
all n, n1 : Node | n->n1 in adj => n1->n in adj
-- div,1
all n1, n2: Node | n1 in n2.adj => n2 in n1.adj
-- div,4
all n1,n2:Node | n2 in n1.adj implies n1 in n2.adj
-- div,3
all n1,n2:Node | n1 in n2.adj <=> n2 in n1.adj
-- div,5
all n1, n2: Node | n2 in n1.adj iff n1 in n2.adj
-- div,1
all v1, v2 : Node | v1->v2 in adj implies v2->v1 in adj
-- div,4
all n1, n2 : Node | n1->n2 in adj => n2->n1 in adj
-- div,36
all e1, e2 : Node | e1 -> e2 in adj implies e2 -> e1 in adj
-- div,1
all n1, n2 : Node | n1->n2 in adj <=> n2->n1 in adj
-- div,1
all disj n, n1 : Node | n1 in n.adj <=> n in n1.adj
-- div,1
all disj n, n1 : Node | n->n1 in adj => n1->n in adj
-- div,2
all disj n1,n2 : Node | n2 in n1.adj => n2 in adj.n1
-- div,2
all disj n1, n2 :Node | n1 in n2.adj implies n2 in n1.adj
-- div,3
all disj n1, n2: Node | n2 in n1.adj => n1 in n2.adj
-- div,1
all disj n, n1 : Node | n->n1 in adj <=> n1->n in adj
-- div,2
all disj n1, n2: Node | n2 in n1.adj <=> n1 in n2.adj
-- div,1
all disj n1,n2: Node | n1 in n2.adj iff n2 in n1.adj
-- div,3
all disj n1,n2: Node |n1->n2 in adj implies n2->n1 in adj
-- div,3
all a:Node,b:Node | a->b in adj implies b->a in adj
-- div,1
all n:Node, n2:Node| n2 in n.adj => n in n2.adj
-- div,3
all n : Node, a : n.adj | n->a in adj implies a->n in adj
-- div,1
all n1,n2:Node | some n1.adj:>n2 implies some n2.adj:>n1
-- div,3
all n1,n2 :Node | n1->n2 in adj  implies n2->n1 in adj
all n:Node |  (n.adj  in adj.n)
-- div,1
