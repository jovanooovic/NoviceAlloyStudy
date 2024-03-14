all adj.adj
-- div,1
ident in adj
-- div,2
all n : Node |
-- div,3
all adj & ~adj
-- div,3
v1.adj = v2.adj
-- div,1
n.adj = ~(n.adj)
-- div,1
one adj + one ~adj
-- div,1
one adj & one ~adj
-- div,1
all n1, n2: Node |
-- div,1
all n: Node | n in n^
-- div,1
all n | n.adj.adj = n
-- div,1
all n: Node
n.adj = ~(n.adj)
-- div,1
all  s : State | some s.trans
-- div,1
all n1->n2 : adj | n1 in Node
-- div,1
a->b in adj implies b->a in adj
-- div,1
adj1 = adj2 implies that adj2=adj1
-- div,1
all n1->n2 : Node.adj | n1 in Node
-- div,1
a,b:Node | b in a.adj -> a in b.adj
-- div,1
for n : Node | for a : n.adj | n in a
-- div,1
}

run inv1for 3..5 steps

pred inv1{
-- div,1
all n : Node | one n.adj & one n.(~adj)
-- div,1
all n: Node | all a: n.adj | n in a.adj
-- div,1
a,b:Node | b in a.adj implies a in b.adj
-- div,1
all n,m: Node | n.adj in m if m.adj in n
-- div,1
for n : Node | for a : n.adj | n in a.adj
-- div,1
all n:Node, n2:Node | n2 in n.adj => FALSE
-- div,1
all n:Node, n2:Node | n2 in n.adj => false
-- div,1
all n:Node | n.adj = adj.n
-- div,1
all a:A Node | a -> b implies b -> a in adj
-- div,1
all n1,n2:Node | adj(n1,n2) implies adj(n2,n1)
-- div,1
all Node a,b | a->b in adj implies b->a in adj
-- div,2
all disj n, m: Node | n.adj in m if m.adj in n
-- div,1
all Node: a,b | a->b in adj implies b->a in adj
-- div,1
all n : Node | n in n.adj.~adj
-- div,1
all n1,n2 in Node | n1.adj = n2 iff n2.adj = n1
-- div,1
all n,m: Node | n.adj = m implies m.adj = lone n
-- div,1
all n,m: Node | n.adj = m implies m.adj lone = n
-- div,1
all x,y : Node | z->y in Node implies y->x in Node
-- div,1
all n1, n2 : Node | n1->n2 in adg <=> n2->n1 in adg
-- div,1
all disj n1, n2 : n1 in n2.adj implies n2 in n1.adj
-- div,1
all adj1, adj2 | adj1 = adj2 implies that adj2=adj1
-- div,1
all n1:n2:Node | n1->n2 in adj implies n2->n1 in adj
-- div,1
all n1, n2 : Node | (n1.link.n2) implies (n2.link.n1)
-- div,1
all n1, some n2: Node | n1 in n2.adj iff n1.adj in n2
-- div,1
all n1:n2:Node | n1->n2 in Node implies n2->n1 in Node
-- div,1
all n1:Node | n2 in n1.adj | n1 in n2.adj && n2 in n1.adj
-- div,2
all n1:Node | all n2 in n1.adj | n1 in n2.adj && n2 in n1.adj
-- div,1
all n1:Node | n2:Node in n1.adj | n1 in n2.adj && n2 in n1.adj
-- div,1
all adj1, adj2 : Node | x->adj1 and x->adj2 implies adj1 = adj2
-- div,1
all n1:Node | let n2:Node in n1.adj | n1 in n2.adj && n2 in n1.adj
-- div,1
all n1:Node | let n2:Node = one n1.adj | n1 in n2.adj && n2 in n1.adj
-- div,1
all n : Node | all ad : n.adj | n in ad.adj and ad.adj in n and n in and ad.adj in ad.adj
-- div,1
