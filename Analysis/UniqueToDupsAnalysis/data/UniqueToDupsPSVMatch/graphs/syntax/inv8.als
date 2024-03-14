all n:Node |
-- div,2
n.adj.adj.Node
-- div,1
Node->n.adj.adj in adj
-- div,1
all e1 | e1.*adj in e1.adj
-- div,1
all n1 : Node | some n2 in n1.adj.adj => n2 in n1.adj
-- div,1
n,nn,nnn : Node | nn in n.adj.adj implies nn in n.adj
-- div,1
all disj, n1,n2 : Node | n2 in n1.adj.adj => n2 in n1.adj
-- div,1
all disj a,b,c : Node | (a in ajd.b and c in b.adj) => c in a.adj
-- div,1
all n1 : Node, some n2 : Node | n2 in n1.adj implies n1 in n2.adj
-- div,1
all n1, n2 : Node | ((n1->n2 in adj) and (n2->n3 in adj)) implies (n1->n3 in adj)
-- div,1
all n1,n2,n3:Node | n1->n2 in trans and n2 -> n3 in trans implies n1->n3 in trans
-- div,1
all n1, n2, n3 : Node | n1->n2 in adj and n2->n3 in adj implies n1->n3 in adj
all Node.^adj
-- div,1
all n1, n2, n3: Node | #{n1,n2,n3} = 3 and n1 in n3.adj and n2 in n3.adj implies n1 -> n2 in adj
-- div,1
all disj n1,n2,n3: Node | ((n1->n2 in adj or n2->n1 in adj) and (n3->n2 in adj or n2->n3 in adj) implies n1->n3 in adj
-- div,1
