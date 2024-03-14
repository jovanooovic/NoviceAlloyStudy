-- equiv pair start,5
no Trash.link
-- div,3
all t : Trash , f : File | t->f not in link
-- div,2
-- equiv pair end
-- equiv pair start,4
no link.Trash
-- div,1
all t : Trash , f : File | f->t not in link
-- div,3
-- equiv pair end
-- equiv pair start,2
Trash' = Trash
-- div,1
all f : File | f & Trash != 0
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File, t:Trash | f in t
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : File | w not in Trash or w in Protected
-- div,1
-- equiv pair end
