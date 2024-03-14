no adj=~adj
-- div,1
no adj = ~adj
-- div,3
no adj  =~adj
-- div,1
no adj && ~adj
-- div,1
no (adj = adj)
-- div,1
no (~adj = adj)
-- div,2
no (adj = ~adj)
-- div,2
none adj & ~adj
-- div,1
no adj and ~adj
-- div,2
adj # adj + ~adj
-- div,1
adj implies ~adj
-- div,1
none adj && ~adj
-- div,1
adj implies no adj
-- div,1
~adj implies no adj
-- div,1
adj implies (no ~adj)
-- div,1
all n: Node | no n.adj.n
-- div,1
all n: Node | no n.adj[n]
-- div,1
all n1:Node | no n1.adj.n1
-- div,1
all adj:Node | adj != ~adj
-- div,1
all a: adj | a not in adj
-- div,1
all n:Node | n.adj not adj.n
-- div,1
all adj:Node | not adj = ~adj
-- div,1
all n:Node | no n.adj in adj.n
-- div,1
all e: adj | e not in ~adj
-- div,1
all e: adj | ~e not in adj
-- div,1
not some n1, n2: Node | n1->n2 and n2->n1
-- div,1
all x, y : Node | x->y in adj implies no y->x in adj
-- div,1
all n:adj |all x:n.adj | n not in x.adj
-- div,1
all n1, n2 : Node | (n1->n2) in adj implies ~(n2->n1)
-- div,1
all x, y : Node | x->y in adj implies no (y->x in adj)
-- div,1
all n1,n2:Node | n1->n2 in adj implies no n2->n1 in adj
-- div,2
all n1, n2: Node | n1->n2 in adj implies no n1->n2 in adj
-- div,1
all n1, n2: Node | n1.n2 in Node implies no n1.n2 in Node
-- div,1
all v1, v2 : Node | v1->v2 in adj implies no v2->v1 in adj
-- div,1
all n:adj, x:adj | n in x.adj => x not in n.adj
-- div,2
