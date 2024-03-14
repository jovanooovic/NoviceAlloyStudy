-- equiv pair start,19
no adj
-- div,7
no adj & adj
-- div,2
no adj + adj
-- div,1
no adj.~adj
-- div,1
all n : Node | no n.adj
-- div,3
all n : Node | n not in n.adj.~adj
-- div,2
no adj
all n : Node, n2 : n.adj | n in n2.adj
-- div,1
all n:Node, n2:Node | n2 in n.adj => not n2 in n.adj
-- div,1
all v1, v2 : Node | v1->v2 in adj implies v2->v1 in adj
no adj & adj
-- div,1
-- equiv pair end
-- equiv pair start,3
no Node
-- div,2
all n: Node | no m: Node | n.adj = m implies m.adj = n
-- div,1
-- equiv pair end
-- equiv pair start,1
one Node
-- div,1
-- equiv pair end
-- equiv pair start,4
lone Node
-- div,2
all n: Node | one m : Node | n.adj = m implies m.adj = n
-- div,1
all n: Node | lone m : Node | n.adj = m implies m.adj = n
-- div,1
-- equiv pair end
-- equiv pair start,11
iden in adj
-- div,1
iden in adj.adj
-- div,2
adj.~adj = iden
-- div,2
iden in adj.~adj
-- div,2
iden in ~adj.adj
-- div,2
~adj.adj in iden and iden in adj.~adj
-- div,1
~adj.adj in iden and iden in ~adj.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | n.adj = n
-- div,1
-- equiv pair end
-- equiv pair start,1
all n,m: Node | n.adj = m
-- div,1
-- equiv pair end
-- equiv pair start,4
all n,m: Node | m in n.adj
-- div,1
all a,b:Node | b->a in adj
-- div,1
all n1, n2 : Node | n1->n2 in adj
-- div,1
all n1,n2:Node | n1 in n2.adj && n2 in n1.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
(Node.adj->adj.Node) in adj
-- div,1
-- equiv pair end
-- equiv pair start,12
all n: Node | n.adj.adj = n
-- div,5
all n,m: Node | n.adj.adj = n
-- div,1
all n: Node | n.adj in Node implies n.adj.adj = n
-- div,1
all n: Node | n.adj.adj = n and n.adj != none
-- div,1
all n1,n2: Node | n1 in n2.adj iff n1.adj in n2
-- div,2
all n1,n2: Node | n1 in n2.adj and n1 in n2.adj iff n1.adj in n2
-- div,1
all n : Node | some ad : n.adj | n in ad.adj and ad.adj in n
-- div,1
-- equiv pair end
-- equiv pair start,2
all n:Node, n2:n.adj | n in n2
-- div,2
-- equiv pair end
-- equiv pair start,2
all disj n,m: Node | n.adj = m
-- div,1
all n: Node | one m: Node | n.adj = m implies m.adj = m
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | (n.adj->adj.n) = adj
-- div,1
-- equiv pair end
-- equiv pair start,2
all n1,n2: Node | n1 in n2.adj iff n1.adj = n2
-- div,1
all n : Node | all ad : n.adj | n in ad.adj and ad.adj in n
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj n, n1 : Node | n1 in n.adj && n in n1.adj
-- div,1
all disj n1,n2:Node | n1 in n2.adj && n2 in n1.adj
-- div,1
-- equiv pair end
-- equiv pair start,2
all n: Node | n in adj.(n.adj)
all disj n1, n2: Node | n2 in n1.adj => n1 in n2.adj
-- div,1
all disj n1, n2: Node | n2 in n1.adj => n1 in n2.adj
all n : Node | n in n.adj.adj
-- div,1
-- equiv pair end
