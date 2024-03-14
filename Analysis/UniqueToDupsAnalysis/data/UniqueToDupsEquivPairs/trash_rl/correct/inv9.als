-- equiv pair start,138
no link.link
-- div,51
no File.link.link
-- div,22
File.link.link = none
-- div,2
link.link = none -> none
-- div,1
no link.File & File.link
-- div,1
all f:File | no f.link.link
-- div,20
all f: File.link| no f.link
-- div,3
all l : File.link | no l.link
-- div,2
all f:File | f.link.link = none
-- div,4
all l1:File.link | l1.link = none
-- div,1
all f:File, f2:f.link | no f2.link
-- div,1
all f: File | (some link.f) => (no f.link)
-- div,3
all f : File | some f.link implies no link.f
-- div,3
all f1, f2 : File | no f1.link & f2.~link
-- div,4
all f,g: File | f->g in link implies no g.link
-- div,1
all f : File |
all l : f.link |
no l.link
-- div,1
all f : File | some f.link implies no f.link.link
-- div,1
all f1,f2 : univ | f1->f2 in link implies no f2.link
-- div,2
all f,g,h:File | f->g in link implies g->h not in link
-- div,3
all l: File.link, l2: l.link | l2 not in File.link
-- div,1
all f, f1, f2 : File | f->f1 in link => f1->f2 not in link
-- div,5
all f1,f2,f3: File | f1->f2 in link implies f2->f3 not in link
-- div,1
all l1,l2,l3: File| l1->l2 in link implies l2->l3 not in link
-- div,1
not some f1,f2,f3:File | f1->f2 in link and f2->f3 in link
-- div,2
all f : File | all f1 : f.link | no f1.link



no File.link.link
-- div,2
-- equiv pair end
