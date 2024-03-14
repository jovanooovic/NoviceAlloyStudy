~link.link in iden
-- div,13
link in File -> lone File
-- div,3
all f:File | lone f.link
-- div,40
all f : File | (#f.link)<2
-- div,7
all f: File | #f.link =< 1
-- div,2
all f, f1, f2 : File | f->f1 + f->f2 in link => f1 = f2
-- div,2
all x,y,z : File | (x->y in link and x->z in link) implies z=y
-- div,2
all f,g,h:File| f->g in link and f->h in link implies g=h
-- div,12
all f, l, k : File | f->l in link and f->k in link implies l=k
-- div,2
all f,t,u : File |f->t in link and f->u in link implies t=u
-- div,2
(all t,u,v : File | (t->u in link and t->v in link) implies u=v)
-- div,1
all f,g,z:File | f->g in link and f->z in link implies g = z
-- div,1
all f,l,u : File | f->l in link and f->u in link implies l = u
-- div,1
(all t,u,x : File | t->u in link and t->x in link implies u=x)
-- div,1
all x,y,z : File | x->y in link and x->z in link implies y=z
-- div,26
all f,x,y:File | f ->x in link and f -> y in link implies x=y
-- div,3
all f, f1, f2 : File | f->f1 in link and f -> f2 in link => f1 = f2
-- div,1
all l, f1, f2 : File | (l->f1 in link) and (l->f2 in link) => f1 = f2
-- div,2
all f,a1,a2 : File |
f->a1 in link and f->a2 in link implies a1=a2
-- div,1
all f1,f2,f3:File | f2 in f1.link and f3 in f1.link implies f3=f2
-- div,1
all f1,f2,f3:File | (f1->f2 in link && f1->f3 in link) => f2 = f3
-- div,39
all f1,f2,f3 : File | (f1->f2 in link && f1->f3 in link) => f3 = f2
-- div,1
all f : File, t,u : File  |f->t in link and f->u in link implies t=u
-- div,1
all x : File, t, u : File | x -> t in link and x -> u in link implies t = u
-- div,1
all f,lk1,lk2 : File | f->lk1 in link and f->lk2 in link implies lk1=lk2
-- div,2
all f:File, a,b:File | f->a in link and f->b in link implies a=b
-- div,2
all x: File, y, z: File | x->y in link and x->z in link implies y=z
-- div,3
all f : File, lk1,lk2 : File | f->lk1 in link and f->lk2 in link implies lk1=lk2
-- div,2
all f: File | all f1, f2: File | f->f1 in link and f->f2 in link implies f1=f2
-- div,1
all f1:File,f2:File,f3:File | f1->f2 in link and f1->f3 in link implies f2=f3
-- div,1
all x : File | all y : File | all z : File | x->y in link and x->z in link implies y=z
-- div,2
all x,y : File | x->y not in link or all z : File | x->y in link and x->z in link implies y=z
-- div,2
