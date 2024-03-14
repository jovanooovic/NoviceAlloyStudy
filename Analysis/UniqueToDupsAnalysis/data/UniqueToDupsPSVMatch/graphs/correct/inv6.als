Node->Node in *(adj + ~adj)
-- div,8
Node->Node - iden in ^(adj + ~adj)
-- div,7
all n: Node | n.*(adj + ~adj) = Node
-- div,5
all a, b : Node | b in a.*(~adj + adj)
-- div,1
all n:Node | Node in n.*(~adj +adj)
-- div,1
all v : Node | Node in v.*(adj + ~adj)
-- div,1
all x : Node | Node in x.*(adj + ~adj)
-- div,4
all n:Node | Node in n.*(adj+~adj)
-- div,23
all e1 : Node | Node in e1.*(adj + ~adj)
-- div,1
all n1, n2:Node | n2 in n1.*(adj+~adj)
-- div,3
all n1, n2: Node | n1 in n2.*(adj + ~adj)
-- div,4
all n : Node | Node = (n.^(adj + ~adj) + n)
-- div,3
all n:Node | Node in (n.*(adj + ~adj) + n)
-- div,1
all n:Node | Node-n in n.^(adj+~adj)
-- div,10
all n:Node | Node in (n.^(adj + ~adj) +n)
-- div,2
all n : Node | Node in n.^(adj + ~adj + iden)
-- div,1
all a:Node, b:Node | b in a.*(adj + ~adj)
-- div,1
one Node || all n : Node | Node in n.^(adj + ~adj)
-- div,2
all n:Node | Node in (n+ n.*adj + *adj.n).*(adj+~adj)
-- div,1
all disj n1, n2 : Node | n2 in n1.^({n1 : Node, n2 : Node | n2 in n1.adj or n1 in n2.adj})
-- div,2
