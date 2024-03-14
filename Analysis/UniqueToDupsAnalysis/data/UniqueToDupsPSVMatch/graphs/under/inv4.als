adj = ^adj
-- div,1
adj.Node = Node
-- div,1
Node.adj = Node
-- div,1
Node in Node.adj
-- div,1
adj in Node->Node
-- div,1
Node.^adj = Node
-- div,3
Node.^adj in Node
-- div,2
Node in Node.*adj
-- div,1
Node in Node.^adj
-- div,3
^adj = Node->Node
-- div,1
Node set -> set Node in *adj
-- div,1
Node in (Node.adj + adj.Node)
-- div,1
all n : Node | some adj.n
-- div,3
all n:Node | n in adj.n
-- div,1
all n: Node | some n.adj
-- div,2
all a:Node | a in adj.a
-- div,1
all a:Node | a in a.adj
-- div,2
all n:Node | n in n.adj
-- div,4
all n:Node | n in Node.adj
-- div,3
all n: Node | n in n.^adj
-- div,4
all n : Node | n.adj in Node
-- div,1
all n:Node | n in adj.Node
-- div,1
all n: Node | n in n.*adj
-- div,5
all a:Node | a in a.^adj
-- div,3
all n : Node | some n.(^adj)
-- div,1
all n : Node | some (^adj).n
-- div,1
all n : Node | n in n.~adj
-- div,1
all a,b : Node | a in b.^adj
-- div,1
all a,b:Node | b in a.^adj
-- div,1
all x, y: Node | x in y.^(adj)
-- div,1
all n1, n2 : Node | some (n1->n2)
-- div,1
all n : Node | n.^adj = Node
-- div,4
all n:Node | Node in n.*adj
-- div,5
all n:Node | n in Node.*adj
-- div,1
all x: Node | Node in x.*adj
-- div,1
all n : Node | n in n.adj.adj
-- div,1
all x: Node | Node in x.^(adj)
-- div,1
all n:Node | Node in n.^adj
-- div,10
all n:Node | n in Node.^adj
-- div,1
all disj n, m: Node | n->m in adj
-- div,1
all n : Node | n.adj = n.~adj
-- div,1
all x: Node | (Node - x) in x.adj
-- div,1
all n : Node | Node in n.adj+n
-- div,1
all n:Node | Node-n in n.adj
-- div,8
all  n1,n2 :Node | n2 in  n1.^adj
-- div,2
all n1, n2: Node | n1 in n2.^adj
-- div,2
all disj a,b : Node | a in b.^adj
-- div,1
all disj x,y : Node | x in y.^adj
-- div,1
all disj n1, n2 : Node | n2 in n1.adj
-- div,1
all disj n1,n2 : Node | n1 in adj.n2
-- div,2
all n: Node | some (n.adj + adj.n)
-- div,1
all n:Node | Node-n in n.^adj
-- div,3
all x: Node | (Node - x) in x.^(adj)
-- div,1
all disj n1, n2 : Node | n2 in n1.^adj
-- div,1
all disj n1,n2: Node | (n1 in n2.^adj)
-- div,1
all x : Node | x.adj - x = Node - x
-- div,1
all disj n1, n2 : Node | n2 in n1.*adj
-- div,1
all disj n1,n2: Node | ((n1 in n2.*adj))
-- div,1
all n1, n2: Node | n1->n2 & n2->n1 in adj
-- div,1
all disj n1, n2: Node | n1->n2 + n2->n1 in adj
-- div,1
all a:Node | a in a.^adj implies a in a.^adj
-- div,1
all n1, n2: Node | n1 in n2.adj or n2 in n1.adj
-- div,1
all x, y: Node | x in y.^(adj) and y in x.^(adj)
-- div,2
all n1, n2: Node | n2 in n1.^(adj) and n2 in n2.adj
-- div,1
all n1 : Node | no n2: Node | n2 not in n1.^(adj)
-- div,1
all  n1,n2 :Node | n2 in  n1.^adj and n1 in n2.^adj
-- div,1
all n1,n2:Node | n1 in n2.*adj && n2 in n1.*adj
-- div,2
all n1,n2:Node | n1 in n2.*adj => n2 in n1.*adj
-- div,1
all n1, n2: Node | n1 in n2.^adj or n2 in n1.^adj
-- div,2
all n1,n2:Node | n1 in n2.^adj && n2 in n1.^adj
-- div,4
all n1,n2:Node | n1 in n2.^adj => n2 in n1.^adj
-- div,1
all n1,n2:Node | n1 in n2.*adj <=> n2 in n1.*adj
-- div,1
all n1,n2:Node | n1 in n2.^adj <=> n2 in n1.^adj
-- div,1
all a:Node,b:Node | a in a.^adj implies a->b in adj
-- div,1
all disj n1, n2: Node | n1 in n2.^adj and n2 in n1.^adj
-- div,1
all disj n1,n2: Node | ((n1 in n2.*adj) and (n2 in n1.*adj))
-- div,1
all disj n1,n2:Node | n1 in n2.*adj => n2 in n1.*adj
-- div,2
all disj n1,n2:Node | n1 in n2.^adj => n2 in n1.^adj
-- div,1
all disj n1, n2: Node | n1 in n2.^adj or n2 in n1.^adj
-- div,4
all n:Node, x:Node| n in x.^adj && x in n.^adj
-- div,1
all x, y: Node | (x in y.^(adj) or x in y.adj) and (y in x.^(adj) or y in x.adj)
-- div,1
