some File.link
-- div,1
#(link.File) > 0
-- div,1
#(File.link) > 0
-- div,1
link.~link in iden
-- div,1
link in File lone -> set File
-- div,1
all f : File | some link
-- div,1
all f,g,h:File| no Trash
-- div,1
all f : File | some link.f
-- div,3
all f : File | some f.link
-- div,8
all f : File | not no f.link
-- div,2
all f : File | some f->link
-- div,1
all f : File | #(link.f) > 0
-- div,1
all f : File | #(f.link) > 0
-- div,2
all x,y : File | x->y in link
-- div,2
all f,g:File | f->g in link
-- div,2
all f : File | #(f.link) >= 1
-- div,1
some x,y : File | x->y in link
-- div,1
all f,g,h:File| f->g in link
-- div,1
all f : File | some f->f.link
-- div,1
all f1,f2:File | f1->f2 in link
-- div,1
all disj f1,f2 : File | (f1->f2) in link
-- div,1
all f:File | f not in Protected implies f in Trash
-- div,1
all f : File | all g : File | f->g in link
-- div,1
all f,g:File | f->g in link implies g->f in link
-- div,1
all x : File | all y : File | x->y in link
-- div,1
all f : File | some g : File | f->g in link
-- div,1
all x : File | some y : File | x->y in link
-- div,3
all f1, f2 : File | f1.link = f2.link implies f1 = f2
-- div,3
all f,g,h:File| f->g in link and f->h in link
-- div,2
all f,g,h : File | f->g in link implies g->h not in link
-- div,1
all f1,  f2: File | f1.link != f2.link implies f1 = f2
-- div,1
all f1:File | some f2:File | f1->f2 in link
-- div,1
all f1,  f2: File | f1 != f2 implies no f1.link & f2.link
-- div,5
all f1,  f2: File | f1->f2 in link implies no f1.link & f2.link
-- div,1
all f, f1, f2 : File | (f -> f1 in link and f1 -> f2 in link) implies f1 = f2
-- div,2
all f1,f2,f3 : File | (f1->f2 in link and f3->f2 in link) => f1 = f3
-- div,1
all f : File | some g : File | f->g in link implies g->f not in link
-- div,1
all f1,f2,f3:File | ((f1 -> f3 in link and f2 -> f3 in link)) implies f1 = f2
-- div,2
some f1,f2,f3:File | f1->f2 in link and f1->f3 in link implies f2=f3
-- div,4
all f : File | some g,h : File | f->g in link implies f->h not in link
-- div,1
