-- equiv pair start,5
adj = *adj
-- div,1
iden in adj.~adj
-- div,1
iden in ~adj.adj
-- div,1
*adj = Node set -> set Node
-- div,1
*adj in Node set -> set Node
-- div,1
-- equiv pair end
-- equiv pair start,2
all v : Node | no v.~adj + v
-- div,1
all n : Node | n.adj = Node

all n1, n2 : Node | n2 in n1.adj


all n : Node | n.adj = Node - n
-- div,1
-- equiv pair end
