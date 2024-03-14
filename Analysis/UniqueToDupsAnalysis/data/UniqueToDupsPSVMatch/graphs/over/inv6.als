^adj = Node->Node
-- div,3
Node->Node = ^adj
-- div,1
*adj = Node->Node
-- div,1
Node->Node in *adj
-- div,1
^adj = (Node -> Node - iden)
-- div,2
(Node -> Node - iden) in ^adj
-- div,1
Node->Node = ^(adj + ~adj)
-- div,1
*(adj + ~adj) = Node->Node
-- div,2
^(adj + ~adj) = Node->Node
-- div,2
(Node -> Node) = *(adj & ~adj)
-- div,1
(Node -> Node) = *(adj + ~adj)
-- div,1
Node -> Node in ^(adj & ~adj)
-- div,1
(Node -> Node) in ^(adj + ~adj)
-- div,1
Node->Node in *(adj & ~adj)
-- div,2
*adj + *(~adj) = Node->Node
-- div,2
^adj + ^(~adj) = Node->Node
-- div,1
Node->Node = ^adj + ^~adj
-- div,2
Node->Node in *adj + *(~adj)
-- div,1
all x : Node | Node in x.adj
-- div,1
all n:Node | Node in n.adj
-- div,3
all a,b:Node | a->b in adj
-- div,2
all a,b:Node | a.^adj = b
-- div,1
all a,b:Node | b in a.^adj
-- div,1
all n : Node | *adj.n = Node
-- div,1
all n : Node | ^adj.n = Node
-- div,1
all n : Node | n.*adj = Node
-- div,2
all n : Node | n.^adj = Node
-- div,4
all n:Node | Node in n.^adj
-- div,17
(Node -> Node) - iden in ^(adj & ~adj)
-- div,1
all n:Node | Node in n.*adj
-- div,10
all n1,n2:Node | n1 in adj.n2
-- div,1
all n1, n2 : Node | n1 in n2.adj
-- div,1
all x : Node | Node in x.^adj
-- div,1
some n:Node | Node in n.*adj
-- div,3
all n1,n2:Node | n1->n2 in adj
-- div,2
some n:Node | Node in n.^adj
-- div,1
all n : Node | Node = (n.adj + n)
-- div,1
all n : Node | Node in n.^(~adj)
-- div,1
all n1,n2: Node | n1 in n2.*adj
-- div,2
all n1,n2: Node | n2 in n1.^adj
-- div,3
all n1,n2: Node | n2 in n1.*adj
-- div,2
all n1,n2: Node | n1 in n2.^adj
-- div,2
all x : Node | Node in x.adj + x
-- div,1
all disj x,y : Node | x in y.^adj
-- div,4
all n1,n2:Node | n1->n2 in ^adj
-- div,1
all n : Node | Node = (n.^adj + n)
-- div,1
all x, y : Node | x in ^adj.y & x
-- div,1
all x, y : Node | some (^adj).y & x
-- div,1
all x, y : Node | some x & (^adj).y
-- div,2
all n : Node | Node in n.*adj & n
-- div,1
all n:Node | Node-n in n.*adj
-- div,1
all n : Node | Node-n in n.^adj
-- div,5
all n : Node | Node in n.^adj & n
-- div,1
all n:Node |Node in  n.(adj.~adj)
-- div,1
all x, y : Node | some (x<:^adj).y
-- div,1
all n : Node | Node in n.*adj + n
-- div,1
all x : Node | Node in x.^adj + x
-- div,3
all x : Node | Node in x.^adj - x
-- div,1
all n : Node | Node in n.adj.*adj
-- div,1
all n : Node | Node in n.^adj + n
-- div,1
all x, y : Node | some x<:(^adj.y)
-- div,1
some n:Node | Node in (n.^adj +n)
-- div,1
all n : Node | Node = n.(adj + ~adj)
-- div,1
all n : Node | n.(adj + ~adj) = Node
-- div,2
all a, b : Node | b in (a.adj + adj.a)
-- div,1
all n:Node | Node in n.(~adj + adj)
-- div,1
all n:Node |Node in  n.(adj + ~adj)
-- div,3
all n1, n2 : Node | n2 in n1.adj.*adj
-- div,1
some n:Node |Node in  n.(adj + ~adj)
-- div,1
all n:Node | Node in (n.adj + adj.n)
-- div,1
all x : Node | Node in x.adj + adj.x
-- div,1
all x, y : Node | Node in (x<:^adj).y
-- div,1
all n:Node | Node in n.(n->n.*adj)
-- div,2
all n:Node| Node  in (adj.n + n.adj)
-- div,1
all a,b:Node | b in a.^(adj+~adj)
-- div,1
all n:Node | Node = n.^(adj + ~adj)
-- div,2
all n : Node | (n.^(adj + ~adj)) = Node
-- div,2
all n1, n2: Node | n1 in n2.(adj + ~adj)
-- div,1
all n:Node | Node in n.*(adj+^adj)
-- div,1
all n : Node | Node in n.(^adj + ~adj)
-- div,3
all n:Node | Node in n.^(adj+~adj)
-- div,12
all n:Node | Node in n.(~adj + *adj)
-- div,1
all n:Node | Node in n.adj + ~adj.n
-- div,1
all n : Node | Node-n  in n.^adj-n
-- div,1
all  n1:Node | Node in (n1.adj +adj.n1)
-- div,1
all x : Node | Node in x.adj + (~adj).x
-- div,1
all n : Node | n.(adj + ~adj) = Node - n
-- div,1
all n: Node | Node - n in n.(adj + ~adj)
-- div,1
all x, y : Node | some x.*adj & y.*adj
-- div,2
all n1,n2:Node | n2 in n1.^(adj + ~adj)
-- div,1
all n:Node | Node in n.(^adj+^~adj)
-- div,2
all x, y : Node | some x.^adj & y.^adj
-- div,1
all n:Node | Node in n.*adj + ^adj.n
-- div,3
all x : Node | Node in x.*adj + x.~adj
-- div,1
all n : Node | Node in n.^adj & ^adj.n
-- div,1
all x : Node | Node in x.^adj + ^adj.x
-- div,1
all n : Node | Node in n.*adj & ^adj.n
-- div,1
all x : Node | Node in x.*adj + *adj.x
-- div,6
all x : Node | Node in x.adj + adj.x + x
-- div,2
all n:Node | Node in n.*adj + n.*adj
-- div,1
all n:Node | Node in (n.adj + adj.n).adj
-- div,1
all n:Node | Node in n.*adj + *adj.n
-- div,3
all n:Node | Node in n.^adj + ^adj.n
-- div,4
all n : Node | Node = (n.(^adj + ~adj) + n)
-- div,1
all a,b:Node | a.^adj + b.^adj = Node
-- div,1
all n : Node | Node in n.^adj || one Node
-- div,1
all n : Node | Node - n = n.^(adj + ~adj)
-- div,2
all disj n1, n2: Node | n1 in n2.(adj + ~adj)
-- div,1
all n : Node | (n.^adj + n.^~adj) = Node
-- div,2
all x, y : Node | Node in x.*adj & y.*adj
-- div,1
all n: Node | Node = (n.^adj + n.^~adj)
-- div,5
all n : Node | (n.^adj & n.^~adj) = Node
-- div,1
all n: Node | Node = (n.^adj + ^~adj.n)
-- div,1
all x, y : Node | Node in x.*adj + y.*adj
-- div,1
all n : Node | (^adj.n + ^~adj.n) = Node
-- div,1
all n:Node | Node in n.^(^adj + ^~adj)
-- div,1
all n:Node | Node in n.*adj + n.*~adj
-- div,1
all n:Node | Node in n.^adj+n.^~adj
-- div,6
all x : Node | Node in x.adj + (~adj).x + x
-- div,1
all n:Node | Node in n.adj + ~adj.n + n
-- div,1
all e1 : Node | Node in (e1.*adj + ^adj.e1)
-- div,1
all n:Node | Node in n.*adj + ^*adj.n
-- div,1
all n:Node | Node in (n.adj + adj.n).^adj
-- div,1
all x : Node | Node in x.*adj + ~*adj.x
-- div,5
all x : Node | Node in x.*adj + x.~(*adj)
-- div,5
all x : Node | Node in x.*adj + *~adj.x
-- div,4
all x, y : Node | x->y in adj or y->x in adj
-- div,2
all n:Node | Node in n.^adj + ^~adj.n
-- div,4
all n:Node | Node in n.*adj + *^adj.n
-- div,1
all a,b:Node | a->b in adj and b->a in adj
-- div,1
all e1 : Node | Node in (e1.*adj + *adj.e1)
-- div,1
all n:Node | Node in n.*adj + ^~adj.n
-- div,1
all n:Node | Node in (n.adj + adj.n).*adj
-- div,1
all x : Node | Node in x.*adj + x.*~adj
-- div,7
all x : Node | Node in x.*adj + x.~(^adj)
-- div,1
all x : Node | Node in x.^adj + x.^(~adj)
-- div,2
all n:Node | Node in n.*adj + n.^~adj
-- div,2
all n:Node | Node in (n.*adj + *~adj.n)
-- div,1
all e1 : Node | Node in (e1.^adj + ^adj.e1)
-- div,1
all a,b:Node | a->b in adj or b->a in adj
-- div,1
all e1, e2 : Node | e2 in e1.*adj + *adj.e1
-- div,2
all x, y : Node | some x<:^adj & y<:^adj
-- div,1
all e1 : Node | Node in (e1.*adj + e1.~*adj)
-- div,1
all x : Node | Node in x.^adj + ^adj.x + x
-- div,1
all x : Node | Node in x.^adj + x + ^adj.x
-- div,2
all e1 : Node | Node in e1.*adj + e1.*~adj
-- div,2
all n1,n2:Node | n1 in adj.n2 and n2 in adj.n1
-- div,1
all a, b : Node | a in b.*adj or b in a.*adj
-- div,1
all n1, n2 : Node | n2 in (n1.^adj + n1.^(~adj))
-- div,2
all a, b : Node | a in b.^adj or b in a.^adj
-- div,1
all a:Node, b:Node | b in a.^(adj + ~adj)
-- div,1
all a,b:Node | b in a.^adj and a in b.^adj
-- div,1
all x, y : Node | x in ^adj.y and y in ^adj.x
-- div,2
all n:Node | Node in n.^adj or Node in n.adj
-- div,1
all n : Node | Node = (n.^adj + n.^(~adj) + n)
-- div,7
all n : Node | Node = (n.^adj & n.^(~adj) + n)
-- div,1
all n:Node | Node in n.^adj + ^~adj.n + n
-- div,1
all x : Node | Node in x.^adj + x + ^~adj.x
-- div,1
all x : Node | Node in x.^adj + x + x.^~adj
-- div,1
all n:Node | Node in n.^adj + n.^~adj + n
-- div,2
all n:Node | Node-n in (n.^adj + n.^~adj)
-- div,1
all n:Node | Node in (n+ n.adj + adj.n).*adj
-- div,1
all e1 : Node | (Node - e1) in (e1.^adj + *adj.e1)
-- div,1
all e1 : Node | (Node - e1) in (e1.*adj + *adj.e1)
-- div,1
all e1 : Node | Node in (e1.^adj + ^adj.e1) - e1
-- div,2
all a,b:Node | b in a.^adj and b in a.^~adj
-- div,1
all e1 : Node | (Node - e1) in (e1.^adj + ^adj.e1)
-- div,1
all x, y : Node | Node in x.^adj + x + x.^~adj
-- div,1
all n:Node | Node in n.(n->(n.*adj+n.^~adj))
-- div,2
some adj
all n : Node | Node in n.^(adj + ~adj)
-- div,1
inv1 and inv4
}

