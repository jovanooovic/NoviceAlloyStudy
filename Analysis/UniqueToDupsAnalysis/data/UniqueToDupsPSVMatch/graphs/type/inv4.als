Node in adj
-- div,1
Node -> Node
-- div,2
Node.*adj
-- div,1
all n:Node | n
-- div,2
all n : Node | n
-- div,1
all n:Node | n.adj
-- div,1
all a:Node | a.adj
-- div,1
all n: Node | n.adj
-- div,1
all n: Node | n.*adj
-- div,1
all n : Node | n.*adj
-- div,1
all n:Node | n->(adj.n)
-- div,1
all n : Node | n in adj
-- div,1
all n : Node | n in ^adj
-- div,1
all n: Node | n.*adj in adj
-- div,1
all n : Node | adj not in n.adj
-- div,1
all n1, n2 : Node | some (n1.n2)
-- div,10
all n:Node | n in adj.Node & n in Node.adj
-- div,1
all n1, n2: Node | n1->n2 && n2->n1 in adj
-- div,1
all a:Node | a in a.adj implies a in ~a.adj
-- div,1
all a:Node | a in a.^adj implies a in ~a.^adj
-- div,1
all n1, n2: Node | n1->n2 implies n2->n1 in adj
-- div,1
all x, y: Node | x in (y.adj or y.^(adj)) and y in (x.adj or x.^(adj))
-- div,1
