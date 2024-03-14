no (adj . adj)
-- div,1
no (^adj + iden)
-- div,1
adj = Node->Node
-- div,1
adj = adj.^adj
-- div,3
Node->Node.adj.adj in adj
-- div,1
all n : Node | n.adj.adj = n.adj
-- div,3
all e1 : Node | e1.*adj in e1.adj
-- div,1
all e1, e3 : Node | e1.*adj in e1.adj
-- div,1
