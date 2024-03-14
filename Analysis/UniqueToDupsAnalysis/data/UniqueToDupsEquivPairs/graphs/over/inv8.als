-- equiv pair start,1
no (adj . adj)
-- div,1
-- equiv pair end
-- equiv pair start,6
adj = adj.^adj
-- div,3
all n : Node | n.adj.adj = n.adj
-- div,3
-- equiv pair end
-- equiv pair start,1
no (^adj + iden)
-- div,1
-- equiv pair end
-- equiv pair start,1
adj = Node->Node
-- div,1
-- equiv pair end
-- equiv pair start,1
Node->Node.adj.adj in adj
-- div,1
-- equiv pair end
-- equiv pair start,2
all e1 : Node | e1.*adj in e1.adj
-- div,1
all e1, e3 : Node | e1.*adj in e1.adj
-- div,1
-- equiv pair end
