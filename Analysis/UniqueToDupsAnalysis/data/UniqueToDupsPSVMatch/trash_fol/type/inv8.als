link
-- div,1
link not in univ
-- div,1
link.File in iden
-- div,1
all l : link | l in Trash
-- div,1
all f:File | f not in link
-- div,1
all f1, f2 : File | f1->f2
-- div,6
all f: File | f not in link
-- div,2
all f : File | f not in link
-- div,1
all l : link | l in link
-- div,1
all f:File |no f.link in File
-- div,1
all l : link | l not in link
-- div,2
all f : File | f.link is empty
-- div,1
all f1, f2:File | f1 -> f2 = none
-- div,1
all f:File | no isLink[f]
}

/* A link does not link to another link. */

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
all f : File | no isLink[f]
}

/* A link does not link to another link. */

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
