-- equiv pair start,8
no ^adj
-- div,1
no Node.^adj
-- div,2
all n : Node | no ^adj.n
-- div,1
all n : Node | no n.^adj
-- div,2
all n : Node | no (n.adj.*adj)
-- div,1
inv2
all n : Node | no n.adj
}

pred inv2{
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
-- equiv pair end
-- equiv pair start,4
iden in ^adj
-- div,1
iden not in *adj
-- div,1
not iden in *adj
-- div,1
all n : Node | n not in n.^adj

no (^adj & iden)

iden - ^adj != iden
-- div,1
-- equiv pair end
-- equiv pair start,10
no Node.*adj
-- div,3
all n : Node | no n.(*adj)
-- div,2
all n:Node | n not in n.*adj
-- div,2
all n : Node | no n.(*adj) & n
-- div,1
all n : Node | no n & n.(*adj)
-- div,1
all n : Node | #(n.adj) = (#n)-1
-- div,1
-- equiv pair end
