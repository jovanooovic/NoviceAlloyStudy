*adj
-- div,1
*adj & Node
-- div,1
*adj in Node
-- div,1
^adj + ^~adj)
-- div,1
*adj in adj
-- div,2
*adj in Node.adj
-- div,1
stronglyConnected[adj]
-- div,1
n: Node | n.*adj = Node
-- div,2
set n: Node | n.*adj = Node
-- div,1
all n:node | Node in n.*adj
-- div,1
´	Node in Node.adj & adj.Node
-- div,2
all v : Node | Node in x.*adj
-- div,1
all n : Node | Node in n.^adj.
-- div,1
all n : Node | (Node = (n.^adj)
-- div,1
all x : Node | Node in x.*adj
r
-- div,6
Node in Node.*adj or Node in *adj.Node )
-- div,1
Node in Node.^adj or Node in ^adj.Node )
-- div,1
