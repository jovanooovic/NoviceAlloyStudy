link.~link in iden
-- div,1
link.~link not in iden
-- div,1
no f:File | no f.link.link
-- div,1
all f,g,h:File | f->g in link
-- div,1
link.~link in iden && link not in iden
-- div,1
some x,y,z : File | x->y in link implies y->z not in link
-- div,1
all l1:File.link | some l2:File.link | l1 not in l2
-- div,1
all f:File | some f1:(File - f) | f.link not in f1.link
-- div,2
all x,y,z : File | z != y and x->y in link implies x->z not in link
-- div,2
all f:File | some f1:File | f != f1 and f.link not in f1.link
-- div,1
not some f1,f2,f3 : File | f1->f2 in link and f1->f3 in link and f3 != f2
-- div,1
all x : File | all y,z : File | z != y and x->y in link implies x->z not in link
-- div,1
not some f1, f2, f3, f4 : File | ((f1->f2 in link) && (f3->f4 in link)) => not (f1 = f3 && f2 = f4)
-- div,1
all f:File | some f1:(File - f) | f.link not in f1.link

all l1:File.link | some l2:File.link | l1 not in l2
-- div,1
