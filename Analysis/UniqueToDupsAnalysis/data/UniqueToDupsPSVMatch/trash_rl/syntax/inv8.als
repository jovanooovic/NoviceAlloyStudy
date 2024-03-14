False
-- div,1
no Link
-- div,1
no links
-- div,3
all link.Trash
-- div,1
no link.link


/* A link does not link to another link. */
-- div,2
all l: Link| l not in univ
-- div,1
all f: File | f.link in no File
-- div,1
all f1,f2 : univ | f1->f2 in not link
-- div,2
