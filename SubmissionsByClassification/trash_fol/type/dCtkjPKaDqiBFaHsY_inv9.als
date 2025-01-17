sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}

pred inv9{
all x, y, z : File | isLinked[y] implies isLink[z]
}

pred isLink{
some g:File | f->g in link
}

/* If a link is deleted, so is the file it links to. */

pred isLinked[f:File]{
some g:File | g->f in link
}

/* There are no links. */

