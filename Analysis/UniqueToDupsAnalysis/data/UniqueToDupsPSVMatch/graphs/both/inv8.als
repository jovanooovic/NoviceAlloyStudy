adj in adj.adj
-- div,1
all n : Node | some n.^adj
-- div,1
all n : Node | n in adj.n.adj.adj
-- div,1
all n : Node | n in adj.(n.adj.adj)
-- div,1
inv5
}

pred inv5{
no iden & adj

all n : Node | n not in n.adj
-- div,1
all n1, n2: Node | n2 in n1.adj => n1 in n2.*adj
-- div,1
all n1, n2: Node | n2 in n1.adj => n1 in n2.^adj
-- div,1
all n1 : Node | some n2 : n1.adj.adj | n2 in n1.adj
-- div,1
all n1, n2, n3: Node | n1 in n2.adj and n2 in n3.adj implies n3 in n1.adj
-- div,1
all n1, n2, n3: Node | n1 in n2.adj and n2 in n3.adj implies n1 -> n3 in adj
-- div,1
all n1, n2, n3: Node | n1 in n3.adj and n2 in n3.adj implies n1 -> n2 in adj
-- div,2
all disj n1,n2,n3: Node | (n1->n2 in adj and n3->n2 in adj) implies n1->n3 in adj
-- div,1
all n1, n2, n3: Node | n1 in n3.adj and n2 in n3.adj implies n1 -> n2 in adj + ^adj
-- div,1
all n1,n2,n3:Node | n3 in n1.adj && n3 in n2.adj => n2 in n1.adj || n1 in n2.adj
-- div,1
all n1: Node, n2: Node, n3: Node | n1 in n3.adj and n2 in n3.adj implies n1 -> n2 in adj
-- div,1
all disj n1,n2,n3: Node | (n1 in n3.adj and n2 in n3.adj) implies (n1 in n2.adj or n2 in n1.adj)
-- div,1
all disj n1,n2,n3:Node | n3 in n1.adj && n3 in n2.adj => n2 in n1.adj || n1 in n2.adj
-- div,1
all disj n1,n2,n3: Node | n1 in n3.adj and n2 in n3.adj implies n1 in n2.adj or n2 in n1.adj
-- div,1
all disj n1,n2,n3: Node | ((n1->n2 in adj or n2->n1 in adj) and (n3->n2 in adj or n2->n3 in adj)) implies n1->n3 in adj
-- div,1
inv5
all  a,b,c : Node | (a!= b and  a !=c and b!=c) => (a in adj.b and c in b.adj) => c in a.adj
}

pred inv5{
no iden & adj

all n : Node | n not in n.adj
-- div,1
all disj n1,n2,n3: Node | (n1 in n3.adj or n3 in n1.adj) and (n3 in n2.adj or n2 in n3.adj) implies (n1 in n2.adj or n2 in n1.adj)
-- div,1
all n1,n2,n3: Node | ((n1->n2 in adj or n2->n1 in adj) and (n3->n2 in adj or n2->n3 in adj)) implies (n1->n3 in adj or n3->n1 in adj)
-- div,1
all disj n1,n2,n3: Node | ((n1->n2 in adj or n2->n1 in adj) and (n3->n2 in adj or n2->n3 in adj)) implies (n1->n3 in adj or n3->n1 in adj)
-- div,1
