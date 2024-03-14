some Node
-- div,2
adj = ~adj
-- div,1
~adj != adj
-- div,1
adj!=~adj
-- div,6
adj not in ~adj
-- div,4
not adj=~adj
-- div,1
!(~adj=adj)
-- div,2
no adj - ~adj
-- div,2
adj.~adj in iden
-- div,2
~adj.adj in iden
-- div,1
adj = adj & ~adj
-- div,1
adj != adj + ~adj
-- div,1
adj not in adj & ~adj
-- div,1
Node.adj != adj.Node
-- div,1
no adj - ~adj - iden
-- div,2
no (adj - (~adj - iden))
-- div,1
! inv1
}

pred inv1{
adj = ~adj
-- div,1
some n : Node | no adj.n
-- div,1
all n : Node | some adj.n
-- div,1
all n: Node | n.adj not in n
-- div,1
all n:Node | n.adj != adj.n
-- div,2
all n:Node | adj.n not in n.adj
-- div,1
all n:Node | n.adj not in adj.n
-- div,4
all n : Node | n.adj.(~adj) = n
-- div,1
all n : Node | n.adj->n not in adj
-- div,1
all n : Node | n in n.adj.~adj
-- div,1
all n:Node| n.adj != n.~adj
-- div,1
all n:Node | not n.adj in adj.n
-- div,2
all n1:Node | n1.adj != adj.n1
-- div,1
all n : Node | n<:adj != adj:>n
-- div,1
all n:Node, n2:n.adj | n in n2.adj
-- div,1
not inv1
}

pred inv1{
all n : Node, n2 : n.adj | n in n2.adj
-- div,3
all x, y : Node | (x in ^adj.y) and (y in ^adj.x)
-- div,1
all n1, n2: Node | n1->n2 in adj implies n2->n1 in adj
-- div,1
some disj n1, n2: Node | n1 in n2.adj and n2 !in n1.adj
-- div,1
all disj n1,n2: Node | n1 in n2.adj iff n2 not in n1.adj
-- div,2
all n, n1 : Node | n->n1 in adj and n1->n in adj <=> n1 = n
-- div,1
all n, n1 : Node | n->n1 in adj and n1->n in adj <=> n1 != n
-- div,1
