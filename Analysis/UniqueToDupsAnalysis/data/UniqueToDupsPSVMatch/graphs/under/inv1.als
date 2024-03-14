adj=adj
-- div,3
adj in Node<:adj
-- div,1
Node in Node
-- div,3
no adj - adj
-- div,1
Node.adj = adj.Node
-- div,1
Node.adj = ~adj.Node
-- div,1
some Node.adj implies some adj.Node
-- div,1
all n: Node | n in n.*adj
-- div,3
all n: Node | n.adj in Node
-- div,2
all n : Node, a : n.adj | a in Node
-- div,1
all n : Node | lone n & n.adj.~adj
-- div,1
all n: Node | no n.adj or n in n.adj.adj
-- div,1
all n: Node | n not in n.adj or n in n.adj.adj
-- div,1
all n: Node | some m: Node | n.adj = m implies m.adj = n
-- div,1
