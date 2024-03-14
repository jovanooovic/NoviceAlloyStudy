no Trash.link
-- div,3
no link.Trash
-- div,1
Trash' = Trash
-- div,1
all f : File | f & Trash != 0
-- div,1
all f:File, t:Trash | f in t
-- div,1
all t : Trash , f : File | f->t not in link
-- div,3
all t : Trash , f : File | t->f not in link
-- div,2
all w : File | w not in Trash or w in Protected
-- div,1
