no ~adj & adj
-- div,1
no ^adj & adj
-- div,1
no *adj & adj
-- div,1
no ~adj + adj
-- div,1
adj = Node->Node - iden
-- div,2
all n: Node | n.adj = Node - n
-- div,9
all n: Node | n.adj in Node - n
-- div,1
all n : Node | n.^adj = Node - n
-- div,2
all n : Node | #n.adj = #(Node - n)
-- div,1
all a:Node | a in a.^adj and not a->a in adj
-- div,1
all n1, n2: Node | n2 in n1.^(adj) and n2 not in n2.adj
-- div,2
all n : Node | n.adj = Node - n

all disj n1,n2 : Node | n1 in adj.n2
-- div,1