pred inv1{
~adj = adj
}

pred inv4{
adj = Node -> Node
-- div,1
all disj n,x:Node| n in x.^adj || x in n.^adj
-- div,1
all n1,n2: Node | n2 in n1.*adj and n1 in n2.*adj
-- div,1
all n1,n2: Node | n1 in n2.*adj or n2 in n1.*adj
-- div,1
all n1,n2: Node | n1 in n2.*adj and n2 in n1.*adj
-- div,1
all e1, e2 : Node | e2 in e1.*adj or e2 in *adj.e1
-- div,1
all n1,n2:Node | n1 in n2.^adj || n2 in n1.^adj
-- div,4
all n1,n2: Node | n1 in n2.^adj and n2 in n1.^adj
-- div,7
all n1,n2: Node | n1 in n2.*adj and n2 in n1.^adj
-- div,1
inv1
all n : Node | Node in n.^adj || one Node
}

pred inv1{
adj in ~adj
-- div,1
all n:Node | Node in (n+ n.*adj + *adj.n).*adj
-- div,4
all x, y: Node | x in y.^(adj) or x in adj.y or x = y
-- div,1
all disj n,x:Node| n in x.^adj || n in x.~^adj
-- div,1
all disj n,n1:Node | n in n1.^adj or n1 in n.^adj
-- div,1
all n1, n2 : Node | n2 in (n1.^adj) or (n2 in n1.^(~adj))
-- div,1
all n : Node | Node in n.^adj && inv1 || one Node
}

