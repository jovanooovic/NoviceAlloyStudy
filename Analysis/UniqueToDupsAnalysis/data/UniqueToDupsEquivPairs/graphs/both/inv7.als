-- equiv pair start,14
Node.adj = Node
-- div,1
Node = Node.^adj
-- div,1
Node in Node.^adj
-- div,12
-- equiv pair end
-- equiv pair start,2
Node in ^adj.Node
-- div,2
-- equiv pair end
-- equiv pair start,5
Node in Node.adj & adj.Node
-- div,4
Node in (Node.^adj & ^adj.Node )
-- div,1
-- equiv pair end
-- equiv pair start,1
one n: Node | n.*adj = Node
-- div,1
-- equiv pair end
-- equiv pair start,3
all n1 : Node| n1 in n1.adj
-- div,1
all n:Node | n in n.~adj
-- div,1
all n1,n2 : Node| n1 in n1.adj
-- div,1
-- equiv pair end
-- equiv pair start,2
some n: Node | n.*adj = Node
-- div,1
some { n: Node | n.*adj = Node }
-- div,1
-- equiv pair end
-- equiv pair start,2
lone n: Node | n.*adj = Node
-- div,2
-- equiv pair end
-- equiv pair start,1
^(adj + ~adj) = (Node -> Node )
-- div,1
-- equiv pair end
-- equiv pair start,6
all n:Node | Node = n.^adj + n.^~adj
-- div,2
all n:Node | Node in n.^adj+n.^~adj
-- div,4
-- equiv pair end
-- equiv pair start,1
no Node or one n: Node | n.*adj = Node
-- div,1
-- equiv pair end
-- equiv pair start,1
all n:Node | Node-n = n.^adj + n.^~adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y: Node | x in y.^(adj) or x in adj.y
-- div,1
-- equiv pair end
-- equiv pair start,1
all n:Node | Node in n.^adj or Node in n.^~adj
-- div,1
-- equiv pair end
