}

pred inv1{
-- div,2
adj
-- div,2
Node
-- div,1
iden
-- div,1
adj.adj
-- div,2
Node.adj
-- div,3
adj	in Node
-- div,1
adj in Node
-- div,4
Node->adj
-- div,1
adj & adj
-- div,1
Node in ^adj
-- div,1
Node->Node
-- div,1
~adj.adj
-- div,2
not adj + adj
-- div,1
~adj->adj
-- div,1
one Node.Node
-- div,1
Node in ~Node
-- div,1
adj = ~adj
}

pred inv1{
adj = ~adj
-- div,1
adj + ~adj
-- div,2
all a:adj | ~a
-- div,1
no adj in Node
-- div,1
adj & ~adj
-- div,4
adj in Node.adj
-- div,1
adj.Node in iden
-- div,1
Node = adj + ~adj
-- div,1
adj + ~adj in Node
-- div,1
all n:Node | n.adj
-- div,2
Node . adj in iden
-- div,1
iden & adj.adj
-- div,1
Node in adj & ~adj
-- div,1
~Node.Node in iden
-- div,1
(adj & ~adj) in Node
-- div,1
all n : Node | adj.n
-- div,1
all n : Node | n.adj
-- div,1
all n : Node | n->adj
-- div,1
all n: Node | n in ^n
-- div,1
(Node . ~Node) in iden
-- div,1
all n:Node | no ~(n.adj)
-- div,1
all n:Node | n in Node.n
-- div,1
all n : Node | n->(n.adj)
-- div,1
Node.adj implies adj.Node
-- div,1
all a:Node.adj | ~a in adj
-- div,1
all n:Node | n.adj or adj.n
-- div,1
all n : Node | ~(n->(n.adj))
-- div,1
all n : Node | n.adj in ~adj
-- div,1
all n : adj | ~n in Node.adj
-- div,1
all n: Node | no n in n.^adj
-- div,1
all n: Node{n.adj = ~(n.adj)}
-- div,1
all n: Node | n.adj = ~(n.adj)
-- div,2
all a:adj | ~a in adj
-- div,2
all n : adj | ~n in adj
-- div,1
all n: Node | one n.adj.adj = n
-- div,1
all n : Node | n->adj => adj->n
-- div,1
all n : Node.adj | ~n in Node.adj
-- div,1
all disj n : Node | n in adj.~adj
-- div,2
inv1[adj]
}

pred inv1{
inv1[adj]
-- div,1
all n : Node | some n in n.adj.~adj
-- div,1
all n : Node | one n.adj and n.(~adj)
-- div,1
all n : Node, a : n.adj | n->a => a->n
-- div,1
all n1,n2:Node | n1->n2 implies n2->n1
-- div,1
all a,b:Node | b in a.adj -> a in b.adj
-- div,1
all n1, n2 : Node | n1->n2 implies n2->n1
-- div,1
all n : Node, a : n.adj | a->n in Node.adj
-- div,1
all n : Node | (one n.adj )&(one n.(~adj))
-- div,1
all n,x:Node | n.x in adj implies x.n in adj
-- div,1
all n1, n2 : Node | n1 ->n2 implies n2 -> n1
-- div,1
all a,b : Node | a -> b implies b -> a in adj
-- div,1
all x,y : Node | x->y in Node and y->x in Node
-- div,1
all n1, n2 : Node | (n1 ->n2) implies (n2 -> n1)
-- div,1
all x, y: Node | y in x.Node implies x in y.Node
-- div,2
all n,m: Node | n.adj = m implies lone m.adj = n
-- div,1
all x,y : Node | x->y in Node implies y->x in Node
-- div,1
all n1,n2:Node | some n1.adj:>n2 implies n2.adj:>n1
-- div,1
all n1, n2 : Node | (n1.adj.n2) implies (n2.adj.n1)
-- div,1
all n: Node | n.adj in Node implies some n.adj.adj = n
-- div,1
all n1,n2:Node | n1->n2 in Node implies n2->n1 in Node
-- div,2
all n: Node | n.adj in Node implies lone n.adj.adj = n
-- div,1
all n1, n2 : Node | (n1.n2) in adj  implies (n2.n1) in adj
-- div,1
all a,b:Node | a->b in adj implies b->a and a->a not in adj
-- div,1
all e1, e2 : Node | e1 -> e2 in Node implies e2 -> e1 in Node
-- div,1
all a,b:Node | a->b in adj implies (b->a and a->a) not in adj
-- div,1
all n1:Node | all n2:Node in n1.adj | n1 in n2.adj && n2 in n1.adj
-- div,1