pred inv1{
adj in ~adj
-- div,1
all disj n1,n2: Node | n1 in n2.^adj or n2 in n1.^adj
-- div,5
all disj n1,n2: Node | n1 in n2.^adj and n2 in n1.^adj
-- div,3
all disj n1,n2: Node | n2 in n1.*adj and n1 in n2.*adj
-- div,1
all n : Node | n.adj != n and (some n.adj or some n.~adj)
-- div,1
all a:Node, b:Node | b in a.^adj || b in a.~^adj
-- div,1
all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node)) = Node
-- div,3
all n1, n2 : Node | (n2 in (n1.^adj + n1.^(~adj))) and n1!=n2
-- div,1
all n1, n2 : Node | n2 in n1.adj.*adj and n1 in n2.adj.*adj
-- div,1
all n : Node | Node in n.^adj && Node in ^adj.n || one Node
-- div,1
all n1,n2:Node | n2 in n1.^(adj + ~adj) || n1 in n2.^(adj + ~adj)
-- div,1
all e1 : Node | Node in (e1.*adj + e1.~*adj + *adj.e1 + ~*adj.e1)
-- div,1
all e1 : Node | Node in (e1.*adj + *adj.e1) + (e1.~*adj + ~*adj.e1)
-- div,1
inv1 and all n:Node | Node in n.^adj
}

pred inv1{
all n1,n2:Node | n2 in n1.adj implies n1 in n2.adj
-- div,1
all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node) + (n1.^adj:>n1)) = Node
-- div,1
all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node)) = Node and some n1.adj:>n1
-- div,1
all n:Node, x:Node| (n in x.adj or n in x.~adj)&& (x in n.adj || x in n.~adj)
-- div,6
all n1, n2 : Node | n1->n2 in adj => n2->n1 in adj
all n:Node | Node in n.*adj
-- div,2
all n:Node, x:Node| (n in x.^adj or n in x.~^adj)&& (x in n.^adj || x in n.~^adj)
-- div,1
