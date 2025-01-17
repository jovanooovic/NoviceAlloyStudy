sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv6{
all e1,e2 : univ, f : File | and e1->f in link and e2->f in link implies e1 = e2
}

/* There is no deleted link. */

