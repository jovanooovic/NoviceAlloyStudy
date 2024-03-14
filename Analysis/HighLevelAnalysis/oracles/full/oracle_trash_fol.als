
pred inv1o {
	no Trash
}
/* The trash is empty. */

pred inv2o {
	File in Trash
}
/* All files are deleted. */

pred inv3o {
	some Trash
}
/* Some file is deleted. */

pred inv4o {
	no Trash & Protected
}
/* Protected files cannot be deleted. */

pred inv5o {
	File = Trash + Protected
}
/* All unprotected files are deleted. */

pred inv6o {
	link in File -> lone File
}
/* A file links to at most one file. */

pred inv7o {
	no File.link & Trash
}
/* There is no deleted link. */

pred inv8o {
	no link
}
/* There are no links. */

pred inv9o {
	no link.link
}
/* A link does not link to another link. */

pred inv10o {
	all f : File | f in Trash implies f.link in Trash
}
/* If a link is deleted, so is the file it links to. */