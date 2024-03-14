-- equiv pair start,3
(0 = 0)
-- div,1
all	f1, f2:File | f1->f2 in link => f1->f2 in link
-- div,1
all f,x :File | f->x in link implies after  f->x in link
-- div,1
-- equiv pair end
-- equiv pair start,1
no f: Trash | File.link = f
-- div,1
-- equiv pair end
-- equiv pair start,1
File in Trash =>  no File.link
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Trash | t not in t.link
-- div,1
-- equiv pair end
-- equiv pair start,6
all f : File | some f.link => f.link not in Trash
-- div,5
all f:File | (f.link != none) => f.link not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | some f1 : File | f->f1 in link implies f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f1 : File | some f : File | f->f1 in link implies f1 not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
all f,f1:File | f->f1 in link and f not in Trash implies f1 not in Trash
-- div,3
-- equiv pair end
