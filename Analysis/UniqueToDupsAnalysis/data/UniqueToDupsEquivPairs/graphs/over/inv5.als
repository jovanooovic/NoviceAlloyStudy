-- equiv pair start,5
no iden
-- div,1
adj = ~iden
-- div,1
no adj + iden
-- div,1
no iden & *adj
-- div,1
Node not in Node . *adj
-- div,1
-- equiv pair end
-- equiv pair start,9
no ~adj.adj
-- div,1
no adj.~adj
-- div,1
no Node->Node & adj
-- div,1
all n: Node | no n.adj
-- div,1
all n : Node | no n.^adj
-- div,3
all n : Node |no n.~adj
-- div,1
all n : Node | no n.(adj.~adj)
-- div,1
-- equiv pair end
-- equiv pair start,6
no adj & ~adj
-- div,1
all x, y : Node | x->y in adj implies not y->x in adj
-- div,4
all x, y, z : Node | x->y in adj implies not y->x in adj
-- div,1
-- equiv pair end
-- equiv pair start,37
no ^adj & iden
-- div,6
no iden & ^adj
-- div,6
no iden & Node<:^adj
-- div,1
all n:Node | n not in ^adj.n
-- div,1
all a:Node | a not in a.^adj
-- div,1
all n:Node | n not in n.^adj
-- div,14
no n1: Node | n1 in n1.^adj
-- div,4
all a:Node | no a & a.^adj
-- div,1
all n1: Node | not (n1 in n1.^adj)
-- div,1
all a : Node | no (a.^adj & ^adj.a)
-- div,1
all n1,n2: Node | not ((n2 in n1.adj) and (n1 in n2.^adj))
-- div,1
-- equiv pair end
-- equiv pair start,13
all n : Node | no n->n
-- div,3
all n : Node | no n.*adj
-- div,1
all n:Node | n not in n.*adj
-- div,6
no n1: Node | n1 in n1.*adj
-- div,2
all a:Node | a.next not in a
-- div,1
-- equiv pair end
-- equiv pair start,1
no adj.Node & Node.adj
-- div,1
-- equiv pair end
-- equiv pair start,1
adj = Node->Node - iden
-- div,1
-- equiv pair end
