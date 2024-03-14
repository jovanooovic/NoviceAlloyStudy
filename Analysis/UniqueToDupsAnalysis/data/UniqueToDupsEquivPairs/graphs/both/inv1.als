-- equiv pair start,1
no adj.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
some adj.adj
-- div,1
-- equiv pair end
-- equiv pair start,2
no adj & iden
-- div,1
all n : Node | n not in n.adj
-- div,1
-- equiv pair end
-- equiv pair start,7
no adj & ~adj
-- div,4
all n : Node | n not in n.adj.adj
-- div,1
all a,b:Node | a->b in adj implies b->a not in adj
-- div,2
-- equiv pair end
-- equiv pair start,1
adj = adj.adj
-- div,1
-- equiv pair end
-- equiv pair start,2
no ^adj &iden
-- div,1
no adj & ~*adj
-- div,1
-- equiv pair end
-- equiv pair start,2
adj in adj.adj
-- div,2
-- equiv pair end
-- equiv pair start,1
some adj & adj
-- div,1
-- equiv pair end
-- equiv pair start,1
one adj & ~adj
-- div,1
-- equiv pair end
-- equiv pair start,1
adj in ~adj.adj
-- div,1
-- equiv pair end
-- equiv pair start,4
some adj & ~adj
-- div,2
some iden & adj.adj
-- div,2
-- equiv pair end
-- equiv pair start,5
~adj.adj in iden
-- div,5
-- equiv pair end
-- equiv pair start,13
adj.~adj in iden
-- div,12
all n : Node | lone adj.n
-- div,1
-- equiv pair end
-- equiv pair start,6
all n:Node | some adj.n
-- div,4
all n:Node | n in Node.adj
-- div,1
all n:Node | n in Node.adj or n in Node.^adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n : Node | one n.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n : Node | n != n.adj
-- div,1
-- equiv pair end
-- equiv pair start,4
all n: Node | n in n.^adj
-- div,4
-- equiv pair end
-- equiv pair start,17
all  n : Node | some n.adj
-- div,1
all n: Node | n in adj.(n.adj)
-- div,1
all n : Node | n in n.adj.~adj
-- div,14
all n : Node | some n & n.adj.~adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | n.adj.adj in n
-- div,1
-- equiv pair end
-- equiv pair start,7
all n: Node | n in n.adj.adj
-- div,2
all n:Node | some (n.adj & adj.n)
-- div,2
all n: Node | n.adj in Node and n in n.adj.adj
-- div,1
all n: Node | n.adj in Node implies n in n.adj.adj
-- div,2
-- equiv pair end
-- equiv pair start,1
all n: Node | Node in n.^adj
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj n : Node | n in n.~adj
-- div,2
-- equiv pair end
-- equiv pair start,1
all n1,n2 : Node | n1.adj = n2.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n : Node | one n.adj & n.(~adj)
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | (n.adj->adj.n) in adj
-- div,1
-- equiv pair end
-- equiv pair start,1
~adj.adj in iden and adj.~adj in iden
-- div,1
-- equiv pair end
-- equiv pair start,3
all n: Node | one m : Node | m.adj = n
-- div,1
all n: Node | one m : Node | m.adj = n
all n: Node | one m : Node | n.adj = m
-- div,1
all n: Node | lone m : Node | m.adj = n
all n: Node | one m : Node | n.adj = m
-- div,1
-- equiv pair end
-- equiv pair start,2
all n: Node | lone m : Node | m.adj = n
-- div,1
all n: Node | lone m : Node | m.adj = n
all n: Node | lone m : Node | n.adj = m
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj n,n1 : Node | n in n1.adj.~adj
-- div,1
-- equiv pair end
-- equiv pair start,8
all n,m: Node | n.adj in m => m.adj in n
-- div,2
all n,m: Node | n.adj in m iff m.adj in n
-- div,3
all disj n,m: Node | n.adj in m implies m.adj in n
-- div,2
all disj n, m: Node | n.adj in m iff m.adj in n
-- div,1
-- equiv pair end
-- equiv pair start,17
all n,m: Node | n.adj = m implies m.adj = n
-- div,4
all n,m: Node | n.adj = m iff m.adj = n
-- div,5
all disj n,m: Node | n.adj = m => m.adj = n
-- div,2
all disj n,m: Node | n.adj = m iff m.adj = n
-- div,4
all n1,n2: Node | n1.adj = n2 iff n2.adj = n1
-- div,1
all disj n1,n2: Node | n1.adj = n2 iff n2.adj = n1
-- div,1
-- equiv pair end
-- equiv pair start,2
all n,m: Node | n.adj = m implies m.adj = m
-- div,1
all n: Node | all m: Node | n.adj = m implies m.adj = m
-- div,1
-- equiv pair end
-- equiv pair start,1
all n:Node | n in Node.adj or n in adj.Node
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | n not in n.adj and n in n.adj.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | all m: Node | n.adj = m iff m.adj = m
-- div,1
-- equiv pair end
-- equiv pair start,1
all n: Node | one m : Node | n.adj = m iff m.adj = n
-- div,1
-- equiv pair end
-- equiv pair start,1
all n : Node | all ad : n.adj | #(n->ad.adj + ad.adj->n)=2
-- div,1
-- equiv pair end
-- equiv pair start,2
all n: Node | no n.adj or n not in n.adj and n in n.adj.adj
-- div,2
-- equiv pair end
-- equiv pair start,1
all n1: Node | lone n2: Node | n1 in n2.adj iff n1.adj in n2
-- div,1
-- equiv pair end
-- equiv pair start,1
all n1: Node | some n2: Node | n1 in n2.adj iff n1.adj in n2
-- div,1
-- equiv pair end
-- equiv pair start,1
all v1, v2 : Node | v1->v2 in adj and v2->v1 in adj implies v1 = v2
-- div,1
-- equiv pair end
