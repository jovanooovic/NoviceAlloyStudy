-- equiv pair start,1
one link
-- div,1
-- equiv pair end
-- equiv pair start,4
lone link
-- div,1
all f:File | lone f->link
-- div,2
all f1,  f2: File | f1 != f2 implies no f1.link & f2.link and lone link
-- div,1
-- equiv pair end
-- equiv pair start,3
one File.link
-- div,3
-- equiv pair end
-- equiv pair start,6
lone File.link
-- div,5
all f:File | lone File.link
-- div,1
-- equiv pair end
-- equiv pair start,7
link in File -> one File
-- div,2
all f:File | one f.link
-- div,5
-- equiv pair end
-- equiv pair start,3
link in File one -> one File
-- div,2
link in File some -> one File
-- div,1
-- equiv pair end
-- equiv pair start,10
all f,g,h : File | f->g in link implies f->h not in link
-- div,1
all x, y, z : File | x -> y in link implies x -> z not in link
-- div,1
all f,g,h : File | f->g in link implies h->g not in link
-- div,1
all f1,  f2: File | f1 = f2 implies no f1.link & f2.link
-- div,1
all x,y : File | x->y in link implies (all z : File | x->z not in link)
-- div,1
all x,y,z : File | x->y in link implies (all z : File | x->z not in link)
-- div,2
all f1,  f2: File | f1->f2 in link implies no f1.link & f2.link and no f1->f1
-- div,1
all x,y : File | x->y in link implies (all z : File | z != y and x->z not in link)
-- div,1
all x,y : File | x->y in link implies (all z : File | z != x and x->z not in link)
-- div,1
-- equiv pair end
-- equiv pair start,9
all x,y,z : File | (x->y in link and x->z in link) implies x=y
-- div,2
all f, l, k : File | f->l in link and f->k in link implies f=k
-- div,2
all f1, f2, f3 : File | (f1 -> f2 in link and f1 -> f3 in link) implies f1 = f2
-- div,2
all f1,f2,f3 : File | f1 -> f3 in link and f2 -> f3 in link implies f2 = f3
-- div,2
all x : File, t, u : File | x -> t in link and x -> u in link implies x = u
-- div,1
-- equiv pair end
-- equiv pair start,1
all f1, f2 : File | f1.link = f2.link implies f1 = f2 and no f1.link & f2.link
-- div,1
-- equiv pair end
