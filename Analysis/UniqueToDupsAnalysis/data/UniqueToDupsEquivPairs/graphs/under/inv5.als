-- equiv pair start,2
iden not in ^adj
-- div,1
not iden in ^adj
-- div,1
-- equiv pair end
-- equiv pair start,9
all n : Node | n.adj != n
-- div,1
all n : Node | n != n.adj
-- div,7
all a:Node | not (a.adj=a)
-- div,1
-- equiv pair end
