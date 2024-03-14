adj.n = Node
-- div,1
no v.~adj + v
-- div,1
adj = Node -> Node
-- div,2
all n Node | some n.adj
-- div,1
Node.^adj = Node - node
-- div,1
all n : Nodes | n in adj
-- div,1
all n Node | Node in n.adj
-- div,1
all n1 : Node | n.adj = Node
-- div,1
all n1,n2: Node | (n1,n2) in *adj
-- div,2
all a:Node | a in a.^adj implies a->not a
-- div,1
all n:Node | n in adj.Node & b in Node.adj
-- div,1
all  n1,n2 :Node | n1->n2 in adj
-- div,1
all n1, n2 Node | n1 in n2.^adj or n2 in n1.^adj
-- div,1
all disj n1,n2: Node | (n1 == n2) || (n1 in n2.^adj)
-- div,1
all disj n1, n2 Node | n1 in n2.^adj or n2 in n1.^adj
-- div,1
all n1, n2: Node | n1->n2 + n2->n1 in adj
Node = n.adj
-- div,1
all disj n1,n2: Node | ((n1 == n2) || (n1 in n2.^adj))
-- div,1
all n1, n2: Node | n1->n2 + n2->n1 in adj
all Node.adj
-- div,1
all n1,n2:Node | n1 != n2 | n1 in n2.^adj <=> n2 in n1.^adj
-- div,2
all n1,n2:Node | n2 in (univ - n1) | n1 in n2.^adj <=> n2 in n1.^adj
-- div,1
