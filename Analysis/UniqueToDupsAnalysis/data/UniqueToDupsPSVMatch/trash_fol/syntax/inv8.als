link in Empty
-- div,1
link in empty
-- div,1
all f:file | f not in link
-- div,1
all l:File | l not in Link
-- div,1
all l:Link | l not in Link
-- div,1
all f:File | not isLisnk[k]
-- div,1
all f:File | not isLisnk[f]
-- div,1
all f : File | f.link = empty
-- div,1
all x,y : File | f->g not in link
-- div,1
all f1,f2:Files | f1->f2 not in link
-- div,1
all x: File, y: File | x->y in link implies false
-- div,1
all x: File, y: File | x->y in link implies False
-- div,1
all f | not is_link[f]
}

/* A link does not link to another link. */

pred is_link[f : File]{
some g : File | f->g in link
-- div,2
all f | not is_linked[f]
}

/* A link does not link to another link. */

pred is_linked[f : File]{
some g : File | g->f in link
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,1
