all
-- div,1
dag[adj]
-- div,1
no ^.adj
-- div,1
no *.adj
-- div,1
a.^adj != a
-- div,1
no Node^.adj
-- div,1
no adj* & id
-- div,1
a.^adj in iden
-- div,1
all a,b:Node |
-- div,1
+adj not in id
-- div,1
no adj* & iden
-- div,1
a not in a.^adj
-- div,1
iden not in +adj
-- div,1
+adj not in iden
-- div,1
not iden in adj*
-- div,1
not in Node.^adj
-- div,1
a.^adj not in iden
-- div,1
all a:Node | no a^adj=a
-- div,1
all n | n->n not in ^adj
-- div,1
all x: Node | x not in x.^
-- div,1
all v : Node | no v.adj & x
-- div,1
all n:Node | n not in a.^adj
-- div,1
all n:Node | n not in n.adj~
-- div,1
all n:Node | n not in n.adj*
-- div,1
all a : Node | a not in a.ajd
-- div,1
all n: None | n not in n.^adj
-- div,1
all a : Node | a not in a.^ajd
-- div,2
all x: Node | x not in x.adj.*
-- div,1
all n : Node | no (n.^node & n)
-- div,1
v1.adj and v2.adj implies v1 = v2
-- div,1
all n: None | n not in n.~adj.adj
-- div,1
all n: Node | n not in n.^requires
-- div,1
all a,b,c:Node | a->b in adj b->c in adj
-- div,2
all x, y z : Node | x->y in adj and z->y in adj implies y = z
-- div,1
inv2
all n : Node | n not in adj*
}

pred inv2{
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
inv2
all n : Node | n not in n.adj*
}

pred inv2{
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
