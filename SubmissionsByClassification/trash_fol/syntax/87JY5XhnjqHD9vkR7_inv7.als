sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv7{
all f:File | isLink[f] implies f not in Trash
}
}

/* There are no links. */

pred isLink[f:File]{
some g:File | g->f in link
}

/* There is no deleted link. */

