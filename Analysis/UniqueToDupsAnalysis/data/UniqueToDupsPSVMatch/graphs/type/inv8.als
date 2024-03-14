adj
-- div,1
^adj
-- div,2
adj.^adj
-- div,4
Node.^adj
-- div,1
Node.^adj in adj
-- div,1
all n : Node | n.adj.adj.Node
-- div,1
all a:Node , b:Node | b in a.next*adj
-- div,1
all a1,a2,a3:adj | some a1.a2
-- div,1
all n : Node | n->n.adj.adj.Node in adj
-- div,1
all n : Node | n->(n.adj.adj.Node) in adj
-- div,1
all n : Node | (n->(n.adj.adj.Node)) in adj
-- div,1
all a,b,c:Node | a->b->c in adj implies a->c in adj
-- div,1
all n : Node | let n1 = n.adj.adj.Node | n->n1 in adj
-- div,1
let n1 = n.adj.adj.Node | (all n : Node | n->n1 in adj)
-- div,1
all n,o,p:Node | n->o and o->p in adj implies n->p in adj
-- div,1
all n1, n2 : Node | (n2 in n1.Node.Node) implies (n2 in n1.Node)
-- div,2
all n1, n2, n3 : Node | ((n1->n2) and (n2->n3)) implies (n1->n3)
-- div,5
all a:Node , b:Node, c:Node | a->b->c in adj implies a->c in adj
-- div,2
all v1,v2,v3:Node | v1->v2 in adj and v2->v3 in adj implies v1->v3
-- div,1
all n1, n2, n3 : Node | (some(n1->n2) and some(n2->n3)) implies (n1->n3)
-- div,1
all  a,b,c : Node | a!= b !=c => (a in adj.b and c in b.adj) => c in a.adj
-- div,1
all disj n1,n2,n3: Node | (n1->n2 and n3->n2) in adj implies n1->n3 in adj
-- div,1
all a:Node , b:Node, c:Node | a->b in adj & b->c in adj implies a->c in adj
-- div,1
all disj n1,n2,n3: Node | (n1->n2 and n3->n2) in adj implies (n1->n3 in adj)
-- div,1
all a:Node , b:Node, c:Node | (a->b in adj & b->c in adj) implies a->c in adj
-- div,1
all n1, n2, n3 : Node | (n1->n2 in adj & n2->n3 in adj) implies (n1->n3 in adj)
-- div,2
all n1, n2, n3 : Node | ((n1->n2 in adj) & (n2->n3 in adj)) implies (n1->n3 in adj)
-- div,2
all n1, n2, n3 : Node | n1->n2 in adj and n2->n3 in adj implies n1->n3 in adj
Node.^adj
-- div,1
all disj n1,n2,n3: Node | (n1 in (n3.adj or ~(n3.adj)) and n2 in n3.adj) implies (n1 in n2.adj or n2 in n1.adj)
-- div,1
