sig Hash {}
abstract sig Object {
	hash : one Hash
}

sig Blob extends Object {}

sig Name {}

sig Tree extends Object {
	objects : Hash -> Name
}

sig Commit extends Object {
	tree : one Hash,
	parent : set Hash
}


pred Invs {
  
  	
  	all t: Tree, n1: Name, n2: Name, h1: Hash, h2: Hash | t->h1->n1 in objects and t->h2->n2 in objects and h1!=h2 implies n1!=n2
  
  	
 	all h: Hash, o1: Object, o2: Object | o1->h in hash and o2->h in hash implies o1=o2

  	
	
	
  	

  
  	
	
  	all c:Commit | c not in c.^(parent.~hash)
	
  
  
  
  
  	
	
  	all t1, t2 : Tree | t1.objects = t2.objects implies t1=t2
  	all c1, c2 : Commit | (c1.tree = c2.tree) and (c1.parent = c2.parent) implies c1=c2
  	

}
