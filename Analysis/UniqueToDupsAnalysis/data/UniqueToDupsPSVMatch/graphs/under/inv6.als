Node.^adj in Node
-- div,2
Node in Node.*adj
-- div,3
Node.*adj in Node
-- div,2
^adj in Node->Node
-- div,1
adj + ~adj in Node->Node
-- div,1
Node.*(adj + ~adj) = Node
-- div,1
all n: Node | n - n in n
-- div,1
Node.*adj & *adj.Node = Node
-- div,1
all n:Node | some n.*adj
-- div,1
all n:Node | n in n.*adj
-- div,2
Node in (Node.*adj  + *adj.Node)
-- div,1
all n:Node | n in Node.*adj
-- div,1
all n:Node | some n->n.*adj
-- div,1
all n:Node | some n.(n->n.*adj)
-- div,1
some adj implies   Node in (Node.adj  + adj.Node)
-- div,1
all n : Node | n.(adj + ~adj) in Node
-- div,1
all n : Node | some n.*(adj + ~adj)
-- div,1
lone  Node  or  Node in (Node.adj  + adj.Node)
-- div,1
all n : Node | n.^(adj + ~adj) in Node
-- div,1
not lone Node implies  Node in (Node.adj  + adj.Node)
-- div,1
all n : Node | n->n.^adj in Node->Node
-- div,2
all x, y : Node | some x.*adj + y.*adj
-- div,1
one Node or (Node = (Node.(^adj) + Node.(^(~adj))))
-- div,1
all n:Node | some n.*adj + n.^~adj
-- div,1
all n:Node | some n->(n.*adj + n.^~adj)
-- div,1
all n:Node | some n.(n->(n.*adj + n.^~adj))
-- div,1
all n, x :Node | some n2:Node | n in (n2.*adj + ~(~adj).x)
-- div,1
