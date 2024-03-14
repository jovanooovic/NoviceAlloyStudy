Node in  Node.adj
-- div,1
adj.^adj in adj
-- div,1
adj.~adj in iden
-- div,1
adj + ^adj in adj
-- div,1
Node in Node.^adj
-- div,6
Node in Node.(adj.~adj)
-- div,1
Node.(adj + ~adj) = Node
-- div,2
Node in Node.adj  + adj.Node
-- div,4
all n:Node | n in adj.n
-- div,1
all n : Node | n in n.adj
-- div,1
Node.^adj & ^adj.Node = Node
-- div,1
all n:Node | n in Node.adj
-- div,2
all x: Node | x in x.^(adj)
-- div,1
all n:Node | n in n.^adj
-- div,3
some Node.adj and some Node.~adj
-- div,1
Node = (Node.(^adj) + Node.(^(~adj)))
-- div,2
some Node.adj or some Node.~adj
-- div,1
Node in (Node.(^adj) + Node.(^(~adj)))
-- div,2
some adj  Node in (Node.adj  + adj.Node)
-- div,2
all x, y : Node | ^adj.x in ^adj.y
-- div,2
all n : Node | n.(adj + ~adj) in Node - n
-- div,1
all x, y : Node | ^adj.x in ^adj.y & x
-- div,1
all n : Node | some n.adj or some n.^adj
-- div,1
all n : Node | some n.adj or some n.~adj
-- div,2
all x: Node | x in x.^(adj) or x in adj.x
-- div,1
all a,b:Node | a->b in adj implies b->a in adj
-- div,1
all a,b:Node | a.^adj + b.^adj = a+b
-- div,1
all x, y : Node | x->y in adj iff y->x in adj
-- div,1
all n : Node | all a : n.adj  | n in a.adj
-- div,1
all x: Node | x in Node.^(adj) or x in adj.Node
-- div,1
all n: Node | some Node.adj or some Node.~adj
-- div,1
all x: Node | x in x.^(adj) or x in Node.^(adj)
-- div,1
all n1,n2: Node | n1 in n2.^adj iff n2 in n1.^adj
-- div,1
all n : Node | all a : n.adj  | a in n.adj implies n in a.adj
-- div,1
all n, x :Node | some n2:Node | n in (n2.^adj + ~(~adj).x)
-- div,1
all n1, n2, n3: Node | n1->n2 in adj and n3->n2 in adj implies n1->n3 in adj
-- div,1
all x, y : Node | x->y in adj implies y->x not in adj and Node in x.^adj + x
-- div,1
all x, y : Node | x->y in adj implies y->x not in adj and Node in x.^adj + x + ^adj.x
-- div,1
