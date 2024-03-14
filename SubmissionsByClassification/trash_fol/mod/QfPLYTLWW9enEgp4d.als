sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv41{
all f : File | f in Protected implies f not in Trash
}



check {inv4 iff  inv4a} for 10

/* All unprotected files are deleted.. */

pred inv4{
all f : Protected | f not in Trash
}

