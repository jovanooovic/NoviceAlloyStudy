adj in ^Node
-- div,1
adj.Node in adj
-- div,1
adj = Node.^adj
-- div,1
adj in Node.^adj
-- div,1
all n : Node | n
-- div,7
Node.*adj in adj
-- div,1
Node.^adj in adj
-- div,1
adj in Node.(^adj)
-- div,1
Node->Node in Node
-- div,1
adj + ^adj in Node
-- div,1
adj in (^adj.Node)
-- div,1
all n:Node | n.*adj
-- div,1
all a:Node | a.^adj
-- div,1
Node = (^adj + ^~adj)
-- div,1
adj + ^adj in Node.adj
-- div,1
all n: Node | n - n = {}
-- div,1
all n: Node | n - n in {}
-- div,1
all a,b:Node | a.^b in adj
-- div,1
Node in(all n:Node |n.adj)
-- div,1
adj = Node.^adj + Node.^adj
-- div,1
all x : Node | Node in ^adj
-- div,1
adj = Node.^adj + Node.~^adj
-- div,1
adj = Node.^adj || Node.~^adj
-- div,1
all x, y : Node | (x<:^adj).y
-- div,1
all n: Node | n.adj or n.~adj
-- div,1
adj = Node.^adj or Node.~^adj
-- div,1
all n : Node | adj in n.(^adj)
-- div,1
all n : Node | adj in (^adj.n)
-- div,1
all a,b:Node | a.^adj + b.^adj
-- div,1
all x, y : Node | x & (^adj).y
-- div,1
all b:Node | b in ^(adj + ~adj)
-- div,1
Node in (Node.*adj  + adj.*Node)
-- div,2
Node in(all n:Node | some n.adj)
-- div,1
all x, y : Node | some (x.^adj).y
-- div,2
inv6[adj]
}

pred inv6{
inv6[adj]
-- div,1
all x, y : Node | some x.(^adj.y)
-- div,1
all x : Node | Node in x<:^adj + x
-- div,1
all n : Node | n.^adj in Node->Node
-- div,1
all x, y : Node | Node in (x.^adj).y
-- div,1
all x: Node | x in x.^(adj) or adj.x
-- div,1
all x, y : Node | ^adj<:x in ^adj<:y
-- div,1
all x, y : Node | some x.^adj & y^adj
-- div,1
all a,b:Node | a.^adj + b.^adj in iden
-- div,2
all n : Node | Node  in (n.^adj + ~adj)
-- div,1
all n:Node | Node in n.^adj and n.^~adj
-- div,1
all a, b : Node | b in (a.*adj + adj.*a)
-- div,1
some adj & Node in (Node.adj  + adj.Node)
-- div,1
all x : Node | Node in x.*(no adj - ~adj)
-- div,1
all n:Node | Node in n.(n-> n.*adj) in adj
-- div,1
all x : Node | Node in ^x.adj + ^adj.x + x
-- div,1
all n:Node | Node in n.(n->n.*adj+n.^~adj)
-- div,1
all x, y : Node | x in ^adj.y & y in ^adj.x
-- div,1
all a:Node, b:Node | b in ^(a.adj + a.~adj)
-- div,1
all a,b:Node | b in a.^adj and b in ~a.^adj
-- div,1
all n: Node | n.adj in adj or n.~adj in adj
-- div,1
all a,b:Node | a.^adj + b.^adj = a->b in adj
-- div,1
all x: Node | x in x.^(adj) or x in adj.^(x)
-- div,1
all n:Node | Node in n.(n.^adj + n.^~adj + n)
-- div,1
all n:Node | Node in n->(n.^adj + n.^~adj + n)
-- div,1
all a,b:Node | a.^b in adj implies b->a in adj
-- div,2
all x : Node | Node in ^(x.adj) + ^(adj.x) + x
-- div,1
all x : Node | Node in ^(x.adj).adj + ^adj.(adj.x)
-- div,1
all n: Node | some Node.adj or some Node.~adj in adj
-- div,1
all x : Node | Node in ^((x.adj).adj) + ^(adj.(adj.x))
-- div,1
all n: Node | n.adj + (some Node.adj or some Node.~adj)
-- div,1
all n: Node | n.adj in (some Node.adj or some Node.~adj)
-- div,1
all n1:Node | some ((^adj.n1:>Node) + (n1.^adj:>Node)) = Node
-- div,1
all n1, n2, n3: Node | n1->n2 and n3->n2 implies n1->n3 in adj
-- div,1
all n1, n2, n3: Node | n1.adj.n2 and n3.adj.n2 implies n1->n3 in adj
-- div,1
all n1, n2, n3: Node | n1->n2 in adj and n3->n2 implies n1->n3 in adj
-- div,4
all n1, n2, n3:  Node | n1->n2 in adj and n2->n3 implies n1.*n3 in adj
-- div,2
all n1, n2, n3:  Node | n1->n2 in adj and n3->n2 implies n1.^n3 in adj
-- div,1
all n1, n2, n3:  Node | n1->n2 in adj and n3->n2 implies n1->n3 in adj
-- div,2
all n1, n2, n3:  Node | n1->n2 in adj and n3->n2 implies n1.*n3 in adj
-- div,1
all n1,n2:Node | n2 in ^(n1.adj + n1.~adj) || n1 in ^(n2.adj + n2.~adj)
-- div,1
