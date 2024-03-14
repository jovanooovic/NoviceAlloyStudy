/**
 * Relational logic revision exercises based on a simple model of a 
 * file system trash can.
 * 
 * The model has 3 unary predicates (sets), File, Trash and
 * Protected, the latter two a sub-set of File. There is a binary 
 * predicate, link, a sub-set of File x File.
 *
 * Solve the following exercises using Alloy's relational logic, which
 * extends first-order logic with:
 *	- expression comparisons 'e1 in e2' and 'e1 = e2'
 *	- expression multiplicity tests 'some e', 'lone e', 'no e' and 'one e'
 *	- binary relational operators '.', '->', '&', '+', '-', ':>' and '<:' 
 *	- unary relational operators '~', '^' and '*'
 *	- definition of relations by comprehension
 **/

/* The set of files in the file system. */
sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}
/* The set of protected files. */
sig Protected in File {}

//SECRET
pred inv1o {
	no Trash
}

/* The trash is empty. */
pred inv1 {

}

//SECRET
check inv1Ok {inv1 iff inv1o} for 4

//SECRET
pred inv2o {
	File in Trash
}

/* All files are deleted. */
pred inv2 {

}

//SECRET
check inv2Ok {inv2 iff inv2o} for 4

//SECRET
pred inv3o {
	some Trash
}

/* Some file is deleted. */
pred inv3 {

}

//SECRET
check inv3Ok {inv3 iff inv3o} for 4

//SECRET
pred inv4o {
	no Trash & Protected
}

/* Protected files cannot be deleted. */
pred inv4 {

}

//SECRET
check inv4Ok {inv4 iff inv4o} for 4

//SECRET
pred inv5o {
	File = Trash + Protected
}

/* All unprotected files are deleted.. */
pred inv5 {

}

//SECRET
check inv5Ok {inv5 iff inv5o} for 4

//SECRET
pred inv6o {
	link in File -> lone File
}

/* A file links to at most one file. */
pred inv6 {

}

//SECRET
check inv6Ok {inv6 iff inv6o} for 4

//SECRET
pred inv7o {
	no File.link & Trash
}

/* There is no deleted link. */
pred inv7 {

}

//SECRET
check inv7Ok {inv7 iff inv7o} for 4

//SECRET
pred inv8o {
	no link
}

/* There are no links. */
pred inv8 {

}

//SECRET
check inv8Ok {inv8 iff inv8o} for 4

//SECRET
pred inv9o {
	no link.link
}

/* A link does not link to another link. */
pred inv9 {

}

//SECRET
check inv9Ok {inv9 iff inv9o} for 4

//SECRET
pred inv10o {
	all f : File | f in Trash implies f.link in Trash
}

/* If a link is deleted, so is the file it links to. */
pred inv10 {

}

//SECRET
check inv10Ok {inv10 iff inv10o} for 4
