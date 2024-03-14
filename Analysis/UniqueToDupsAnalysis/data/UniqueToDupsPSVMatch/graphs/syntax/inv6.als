all n : Node |
-- div,1
adj in (^adj.n)
-- div,1
+adj = (Node -> Node)
-- div,1
all n : Node | n in n.
-- div,1
all x: Node | x in x.(^)adj
-- div,1
Node -> Node = (adj & ~adj)^
-- div,1
all n : Node | Node in x.^adj
-- div,1
all a, b : Node | a in conn[b]
-- div,1
some Node.adj + some Node.~adj
-- div,1
all n1, n2: Node | n1 in n2.*r
-- div,2
^(ajd + ~adj) = (Node -> Node)
-- div,1
all n1, n2 : Node | n in n2.adj
-- div,1
Node in (Nod.*adj  + adj.*Node)
-- div,1
all e1 | Node in (e1.*adj + *adj.e1)
-- div,2
all n: Node | n.*(adj + -adj) = Node
-- div,1
all n:Node | Node in n*.(adj + ~adj)
-- div,1
all n:Node | Node in n^.(adj + ~adj)
-- div,1
all n : Node | Node in n^adj + ^adj.n
-- div,1
all n : Node | Node  in (n.^adj + ~adj
-- div,1
all n : Node | (+adj.n + ~adj.n) = Node
-- div,1
all n : Node | (n.^adj + n^~adj) = Node
-- div,1
all n: Node | Node in (n.^adj + adj^.n)
-- div,1
all n:Node | Node in n^.(adj + ~adj) + n
-- div,1
all n : Node | (+adj.n + ^~adj.n) = Node
-- div,1
all n:Node | Node in (n+n^).(adj + ~adj)
-- div,1
all e1 : Node | Node in e1.*adj + c1.*~adj
-- div,1
all disj n1, n2 : Node | n2 in n1.^undrAdj
-- div,1
all e1 : Node | Node in (e1.+adj + +adj.e1)
-- div,1
all x : Node | Node in ^(x.adj) + ^(adj.x))
-- div,1
all n: Node | some Node.adj or some Node.~ad in adj)
-- div,1
all n:Node | some n2:Node | n in (n2.^adj + ~(~adj).x)
-- div,1
all n:Node | some n2:Node | n1 in (n2.^adj + ~(~adj).x)
-- div,1
all disj n1, n2 : Node | n2 in n2.^({???custom relation???})
-- div,1
all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node) + (n1.^adk:>n1)) = Node
-- div,1
fun conn(a : Node) : set Node {
a.adj + adj.a
}

all a, b : Node | b in a.*conn
-- div,1
all x, y : Node | x->y in adj implies y->x not in adj and ode in x.^adj + x + ^adj.x
-- div,1
all disj n1, n2 : Node | n2 in n1.^(inv1Enclosure)
}

pred inv1{
all disj n1,n2 : Node | n2 in n1.adj => n2 in adj.n1
-- div,1
