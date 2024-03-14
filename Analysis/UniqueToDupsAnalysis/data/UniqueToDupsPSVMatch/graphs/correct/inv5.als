no adj & iden
-- div,12
no iden & adj
-- div,17
no (iden & adj & ~adj)
-- div,1
no n:Node | n in n.adj
-- div,7
no n:Node | n->n in adj
-- div,4
all n:Node | n not in n.adj
-- div,46
all n:Node | n not in adj.n
-- div,4
all n:Node | n->n not in adj
-- div,13
no n1: Node | n1 in n1.adj
-- div,1
all a:Node | a->a not in adj
-- div,2
all x : Node | not x->x in adj
-- div,2
all n1:Node | n1 not in adj.n1
-- div,2
all v : Node | not v->v in adj
-- div,3
all e1 : Node | e1 not in e1.adj
-- div,2
all n: Node | not n->n in adj
-- div,1
all a:Node | not a->a in adj
-- div,1
all n1:Node | n1->n1 not in adj
-- div,2
all n1: Node | not n1->n1 in adj
-- div,1
no (iden & adj & ~adj)
no (iden & adj)
-- div,1
all x, y: Node | x in y.adj implies x != y
-- div,1
no iden & adj

all n : Node | n not in n.adj
-- div,3
all n1,n2:Node | some n1.adj:>n2 implies n1 != n2
-- div,2
all n: Node | n->n not in adj
all n: Node | n not in n.adj
-- div,1
all n: Node | not n->n in adj
all n: Node | n not in n.adj
-- div,2
