-- equiv pair start,103
Node->Node in *adj
-- div,7
(Node -> Node - iden) in ^adj
-- div,4
all n: Node | n.*adj = Node
-- div,4
all a, b : Node | a in b.*adj
-- div,1
all n:Node | Node in n.*adj
-- div,38
all v : Node | Node in v.*adj
-- div,2
all x : Node | Node in x.*adj
-- div,5
all e1 : Node | Node in e1.*adj
-- div,2
all n1, n2: Node | n1 in n2.*adj
-- div,2
all n1,n2:Node | n2 in n1.*adj
-- div,2
all disj x,y : Node | x in y.^adj
-- div,7
all n : Node | Node = (n.^adj + n)
-- div,7
all x : Node | Node in x.^adj + x
-- div,2
all n : Node | Node-n in n.^adj
-- div,13
all disj n1, n2 : Node | n2 in n1.^adj
-- div,1
all n : Node | Node in n.(^adj + iden)
-- div,1
all a:Node , b:Node| b in a.*adj
-- div,1
one Node or all n : Node | Node in n.^adj
-- div,1
all n : Node | Node in n.^adj or one Node
-- div,2
all disj n1,n2: Node | n1 in n2.^adj and n2 in n1.^adj
-- div,1
-- equiv pair end
