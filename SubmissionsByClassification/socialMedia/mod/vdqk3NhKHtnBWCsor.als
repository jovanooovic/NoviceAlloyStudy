sig Hash {}
sig Name {}
abstract sig Object {
	hash : one Hash
}

sig Blob extends Object {}

sig Tree extends Object {
	objects : Hash -> Name
}

sig Commit extends Object {
	tree : one Hash,
	parent : set Hash
}

pred ancestorOf [p:Commit, c:Commit]
{
	
	p in c.^(parent.~hash)
}

pred subtreeOf [s:Tree, t:Tree]
{
	
	s in t.^(objects.Name.~hash)
}

pred Invs
{
	
	all o1, o2:Object | o1.hash = o2.hash => o1 = o2

	
	all t:Tree, h:Hash, n:Name | h in t.objects.n => (one (Blob+Tree).hash & h)

	
	all c:Commit | one Tree.hash & c.tree

	
	all c:Commit, p:c.parent | one Commit.hash & p

	
	all t:Tree, n:Name | lone t.objects.n

	
	all t:Tree, h:Hash | lone h & t.objects.Name

	
	all t1, t2:Tree | t1.objects = t2.objects => t1 = t2

	
	all c1, c2:Commit | (c1.tree = c2.tree && c1.parent = c2.parent) => c1 = c2

	
	
	all c1, c2:Commit | !(ancestorOf[c1, c2] && ancestorOf[c2, c1])

	
	
	all t1, t2:Tree | !(subtreeOf[t1, t2] && subtreeOf[t2, t1])


	

	
	

	
	

	
	

	
	

	
	
}
