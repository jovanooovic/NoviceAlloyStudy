-- equiv pair start,11
Node.^adj in Node
-- div,1
Node.adj.adj in Node.adj
-- div,1
all a,b,c:Node | a->b in adj and a->c in adj implies a->b in adj
-- div,1
all n1, n2, n3 : Node | (some(n1->n2) and some(n2->n3)) implies some(n1->n3)
-- div,2
all n1 : Node | some n2 : Node | n2 in n1.adj implies n1 in n2.adj
-- div,1
all n1, n2, n3:Node | n1->n2 in adj and n2->n3 in adj => n1->n2 in adj
-- div,1
all e1, e2, e3 : Node | e1 -> e2 in adj and e2 -> e3 in adj implies e1 -> e2 in adj
-- div,2
all n, n2 : Node | some n1 : Node | n->n1 in adj and n1->n2 in adj => n->n2 in adj
-- div,1
all e1, e3 : Node | some e2 : Node | (e1 -> e2 in adj and e2 -> e3 in adj) implies e1 -> e2 in adj
-- div,1
-- equiv pair end
-- equiv pair start,7
all disj n1,n2 : Node | n2 in n1.adj.adj => n2 in n1.adj
-- div,1
all disj a,b,c : Node | (a in adj.b and c in b.adj) => c in a.adj
-- div,1
all disj n1,n2,n3 :Node | (n1->n2 in adj and n2->n3 in adj) implies n1->n3 in adj
-- div,1
all  a,b,c : Node | (a!= b and  a !=c) => (a in adj.b and c in b.adj) => c in a.adj
-- div,2
all  a,b,c : Node | (a!= b and  a !=c and b!=c) => (a in adj.b and c in b.adj) => c in a.adj
-- div,2
-- equiv pair end
