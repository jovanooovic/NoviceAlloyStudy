Node->Node = adj
-- div,1
adj = Node->Node
-- div,28
Node->Node in adj
-- div,3
all x : Node | x.adj = Node
-- div,3
all n: Node | Node = n.adj
-- div,1
all n: Node | n.adj = Node
-- div,13
all a, b : Node | b in a.adj
-- div,1
all a,b : Node | a in b.adj
-- div,3
all n:Node |Node in n.adj
-- div,38
all n, m: Node | n->m in adj
-- div,1
no n:Node | Node not in n.adj
-- div,1
all a,b:Node | a->b in adj
-- div,4
all n1, n2:Node | n1 in n2.adj
-- div,9
all n1, n2 : Node | n2 in n1.adj
-- div,2
all n1,n2:Node | n1->n2 in adj
-- div,10
all n1:Node | n1.adj:>Node = Node
-- div,1
all a:Node,b:Node | a->b in adj
-- div,3
all n:Node , a:Node | n->a in adj
-- div,1
all n1, n2: Node | n1->n2 + n2->n1 in adj
-- div,2
all n : Node | Node in n.adj and n.adj in Node
-- div,1
all a,b : Node | a in b.adj





adj = Node->Node
-- div,1
all n1,n2: Node | n1 in n2.adj and n2 in n1.adj
-- div,2
all a,b : Node | a->b in adj






adj = Node->Node
-- div,1
all n:Node, x:Node| n in x.adj && x in n.adj
-- div,1
all n1, n2 : Node | n2 in n1.adj
all n : Node | n.adj = Node
-- div,1
all n : Node | n.adj = Node

all disj n1,n2 : Node | n1 in adj.n2
-- div,1
all n1, n2: Node | n1->n2 + n2->n1 in adj
all n: Node | Node = n.adj
-- div,1
all n : Node | n.adj = Node

all disj n1,n2 : Node | n1 in adj.n2

all n1, n2 : Node | n2 in n1.adj
-- div,1
