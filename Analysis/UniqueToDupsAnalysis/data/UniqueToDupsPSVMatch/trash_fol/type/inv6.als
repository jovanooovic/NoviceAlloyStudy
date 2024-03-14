link
-- div,1
File.link
-- div,2
link.link
-- div,1
File.link > 0
-- div,1
link.File > 0
-- div,1
~link.link
-- div,1
link -> one File
-- div,1
all f,g:File | f->g
-- div,1
link File -> one File
-- div,1
link File -> some File
-- div,1
all f,x,y : File | f->x
-- div,1
link in File one -> link
-- div,1
some f:File | f link File
-- div,1
all x,y : File | x link y
-- div,1
all f : File | (link.f) > 0
-- div,1
all f:File | link.f in iden
-- div,1
all f:File | ~link.f in iden
-- div,2
all f : File | f -> link > 0
-- div,1
link in File one -> set link
-- div,1
all x,y : File | x->y link x
-- div,1
all x,y : File | x->y link y
-- div,2
all x,y : File | x->y in File
-- div,1
all f : File | some l : link | f->l
-- div,1
all f: File | some l: link | f -> l
-- div,1
all f : File | (some l : link | l in f)
-- div,3
all f: File | some l: link | f implies l
-- div,2
all disj f1,f2 : File |  (f1->f2) & link
-- div,1
all f1, f2 : File | f1->f2 implies f2->f1
-- div,2
all f : File | (some l : link | l in f.l)
-- div,2
all f1,f2 : File | lone (f1 -> f2) in link
-- div,1
all f : File | some l : link | f->l in link
-- div,1
all disj f1,f2 : File | some f1->f2 in link
-- div,1
all f,x,y : File | f->x and f->y implies x=y
-- div,1
all f1,f2 : File | f1->f2 in File and f1->f2
-- div,1
all f: File | some l: link | f implies some l
-- div,4
all disj f1,f2 : File | some (f1->f2) in link
-- div,1
all f: File | some l: link | l implies some f
-- div,1
all disj f1,f2 : File | some (f1->f2 in link )
-- div,2
all disj f1,f2 : File | some ( (f1->f2) in link )
-- div,1
all a,b,c:File | a->b and a->c in link implies b=c
-- div,1
all x,y : File | x->y implies x in link and y in link
-- div,1
all f,g,h : File | f->g in link implies f not in link
-- div,1
all x, y, z : File | x->y in link and x->z implies y=z
-- div,1
all x,y,z : File | (x->y in link and x->z implies y=z)
-- div,1
all f : File | (some l : link | f.l in f)
-- div,2
all f1, f2, f3 : File | f1->f2 and f1->f3 implies f2=f3
-- div,1
all x, y, z : File | (x->y in link and x->z) implies y=z
-- div,3
all f,g,h:File| f->g in link and f-h in link implies g=h
-- div,1
all f1, f2, f3 : File | f1 -> f2 and f1 -> f3 => f2 = f3
-- div,1
all f1,f2,f3:File | f1->f2 in link and f1->f3 implies f2=f3
-- div,1
all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
-- div,8
all x, y, z : File | (x -> y in link and x -> z) implies y=z
-- div,1
all x,y,z : File | x->y in File and x->z in File implies y=z
-- div,1
all f1,f2,f3:File | f1 -> f2 and f1->f3 in link implies f2=f3
-- div,1
all x, y, z : File | x->y in File and x->z in File implies y=z
-- div,1
all f1,f2,f3:File | f1 -> f2 and f1 -> f3 in link implies f2=f3
-- div,1
all f1,f2,f3:File | f1 -> f3 and f2 -> f3 in link implies f1 = f2
-- div,1
all f : File, l,t: link | f->l in link and f->t in link implies l=t
-- div,2
all f1,f2,f3:File | (f1 -> f3 and f2 -> f3 in link) implies f1 = f2
-- div,1
all f1,f2,f3:File | (f1 -> f2 and f1 -> f3) in link implies f2 = f3
-- div,1
all f : File, l,t: link | f->l in File and f->t in File implies l=t
-- div,1
all f : File, t,u : link  |f->t in link and f->u in link implies t=u
-- div,1
all l : link , g,f : File | g->l in link and f->l in link implies g=f
-- div,1
all f1:File,f2:File,f3:File | f1->f2 in link and f1->f3 implies f2=f3
-- div,1
all f1,f2,f3:File | ((f1 -> f3 and f2 -> f3) in link) implies f1 = f2
-- div,1
all f1,f2,f3:File | ((f1 -> f2 and f1 -> f3) in link) implies f2 = f3
-- div,1
all f1,f2,f3 : File | f1->f2 in File and f1->f3 in File implies f2 = f3
-- div,1
all f,g : File | all l : link | g->l in link and f->l in link implies f=g
-- div,1
some f,g : File | all l : link | g->l in link and f->l in link implies f=g
-- div,1
all l : link , g,f : File | g->l->f in link and f->l->g in link implies g=f
-- div,1
all f1,f2,f3 : File | f1 -> f2 in File and f1 -> f3 in File implies f2 = f3
-- div,1
all f1,f2,f3 : File | (f1 -> f2 in link and f1 -> f3 in link) implies f2  f3
-- div,1
all f,g : File, l,t : link | f->l->g in link and f->t->g in link implies l=t
-- div,1
all f1,f2,f3:File | ((f1 -> f3 in link and f2 -> f3) in link) implies f1 = f2
-- div,1
all f1, f2 : File | f1.link = f2.link implies f1 = f2 and no f1.link = f2.link
-- div,1
all f,g : File | all l,t : link | f->l->g in File and f->t->g in File implies l=t
-- div,1
all f,g : File | all l,t : link | f->l->g in link and f->t->g in link implies l=t
-- div,1
all f1,f2,f3 : File, l : link | f1->f2 in link and f1->f3 in link implies f2=f3
-- div,1
