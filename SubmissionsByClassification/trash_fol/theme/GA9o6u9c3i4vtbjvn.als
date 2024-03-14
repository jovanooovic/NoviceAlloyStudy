/**
 * First-order logic revision exercises based on a simple model of a 
 * file system trash can.
 * 
 * The model has 3 unary predicates (sets), File, Trash and
 * Protected, the latter two a sub-set of File. There is a binary 
 * predicate, link, a sub-set of File x File.
 *
 * Solve the following exercises using only Alloy's first-order 
 * logic:
 *	- terms 't' are variables
 *	- atomic formulas are either term comparisons 't1 = t2' and 
 * 't1 != t2' or n-ary predicate tests 't1 -> ... -> tn in P' and 
 * 't1 -> ... -> tn not in P'
 *	- formulas are composed by 
 *		- Boolean connectives 'not', 'and', 'or' and 'implies'
 *		- quantifications 'all' and 'some' over unary predicates
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

/* The trash is empty. */
pred inv1 {
	no Trash
}

/* All files are deleted. */
pred inv2 {
	File in Trash
}

/* Some file is deleted. */
pred inv3 {
	some Trash
}

/* Protected files cannot be deleted. */
pred inv4 {
	no (Protected & Trash)
}

/* All unprotected files are deleted.. */
pred inv5 {
	(File - Protected) & Trash = (File - Protected)
}

/* A file links to at most one file. */
pred inv6 {
	link in File set -> lone File
}

/* There is no deleted link. */
pred inv7 {
	
	not some f1, f2: File | f1->f2 in link && f2 in Trash 
}

/* There are no links. */
pred inv8 {
	no link
}

/* A link does not link to another link. */
pred inv9 {
	not some l1, l2, l3 : File | l1->l2 in link && l2->l3 in link
}

/* If a link is deleted, so is the file it links to. */
pred inv10 {
	all l1, l2 : File | (l1->l2 in link && l1 in Trash) => l2 in Trash
}
